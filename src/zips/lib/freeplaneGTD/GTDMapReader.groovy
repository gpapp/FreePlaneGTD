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
	private static final String NodeNextActionIcon ="Icon: Next action";
	private static final String NodeProjectIcon ="Icon: Project";
	private static final String NodeTodayIcon ="Icon: Today";
	private static final String NodeDoneIcon ="Icon: Done";

	private static String IconNextAction = "yes";
	private static String IconProject = "list";
	private static String IconToday = "excellent";
	private static String IconDone = "button_ok";

	GTDMapReader (Proxy.Node rootNode) {
		// Get icon keys for next actions and projects
		IconNextAction = findIconKey(rootNode,NodeNextActionIcon,IconNextAction);
		IconProject = findIconKey(rootNode,NodeProjectIcon,IconProject);
		IconToday = findIconKey(rootNode,NodeTodayIcon,IconToday);
		IconDone = findIconKey(rootNode,NodeDoneIcon,IconDone);
	}
	
	String getIconNextAction () {
		return IconNextAction;
	}
	//--------------------------------------------------------------
	//Get icon key names from Settings/Icons nodes
	private static String findIconKey(Proxy.Node thisNode, String nodeLabel, String iconLast){
		def icons = thisNode.icons.icons;
		String nodeText = thisNode.text;
		String iconFound = iconLast;

		if (nodeText.trim() == nodeLabel){
			iconFound = icons[0];
		}

		thisNode.children.each {
			iconFound = findIconKey(it, nodeLabel, iconFound);
		}
		return iconFound;
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
	public static void ConvertShorthand(Proxy.Node thisNode){
		String nodeText = thisNode.text.trim();
		String[] field;

		if ((nodeText.length()>0 && nodeText.charAt(0) == "*") || (thisNode.icons.contains(IconNextAction))){
			field = parseShorthand(nodeText);
			thisNode.text = field[0];
			
			def nodeAttr = [:];
			thisNode.attributes.names.eachWithIndex { name, i -> nodeAttr[name]=thisNode.attributes.get(i)}			
			
			if (field[1]){nodeAttr["Where"]=field[1];}
			if (field[2]){nodeAttr["Who"]=field[2];}
			if (field[3]){nodeAttr["When"]=field[3];}
			thisNode.attributes = nodeAttr;
			boolean hasNextAction
			if (!thisNode.icons.contains(IconNextAction)) {
				thisNode.icons.add(IconNextAction);
			}
		}

		thisNode.children.each {
			ConvertShorthand(it);
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
		String[] field
		int posWho1 = nodeText.indexOf("[");
		int posWho2 = nodeText.indexOf("]");
		int posWhen1 = nodeText.indexOf("{");
		int posWhen2 = nodeText.indexOf("}");
		int posContext = nodeText.indexOf("@");
		int posAction = nodeText.indexOf("*");
		int posFirst;
		int posMax;
		field = new String[4];

		// parse When
		if ((posWhen1>0)&&(posWhen2>0)){
			field[3] = DateUtil.normalizeDate(nodeText.substring(posWhen1+1, posWhen2));
		}

		// parse Who
		if ((posWho1>0)&&(posWho2>0)){
			field[2] = nodeText.substring(posWho1+1, posWho2);
			field[2] = field[2].trim();
		}

		// parse Action
		posMax = nodeText.length();
		if (posWhen1==-1){posWhen1 = posMax;}
		if (posWho1==-1){posWho1 = posMax;}
		if (posContext==-1){posContext = posMax;}
		posFirst = Math.min(posWhen1, posWho1);
		posFirst = Math.min(posFirst, posContext);
		field[0] = nodeText.substring(posAction+1,posFirst);
		field[0] = field[0].trim();

		// parse Context
		if (posContext!=nodeText.length()){
		    posFirst = nodeText.substring(posContext+1).findIndexOf { it == ' ' ||  it == '[' || it == '{' };
		    field[1] = posFirst>0?nodeText.substring(posContext+1,posContext+1+posFirst):nodeText.substring(posContext+1)
		}
		return field;
	}
}
