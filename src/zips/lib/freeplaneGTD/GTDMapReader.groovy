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

import freeplaneGTD.util.DateUtil
import org.freeplane.api.Node
import org.freeplane.core.util.HtmlUtils
import org.freeplane.core.util.TextUtils
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.proxy.ScriptUtils

import java.util.regex.Matcher

//---------------------------------------------------------
// GTDMapReader: reads and parses GTD map for next actions
//---------------------------------------------------------
class GTDMapReader {
    private static GTDMapReader instance
    private static Matcher contextMatcher = ('' =~ /(?:@(\S+)\s*)/)
    private static Matcher delegateMatcher = ('' =~ /(?:\[([^]]+)]\s*)/)

    String iconNextAction
    String iconProject
    String iconToday
    String iconWeek
    String iconDone
    String iconCancel
    Date today
    Map<String, String> contextIcons
    Map<String, String> contextAliases
    Map<String, String> delegateAliases
    private final String defaultIconNextAction = "yes"
    private final String defaultIconProject = "list"
    private final String defaultIconToday = "bookmark"
    private final String defaultIconWeek = "idea"
    private final String defaultIconDone = "button_ok"
    private final String defaultIconCancel = "button_cancel"
    private final Controller controller


    static GTDMapReader getInstance() {
        if (!instance) {
            instance = new GTDMapReader()
        }
        instance.today = new Date().clearTime()
        return instance
    }

    private GTDMapReader(Controller controller) {
        this.controller = controller
        findIcons()
        findAliases()
    }

    //--------------------------------------------------------------
    // Convert next action shorthand notation:
    // shorthand: *<next action> @<Context> [<who>] {<when>} #<priority>
    // becomes:
    // node.text     = <next action>
    // node['Where'] = <where>
    // node['Who']   = <who>
    // node['When']  = <when>
    // node['Priority']  = <priority>
    //
    void convertShorthand() {
        // disable change listener
        def modeController = Controller.currentController.modeController
        def extension = modeController.getExtension(GtdReportController.getGtdReportControllerClass(modeController))
        try {
            extension.disableListeners()
            findIcons()
            findAliases()
            internalConvertShorthand()
        } finally {
            // reenable change listener
            extension.enableListeners()
        }
    }

    static boolean isShorthandTask(Node it) {
        it?it.transformedText.startsWith('*'):false
    }

    static boolean isShorthandQuestion(Node it) {
        it?it.transformedText.startsWith('?'):false
    }

    static boolean isConfigAlias(Node it) {
        it?it.transformedText.startsWith('Alias: '):false
    }

    static boolean isConfigIcon(Node it) {
        it?it.transformedText.startsWith('Icon: '):false
    }

    boolean isTask(Node node) {
        node?(!node.transformedText.startsWith('Icon: ') && node.icons.contains(iconNextAction)):false
    }

    boolean isDone(Node node) {
        if (!node) return false
        def icons = node.icons.icons
        return icons.contains(iconDone) || icons.contains(iconCancel)
    }

    //--------------------------------------------------------------
    //Get aliases from Settings/Alias nodes
    void findAliases() {
        def aliasesFound = ScriptUtils.c().find { Node it -> isConfigAlias(it) }
        contextAliases = [:]
        delegateAliases = [:]

        aliasesFound.each {
            Node it ->
                if (it.transformedText =~ /^Alias:(\s*@\S+){2,}/) {
                    contextMatcher.reset(it.transformedText)
                    def res = contextMatcher.collect { it[1] }
                    String key = res[0]
                    (1..res.size() - 1).each {
                        String value = res[it]
                        contextAliases[value] = key
                    }
                } else if (it.transformedText =~ /^Alias:\s*(\[([^]]+)]\s*){2,}/) {
                    delegateMatcher.reset(it.transformedText)
                    def res = delegateMatcher.collect { it[1] }
                    String key = res[0]
                    (1..res.size() - 1).each {
                        String value = res[it]
                        delegateAliases[value] = key
                    }
                } else {
                    throw new Exception('Aliases must take the format \n' +
                            '\'Alias: @WHAT_TO_ALIAS @ALIAS1 @ALIAS2\'\n' +
                            '\'Alias: [WHO_TO_ALIAS] [ALIAS1] [ALIAS2]\'\n' +
                            'Got: \'' + it.transformedText + '\'\n')
                }
        }
    }

    void fixIconsOnAliasConfigChange() {
        // Run on all nodes that are tasks and have Who or Where attributes
//        controller.mapReader.
        ScriptUtils.c().find { Node it -> isTask(it) && (it.attributes['Who'] || it.attributes['Where']) }.each { Node it ->
            fixAliasesForNode(it)
            fixIconsForNode(it)
        }
    }

    void fixIconsOnContextConfigChange() {
        // Run on all nodes that are tasks and have at least another icon
        ScriptUtils.c().find { Node it -> isTask(it) && it.attributes['Where'] }.each { Node it ->
            fixIconsForNode(it)
        }
    }

    void handleConfigIconChange(Node node, String oldIcon, String newIcon) {
        //prevent reuse
        findIcons()

        boolean wasTaskIcon = false
        String nodeText = node.transformedText.trim()
        if (nodeText == 'Icon: Next action') {
            wasTaskIcon = true
        }
        if (!oldIcon) {
            oldIcon = getDefaultIcon(nodeText)
        }
        if (!newIcon) {
            newIcon = getDefaultIcon(nodeText)
        }
        if (oldIcon == newIcon)
            return
        if (!oldIcon) {
            fixIconsOnContextConfigChange()
        }
        if (!newIcon) {
            ScriptUtils.c().find { Node it -> isTask(it) && it.icons.contains(oldIcon) }.each {
                it.icons.remove(oldIcon)
            }
        } else {
            ScriptUtils.c().find { Node it -> (wasTaskIcon ? !it.text.startsWith('Icon:') : isTask(it)) && it.icons.contains(oldIcon) }.each {
                it.icons.remove(oldIcon)
                it.icons.add(newIcon)
            }
        }
    }

    private String getDefaultIcon(String nodeText) {
        String toReturn = null
        if (nodeText == 'Icon: Next action') {
            toReturn = defaultIconNextAction
        } else if (nodeText == 'Icon: Project') {
            toReturn = defaultIconProject
        } else if (nodeText == 'Icon: Today') {
            toReturn = defaultIconToday
        } else if (nodeText == 'Icon: Week') {
            toReturn = defaultIconWeek
        } else if (nodeText == 'Icon: Done') {
            toReturn = defaultIconDone
        } else if (nodeText == 'Icon: Cancel') {
            toReturn = defaultIconCancel
        }
        return toReturn
    }

    //--------------------------------------------------------------
    //Get icon key names from Settings/Icons nodes
    void findIcons() {
        // Get icon keys for next actions and projects
        iconNextAction = defaultIconNextAction
        iconProject = defaultIconProject
        iconToday = defaultIconToday
        iconWeek = defaultIconWeek
        iconDone = defaultIconDone
        iconCancel = defaultIconCancel
        contextIcons = [:]

        def iconsFound = ScriptUtils.c().find { Node it -> isConfigIcon(it) }

        iconsFound.each {
            Node it ->
                String firstIcon = it.icons.first
                if (!firstIcon)
                    return
                String nodeText = it.transformedText.trim()

                if (firstIcon ==~ /^full-\d$/) {
                    throw new Exception('Trying to reuse priority icon:' + firstIcon + ' on node ' + nodeText)
                }
                if (nodeText == 'Icon: Next action') {
                    iconNextAction = firstIcon
                } else if (nodeText == 'Icon: Project') {
                    iconProject = firstIcon
                } else if (nodeText == 'Icon: Today') {
                    iconToday = firstIcon
                } else if (nodeText == 'Icon: Week') {
                    iconWeek = firstIcon
                } else if (nodeText == 'Icon: Done') {
                    iconDone = firstIcon
                } else if (nodeText == 'Icon: Cancel') {
                    iconCancel = firstIcon
                } else if (nodeText =~ '^Icon: @') {
                    if (contextIcons.containsValue(firstIcon)) {
                        throw new Exception('Trying to reuse context icon:' + firstIcon + ' on node ' + nodeText)
                    }
                    String context = nodeText.replaceAll(/^Icon: @(\S*)/, '$1')
                    contextIcons[context] = firstIcon
                }
        }

        if (['help', iconProject, iconToday, iconDone, iconCancel, iconWeek].contains(iconNextAction)
                || contextIcons.values().contains(iconNextAction)) {
            throw new Exception('Trying to reuse icon:' + iconNextAction + ' as \'Next action\'')
        }
        if (['help', iconNextAction, iconToday, iconDone, iconCancel, iconWeek].contains(iconProject)
                || contextIcons.values().contains(iconProject)) {
            throw new Exception('Trying to reuse icon:' + iconProject + ' as \'Project\'')
        }
        if (['help', iconNextAction, iconProject, iconDone, iconCancel, iconWeek].contains(iconToday)
                || contextIcons.values().contains(iconToday)) {
            throw new Exception('Trying to reuse icon:' + iconToday + ' as \'Today\'')
        }
        if (['help', iconNextAction, iconProject, iconToday, iconCancel, iconWeek].contains(iconDone)
                || contextIcons.values().contains(iconDone)) {
            throw new Exception('Trying to reuse icon:' + iconDone + ' as \'Done\'')
        }
        if (['help', iconNextAction, iconProject, iconToday, iconCancel].contains(iconWeek)
                || contextIcons.values().contains(iconDone)) {
            throw new Exception('Trying to reuse icon:' + iconWeek + ' as \'Week\'')
        }
        if (['help', iconNextAction, iconProject, iconToday, iconWeek].contains(iconCancel)
                || contextIcons.values().contains(iconCancel)) {
            throw new Exception('Trying to reuse icon:' + iconWeek + ' as \'Cancel\'')
        }
        contextIcons.each { context, icon ->
            if (['help', iconNextAction, iconProject, iconToday, iconDone, iconCancel, iconWeek].contains(icon)) {
                throw new Exception('Trying to reuse icon:' + icon + ' as \'@' + context + '\'')
            }
        }
    }


    void fixAliasesForNode(Node thisNode) {
        // Handle delegate aliases
        List newDelegates = replaceWithAlias(thisNode['Who'], delegateAliases)
        if (newDelegates?.size()) {
            thisNode['Who'] = newDelegates.unique().join(',')
        }

        // Handle context aliases
        List newContexts = replaceWithAlias(thisNode['Where'], contextAliases)
        if (newContexts?.size()) {
            thisNode['Where'] = newContexts.unique().join(',')
        }
    }

    static List<String> replaceWithAlias(originalAttr, aliases) {
        List newList = [] as List<String>
        if (originalAttr) {
            originalAttr.toString().split(',')*.trim().each { String curItem ->
                def aliasMatch = aliases?.keySet()?.find { it.equalsIgnoreCase(curItem) }
                if (aliasMatch) {
                    curItem = aliases[aliasMatch]
                }
                newList << curItem
            }
        }
        return newList
    }

    void fixIconsForNode(Node it) {
        Node thisNode = it

        // Handle context icons
        def contextAttr = thisNode['Where']
        List contexts = [] as List<String>
        if (contextAttr) {
            contexts.addAll(contextAttr.toString().split(',')*.trim())
        }

        List iconContexts = [] as List<String>
        thisNode.icons.each { String icon ->
            iconContexts << contextIcons.find { it.value == icon }?.key
        }

        List newContexts = [] as List<String>
        contexts.each { String curContext ->
            // Add icons for matches and replace standard values if any
            def closeMatch = contextIcons.keySet().find { String key -> key.equalsIgnoreCase(curContext.trim()) }
            if (closeMatch) {
                newContexts << closeMatch
                addIconIfNotExists(thisNode, contextIcons[closeMatch])
            } else {
                newContexts << curContext
            }
        }
        contexts = newContexts

        // remove icons no longer on the context list
        iconContexts.each { iconContext ->
            if (!contexts.find { it.trim() == iconContext }) {
                thisNode.icons.remove(contextIcons[iconContext])
            }
        }

        if (contexts?.size()) {
            thisNode['Where'] = contexts.unique().join(',')
        }

        def priorityAttr = thisNode['Priority']
        // Remove priority icon if exists
        thisNode.icons.each {
            if (it ==~ /^full-\d$/) {
                thisNode.icons.remove(it)
            }
        }
        // Add priority icon if attribute exists
        if (priorityAttr) {
            String priorityIcon = 'full-' + priorityAttr
            thisNode.icons.add(priorityIcon)
        }
    }

    void handleIconAdd(Node thisNode, String icon) {
        if (icon ==~ /^full-\d$/) {
            thisNode['Priority'] = icon.substring(5, 6)
        } else if (icon == iconDone || icon == iconCancel) {
            thisNode['WhenDone'] = DateUtil.getFormattedDate()
        } else {
            // Handle context icons
            def contextAttr = thisNode['Where']
            List contexts = [] as List<String>
            if (contextAttr) {
                contexts.addAll(contextAttr.toString().split(',')*.trim())
            }
            // Add new icon if it is in the contexts
            def matchingIcon = contextIcons.find { it.value == icon }
            if (matchingIcon) {
                if (matchingIcon.key) {
                    contexts << matchingIcon.key
                }

                if (contexts?.size()) {
                    thisNode['Where'] = contexts.unique().join(',')
                }
            }
        }
    }

    void handleIconRemove(Node thisNode, String icon) {
        if (icon ==~ /^full-\d$/) {
            thisNode['Priority'] = null
        } else if (icon == iconDone || icon == iconCancel) {
            thisNode['WhenDone'] = null
        } else {
            // Handle context icons
            def contextAttr = thisNode['Where']
            List contexts = [] as List<String>
            if (contextAttr) {
                contexts.addAll(contextAttr.toString().split(',')*.trim())
            }
            // Find context to remove
            String contextToRemove = contextIcons.find { it.value == icon }?.key
            if (contextToRemove) {
                List newContexts = [] as List<String>
                contexts.each {
                    if (it != contextToRemove) {
                        newContexts << it
                    }
                }
                if (newContexts?.size()) {
                    thisNode['Where'] = newContexts.unique().join(',')
                } else {
                    thisNode['Where'] = null
                }
            }
        }
    }


    static Node findArchiveNode() {
        Node rootNode = ScriptUtils.node().map.root
        String archiveDirName = TextUtils.getText("freeplaneGTD.config.archiveDirName")

        Node archiveNode = rootNode.children.find {
            it.transformedText == archiveDirName
        }
        return archiveNode
    }

    List getActionList(boolean filterDone) {
        Node archiveNode = findArchiveNode()
        def taskNodes = ScriptUtils.c().find { Node it ->
            it.icons.icons.contains(iconNextAction) &&
                    !(filterDone && isDone(it)) &&
                    (archiveNode ? !it.isDescendantOf(archiveNode) : true)
        }

        return createTaskToReturn(taskNodes)
    }

    List getDoneList() {
        Node archiveNode = findArchiveNode()
        def taskNodes = ScriptUtils.c().find { Node it ->
            it.icons.icons.contains(iconNextAction) &&
                    isDone(it) &&
                    (archiveNode ? !it.isDescendantOf(archiveNode) : true)
        }

        return createTaskToReturn(taskNodes)
    }

    private List createTaskToReturn(List<Node> taskNodes) {
        def result = []
        // include result if it has next action icon and its not the icon setting node for next actions
        taskNodes.each { Node thisNode ->
            String naAction = thisNode.transformedText
            if (!(naAction =~ /Icon:/)) {
                String[] icons = thisNode.icons.icons
                String naNodeID = thisNode.id
                String naContext = thisNode['Where'].toString()
                String naWho = thisNode['Who'].toString()
                Object naWhen = thisNode['When']
                Object naWaitFor = thisNode['WaitFor']
                Object naWaitUntil = thisNode['WaitUntil']
                String naPriority = thisNode['Priority'].toString()
                Object naWhenDone = thisNode['WhenDone']

                // take care of missing attributes. null or empty string evaluates as boolean false
                if (!naWhen) {
                    naWhen = TextUtils.getText("freeplaneGTD.view.when.this_week")
                } else {
                    naWhen = DateUtil.normalizeDate(naWhen)
                    thisNode['When'] = naWhen
                }
                if ((naWhen != null) && (naWhen instanceof Date)) {
                    if (today == naWhen.clearTime()) {
                        naWhen = TextUtils.getText("freeplaneGTD.view.when.today")
                    }
                }

                if (naWaitUntil) {
                    naWaitUntil = DateUtil.normalizeDate(naWaitUntil)
                    thisNode['WaitUntil'] = naWaitUntil
                }

                String naDetails = stripHTMLTags(thisNode.detailsText)
                String naNotes = stripHTMLTags(thisNode.noteText)
                String naProject = findNextActionProject(thisNode, iconProject)
                if (icons.contains(iconToday)) {
                    naWhen = TextUtils.getText('freeplaneGTD.view.when.today')
                }

                result << [node     : thisNode,
                           action   : naAction,
                           project  : naProject,
                           context  : naContext,
                           who      : naWho,
                           when     : naWhen,
                           priority : naPriority,
                           nodeID   : naNodeID,
                           details  : naDetails,
                           notes    : naNotes,
                           waitFor  : naWaitFor,
                           waitUntil: naWaitUntil,
                           whenDone : naWhenDone,
                           done     : icons.contains(iconDone),
                           cancelled: icons.contains(iconCancel)]
            }
        }
        return result
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
    void internalConvertShorthand() {

        def questionNodes = ScriptUtils.c().find()
                { Node it -> isShorthandQuestion(it) }

        questionNodes.each { Node it ->
            parseSingleQuestionNode(it)
        }
        def unparsedNodes = ScriptUtils.c().find { Node it -> isShorthandTask(it) }

        unparsedNodes.each { Node it ->
            parseSingleTaskNode(it)
        }
    }

    static void parseSingleQuestionNode(Node it) {
        String nodeText = it.transformedText.trim()
        nodeText = nodeText.substring(1).trim()
        it.text = nodeText
        it.icons.add('help')
    }

    void parseSingleTaskNode(Node thisNode) {
        String nodeText = thisNode.transformedText.trim()

        Map fields = parseShorthand(nodeText)
        thisNode.text = fields['action']

        def nodeAttr = [:] as Map<String, Object>
        thisNode.attributes.names.eachWithIndex { name, i -> nodeAttr[name] = thisNode.attributes.get(i) }

        if (fields['context']) nodeAttr['Where'] = fields['context']
        if (fields['delegate']) nodeAttr['Who'] = fields['delegate']
        if (fields['when']) nodeAttr['When'] = fields['when']
        if (fields['priority']) nodeAttr['Priority'] = fields['priority']

        thisNode.icons.each {
            if (it ==~ /^full-\d$/) {
                nodeAttr['Priority'] = it[5]
            }
        }

        addIconIfNotExists(thisNode, iconNextAction)

        // set new attributes for the node
        thisNode.attributes = nodeAttr
        fixAliasesForNode(thisNode)
        fixIconsForNode(thisNode)
    }

    private static void addIconIfNotExists(Node node, String icon) {
        if (!node.icons.icons.contains(icon)) {
            node.icons.add(icon)
        }
    }
    //--------------------------------------------------------------
    // find parent for the next action, either direct (task) or indirect (project)
    private static String findNextActionProject(Node thisNode, String iconProject) {
        Node parentNode = thisNode.getParent()
        String retval = ''
        if (parentNode != null && thisNode.isDescendantOf(parentNode)) {
            Node walker = parentNode
            while (walker) {
                if (walker.icons.contains(iconProject)) {
                    retval = walker.transformedText + (retval ? '/' + retval : '')
                }
                walker = walker.parent
            }
        }
        return retval ? retval : parentNode.transformedText
    }

    private static final String stripHTMLTags(String string) {
        if (string == null) {
            return null
        }
        String retval
        if (HtmlUtils.isHtmlNode(string)) {
            retval = string.replaceFirst(/(?s)^.*<body>\s*(.*)\s*<\/body>.*\$/, '\$1')
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
        while (toParse.matches(/^.*\[([^]]*)].*$/)) {
            delegates.addAll(toParse.replaceFirst(/[^\[]*\[([^]]*)].*/, '$1').toString().split(',')*.trim())
            toParse = toParse.replaceFirst(/\s*\[[^]]*]\s*/, ' ').trim()
        }
        if (delegates) {
            fields['delegate'] = delegates.unique().join(',')
        }
        if (toParse.indexOf('{') >= 0) {
            fields['when'] = DateUtil.normalizeDate(toParse.replaceAll(/^.*\{(.*)}.*$/, '$1').trim())
            toParse = toParse.replaceAll(/\s*\{.*}\s*/, ' ').trim()
        }
        if (toParse =~ /#\d/) {
            fields['priority'] = toParse.replaceAll(/^.*#(\d).*$/, '$1').trim()
            toParse = toParse.replaceAll(/#\d/, ' ').trim()
        }
        def contexts = []
        while (toParse =~ /^[^@]*@([^@\s*]+).*/) {
            contexts.addAll(toParse.replaceFirst(/^[^@]*@([^@\s*]+).*/, '$1').toString().split(',')*.trim())
            toParse = toParse.replaceFirst($/\s*@[^@\s*]+\s*/$, ' ').trim()
        }
        if (contexts) {
            fields['context'] = contexts.unique().join(',')
        }
        fields['action'] = toParse.replaceAll(/^\s*\*\s*/, '').trim()
        return fields
    }


}
