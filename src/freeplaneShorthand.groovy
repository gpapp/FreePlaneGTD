// @ExecutionModes({on_single_node="main_menu_scripting/freeplaneGTD[addons.parseShorthand]"})
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


//=========================================================
// references
//=========================================================
import java.text.ParsePosition;
import java.text.SimpleDateFormat;

import java.util.Date;

import org.freeplane.core.ui.components.UITools;
import org.freeplane.plugin.script.proxy.ControllerProxy;
import org.freeplane.plugin.script.proxy.Proxy;
import org.freeplane.core.resources.ResourceController;
//=========================================================
// classes
//=========================================================


//---------------------------------------------------------
// GTDMapReader: reads and parses GTD map for next actions
//---------------------------------------------------------
public class GTDMapReader {
	private static final String NodeNextActionIcon ="Icon: Next action";
	private static final String NodeProjectIcon ="Icon: Project";
	private static final String NodeTodayIcon ="Icon: Today";
	private static final String NodeDoneIcon ="Icon: Done";

	private static String IconNextAction = "yes";
	private static String IconProject = "list";
	private static String IconToday = "excellent";
	private static String IconDone = "button_ok";

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
	// properties
	public static String getNextActionIcon(Proxy.Node rootNode) {
		IconNextAction = findIconKey(rootNode,NodeNextActionIcon,IconNextAction);
		return IconNextAction;
	}

	public static String getProjectIcon(Proxy.Node rootNode) {
		IconProject = findIconKey(rootNode,NodeProjectIcon,IconProject);
		return IconProject;
	}

	public static String getTodayIcon(Proxy.Node rootNode){
		IconToday = findIconKey(rootNode,NodeTodayIcon,IconToday);
		return IconToday;
	}

	public static String getDoneIcon(Proxy.Node rootNode){
		IconDone = findIconKey(rootNode,NodeDoneIcon,IconDone);
		return IconDone;
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

		if (nodeText.length()>0 && nodeText.charAt(0) == "*"){
			field = parseShorthand(nodeText);
			thisNode.text = field[0];
			def nodeAttr = [:];
			if (field[1]){nodeAttr["Where"]=field[1];}
			if (field[2]){nodeAttr["Who"]=field[2];}
			if (field[3]){nodeAttr["When"]=field[3];}
			thisNode.attributes = nodeAttr;
			thisNode.icons.add(IconNextAction);
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
		int posFirst;
		int posMax;

		field = new String[4];

		// parse When
		if ((posWhen1>0)&&(posWhen2>0)){
			field[3] = nodeText.substring(posWhen1+1, posWhen2);
			field[3] = field[3].trim();
			SimpleDateFormat fmt = determineDateFormat(field[3]);
			if (fmt!=null) {
				field[3]=fmt.parse(field[3]).format("yyyy-MM-dd");
			}
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
		field[0] = nodeText.substring(1,posFirst);
		field[0] = field[0].trim();

		// parse Context
		posContext = nodeText.indexOf("@");
		if (posContext>0){
			nodeText = nodeText.substring(posContext);
			posWho1 = nodeText.indexOf("[");
			posWhen1 = nodeText.indexOf("{");
			posMax = nodeText.length();
			if (posWho1==-1){posWho1 = posMax;}
			if (posWhen1==-1){posWhen1 = posMax;}
			posFirst = Math.min(posWhen1, posWho1);
			field[1] = nodeText.substring(1,posFirst);
			field[1] = field[1].trim();
		}
		return field;
	}

	private static final def DATE_FORMAT_REGEXPS = [
		'^\\d{4}-\\d{1,2}-\\d{1,2}t\\d{1,2}:\\d{2}\\+\\d{4}$':  new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ"),
		'^\\d{4}-\\d{1,2}-\\d{1,2}t\\d{1,2}:\\d{2}:\\d{2}\\+\\d{4}$':  new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ"),
		'^\\d{8}$': new SimpleDateFormat("yyyyMMdd"),
		'^\\d{1,2}-\\d{1,2}-\\d{4}$':  new SimpleDateFormat("dd-MM-yyyy"),
		'^\\d{4}-\\d{1,2}-\\d{1,2}$':  new SimpleDateFormat("yyyy-MM-dd"),
		'^\\d{1,2}/\\d{1,2}/\\d{4}$':  new SimpleDateFormat("MM/dd/yyyy"),
		'^\\d{4}/\\d{1,2}/\\d{1,2}$':  new SimpleDateFormat("yyyy/MM/dd"),
		'^\\d{4}\\.\\d{1,2}\\.\\d{1,2}$':  new SimpleDateFormat("yyyy.MM.dd"),
		'^\\d{4}\\.\\d{1,2}\\.\\d{1,2}\\.$':  new SimpleDateFormat("yyyy.MM.dd."),
		'^\\d{1,2}\\s[a-z]{3}\\s\\d{4}$':  new SimpleDateFormat("dd MMM yyyy"),
		'^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}$':  new SimpleDateFormat("dd MMMM yyyy"),
		'^\\d{12}$':  new SimpleDateFormat("yyyyMMddHHmm"),
		'^\\d{8}\\s\\d{4}$':  new SimpleDateFormat("yyyyMMdd HHmm"),
		'^\\d{1,2}-\\d{1,2}-\\d{4}\\s\\d{1,2}:\\d{2}$':  new SimpleDateFormat("dd-MM-yyyy HH:mm"),
		'^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{2}$':  new SimpleDateFormat("yyyy-MM-dd HH:mm"),
		'^\\d{1,2}/\\d{1,2}/\\d{4}\\s\\d{1,2}:\\d{2}$':  new SimpleDateFormat("MM/dd/yyyy HH:mm"),
		'^\\d{4}/\\d{1,2}/\\d{1,2}\\s\\d{1,2}:\\d{2}$':  new SimpleDateFormat("yyyy/MM/dd HH:mm"),
		'^\\d{1,2}\\s[a-z]{3}\\s\\d{4}\\s\\d{1,2}:\\d{2}$':  new SimpleDateFormat("dd MMM yyyy HH:mm"),
		'^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}\\s\\d{1,2}:\\d{2}$':  new SimpleDateFormat("dd MMMM yyyy HH:mm"),
		'^\\d{14}$':  new SimpleDateFormat("yyyyMMddHHmmss"),
		'^\\d{8}\\s\\d{6}$':  new SimpleDateFormat("yyyyMMdd HHmmss"),
		'^\\d{1,2}-\\d{1,2}-\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$':  new SimpleDateFormat("dd-MM-yyyy HH:mm:ss"),
		'^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{2}:\\d{2}$':  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"),
		'^\\d{1,2}/\\d{1,2}/\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$':  new SimpleDateFormat("MM/dd/yyyy HH:mm:ss"),
		'^\\d{4}/\\d{1,2}/\\d{1,2}\\s\\d{1,2}:\\d{2}:\\d{2}$':  new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"),
		'^\\d{1,2}\\s[a-z]{3}\\s\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$':  new SimpleDateFormat("dd MMM yyyy HH:mm:ss"),
		'^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$':  new SimpleDateFormat("dd MMMM yyyy HH:mm:ss"),
	];
	/**
	* Determine SimpleDateFormat pattern matching with the given date string. Returns null if
	* format is unknown. You can simply extend DateUtil with more formats if needed.
	* @param dateString The date string to determine the SimpleDateFormat pattern for.
	* @return The matching SimpleDateFormat pattern, or null if format is unknown.
	* @see SimpleDateFormat
	*/
	public static SimpleDateFormat determineDateFormat(String dateString) {
		for (key in DATE_FORMAT_REGEXPS.keySet()) {
			if (dateString.toLowerCase().matches(key)) {
				return DATE_FORMAT_REGEXPS[key];
			}
		}
		return null; // Unknown format.
	}
	//--------------------------------------------------------------
	// parse the GTD mind map
	public static void ParseMap(Proxy.Node rootNode){
		// Get icon keys for next actions and projects
		IconNextAction = getNextActionIcon(rootNode);
		IconProject = getProjectIcon(rootNode);
		IconToday = getTodayIcon(rootNode);
		IconDone = getDoneIcon(rootNode);

		// Expand any nodes with next action shorthand
		ConvertShorthand(rootNode);
	}
}

//=========================================================
// script
//=========================================================
GTDMapReader.ParseMap(node.map.root);
