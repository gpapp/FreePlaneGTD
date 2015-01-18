// @ExecutionModes({on_single_node="main_menu_scripting/freeplaneGTD[addons.listNextActions]"})
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

import java.awt.*
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import java.awt.datatransfer.StringSelection
import javax.swing.*
import javax.swing.event.ChangeEvent
import javax.swing.event.ChangeListener
import javax.swing.event.HyperlinkEvent
import javax.swing.event.HyperlinkListener
import javax.swing.text.html.HTMLEditorKit
import javax.swing.text.html.StyleSheet

import org.xhtmlrenderer.simple.XHTMLPanel
import org.xhtmlrenderer.simple.FSScrollPane
import org.xhtmlrenderer.simple.extend.XhtmlNamespaceHandler

import groovy.swing.SwingBuilder

import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.format.FormattedDate
import org.freeplane.plugin.script.proxy.Proxy

import freeplaneGTD.DateUtil
import freeplaneGTD.GTDMapReader
import freeplaneGTD.MyTransferHandler
import freeplaneGTD.Tag

String title = "GTD Next Actions"
String userPath = c.userDirectory.toString()
String txtVer = "1.1"
String txtURI = "http://www.itworks.hu/index.php/freeplane-gtd+"


def panelTitle = { panelT, count = null ->
    new Tag('html', new Tag('body',
            new Tag('div', panelT, [style: 'font-weight:bold;font-style:italic']), [height: '50']).addContent(count != null ? new Tag('div', count, [style: 'font-size:24pt;color:#666666;text-align:center']) : ''))
}

class ReportModel {
    boolean filterDone
    int selPane
    Proxy.Node rootNode;
    def actionList;
    GTDMapReader mapreader;

    ReportModel(Proxy.Node rootNode) {
        this.rootNode = rootNode
        this.mapreader = GTDMapReader.instance
    }

    //--------------------------------------------------------------
    // parse the GTD mind map
    void parseMap() {
        // Expand any nodes with next action shorthand
        mapreader.convertShorthand(rootNode);

        // Get next action lists
        actionList = mapreader.getActionList(rootNode, filterDone);
    }

    int projectCount() {
        return actionList.size()
    }

    int delegateCount() {
        //Filter the missing delegates
        return actionList.groupBy({ it['who'] }).keySet().findAll { it }.size()
    }

    Tag getStyleSheet () {
	Tag style = new Tag('style', 'body {color:#000000; font-family:Verdana, Arial; font-size:10pt; padding: 10px 25px 0px 25px; }\n'+
		    'h1 {font-size:20pt; font-weight:bold;}\n'+
		    'a {text-decoration: none; color:#990000;}\n'+
		    '.priority {padding: 2px; display:inline-block; margin-right: 2px; color: #FFFFFF;}\n'+
		    '.priority-0 {background-color: #FF0000;}\n'+
		    '.priority-1 {background-color: #FF00FF;}\n' +
                    '.priority-2 {background-color: #FFFF00;}\n' +
                    '.priority-3 {background-color: #FF0077;}\n' +
                    '.priority-4 {background-color: #770000;}\n' +
                    '.priority-5 {background-color: #FF7700;}\n' +
                    '.priority-6 {background-color: #FF0077;}\n' +
                    '.priority-7 {background-color: #770000;}\n' +
                    '.priority-8 {background-color: #FF7777;}\n' +
                    '.priority-9 {background-color: #777777;}', [type: 'text/css'])
	return style
    }

    String projectText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_project"), [height: '50px', width: '100%'])
        def naByGroup = actionList.groupBy { it['project'] }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                body.addContent('h2', key)
                Tag curItem = body.addChild('ul')
                naByGroup[key].each {
                    Tag wrap = curItem.addChild('li')
                    if (it['done']) wrap = wrap.addChild('strike')
                    if (it['priority']) {
                        wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                    }
                    wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                            (it['who'] ? ' [' + it['who'] + ']' : '') +
                                    (it['when'] ? ' {' + it['when'] + '}' : '') +
                                    (it['context'] ? ' @' + it['context'] : ''))
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "resources/schema/xhtml/xhtml-1/xhtml1-strict.dtd">\n'+html.toString()
    }

    String delegateText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_who"), [height: '50px', width: '100%'])
        def naByGroup = actionList.groupBy { it['who'] }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                if (key) {
                    body.addContent('h2',key)
                    Tag curItem = body.addChild('ul')
                    naByGroup[key].each {
                        Tag wrap = curItem.addChild('li')
                        if (it['done']) wrap = wrap.addChild('strike')
                        if (it['priority']) {
                            wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                        }
                        wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                                (it['when'] ? ' {' + it['when'] + '}' : '') +
                                        (it['context'] ? ' @' + it['context'] : '') +
                                        ' for ' + it['project'])
                    }
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "resources/schema/xhtml/xhtml-1/xhtml1-strict.dtd">\n'+html.toString()
    }

    String contextText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_context"), [height: '50px', width: '100%'])
        def naByGroup = actionList.groupBy { it['context'] }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                body.addContent('h2', key ?: TextUtils.getText("freeplaneGTD.view.context.unassigned"))
                Tag curItem = body.addChild('ul')
                naByGroup[key].each {
                    Tag wrap = curItem.addChild('li')
                    if (it['done']) wrap = wrap.addChild('strike')
                    if (it['priority']) {
                        wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                    }
                    wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                            (it['who'] ? ' [' + it['who'] + ']' : '') +
                                    (it['when'] ? ' {' + it['when'] + '}' : '') +
                                    ' for ' + it['project'])
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "resources/schema/xhtml/xhtml-1/xhtml1-strict.dtd">\n'+html.toString()
    }

    String timelineText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_when"), [height: '50px', width: '100%'])
        def naByGroup = actionList.groupBy { it['when'] }.sort { it.toString().toLowerCase() }
        /* TODO: implement timeline sorting
        first overdue, then today, than this week, then future elements, then String keys
        
	def today = naByGroup.remove(TextUtils.getText("freeplaneGTD.view.when.today"))
	if (today) {
	    int lastindex=0
	    naByGroup.keys.eachWithIndex { it, i -> if (! it instanceof String) { lastindex=i} }
	    naByGroup.insert(today,lastindex)
	}
	def week = naByGroup.remove(TextUtils.getText("freeplaneGTD.view.when.this_week"))
	if (week) {
	    int lastindex=0
	    naByGroup.keys.eachWithIndex { it, i -> if (! it instanceof String) { lastindex=i} }
	    naByGroup.addAll(lastindex,[week])
	}
	*/
        naByGroup.each {
            key, value ->

                body.addContent('h2',key)
                Tag curItem = body.addChild('ul')
                naByGroup[key].each {
                    Tag wrap = curItem.addChild('li')
                    if (it['done']) wrap = wrap.addChild('strike')
                    if (it['priority']) {
                        wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                    }
                    wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                            (it['who'] ? ' [' + it['who'] + ']' : '') +
                                    (it['context'] ? ' @' + it['context'] : '') +
                                    ' for ' + it['project'])
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "resources/schema/xhtml/xhtml-1/xhtml1-strict.dtd">\n'+html.toString()
    }
}
// TODO: Add text by priority

ReportModel report = new ReportModel(node.map.root)

def refresh = {
    report.parseMap()
    projectPane.setDocumentFromString(report.projectText(),null,new XhtmlNamespaceHandler())
    delegatePane.setDocumentFromString(report.delegateText(),null,new XhtmlNamespaceHandler())
    contextPane.setDocumentFromString(report.contextText(),null,new XhtmlNamespaceHandler())
    timelinePane.setDocumentFromString(report.timelineText(),null,new XhtmlNamespaceHandler())
	// TODO: Add priority pane context
    tabbedPane.setTitleAt(0, panelTitle(TextUtils.getText("freeplaneGTD.tab.project.title"), report.projectCount()).toString())
    tabbedPane.setTitleAt(1, panelTitle(TextUtils.getText("freeplaneGTD.tab.who.title"), report.delegateCount()).toString())

    tabbedPane.selectedIndex = report.selPane;
    cbFilterDone.selected = report.filterDone
}
def swing = SwingBuilder.edtBuilder {
    // make the frame half the height and width
    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize()
    int frHeight = (screenSize.height) / 4 * 3
    int frWidth = (screenSize.width) / 4 * 3

    iconFrame = imageIcon(userPath + "/icons/fpgtdIcon.png").image
    iconLogo = imageIcon(userPath + "/resources/images/fpgtdLogo.png")
    mainFrame = frame(title: title,
            iconImage: iconFrame,
            size: [frWidth, frHeight],
            defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
            show: false) {
        borderLayout()
        reportPanel = panel(constraints: BorderLayout.CENTER) {
            gridLayout(cols: 1, rows: 1)
            tabbedPane = tabbedPane(tabPlacement: JTabbedPane.RIGHT, selectedIndex: report.selPane) {
                MyTransferHandler myTransferHandler = new MyTransferHandler();

                projectPanel = panel(toolTipText: TextUtils.getText("freeplaneGTD.tab.project.tooltip")) {
                    gridLayout(cols: 1, rows: 1)
                }
                delegatePanel = panel(toolTipText: TextUtils.getText("freeplaneGTD.tab.who.tooltip")) {
                    gridLayout(cols: 1, rows: 1)
                }
                contextPanel = panel(name: panelTitle(TextUtils.getText("freeplaneGTD.tab.context.title")),
                        toolTipText: TextUtils.getText("freeplaneGTD.tab.context.tooltip")) {
                    gridLayout(cols: 1, rows: 1)
                }
                timelinePanel = panel(name: panelTitle(TextUtils.getText("freeplaneGTD.tab.when.title")),
                        toolTipText: TextUtils.getText("freeplaneGTD.tab.when.tooltip")) {
                    gridLayout(cols: 1, rows: 1)
                }
                panel(name: panelTitle(TextUtils.getText("freeplaneGTD.tab.about.title")),
                        toolTipText: TextUtils.getText("freeplaneGTD.tab.about.tooltip")) {
                    panel() {
                        gridLayout(cols: 2, rows: 1)
                        label(text: new Tag('html',
                                new Tag('body',
                                        new Tag('h1', 'Freeplane|')
                                                .addContent('span', 'GTD', [style: 'color:#ff3300'])
                                                .addContent('h2', 'Version ' + txtVer), [style: 'padding-left:25px'])),
                                icon: iconLogo,
                                horizontalAlignment: JLabel.CENTER);
                    }

                    linkURL = label(text: "<html><h4>by Gergely Papp<br/><h5>based on the original code by Auxilus Systems LLC</h5><h4>Licensed under GNU GPL Version 3</h4><a href='" + txtURI + "'>" + txtURI + "</a></html>", horizontalAlignment: JLabel.CENTER,
                            cursor: new Cursor(Cursor.HAND_CURSOR));
                }
            }
            projectPane = new XHTMLPanel()
            projectPanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"),new FSScrollPane(projectPane))
            delegatePane = new XHTMLPanel()
            delegatePanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"),new FSScrollPane(delegatePane))
            contextPane = new XHTMLPanel()
            contextPanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"),new FSScrollPane(contextPane))
            timelinePane = new XHTMLPanel()
            timelinePanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"),new FSScrollPane(timelinePane))
        }
        panel(constraints: BorderLayout.SOUTH) {
            boxLayout(axis: BoxLayout.X_AXIS)
            button(text: TextUtils.getText("freeplaneGTD.button.refresh"),
                    actionPerformed: {
                        refresh(mainFrame)
                    })
            button(text: TextUtils.getText("freeplaneGTD.button.print"),
                    actionPerformed: {
                        // get report
                        switch (report.selPane) {
                            case 0: strReport = report.projectText(); break;
                            case 1: strReport = report.delegateText(); break;
                            case 2: strReport = report.contextText(); break;
                            case 3: strReport = report.timeLineText(); break;
							// TODO: Add priority list
                            default: strReport = "(no report)"; break;
                        }
                    })
            button(text: TextUtils.getText("freeplaneGTD.button.copy"),
                    actionPerformed: {
                        JEditorPane curPane;
                        // get report
                        switch (report.selPane) {
                            case 0: curPane = projectPane; break;
                            case 1: curPane = delegatePane; break;
                            case 2: curPane = contextPane; break;
                            case 3: curPane = timelinePane; break;
							// TODO: Add priority list
                            default: curPane = projectPane; break;
                        }
                        int caretPos = curPane.getCaretPosition()
                        curPane.selectAll();
                        curPane.copy();
                        curPane.select(0, 0);
                        curPane.setCaretPosition(caretPos)
                    })
            button(text: TextUtils.getText("freeplaneGTD.button.cancel"),
                    actionPerformed: {
                        mainFrame.hide()
                        mainFrame.dispose()
                    })
            cbFilterDone = checkBox(text: TextUtils.getText("freeplaneGTD.button.filter_done"),
                    selected: report.filterDone,
                    actionPerformed: { report.filterDone = it.source.selected; refresh(mainFrame) })
        }
    }
    // Register a change listener to track selected tab
    tabbedPane.addChangeListener(new ChangeListener() {
        public void stateChanged(ChangeEvent evt) {
            JTabbedPane pane = (JTabbedPane) evt.getSource();
            // Get current tab index
            report.selPane = pane.getSelectedIndex();
        }
    });

    // Add hyperlink listener to about dialog
    linkURL.addMouseListener(
        new MouseAdapter() {
            public void mouseClicked(MouseEvent event) {
                URI uriLink = new URI(txtURI);
                if (Desktop.isDesktopSupported()) {
                    try {
                        Desktop.getDesktop().browse(uriLink);
                    } catch (IOException e) { /* TODO: error handling */
                    }
                } else { /* TODO: error handling */
                }
            }
        })

}

//---------------------------------------------------------
// Process hyperlink to map node
//---------------------------------------------------------
class NodeLink implements HyperlinkListener {
    Proxy.Controller ctrl
    JFrame frame

    NodeLink(Proxy.Controller ctrl, JFrame frame) {
        this.ctrl = ctrl
        this.frame = frame

    }

    public void hyperlinkUpdate(HyperlinkEvent e) {
        if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
            String linkNodeID = e.getDescription();
            def nodesFound = ctrl.find { it.nodeID == linkNodeID };

            if (nodesFound[0] != null) {
                FoldToTop(nodesFound[0]);
                UnfoldBranch(nodesFound[0]);
                ctrl.select(nodesFound[0]);
                ctrl.centerOnNode(nodesFound[0]);
                frame.dispose()
                frame.hide()
            } else {
                UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list");
            }
        }
    }

    // recursive unfolding of branch
    private void UnfoldBranch(Proxy.Node thisNode) {
        Proxy.Node rootNode = thisNode.getMap().getRoot();
        if (thisNode != rootNode) {
            thisNode.setFolded(false);
            UnfoldBranch(thisNode.getParent());
        }
    }

    // fold to first level
    private void FoldToTop(Proxy.Node thisNode) {
        Proxy.Node rootNode = thisNode.getMap().getRoot();
        def Nodes = ctrl.findAll();
        Nodes.each {
            it.setFolded(true);
        }
        rootNode.setFolded(false);
    }

}

NodeLink nl = new NodeLink(c, mainFrame)
//projectPane.addHyperlinkListener(nl);
//delegatePane.addHyperlinkListener(nl);
//contextPane.addHyperlinkListener(nl);
//timelinePane.addHyperlinkListener(nl);
// TODO: Add priority hyperlink listener

// on ESC key close frame
mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
        KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText("freeplaneGTD.button.cancel"));
mainFrame.getRootPane().getActionMap().put(TextUtils.getText("freeplaneGTD.button.cancel"),
        new CloseAction(mainFrame));

class CloseAction extends AbstractAction {
    JFrame frame

    CloseAction(frame) {
        this.frame = frame
    }

    public void actionPerformed(ActionEvent e) {
        this.frame.setVisible(false);
        this.frame.dispose();
    }
}

// set up the default stylesheet for all HTMLEditorKit instances
/*
HTMLEditorKit kit = (HTMLEditorKit) delegatePane.getEditorKit();
StyleSheet styleSheet = kit.getStyleSheet()
styleSheet.addRule("body {color:#000000; font-family:Verdana, Arial; font-size:12pt; padding: 10px 25px 0px 25px; }")
styleSheet.addRule("h1 {font-size:20pt; font-weight:bold}")
styleSheet.addRule("a {text-decoration: none; color:#990000;}")
styleSheet.addRule(".priority-0 {padding: 5px; color: #FFFFFF; background-color: #FF0000;}\n" +
                   ".priority-1 {padding: 3pt; color: #FFFFFF; background-color: #FF00FF;}\n" +
                   ".priority-2 {padding: 30px; color: #FFFFFF; background-color: #FFFF00;}\n" +
                   ".priority-3 {padding: 30pt; color: #FFFFFF; background-color: #FF0077;}\n" +
                   ".priority-4 {padding: 30; color: #FFFFFF; background-color: #770000;}\n" +
                   ".priority-5 {padding: 3; color: #FFFFFF; background-color: #FF7700;}\n" +
                   ".priority-6 {padding: 3px; color: #FFFFFF; background-color: #FF0077;}\n" +
                   ".priority-7 {padding: 3px; color: #FFFFFF; background-color: #770000;}\n" +
                   ".priority-8 {padding: 3px; color: #FFFFFF; background-color: #FF7777;}\n" +
                   ".priority-9 {padding: 3px; color: #FFFFFF; background-color: #777777;}")
*/
report.selPane = config.getIntProperty('freeplaneGTD_default_view')
report.filterDone = config.getBooleanProperty('freeplaneGTD_filter_done')
refresh()
projectPane.scrollTo(new Point(0,0))
delegatePane.scrollTo(new Point(0,0))
contextPane.scrollTo(new Point(0,0))
timelinePane.scrollTo(new Point(0,0))
mainFrame.setLocationRelativeTo(UITools.frame)
mainFrame.show()
