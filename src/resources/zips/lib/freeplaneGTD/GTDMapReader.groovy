// @ExecutionModes({on_single_node="main_menu_scripting/freeplaneGTD[addons.parseShorthand]"})
//=========================================================
// Freeplane GTD+
//
// Copyright (c)2014 Gergely Papp
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//=========================================================
package freeplaneGTD

import java.util.logging.Level
import java.util.logging.Logger

import org.freeplane.core.util.HtmlUtils
import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ScriptUtils

//=========================================================
// references
//=========================================================
//=========================================================
// classes
//=========================================================

//---------------------------------------------------------
// GTDMapReader: reads and parses GTD map for next actions
//---------------------------------------------------------
class GTDMapReader {
    private static GTDMapReader instance = new GTDMapReader()

    String iconNextAction
    String iconProject
    String iconToday
    String iconDone
	Date today
    Map contextIcons
    Map contextAliases 
    Map delegateAliases

    static GTDMapReader getInstance() {
		instance.today=new Date().clearTime()
        return instance
    }

    private GTDMapReader() {
    }

    //--------------------------------------------------------------
    // Convert next action shorthand notation with recursive walk:
    // shorthand: *<next action> @<Context> [<who>] {<when>} #<priority>
    // becomes:
    // node.text     = <next action>
    // node['Where'] = <where>
    // node['Who']   = <who>
    // node['When']  = <when>
    // node['Priority']  = <priority>
    //
    void convertShorthand(Proxy.Node rootNode) {
        findAliases()
        findIcons()
        internalConvertShorthand(rootNode)
    }

    //--------------------------------------------------------------
    //Get icon key names from Settings/Icons nodes
    void findAliases() {
		def aliasesFound = ScriptUtils.c().find { it.transformedText.startsWith('Alias: ') }
		contextAliases = [:]
		delegateAliases = [:]

		def contextMatcher = ('' =~/(?:@(\S+)\s*)/)
        def delegatematcher = ('' =~/(?:\[([^\]]+)\]\s*)/)
		aliasesFound.each {
			if (it.transformedText =~ /^Alias:(\s*@\S+){2,}/) {
                contextMatcher.reset(it.transformedText)
				def res = contextMatcher.collect{it[1]}
                def key = res[0]
    			(1..res.size()-1).each {                  
					def value = res[it]
					contextAliases[value]=key
					Logger.getAnonymousLogger().log(Level.INFO, 'Context alias: ' + key + '->' + value)
				}
			} else if (it.transformedText =~ /^Alias:\s*(\[([^\]]+)\]\s*){2,}/) {
                delegatematcher.reset(it.transformedText)
				def res = delegatematcher.collect{it[1]}
				def key = res[0]
    			(1..res.size()-1).each {                  
					def value = res[it]
					delegateAliases[value]=key
					Logger.getAnonymousLogger().log(Level.INFO, 'Delegate alias: ' + key + '->' + value)
				}
			} else {
                throw new Exception('Aliases must take the format \n'+
				'\'Alias: @WHAT_TO_ALIAS @ALIAS1 @ALIAS2\'\n'+
				'\'Alias: [WHO_TO_ALIAS] [ALIAS1] [ALIAS2]\'\n'+
                'Got: \'' + it.transformedText + '\'\n')
			}
		}
	}
    //--------------------------------------------------------------
    //Get icon key names from Settings/Icons nodes
    void findIcons() {
        // Get icon keys for next actions and projects
        iconNextAction = "yes"
        iconProject = "list"
        iconToday = "bookmark"
        iconDone = "button_ok"
        contextIcons = [:]
		
		def iconsFound = ScriptUtils.c().find { it.transformedText.startsWith('Icon: ') }         
		
		iconsFound.each {
			String firstIcon = it.icons.first
			String nodeText = it.transformedText.trim()

            if (firstIcon ==~ /^full\-\d$/) {
                throw new Exception('Trying to reuse priority icon:' + firstIcon + ' on node ' + nodeText)
            }
            if (nodeText == 'Icon: Next action') {
                iconNextAction = firstIcon
            } else if (nodeText == 'Icon: Project') {
                iconProject = firstIcon
            } else if (nodeText == 'Icon: Today') {
                iconToday = firstIcon
            } else if (nodeText == 'Icon: Done') {
                iconDone = firstIcon
            } else if (nodeText =~ '^Icon: @') {
                String context = nodeText.replaceAll(/^Icon: @(^\s*)/, '$1')
                contextIcons[context] = firstIcon
            }
		}

        if (['help', iconProject, iconToday, iconDone].contains(iconNextAction)
                || contextIcons.values().contains(iconNextAction)) {
            throw new Exception('Trying to reuse icon:' + iconNextAction + ' as \'Next action\'')
        }
        if (['help', iconNextAction, iconToday, iconDone].contains(iconProject)
                || contextIcons.values().contains(iconProject)) {
            throw new Exception('Trying to reuse icon:' + iconProject + ' as \'Project\'')
        }
        if (['help', iconNextAction, iconProject, iconDone].contains(iconToday)
                || contextIcons.values().contains(iconToday)) {
            throw new Exception('Trying to reuse icon:' + iconToday + ' as \'Today\'')
        }
        if (['help', iconNextAction, iconProject, iconToday].contains(iconDone)
                || contextIcons.values().contains(iconDone)) {
            throw new Exception('Trying to reuse icon:' + iconDone + ' as \'Done\'')
        }
        contextIcons.each { context, icon ->
            if (['help', iconNextAction, iconProject, iconToday, iconDone].contains(icon)) {
                throw new Exception('Trying to reuse icon:' + icon + ' as \'@' + context + '\'')
            }
        }
    }

    List getActionList(Proxy.Node rootNode, boolean filterDone) {
        return findNextActions(rootNode, filterDone, iconProject, iconNextAction, iconToday, iconDone)
    }

    //--------------------------------------------------------------
    // Convert next action shorthand notation with recursive walk:
    // shorthand: *<next action> @<Context> [<who>] {<when>} #<priority>
    // becomes:
    // node.transformedText     = <next action>
    // node['Where'] = <where>
    // node['Who']   = <who>
    // node['When']  = <when>
    // node['Priority']  = <priority>
    //
    void internalConvertShorthand(Proxy.Node thisNode) {
        String nodeText = thisNode.transformedText.trim()

        if (nodeText.length() > 0 && nodeText.charAt(0) == (char) '?') {
            nodeText = nodeText.substring(1).trim()
            thisNode.text = nodeText
            thisNode.icons.add('help')
        }
        if ((nodeText.length() > 0 && nodeText.charAt(0) == (char) '*') || (thisNode.icons.icons.contains(iconNextAction))) {
            Map fields = parseShorthand(nodeText)
            thisNode.text = fields['action']

            def nodeAttr = [:] as Map<String, Object>
            thisNode.attributes.names.eachWithIndex { name, i -> nodeAttr[name] = thisNode.attributes.get(i) }

            if (fields['context']) nodeAttr['Where'] = fields['context']
            if (fields['delegate']) nodeAttr['Who'] = fields['delegate']
            if (fields['when']) nodeAttr['When'] = fields['when']
            if (fields['priority']) nodeAttr['Priority'] = fields['priority']

            List contexts = nodeAttr['Where'] ? nodeAttr['Where'].toString().split(',') : []
            contextIcons.each {
                context, icon ->
                    if (thisNode.icons.icons.contains(icon)) {
                        contexts << context
                    }
            }
            if (contexts?.size()) {
                nodeAttr['Where'] = contexts.unique().join(',')
            }

            thisNode.icons.each {
                if (it ==~ /^full\-\d$/) {
                    nodeAttr['Priority'] = it[5]
                }
            }

            thisNode.attributes = nodeAttr
            if (!thisNode.icons.icons.contains(iconNextAction)) {
                thisNode.icons.add(iconNextAction)
            }

            contexts.each {
                if (contextIcons.keySet().contains(it)) {
                    String contextIcon = contextIcons[it]
                    if (!thisNode.icons.icons.contains(contextIcon)) {
                        thisNode.icons.add(contextIcon)
                    }
                }
            }

            thisNode.icons.each {
                if (it ==~ /^full\-\d$/) {
                    thisNode.icons.remove(it)
                }
            }
            if (nodeAttr['Priority']) {
                String priorityIcon = 'full-' + nodeAttr['Priority']
                thisNode.icons.add(priorityIcon)
            }
        }

        thisNode.children.each {
            internalConvertShorthand(it)
        }
    }
    //--------------------------------------------------------------
    // find parent for the next action, either direct (task) or indirect (project)
    private static String findNextActionProject(Proxy.Node thisNode, String iconProject) {
        Proxy.Node parentNode = thisNode.getParent()
        String retval = ''
        if (parentNode != null && thisNode.isDescendantOf(parentNode)) {
            Proxy.Node walker = parentNode
            while (walker) {
                if (walker.icons.contains(iconProject)) {
                    retval = walker.transformedText + (retval ? '/' + retval : '')
                }
                walker = walker.parent
            }
        }
        return retval ? retval : parentNode.transformedText
    }

    //--------------------------------------------------------------
    // recursive walk through nodes to find Next Actions
    private
    def findNextActions(Proxy.Node thisNode, boolean filterDone, String iconProject, String iconNextAction, String iconToday, String iconDone) {
        def icons = thisNode.icons.icons
        def naNodeID = thisNode.id

        // use index method to get attributes
        String naContext = thisNode['Where'].toString()
        String naWho = thisNode['Who'].toString()
        Object naWhen = thisNode['When']
        Object naWaitFor = thisNode['WaitFor']
        Object naWaitUntil = thisNode['WaitUntil']
        String naPriority = thisNode['Priority'].toString()

        // take care of missing attributes. null or empty string evaluates as boolean false
        if (!naWhen) {
            naWhen = TextUtils.getText("freeplaneGTD.view.when.this_week")
        } else {
            naWhen = DateUtil.normalizeDate(naWhen)			
            thisNode['When'] = naWhen
        }		
		if ((naWhen!=null) && (naWhen instanceof Date)){
			if(today.equals(naWhen.clearTime())) {
				naWhen = TextUtils.getText("freeplaneGTD.view.when.today")
			}
		}
		
        if (naWaitUntil) {
            naWaitUntil = DateUtil.normalizeDate(naWaitUntil)
            thisNode['WaitUntil'] = naWaitUntil
        }

        def result = []
        // include result if it has next action icon and its not the icon setting node for next actions
        if (icons.contains(iconNextAction)) {
            String naAction = thisNode.transformedText
            if (!(naAction =~ /Icon:/)) {
                String naDetails = stripHTMLTags(thisNode.detailsText)
                String naNotes = stripHTMLTags(thisNode.noteText)
                String naProject = findNextActionProject(thisNode, iconProject)
                if (icons.contains(iconToday)) {
                    naWhen = TextUtils.getText('freeplaneGTD.view.when.today')
                }
                boolean done = icons.contains(iconDone)
                if (!(filterDone && done)) {
                    result << [node    : thisNode,
                               action  : naAction,
                               project : naProject,
                               context : naContext,
                               who     : naWho,
                               when    : naWhen,
                               priority: naPriority,
                               nodeID  : naNodeID,
                               details : naDetails,
                               notes   : naNotes,
                               waitFor : naWaitFor,
                               waitUntil : naWaitUntil,
                               done    : done]
                }
            }
        }

        thisNode.children.each {
            result.addAll(findNextActions(it, filterDone, iconProject, iconNextAction, iconToday, iconDone))
        }
        return result
    }

    private static final String stripHTMLTags(String string) {
        if (string == null) {
            return null
        }
        String retval
        if (HtmlUtils.isHtmlNode(string)) {
            retval = string.replaceFirst("(?s)^.*<body>\\s*(.*)\\s*</body>.*\$", "\$1")
        } else {
            retval = HtmlUtils.toHTMLEscapedText(string)
        }
        return retval
    }

    //--------------------------------------------------------------
    // Parse next action shorthand notation
    private static Map parseShorthand(String nodeText) {
        Map fields = [:] as Map<String, Object>

        String toParse = nodeText
        def delegates = []
        while (toParse.matches('^.*\\[([^\\]]*)\\].*$')) {
            delegates.addAll(toParse.replaceFirst('[^\\[]*\\[([^\\]]*)\\].*', '$1').toString().split(',')*.trim())
            toParse = toParse.replaceFirst('\\s*\\[[^\\]]*\\]\\s*', ' ').trim()
        }
        if (delegates) {
            fields['delegate'] = delegates.unique().join(',')
        }
        if (toParse.indexOf('{') >= 0) {
            fields['when'] = DateUtil.normalizeDate(toParse.replaceAll('^.*\\{(.*)\\}.*$', '$1').trim())
            toParse = toParse.replaceAll('\\s*\\{.*\\}\\s*', ' ').trim()
        }
        if (toParse =~ /#\d/) {
            fields['priority'] = toParse.replaceAll('^.*#(\\d).*$', '$1').trim()
            toParse = toParse.replaceAll('#\\d', ' ').trim()
        }
        def contexts = []
        while (toParse =~ '^[^@]*@([^@\\s\\*]+).*') {
            contexts.addAll(toParse.replaceFirst('^[^@]*@([^@\\s\\*]+).*', '$1').toString().split(',')*.trim())
            toParse = toParse.replaceFirst('\\s*@[^@\\s\\*]+\\s*', ' ').trim()
        }
        if (contexts) {
            fields['context'] = contexts.unique().join(',')
        }
        fields['action'] = toParse.replaceAll('^\\s*\\*\\s*', '').trim()
        return fields
    }
}
