//=========================================================
// Freeplane GTD
//
// Groovy script to process shorthand notation fo GTD
// from a Freeplane mind map
//
// Version 1.0-beta
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

//=========================================================
// references
//=========================================================
import java.text.SimpleDateFormat;

import java.util.Date;

import org.freeplane.plugin.script.proxy.Proxy;
import freeplaneGTD.DateUtil;
//=========================================================
// classes
//=========================================================

//---------------------------------------------------------
// GTDMapReader: reads and parses GTD map for next actions
//---------------------------------------------------------
class GTDMapReader {

	private String iconNextAction
	private String iconProject
	private String iconToday
	private String iconDone
    private Map contextIcons

	GTDMapReader (Proxy.Node rootNode) {
		// Get icon keys for next actions and projects
        iconNextAction = "yes"
        iconProject = "list"
        iconToday = "bookmark"
        iconDone = "button_ok"
        contextIcons = [:]

		findIcons(rootNode)
	}
	
    //--------------------------------------------------------------
	//Get icon key names from Settings/Icons nodes
    private void findIcons(Proxy.Node thisNode){
		String firstIcon = thisNode.icons[0];
		String nodeText = thisNode.text.trim();

        if (nodeText=~'^Icon:') {
            if (nodeText=='Icon: Next action') {
                if (['help', iconProject,iconToday,iconDone].contains(firstIcon)
                    || contextIcons.values().contains(firstIcon)) {
                    throw new Exception('Trying to reuse icon:'+firstIcon + ' on node ' + nodeText)
                }
                iconNextAction = firstIcon
            } else if (nodeText=='Icon: Project') {
                if (['help', iconNextAction,iconToday,iconDone].contains(firstIcon)
                    || contextIcons.values().contains(firstIcon)) {
                    throw new Exception('Trying to reuse icon:'+firstIcon + ' on node ' + nodeText)
                }
                iconProject = firstIcon
            } else if (nodeText=='Icon: Today') {
                if (['help', iconNextAction,iconProject,iconDone].contains(firstIcon)
                    || contextIcons.values().contains(firstIcon)) {
                    throw new Exception('Trying to reuse icon:'+firstIcon + ' on node ' + nodeText)
                }
                iconToday = firstIcon
            } else if (nodeText=='Icon: Done') {
                if (['help', iconNextAction,iconProject,iconToday].contains(firstIcon)
                    || contextIcons.values().contains(firstIcon)) {
                    throw new Exception('Trying to reuse icon:'+firstIcon + ' on node ' + nodeText)
                }
 	            iconDone = firstIcon
            } else if (nodeText=~'^Icon: @') {
                String context = nodeText.replaceAll('^Icon: @([^\\s]*)','$1');
                if (['help', iconNextAction,iconProject,iconToday,iconDone].contains(firstIcon)
                    || contextIcons.values().contains(firstIcon)) {
                    throw new Exception('Trying to reuse icon:'+firstIcon + ' on node ' + nodeText)
                }
                contextIcons[context] = firstIcon
            }
        }

		thisNode.children.each {
			findIcons(it);
		}
	}

	//--------------------------------------------------------------
	// Convert next action shorthand notation with recursive walk:
	// shorthand: *<next action> @<Context> [<who>] {<when>}
	// becomes:
	// node.text     = <next action>
	// node['Where'] = <where>
	// node['Who']   = <who>
	// node['When']  = <when>
	//
	public void convertShorthand(Proxy.Node thisNode){
		String nodeText = thisNode.text.trim();
		String[] field;

		if (nodeText.length()>0 && nodeText.charAt(0) == "?") {
            nodeText=nodeText.substring(1).trim();
            thisNode.text=nodeText;
            thisNode.icons.add('help');
        }
        if ((nodeText.length()>0 && nodeText.charAt(0) == "*") || (thisNode.icons.icons.contains(iconNextAction))){
			field = parseShorthand(nodeText);
			thisNode.text = field[0];
			
			def nodeAttr = [:];
			thisNode.attributes.names.eachWithIndex { name, i -> nodeAttr[name]=thisNode.attributes.get(i)}			
			
			if (field[1]){nodeAttr['Where']=field[1];}
			if (field[2]){nodeAttr['Who']=field[2];}
			if (field[3]){nodeAttr['When']=field[3];}

            contextIcons.each {
                context, icon ->
                if (thisNode.icons.icons.contains(icon)) {
                    nodeAttr['Where']=context;
                }
            }
			thisNode.attributes = nodeAttr;

			boolean hasNextAction
			if (!thisNode.icons.icons.contains(iconNextAction)) {
				thisNode.icons.add(iconNextAction);
			}
            if (contextIcons.keySet().contains(nodeAttr['Where'])) {
                String contextIcon = contextIcons[nodeAttr['Where']];
                if (!thisNode.icons.icons.contains(contextIcon)) {
                    thisNode.icons.add(contextIcon);
                }
            }
		}

		thisNode.children.each {
			convertShorthand(it);
		}
	}

	//--------------------------------------------------------------
	// Parse next action shorthand notation
	// field[0] = <next action>
	// field[1] = <where>
	// field[2] = <who>
	// field[3] = <when>
	//
	private static String[] parseShorthand(String nodeText){
		String[] field = new String[4];

        String toParse = nodeText
        if (toParse.indexOf ('[')>=0) {
            field[2]=toParse.replaceAll('^.*\\[(.*)\\].*$','$1').trim()
            toParse=toParse.replaceAll('\\s*\\[.*\\]\\s*',' ').trim()
        }
        if (toParse.indexOf ('{')>=0) {
			field[3] = DateUtil.normalizeDate(toParse.replaceAll('^.*\\{(.*)\\}.*$','$1').trim());
            toParse=toParse.replaceAll('\\s*\\{.*\\}\\s*',' ').trim()
        }
        if (toParse.indexOf ('@')>=0) {
            field[1]=toParse.replaceAll('^.*@([^\\s\\*]+).*$','$1').trim()
            toParse=toParse.replaceAll('\\s*@[^\\s\\*]+\\s*',' ').trim()
        }
        field[0]=toParse.replaceAll('^\\s*\\*\\s*','').trim()
		return field;
	}
}
