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
import freeplaneGTD.ClipBoardUtil
import freeplaneGTD.ReportModel
import freeplaneGTD.Tag
import groovy.swing.SwingBuilder
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy
import org.xhtmlrenderer.simple.FSScrollPane
import org.xhtmlrenderer.simple.XHTMLPanel
import org.xhtmlrenderer.simple.extend.XhtmlNamespaceHandler
import org.xhtmlrenderer.swing.BasicPanel
import org.xhtmlrenderer.swing.LinkListener

import javax.swing.*
import javax.swing.event.ChangeEvent
import javax.swing.event.ChangeListener
import java.awt.*
import java.awt.datatransfer.Clipboard
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent

String title = 'GTD Next Actions'
String userPath = c.userDirectory.toString()
String txtVer = '1.3'
String txtURI = 'http://www.itworks.hu/index.php/freeplane-gtd+'

def panelTitle = { panelT, count = null ->
    Tag tag = new Tag('html')
    Tag innerChild = tag.addChild('body', [height: '50']).addChild('div', [style: 'font-weight:bold;font-style:italic'])
    innerChild.addContent(panelT)
    if (count)
        innerChild.addContent(new Tag('div', count, [style: 'font-size:24pt;color:#666666;text-align:center']))
    return tag
}
ReportModel report = new ReportModel(node.map.root)

def refresh = {
    report.parseMap()
    try {
        projectPane.setDocumentFromString(report.projectText(), null, new XhtmlNamespaceHandler())
        delegatePane.setDocumentFromString(report.delegateText(), null, new XhtmlNamespaceHandler())
        contextPane.setDocumentFromString(report.contextText(), null, new XhtmlNamespaceHandler())
        timelinePane.setDocumentFromString(report.timelineText(), null, new XhtmlNamespaceHandler())
    } catch (e) {
        println(report.projectText())
    }
    tabbedPane.setTitleAt(0, panelTitle(TextUtils.getText("freeplaneGTD.tab.project.title"), report.projectCount()).toString())
    tabbedPane.setTitleAt(1, panelTitle(TextUtils.getText("freeplaneGTD.tab.who.title"), report.delegateCount()).toString())

    tabbedPane.selectedIndex = report.selPane;
    cbFilterDone.selected = report.filterDone
}
SwingBuilder.edtBuilder {
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
            projectPanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(projectPane))

            delegatePane = new XHTMLPanel()
            delegatePanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(delegatePane))

            contextPane = new XHTMLPanel()
            contextPanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(contextPane))

            timelinePane = new XHTMLPanel()
            timelinePanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(timelinePane))
        }
        panel(constraints: BorderLayout.SOUTH) {
            boxLayout(axis: BoxLayout.X_AXIS)
            button(text: TextUtils.getText("freeplaneGTD.button.refresh"),
                    actionPerformed: {
                        refresh(mainFrame)
                    })
            button(text: TextUtils.getText("freeplaneGTD.button.copy"),
                    actionPerformed: {
                        Clipboard clip = projectPanel.getToolkit().getSystemClipboard();
                        if (clip != null) {
                            switch (report.selPane) {
                                case 0: curContent = report.projectText(); break;
                                case 1: curContent = report.delegateText(); break;
                                case 2: curContent = report.contextText(); break;
                                case 3: curContent = report.timelineText(); break;
                                default: curContent = report.projectText(); break;
                            }
                            clip.setContents(ClipBoardUtil.createTransferable(curContent), null)
                        }
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
class NodeLink extends LinkListener {
    Proxy.Controller ctrl
    JFrame frame

    NodeLink(Proxy.Controller ctrl, JFrame frame) {
        this.ctrl = ctrl
        this.frame = frame

    }

    public void linkClicked(BasicPanel panel, String uri) {
        String linkNodeID = uri;
        def nodesFound = ctrl.find { it.nodeID == linkNodeID };

        if (nodesFound[0] != null) {
            FoldToTop(nodesFound[0]);
            UnfoldBranch(nodesFound[0]);
            ctrl.select(nodesFound[0]);
            ctrl.centerOnNode(nodesFound[0]);
            ctrl.centerOnNode(nodesFound[0]);
            frame.dispose()
            frame.visible=false
        } else {
            UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list");
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
projectPane.getMouseTrackingListeners().each {
    if (it instanceof LinkListener) {
        projectPane.removeMouseTrackingListener(it)
    }
}
projectPane.addMouseTrackingListener(nl);
delegatePane.getMouseTrackingListeners().each {
    if (it instanceof LinkListener) {
        delegatePane.removeMouseTrackingListener(it)
    }
}
delegatePane.addMouseTrackingListener(nl);
contextPane.getMouseTrackingListeners().each {
    if (it instanceof LinkListener) {
        contextPane.removeMouseTrackingListener(it)
    }
}
contextPane.addMouseTrackingListener(nl);
timelinePane.getMouseTrackingListeners().each {
    if (it instanceof LinkListener) {
        timelinePane.removeMouseTrackingListener(it)
    }
}
timelinePane.addMouseTrackingListener(nl);

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

System.setProperty("xr.text.aa-smoothing-level", "1")
System.setProperty("xr.text.aa-fontsize-threshhold", "1")
System.setProperty("xr.text.aa-rendering-hint", "RenderingHints.VALUE_TEXT_ANTIALIAS_DEFAULT")

report.selPane = config.getIntProperty('freeplaneGTD_default_view')
report.filterDone = config.getBooleanProperty('freeplaneGTD_filter_done')
refresh()
projectPane.scrollTo(new Point(0, 0))
delegatePane.scrollTo(new Point(0, 0))
contextPane.scrollTo(new Point(0, 0))
timelinePane.scrollTo(new Point(0, 0))
mainFrame.setLocationRelativeTo(UITools.frame)
mainFrame.visible = true
