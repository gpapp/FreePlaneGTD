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
import org.freeplane.core.util.FreeplaneIconUtils
import org.freeplane.core.util.TextUtils
import org.freeplane.features.format.FormattedDate
import org.freeplane.plugin.script.proxy.Proxy
import org.xhtmlrenderer.resource.ImageResource
import org.xhtmlrenderer.simple.FSScrollPane
import org.xhtmlrenderer.simple.XHTMLPanel
import org.xhtmlrenderer.simple.extend.XhtmlNamespaceHandler
import org.xhtmlrenderer.swing.*

import javax.swing.*
import javax.swing.event.ChangeEvent
import javax.swing.event.ChangeListener
import java.awt.*
import java.awt.datatransfer.Clipboard
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import java.awt.image.BufferedImage
import java.util.List

String title = 'GTD Next Actions'
String userPath = c.userDirectory.toString()
String txtVer = '1.6'
String txtURI = 'http://www.itworks.hu/index.php/freeplane-gtd+'

JFrame mainFrame

enum PANES {
    PROJECT,
    WHO,
    CONTEXT,
    WHEN
}

def panelTitle = { panelT, count = null ->
    Tag tag = new Tag('html')
    Tag innerChild = tag.addChild('body', [height: '50']).addChild('div', [style: 'font-weight:bold;font-style:italic'])
    innerChild.addContent(panelT)
    if (count)
        innerChild.addContent(new Tag('div', String.valueOf(count), [style: 'font-size:24pt;color:#666666;text-align:center']))
    return tag
}
ReportModel report = new ReportModel(node.map.root)

String formatList(Map list, boolean showNotes) {
    Tag html = new Tag('html', [xmlns: 'http://www.w3.org/1999/xhtml'])
    Tag head = html.addChild('head')
    head.addContent('style',
            '/*<![CDATA[*/' +
                    'body {color:#000000; font-family:Calibri, Verdana, Arial; font-size:13pt; padding: 10px 25px 0px 25px; }' +
                    'h1 {font-size:24pt; font-weight:bold;}' +
                    'a {text-decoration: none; color:#990000;}' +
                    '.priority {padding-left: 1em; display:inline-block; margin-right: 2px; color: black; font-weight:bold;}' +
                    '.priority-0 {background-color: rgb(215,48,39);}' +
                    '.priority-1 {background-color: rgb(244,109,67);}' +
                    '.priority-2 {background-color: rgb(253,174,97);}' +
                    '.priority-3 {background-color: rgb(204,174,89)}' +
                    '.priority-4 {background-color: rgb(255,255,191);}' +
                    '.priority-5 {background-color: rgb(217,239,139);}' +
                    '.priority-6 {background-color: rgb(166,217,106);}' +
                    '.priority-7 {background-color: rgb(102,189,99);}' +
                    '.priority-8 {background-color: rgb(26,152,80);}' +
                    '.priority-9 {background-color: rgb(16,82,50);}' +
                    'ul.actionlist { list-style: none; }' +
                    'li { padding-left: 1em; text-indent: -1em; }' +
                    'li:before { padding-right: 5px; font-size:120%; vertical-align:middle; content: "\\2610"; }' +
                    'li.task_done:before { content: "\\2611"; }' +
                    'div.done { text-decoration: line-through }' +
                    '.details {background-color: rgb(240,250,240);font-size:10pt; padding-left:2em;padding-top:5px}' +
                    '.note {background-color: rgb(250,250,240);font-size:10pt; padding-left:2em;padding-top:5px}' +
                    '.overdue {background-color: rgb(250,100,90)}' +
                    '.buttons {display:inline-block;float:right;background-color: rgb(200,200,200);padding:2px;color: rgb(0,0,0);}' +
                    '/*]]>*/',
            [type: 'text/css'])
    head.addChild('title')
    Tag body = new Tag('body')
    body.addContent('h1', TextUtils.getText('freeplaneGTD_view_' + list['type']))
    Date now = Calendar.getInstance().getTime()
    list['groups'].eachWithIndex { it, index ->
        body.addChild('div', [class: 'buttons']).
                addContent('a', TextUtils.getText("freeplaneGTD.button.copy"), [href: 'copy:' + index]).
                addContent('|').
                addContent('a', TextUtils.getText("freeplaneGTD.button.select"), [href: 'select:' + index])
        body.addContent('h2', it['title'])
        Tag curItem = body.addChild('ul', ['class': 'actionlist'])
        it['items'].each {
            Tag wrap = curItem.addChild('li')
            if (it['done']) {
                wrap.addProperty('class', 'task_done')
            }
            if (it['when'] instanceof FormattedDate && !((FormattedDate) it['when']).after(now)) wrap.addProperty('class', 'overdue')
            if (it['priority']) {
                wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
            }
            wrap.addChild('a', [href: 'link:' + it['nodeID']]).addPreformatted(it['action'] as String);
            wrap.addContent(
                    (it['who'] ? ' [' + it['who'] + ']' : '') +
                            (it['when'] ? ' {' + it['when'] + '}' : '') +
                            (it['context'] ? ' @' + it['context'] : '') +
                            (it['project'] ? ' for ' + it['project'] : ''))
            if (showNotes) {
                if (it['details']) {
                    wrap.addChild('div', [class: 'details']).addPreformatted((String) it['details'])
                }
                if (it['notes']) {
                    wrap.addChild('div', [class: 'note']).addPreformatted((String) it['notes'])
                }
            }
            wrap.addChild('img', [src: "bundle://1:1:/images/icons/stop.png"])
        }
    }
    html.addContent(body)
    return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n' + html.toString()
}

def refresh = {
    report.parseMap()
    projectPane.setDocumentFromString(formatList(report.projectList(), report.showNotes), null, new XhtmlNamespaceHandler())
    delegatePane.setDocumentFromString(formatList(report.delegateList(), report.showNotes), null, new XhtmlNamespaceHandler())
    contextPane.setDocumentFromString(formatList(report.contextList(), report.showNotes), null, new XhtmlNamespaceHandler())
    timelinePane.setDocumentFromString(formatList(report.timelineList(), report.showNotes), null, new XhtmlNamespaceHandler())
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

    ImageResourceLoader imageLoader = new ImageResourceLoader() {
        @Override
        public synchronized ImageResource get(final String uri, final int width, final int height) {
            if (uri.startsWith("bundle://1:1:/images/icons/")) {
                ImageIcon standardIcon = FreeplaneIconUtils.createStandardIcon(uri.replaceFirst("bundle://1:1:/images/icons/(.*).png", "\$1"))
                return new ImageResource(uri, new AWTFSImage.NewAWTFSImage(iconToImage(standardIcon)))
            }
            return super.get(uri, width, height)
        }
    }

    iconFrame = imageIcon(userPath + "/icons/fpgtdIcon.png").image
    iconLogo = imageIcon(userPath + "/resources/images/fpgtdLogo.png")
    mainFrame = frame(title: title,
            iconImage: iconFrame,
            size: new Dimension(frWidth, frHeight),
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

            projectPane.getSharedContext().setReplacedElementFactory(new SwingReplacedElementFactory(projectPane, imageLoader))

            delegatePane = new XHTMLPanel()
            delegatePanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(delegatePane))
            delegatePane.getSharedContext().setReplacedElementFactory(new SwingReplacedElementFactory(delegatePane, imageLoader))

            contextPane = new XHTMLPanel()
            contextPanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(contextPane))
            contextPane.getSharedContext().setReplacedElementFactory(new SwingReplacedElementFactory(contextPane, imageLoader))

            timelinePane = new XHTMLPanel()
            timelinePanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(timelinePane))
            timelinePane.getSharedContext().setReplacedElementFactory(new SwingReplacedElementFactory(timelinePane, imageLoader))
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
                                case PANES.PROJECT: curContent = report.projectList(); break;
                                case PANES.WHO: curContent = report.delegateList(); break;
                                case PANES.CONTEXT: curContent = report.contextList(); break;
                                case PANES.WHEN: curContent = report.timelineList(); break;
                                default: curContent = report.projectList(); break;
                            }
                            clip.setContents(ClipBoardUtil.createTransferable(curContent, report.mapReader, report.showNotes), null)
                            UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
                        }
                        mainFrame.toFront();
                    })
            button(text: TextUtils.getText("freeplaneGTD.button.cancel"),
                    actionPerformed: {
                        mainFrame.visible = false
                        mainFrame.dispose()
                    })
            cbFilterDone = checkBox(text: TextUtils.getText("freeplaneGTD.button.filter_done"),
                    selected: report.filterDone,
                    actionPerformed: { report.filterDone = it.source.selected; refresh(mainFrame) })
            cbShowNotes = checkBox(text: TextUtils.getText("freeplaneGTD.button.show_notes"),
                    selected: report.showNotes,
                    actionPerformed: { report.showNotes = it.source.selected; refresh(mainFrame) })
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
                        } catch (IOException e) {
                            UITools.informationMessage('Cannot open link ' + txtURI + ' in browser: ' + e.message)
                        }
                    } else {
                        UITools.informationMessage('Error opening link: Desktop is not supported')
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
    ReportModel report

    NodeLink(Proxy.Controller ctrl, JFrame frame, ReportModel report) {
        this.ctrl = ctrl
        this.frame = frame
        this.report = report
    }

    public void linkClicked(BasicPanel panel, String uri) {
        if (uri.startsWith('copy:')) {
            int pos = uri.substring(5).toInteger()
            Map feeder
            Clipboard clip = panel.getToolkit().getSystemClipboard();
            if (clip != null) {
                switch (report.selPane) {
                    case PANES.PROJECT: feeder = [type: 'project', groups: [report.projectList()['groups'][pos]]]; break;
                    case PANES.WHO: feeder = [type: 'who', groups: [report.delegateList()['groups'][pos]]]; break;
                    case PANES.CONTEXT: feeder = [type: 'context', groups: [report.contextList()['groups'][pos]]]; break;
                    case PANES.WHEN: feeder = [type: 'when', groups: [report.timelineList()['groups'][pos]]]; break;
                    default: throw new UnsupportedOperationException("Invalid selection pane: " + report.selPane)
                }
                clip.setContents(ClipBoardUtil.createTransferable(feeder, report.mapReader, report.showNotes), null)
                UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
                frame.toFront()
            }
        } else if (uri.startsWith('select:')) {
            int pos = uri.substring(7).toInteger()
            List list
            switch (report.selPane) {
                case PANES.PROJECT: list = (List) report.projectList()['groups'][pos]['items']; break;
                case PANES.WHO: list = (List) report.delegateList()['groups'][pos]['items']; break;
                case PANES.CONTEXT: list = (List) report.contextList()['groups'][pos]['items']; break;
                case PANES.WHEN: list = (List) report.timelineList()['groups'][pos]['items']; break;
                default: throw new UnsupportedOperationException("Invalid selection pane: " + report.selPane)
            }
            List ids = list.collect { it['nodeID'] }
            def nodesFound = ctrl.find { ids.contains(it.nodeID) }
            if (nodesFound.size() > 0) {
                if (report.autoFoldMap) {
                    FoldToTop(nodesFound[0])
                }
                nodesFound.each {
                    UnfoldBranch(it)
                }
                ctrl.selectMultipleNodes(nodesFound)
                frame.visible = false
                frame.dispose()
            } else {
                UITools.informationMessage("Error finding selection");
            }

        } else if (uri.startsWith('link:')) {
            String linkNodeID = uri.substring(5)
            def nodesFound = ctrl.find { it.nodeID == linkNodeID }

            if (nodesFound[0] != null) {
                if (report.autoFoldMap) {
                    FoldToTop(nodesFound[0])
                }
                UnfoldBranch(nodesFound[0])
                ctrl.select(nodesFound[0])
                ctrl.centerOnNode(nodesFound[0])
                ctrl.centerOnNode(nodesFound[0])
                frame.visible = false
                frame.dispose()
            } else {
                UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list");
            }
        } else {
            URI uriLink = new URI(uri);
            if (Desktop.isDesktopSupported()) {
                try {
                    Desktop.getDesktop().browse(uriLink);
                } catch (IOException e) {
                    UITools.informationMessage('Cannot open link ' + uri + ' in browser: ' + e.message)
                }
            } else {
                UITools.informationMessage('Error opening link: Desktop is not supported')
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

NodeLink nl = new NodeLink(c, mainFrame, report)
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
report.autoFoldMap = config.getBooleanProperty('freeplaneGTD_auto_fold_map')
refresh()
projectPane.scrollTo(new Point(0, 0))
delegatePane.scrollTo(new Point(0, 0))
contextPane.scrollTo(new Point(0, 0))
timelinePane.scrollTo(new Point(0, 0))
mainFrame.setLocationRelativeTo(ui.frame)
mainFrame.visible = true

static BufferedImage iconToImage(Icon icon) {
    if (icon instanceof ImageIcon) {
        Image img = ((ImageIcon) icon).image;
        if (img instanceof BufferedImage) {
            return (BufferedImage) img;
        }

        // Create a buffered image with transparency
        BufferedImage bimage = new BufferedImage(img.getWidth(null), img.getHeight(null), BufferedImage.TYPE_INT_ARGB);

        // Draw the image on to the buffered image
        Graphics2D bGr = bimage.createGraphics();
        bGr.drawImage(img, 0, 0, null);
        bGr.dispose();

        // Return the buffered image
        return bimage;
    } else {
        int w = icon.getIconWidth();
        int h = icon.getIconHeight();
        GraphicsEnvironment ge =
                GraphicsEnvironment.getLocalGraphicsEnvironment();
        GraphicsDevice gd = ge.getDefaultScreenDevice();
        GraphicsConfiguration gc = gd.getDefaultConfiguration();
        BufferedImage image = gc.createCompatibleImage(w, h);
        Graphics2D g = image.createGraphics();
        icon.paintIcon(null, g, 0, 0);
        g.dispose();
        return image;
    }
}