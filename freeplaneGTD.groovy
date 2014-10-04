// @ExecutionModes({on_single_node="main_menu_scripting/freeplaneGTD[addons.listNextActions]"})
//=========================================================
// Freeplane GTD
//
// Groovy script to extract GTD-style Next Action list
// from a Freeplane mind map
//
// Version 0.9
//
// Copyright (c)2014 Gergely Papp
// Copyright (c)2011 Auxilus Systems LLC
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
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.text.*;
import javax.swing.text.html.HTMLEditorKit;
import javax.swing.text.html.StyleSheet;
import javax.swing.ImageIcon;
import javax.swing.UIManager;

import java.awt.*;
import java.awt.BorderLayout;
import java.awt.datatransfer.*;
import java.awt.Dimension;
import java.awt.event.*;
import java.awt.event.KeyEvent;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GridLayout;
import java.awt.print.*;
import java.awt.Toolkit;

import java.net.URL;

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
// GTDReport: creates GUI for next action lists
//---------------------------------------------------------
public class GTDReport {

	private static GTDReport gtdReport = new GTDReport();

	private String txtVer = "0.9";
	private String txtURI = "http://www.itworks.hu/index.php/freeplane-gtd+";
	private GTDMapReader gtdMapReader;
	private Proxy.Controller ctrl;
	private String ByProject = "";
	private String ByContext = "";
	private String ByWho = "";
	private String ByWhen = "";
	private int selTab = 0;
	private String userPath = "";
	private JLabel reportByProject = new JLabel();
	private JLabel reportByContext = new JLabel();
	private JLabel reportByWho = new JLabel();
	private JLabel reportByWhen = new JLabel();
	private JEditorPane htmlByProject = new JEditorPane("text/html", "Project");
	private JEditorPane htmlByContext = new JEditorPane("text/html", "Context");
	private JEditorPane htmlByWho = new JEditorPane("text/html", "Who");
	private JEditorPane htmlByWhen = new JEditorPane("text/html", "When");
	private JTabbedPane tabbedPane = new JTabbedPane();

	//--------------------------------------------------------------
	// private constructor for singleton pattern
	private GTDReport() {

	}

	public static synchronized GTDReport getInstance(){
		return gtdReport;
	}

	protected JComponent makeTextPanel(JEditorPane filler) {
		JPanel panel = new JPanel(false);
		filler.setEditable(false);
		filler.addHyperlinkListener(new NodeLink(this));
		HTMLEditorKit kit = (HTMLEditorKit)filler.getEditorKit();
		StyleSheet styleSheet = kit.getStyleSheet();
		styleSheet.addRule("body {color:#000000; font-family:Verdana, Arial; font-size:12pt; padding: 10px 25px 0px 25px; }");
		styleSheet.addRule("h1 {font-size:20pt; font-weight:bold}");
		styleSheet.addRule("a {text-decoration: none; color:#990000;}");
		panel.setLayout(new GridLayout(1, 1));
		panel.add(filler);
		return panel;
	}

	private JPanel buildReportPanel(){

		// setup panel to contain tabbed pane
		JPanel reportPanel = new JPanel();
		reportPanel.setLayout(new GridLayout(1,1));
		ImageIcon icon = null;

		// build By Project tab
		JComponent panel1 = makeTextPanel(htmlByProject);
		panel1.setBackground(Color.WHITE);
		JScrollPane scrollpane1 = new JScrollPane(panel1);
		tabbedPane.addTab("<html><body height=50><b><i>By Project</i></b><br/><h1 style='color:#666666; font-size:24pt; text-align:center;'>" + gtdMapReader.getCountNextActions().toString() + "</h1></body></html>", icon, scrollpane1, "List next actions by project");

		// build By Who tab
		JComponent panel3 = makeTextPanel(htmlByWho);
		panel3.setBackground(Color.WHITE);
		JScrollPane scrollpane3 = new JScrollPane(panel3);
		tabbedPane.addTab("<html><body height=50><b><i>By Who</i></b><br/><h1 style='color:#666666; font-size:24pt; text-align:center;'>" + gtdMapReader.getCountDelegated().toString() + "</h1></body></html>", icon, scrollpane3, "List next actions by owners (who)");

		// build By Context tab
		JComponent panel2 = makeTextPanel(htmlByContext);
		panel2.setBackground(Color.WHITE);
		JScrollPane scrollpane2 = new JScrollPane(panel2);
		tabbedPane.addTab("<html><body height=50><b><i>By Context</i></b></body></html>", icon, scrollpane2, "List next actions by context (Context done)");

		// build By When tab
		JComponent panel4 = makeTextPanel(htmlByWhen);
		panel4.setBackground(Color.WHITE);
		JScrollPane scrollpane4 = new JScrollPane(panel4);
		tabbedPane.addTab("<html><body height=50><b><i>By When</i></b></body></html>", icon, scrollpane4, "List next actions by due date (when)");

		// build About tab
		String txtAbout = "<html><body style='padding-left:25px;'><h1>Freeplane|<span style='color:#ff3300;'>GTD</span></h1><h2>Version " + txtVer + "</h2></body></html>";
		JPanel panel5 = new JPanel(false);
		String imgURL = userPath + "/resources/images/fpgtdLogo.png";
		//UITools.informationMessage(imgURL.toString());
		ImageIcon iconLogo = null;
		if (imgURL!=null){
			iconLogo = new ImageIcon(imgURL);
		}
		JLabel appName = new JLabel(txtAbout,iconLogo,JLabel.CENTER);
		appName.setHorizontalAlignment(JLabel.CENTER);
		panel5.setLayout(new GridLayout(2, 1));
		panel5.add(appName);
		JLabel linkURL = new JLabel("<html><h4>by Gergely Papp<br/><h5>based on the original code by Auxilus Systems LLC</h5><h4>Licensed under GNU GPL Version 3</h4><a href='"+txtURI+"'>"+txtURI+"</a></html>");
		linkURL.setHorizontalAlignment(JLabel.CENTER);
		linkURL.setCursor(new Cursor(Cursor.HAND_CURSOR));
		linkURL.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent e) {
				URI uriLink = new URI(txtURI);
				browseLink(uriLink);
			}
		});
		panel5.add(linkURL);
		panel5.setBackground(Color.WHITE);
		JScrollPane scrollpane5 = new JScrollPane(panel5);
		tabbedPane.addTab("<html><body height=50><b><i>About</i></b></body></html>", icon, scrollpane5, "About Freeplane|GTD");

		// Enable scrolling tabs and set location
		tabbedPane.setTabLayoutPolicy(JTabbedPane.SCROLL_TAB_LAYOUT);
		tabbedPane.setTabPlacement(JTabbedPane.RIGHT);

		// Register a change listener to track selected tab
		tabbedPane.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent evt) {
				JTabbedPane pane = (JTabbedPane)evt.getSource();
				// Get current tab index
				selTab = pane.getSelectedIndex();
			}
		});

		// Add the tabbed pane to this panel.
		reportPanel.add(tabbedPane);

		return reportPanel;
	}

	public String ProjectReport() {
		return ByProject;	
	}

	public String ContextReport() {
		return ByContext;
	}

	public String OwnerReport() {
		return ByWho;
	}

	public String DueReport() {
		return ByWhen;
	}

	public int TabIndex(){
		return selTab;
	}

	public void setUserPath(String path){
		userPath = path;
	}

	public void setController(Proxy.Controller controller){
		ctrl = controller;
	}

	public Proxy.Controller getController(){
		return ctrl;
	}

	public void setMapReader(GTDMapReader MapReader){
		gtdMapReader = MapReader;
		this.Refresh();
	}

	private static void browseLink(URI uri) {
		if (Desktop.isDesktopSupported()) {
			try {
				Desktop.getDesktop().browse(uri);
			} catch (IOException e) { /* TODO: error handling */ }
		} else { /* TODO: error handling */ }
	}

	public void Show() {
		//Create and set up the window
		ImageIcon icon = new ImageIcon(userPath + "/icons/fpgtdIcon.png");
		JFrame frame = new JFrame("Freeplane|GTD Next Actions");
		frame.setIconImage(icon.getImage());
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

		// on ESC key close frame
		frame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
		KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "Cancel");
		frame.getRootPane().getActionMap().put("Cancel", new AbstractAction(){
			public void actionPerformed(ActionEvent e) {
				frame.setVisible(false);
				frame.dispose();
			}	
		});

		// on close window the close method is called
		frame.addWindowListener(new WindowAdapter() {
			public void windowClosing(java.awt.event.WindowEvent evt) {
				frame.setVisible(false);
				frame.dispose();
			}
		});

		//Add next action report panel to the window
		JPanel reportPanel = this.buildReportPanel();
		frame.add(reportPanel, BorderLayout.CENTER);

		// Add command buttons
		JPanel cmdPanel = new JPanel();
		BoxLayout boxH = new BoxLayout(cmdPanel, BoxLayout.X_AXIS);
		cmdPanel.setLayout(boxH);
		JButton refreshButton = new JButton("Refresh");
		refreshButton.addActionListener(new RefreshUIWindow(this));
		JButton printButton = new JButton("Print");
		printButton.addActionListener(new PrintUIWindow(this));
		JButton copyButton = new JButton("Copy");
		copyButton.addActionListener(new CopyUIWindow(this));
		JButton cancelButton = new JButton("Cancel");
		cancelButton.addActionListener(new CloseUIWindow(frame));
		cmdPanel.add(refreshButton);
		cmdPanel.add(printButton);
		cmdPanel.add(copyButton);
		cmdPanel.add(cancelButton);

		// Create filter button for done items
		JCheckBox cbShowDone = new JCheckBox("Show done");
		cbShowDone.addChangeListener(new ChangeListener() {
			void stateChanged (ChangeEvent event) {
				JCheckBox cb = event.getSource();
				gtdMapReader.filterDone=cb.selected;
				Refresh();
			}
		});
		cmdPanel.add(cbShowDone);

		frame.add(cmdPanel, BorderLayout.SOUTH);

		// make the frame half the height and width
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		int frHeight = (screenSize.height)/2;
		int frWidth = (screenSize.width)/2;


		//Display the window
		frame.pack();
		frame.setSize(frWidth,frHeight);
		frame.setLocationRelativeTo(UITools.frame);
		frame.setVisible(true);
	}

	public void Refresh() {
		// Get next actions from GTD mind map
		gtdMapReader.ParseMap();

		// Get HTML for next action lists
		ByProject = gtdMapReader.getHTMLByProject();
		ByContext = gtdMapReader.getHTMLByContext();
		ByWho = gtdMapReader.getHTMLByWho();
		ByWhen = gtdMapReader.getHTMLByWhen();

		// add reports to labels
		htmlByProject.setText(ByProject);
		htmlByContext.setText(ByContext);
		htmlByWho.setText(ByWho);
		htmlByWhen.setText(ByWhen);

		// update counts on tabs
		if (tabbedPane.tabCount>0){
			tabbedPane.setTitleAt(0, "<html><body height=50>By Project<br/><h1 style='color:#666666;text-align:center;'>" + gtdMapReader.getCountNextActions().toString() + "</h1></body></html>");
			tabbedPane.setTitleAt(1, "<html><body height=50>By Who<br/><h1 style='color:#666666;text-align:center;'>" + gtdMapReader.getCountDelegated().toString() + "</h1></body></html>");
		}
	}
}


//---------------------------------------------------------
// GTDMapReader: reads and parses GTD map for next actions
//---------------------------------------------------------
public class GTDMapReader {

	private String ByProject = "";
	private String ByContext = "";
	private String ByWho = "";
	private String ByWhen = "";
	private boolean filterDone = false;
	private int CountNextActions = 0;
	private int CountDelegated = 0;
	private String htmlBodyStyle = "<html><body>\n";
	private String IconNextAction = "yes";
	private String IconProject = "list";
	private String IconToday = "excellent";
	private String IconDone = "button_ok";
	private String NodeNextActionIcon ="Icon: Next action";
	private String NodeProjectIcon ="Icon: Project";
	private String NodeTodayIcon ="Icon: Today";
	private String NodeDoneIcon ="Icon: Done";
	private Proxy.Node RootNode;
	private def NAList;
	private def ProjectList;

	//--------------------------------------------------------------
	// constructor
	public GTDMapReader(Proxy.Node rootNode){
		RootNode = rootNode;
	}

	//--------------------------------------------------------------
	// properties
	public String getNextActionIcon() {
		IconNextAction = findIconKey(RootNode,NodeNextActionIcon,IconNextAction);
		return IconNextAction;
	}

	public String getProjectIcon() {
		IconProject = findIconKey(RootNode,NodeProjectIcon,IconProject);
		return IconProject;
	}

	public String getTodayIcon(){
		IconToday = findIconKey(RootNode,NodeTodayIcon,IconToday);
		return IconToday;
	}

	public String getDoneIcon(){
		IconDone = findIconKey(RootNode,NodeDoneIcon,IconDone);
		return IconDone;
	}

	public def getProjectList(){
		ProjectList = findProjects(RootNode,IconProject);
		return ProjectList;
	}

	public def getNAList(){
		NAList = findNextActions(RootNode, ProjectList,IconNextAction,IconToday,IconDone);
		return NAList;
	}

	public int getCountNextActions(){
		return CountNextActions;
	}

	public int getCountDelegated(){
		return CountDelegated;
	}

	public String getHTMLByProject(){
		ByProject = htmlBodyStyle;
		def naByProject = NAList.groupBy{it['project']};
		naByProject = naByProject.sort{it.toString().toLowerCase()};
		if(naByProject.size()>0) {
			CountNextActions = 0;
			naByProject.each {
				key, value -> String strProject = key;
				ByProject += "<h1>" + strProject + "</h1>\n<ul>\n";
				naByProject[strProject].each {
					CountNextActions = CountNextActions + 1;
					String strContext = it['context'];
					String strWho = it['who'];
					String strWhen = it['when'];
					boolean done = it['done'];
					
					if (strWho=="tbd"){strWho = "";}
					if (strWhen=="tbd"){strWhen = "";}
					String strOwner = "";
					String strDue = "";
					if (strWho.length()>0){strOwner = "[" + strWho + "]";}
					if (strWhen.length()>0){strDue = "{" + strWhen + "}";}
					String strAssign = strOwner + " " + strDue;
					strAssign = strAssign.trim();
					ByProject += "\t<li>" +
						(done?"<strike>":"") +
							"<a href='" + it['nodeID'] + "'>" + it['action'] + "</a>" + (strContext==null ? "":" @" + strContext + " ") + strAssign +
						(done?"</strike>":"") +
						"</li>\n";
				}
				ByProject += "</ul>\n";
			}
		}
		else {
			ByProject += "<h1 style='color:#666666;'>No Next Actions Found On This Map</h1><p>Make sure to mark Next Actions with icon specified by 'Icon:Next action' node under 'Settings' node</p>"
		}

		ByProject += "</body></html>";

		return ByProject;
	}

	public String getHTMLByContext(){
		ByContext = htmlBodyStyle;
		def naByContext = NAList.groupBy{it['context']};
		naByContext = naByContext.sort{it.toString().toLowerCase()};
		if (naByContext.size()>0){
			naByContext.each {
				key, value -> String strContext = key;
				ByContext += "<h1>" + (strContext==null ? "Unspecified" : strContext) + "</h1>\n<ul>\n";
				naByContext[strContext].each {
					String strProject = it['project'];
					String strWho = it['who'];
					String strWhen = it['when'];
					boolean done = it['done'];
					
					if (strWho=="tbd"){strWho = "";}
					if (strWhen=="tbd"){strWhen = "";}
					String strOwner = "";
					String strDue = "";
					if (strWho.length()>0){strOwner = "[" + strWho + "]";}
					if (strWhen.length()>0){strDue = "{" + strWhen + "}";}
					String strAssign = strOwner + " " + strDue;
					strAssign = strAssign.trim();
					ByContext += "\t<li>" +
						(done?"<strike>":"") +
							"<a href='" + it['nodeID'] + "'>" + it['action'] + "</a>" + " (for: " + strProject + ")" + " " + strAssign +
						(done?"</strike>":"") +
						"</li>\n";
				}
				ByContext += "</ul>\n";
			}
		}
		else {
			ByContext += "<h1 style='color:#666666;'>No Next Actions Found On This Map</h1><p>Make sure to mark Next Actions with icon specified by 'Icon:Next action' node under 'Settings' node</p>"
		}
		ByContext += "</body></html>";
		return ByContext;
	}

	public String getHTMLByWho(){
		ByWho = htmlBodyStyle;
		def naByWho = NAList.groupBy{it['who']};
		naByWho = naByWho.sort{it.toString().toLowerCase()};
		CountDelegated = 0;
		naByWho.each {
			key, value -> String strWho = key;
			if (strWho!="tbd"){
				ByWho += "<h1>" + strWho + "</h1>\n<ul>\n";
				naByWho[strWho].each {
					CountDelegated = CountDelegated + 1;
					String strProject = it['project'];
					String strWhen = it['when'];
					String strContext = it['context'];
					boolean done = it['done'];
					if (strWhen=="tbd"){strWhen = "";}
					strWhen = strWhen.trim();
					if (strWhen.length()>0){strWhen = " {" + strWhen + "}";}
						ByWho += "\t<li>" +
							(done?"<strike>":"") +
								"<a href='" + it['nodeID'] + "'>" + it['action'] + "</a>" + (strContext==null ? "":" @" + strContext + " ") + " (for: " + strProject + ")" + strWhen +
							(done?"</strike>":"") +
							"</li>\n";
				}
				ByWho += "</ul>\n";
			}
		}
		if (ByWho == htmlBodyStyle){
			ByWho += "<h1 style='color:#666666;'>No Delegated Next Actions Found On This Map</h1><p>Use ALT-F9 to add a 'Who' attribute to a Next Action node</p>";
		}
		ByWho += "</body></html>";
		return ByWho;
	}

	public String getHTMLByWhen(){
		ByWhen = htmlBodyStyle;
		def naByWhen = NAList.groupBy{it['when']};
		naByWhen = naByWhen.sort{it.toString().toLowerCase()};
		naByWhen = sortDateWhen(naByWhen);
		naByWhen.each {
			key, value -> String strWhen = key;
			if (strWhen!="tbd"){
				ByWhen += "<h1>" + strWhen + "</h1>\n<ul>\n";
				naByWhen[strWhen].each {
					String strProject = it['project'];
					String strWho = it['who'];
					String strContext = it['context'];
					boolean done = it['done'];
					if (strWho=="tbd"){strWho = "";}
					strWho = strWho.trim();
					if (strWho.length()>0){strWho = " [" + strWho + "]";}
						ByWhen += "\t<li>" +
							(done?"<strike>":"") +
								"<a href='" + it['nodeID'] + "'>" + it['action'] + "</a>" + (strContext==null ? "":" @" + strContext + " ") + " (for: " + strProject + ")" + strWho +
							(done?"</strike>":"") +
							"</li>\n";
					}
					ByWhen += "</ul>\n";
			}
		}
		if (ByWhen == htmlBodyStyle) {
			ByWhen += "<h1 style='color:#666666;'>No Due Dates for Next Actions Found On This Map</h1><p>Use ALT-F9 to add a 'When' attribute to a Next Action node</p>";
		}
		ByWhen += "</body></html>";
		return ByWhen;
	}

	private def sortDateWhen(def naByWhen){
		def newByWhen = [:];

		// Today goes first, followed by This Week
		if(naByWhen.containsKey('Today')){newByWhen['Today'] = naByWhen['Today'];}
		if(naByWhen.containsKey('This Week')){newByWhen['This Week'] = naByWhen['This Week'];}

		// Now add any other dates
		naByWhen.each {
			key, value -> String strWhen = key;
			if(strWhen!="Today" && strWhen!="This Week"){
				newByWhen[strWhen] = naByWhen[strWhen];
			}
		}

		return newByWhen;
	}

	//--------------------------------------------------------------
	//Get icon key names from Settings/Icons nodes
	private String findIconKey(Proxy.Node thisNode, String nodeLabel, String iconLast){
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
	// recursive walk through nodes to find Projects
	private def findProjects(Proxy.Node thisNode, String iconProject){
		def icon = thisNode.icons.icons;
		def result = [];

		// include result if it has project icon and its not the icon setting node for projects
		if (icon[0] == iconProject){
			if (!(thisNode.text =~ /Icon:/)){
				result = [thisNode];
			}
		}

		thisNode.children.each {
			result += findProjects(it, iconProject);
		}
		return result;
	}

	//--------------------------------------------------------------
	// find parent for the next action, either direct (task) or indirect (project)
	private def findNextActionProject(Proxy.Node thisNode, listProjects){
		Proxy.Node parentNode = thisNode.getParent();
		def naProject = parentNode.text;

		listProjects.each {
			if (it!=null && thisNode.isDescendantOf(it)){
				naProject = it.text;
			}
		}
		return naProject;
	}

	//--------------------------------------------------------------
	// recursive walk through nodes to find Next Actions
	private def findNextActions(Proxy.Node thisNode, listProjects, String iconNextAction, String iconToday, String iconDone){
		def icons = thisNode.icons.icons;
		def naAction = thisNode.text;
		def naNodeID = thisNode.nodeID;
		boolean foundIconNextAction = false;
		boolean foundIconToday = false;
		boolean foundIconDone = false;

		// use index method to get attributes
		String naContext = thisNode['Where'].toString();
		String naWho = thisNode['Who'].toString();
		String naWhen = thisNode['When'].toString();

		// take care of missing attributes. null or empty string evaluates as boolean false
		if (!naWho) {naWho = "tbd";}
		if (!naWhen) {naWhen = "This Week";}
		else { 
			SimpleDateFormat fmt = determineDateFormat(naWhen);
			if (fmt!=null) {
				naWhen = fmt.parse(naWhen).format("yyyy-MM-dd"); 
				//TODO: write back value
				//thisNode['When'] = naWhen;
			}
		}
		def result = [];

		icons.each {
			// check for Next Action icon
			if (it == iconNextAction){
				foundIconNextAction = true;
			}
			// check for Today icon
			if (it == iconToday){
				foundIconToday = true;
			}
			// check for Done icon
			if (it == iconDone){
				foundIconDone = true;
			}
		}

		// include result if it has next action icon and its not the icon setting node for next actions
		if (foundIconNextAction){
			if (!(naAction =~ /Icon:/)){
				def naProject = findNextActionProject(thisNode, listProjects);
				if (foundIconToday){naWhen = "Today";}
				if (!(foundIconDone && filterDone)) {
					result = [action:naAction, project:naProject, context:naContext, who:naWho, when:naWhen, nodeID:naNodeID, done:foundIconDone];
				}
			}
		}

		thisNode.children.each {

		result += findNextActions(it, listProjects, iconNextAction, iconToday, iconDone);
		}
		return result;
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
	public void ConvertShorthand(Proxy.Node thisNode){
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
	private String[] parseShorthand(String nodeText){
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
		'^\\d{4}\.\\d{1,2}\.\\d{1,2}$':  new SimpleDateFormat("yyyy.MM.dd"),
		'^\\d{4}\.\\d{1,2}\.\\d{1,2}\.$':  new SimpleDateFormat("yyyy.MM.dd."),
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
	public void ParseMap(){
		// Get icon keys for next actions and projects
		IconNextAction = getNextActionIcon();
		IconProject = getProjectIcon();
		IconToday = getTodayIcon();
		IconDone = getDoneIcon();

		// Expand any nodes with next action shorthand
		ConvertShorthand(RootNode);

		// Get project and next action lists
		ProjectList = getProjectList();
		NAList = getNAList();

		// Get HTML for next action lists
		ByProject = getHTMLByProject();
		ByContext = getHTMLByContext();
		ByWho = getHTMLByWho();
		ByWhen = getHTMLByWhen();
	}

}

//---------------------------------------------------------
// Refresh the GUI window
//---------------------------------------------------------
public class RefreshUIWindow implements ActionListener {
	private GTDReport report;	

	public void actionPerformed(ActionEvent e) {
		report.Refresh();
	}

	public RefreshUIWindow(GTDReport gtdReport) {
		report = gtdReport;
	}
}

//---------------------------------------------------------
// Prints the GUI window
//---------------------------------------------------------
public class PrintUIWindow implements ActionListener {
	GTDReport reportToPrint;
	int reportNum = 0;
	String strReport = "";

	public void actionPerformed(ActionEvent e) {
		// get currently selected tab
		reportNum = reportToPrint.TabIndex();

		// get report
		switch (reportNum) {
			case 0: strReport = reportToPrint.ProjectReport(); break;
			case 1: strReport = reportToPrint.OwnerReport(); break;
			case 2: strReport = reportToPrint.ContextReport(); break;
			case 3: strReport = reportToPrint.DueReport(); break;
			default: strReport = "(no report)"; break;
		}

		JEditorPane panePrint = new JEditorPane("text/html", strReport);
		JTextComponent txtPrint = panePrint;

		try {
			boolean complete = txtPrint.print();
			if (complete) {
				// show a success message
			} else {
				// show a message indicating that printing was cancelled
			}
		} catch (PrinterException pe) {
			// Printing failed, report to the user  
		}
	}

	public PrintUIWindow(GTDReport gtdReport) {
		reportToPrint = gtdReport;      
	}
}

//---------------------------------------------------------
// Close the GUI window
//---------------------------------------------------------
public class CloseUIWindow implements ActionListener {
   JFrame frameToClose;
  
   public void actionPerformed(ActionEvent e) {
   frameToClose.setVisible(false);
   frameToClose.dispose();
   }

   public CloseUIWindow(JFrame f) {
   frameToClose = f;
   }
}

//---------------------------------------------------------
// Copy the GUI window
//---------------------------------------------------------
public class CopyUIWindow implements ActionListener {
	GTDReport reportToCopy;
	int reportNum = 0;
	String strReport = "";
  
	public void actionPerformed(ActionEvent e) {    
		// get currently selected tab
		reportNum = reportToCopy.TabIndex();

		// get report
		switch (reportNum) {
			case 0: strReport = reportToCopy.ProjectReport(); break;
			case 1: strReport = reportToCopy.OwnerReport(); break;
			case 2: strReport = reportToCopy.ContextReport(); break;   
			case 3: strReport = reportToCopy.DueReport(); break;
			default: strReport = "(no report)"; break;
		}
	  
		// copy to system clipboard as plain text
		strReport = strReport.replaceAll("\\<.*?>","");
		StringSelection ss = new StringSelection(strReport);
		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss, null);
   }

	public CopyUIWindow(GTDReport gtdReport) {
		reportToCopy = gtdReport;   
	}
}


//---------------------------------------------------------
// Process hyperlink to map node
//---------------------------------------------------------
public class NodeLink implements HyperlinkListener {

	GTDReport report;
	Proxy.Controller ctrl;

	public void hyperlinkUpdate(HyperlinkEvent e){
		if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED){
			String linkNodeID = e.getDescription();
			def nodesFound = ctrl.find{ it.nodeID == linkNodeID};
			if (nodesFound[0] != null){
				FoldToTop(nodesFound[0]);
				UnfoldBranch(nodesFound[0]);
				ctrl.centerOnNode(nodesFound[0]);
				ctrl.select(nodesFound[0]);
			}
			else {
				UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list");
			}
		}
	}

	// recursive unfolding of branch
	private void UnfoldBranch(Proxy.Node thisNode){
		Proxy.Node rootNode = thisNode.getMap().getRoot();
		if (thisNode != rootNode){
			thisNode.setFolded(false);
			UnfoldBranch(thisNode.getParent());
		}
	}

	// fold to first level
	private void FoldToTop(Proxy.Node thisNode){
	Proxy.Node rootNode = thisNode.getMap().getRoot();
		def Nodes = ctrl.findAll();
		Nodes.each {
			it.setFolded(true);
		}
		rootNode.setFolded(false);
	}


	public NodeLink(GTDReport gtdReport){
		report = gtdReport;
		ctrl = report.getController();
	}
}


//=========================================================
// script
//=========================================================

// Select root node of map
Proxy.Node rootNode = node.map.root;
c.select(rootNode);

// create a GTDMapReader
GTDMapReader gtdMapReader = new GTDMapReader(rootNode);

// generate report GUI
GTDReport report = new GTDReport();
report.setUserPath(c.userDirectory.toString());
report.setController(c);
report.setMapReader(gtdMapReader);
report.Show();
