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
import java.awt.*
import java.awt.datatransfer.Clipboard
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import java.awt.image.BufferedImage
import java.util.List

String title = 'GTD Next Actions'
String userPath = c.userDirectory.toString()
String txtVer = '1.8.0'
String txtURI = 'http://www.itworks.hu/index.php/freeplane-gtd+'

JFrame mainFrame
ButtonGroup contentTypeGroup

def panelTitle = { panelT, count = null ->
    Tag tag = new Tag('html')
    Tag innerChild = tag.addChild('body', [height: '50']).addChild('div', [style: 'font-weight:bold;font-style:italic'])
    innerChild.addContent(panelT)
    if (count)
        innerChild.addContent(new Tag('div', String.valueOf(count), [style: 'font-size:24pt;color:#666666;text-align:center']))
    return tag
}
ReportModel report = new ReportModel(node.map.root)
report.defaultView = config.getProperty('freeplaneGTD_default_view')
report.filterDone = config.getBooleanProperty('freeplaneGTD_filter_done')
report.autoFoldMap = config.getBooleanProperty('freeplaneGTD_auto_fold_map')

String formatList(Map list, Map<String, String> contextIcons, boolean showNotes) {
    Tag html = new Tag('html', [xmlns: 'http://www.w3.org/1999/xhtml'])
    Tag head = html.addChild('head')
    head.addContent('style',
            '/*<![CDATA[*/' +
                    'body {color:#000000;  }' +
                    'h1 {font-size:150%; font-weight:bold;}' +
                    'h2 {font-size:125%; font-weight:bold;}' +
                    'a {text-decoration: none; color:#000077;}' +
                    'ul.actionlist { list-style: none; }' +
                    '.doneIcon { padding-right: 1em }' +
                    '.priorityIcon { left: 2em; position:absolute; }' +
                    '.contextIcon { padding-left: 1em }' +
                    '.wait {font-size:90%; margin-left:32px; margin-top:4px}' +
                    '.details {margin-left:18px; padding:5px; background-color:rgb(240,250,240);font-size:90%;}' +
                    '.note    {margin-left:18px; padding:5px; background-color:rgb(250,250,240);font-size:90%;}' +
                    '.overdue {background-color: rgb(250,150,140)}' +
                    '.buttons {display:inline-block;float:right;font-size:90%;background-color: rgb(200,200,200);padding:2px;color: rgb(0,0,0);}' +
                    '/*]]>*/',
            [type: 'text/css'])
    head.addChild('title')
    Tag body = new Tag('body')
//    body.addContent('h1', TextUtils.getText('freeplaneGTD_view_' + list['type']))
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
            if (it['priority']) {
                wrap.addChild('img', [class: "priorityIcon", src: "builtin:full-" + it['priority']])
            }
            wrap.addChild('A', [href: 'done:' + it['nodeID']]).addChild('img', [class: "doneIcon", src: "builtin:" + (it['done'] ? "" : "un") + "checked"])
            if (it['when'] instanceof FormattedDate && !((FormattedDate) it['when']).after(now)) wrap.addProperty('class', 'overdue')
            wrap.addChild('a', [href: 'link:' + it['nodeID']]).addPreformatted(it['action'] as String);

            Tag contextTag = new Tag('span')

            it['context']?.split(',')?.each { key ->
                if (contextIcons.keySet().contains(key)) {
                    contextTag.addChild('img', [class: "contextIcon", src: "builtin:" + contextIcons.get(key), "title": key])
                } else {
                    contextTag.addContent('@');
                    contextTag.addContent(key);
                }
            }
            !it['who'] ?: wrap.addContent(' [' + it['who'] + ']')
            !it['when'] ?: wrap.addContent(' {' + it['when'] + '}')
            !it['context'] ?: wrap.addContent(contextTag)
            !it['project'] ?: wrap.addContent(' for ' + it['project'])
            if (it['waitFor'] || it['waitUntil']) {
                wrap.addContent('div', 'wait' + (it['waitFor'] ? ' for ' + it['waitFor'] : '') + (it['waitUntil'] ? ' until ' + it['waitUntil'] : ''), [class: 'wait'])
            }
            if (showNotes) {
                if (it['details']) {
                    wrap.addChild('div', [class: 'details']).addPreformatted((String) it['details'])
                }
                if (it['notes']) {
                    wrap.addChild('div', [class: 'note']).addPreformatted((String) it['notes'])
                }
            }
        }
    }
    html.addContent(body)
    return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n' + html.toString()
}

def refresh = {
    report.parseMap()

    def content
    report.selectedView = ReportModel.VIEW.valueOf(contentTypeGroup.selection?.actionCommand)
    switch (report.selectedView) {
        case ReportModel.VIEW.WHO: content = formatList(report.delegateList(), report.mapReader.contextIcons, report.showNotes)
            break
        case ReportModel.VIEW.CONTEXT: content = formatList(report.contextList(), report.mapReader.contextIcons, report.showNotes)
            break
        case ReportModel.VIEW.WHEN: content = formatList(report.timelineList(), report.mapReader.contextIcons, report.showNotes)
            break
        case ReportModel.VIEW.ABOUT:
            break
        case ReportModel.VIEW.PROJECT:
        default:
            content = formatList(report.projectList(), report.mapReader.contextIcons, report.showNotes)
    }
    projectPane.setDocumentFromString(content, null, new XhtmlNamespaceHandler())
    cbFilterDone.selected = report.filterDone
}
SwingBuilder.edtBuilder {

    ImageResourceLoader imageLoader = new ImageResourceLoader() {
        @Override
        public synchronized ImageResource get(final String uri, final int width, final int height) {
            if (uri.startsWith("builtin:")) {
                Icon standardIcon = FreeplaneIconUtils.createStandardIcon(uri.replaceFirst("builtin:(.*)", "\$1"))
                return new ImageResource(uri, new AWTFSImage.NewAWTFSImage(iconToImage(standardIcon)))
            }
            return super.get(uri, width, height)
        }
    }

    iconFrame = imageIcon(userPath + "/icons/fpgtdIcon.png").image
    iconLogo = imageIcon(userPath + "/resources/images/fpgtdLogo.png")

    // make the frame half the height and width

    Dimension screenSize = Toolkit.defaultToolkit.screenSize
    int frHeight = (screenSize.height) / 4 * 3
    int frWidth = (screenSize.width) / 4 * 3
    Dimension windowSize = new Dimension(frWidth, frHeight)

    mainFrame = frame(title: title,
            iconImage: iconFrame,
            size: windowSize,
            defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
            show: false) {
        borderLayout()
        buttonPanel = panel(constraints: BorderLayout.NORTH) {
            gridLayout(cols: 1, rows: 1)
            contentTypeGroup = buttonGroup()
            projectButton = radioButton(
                    buttonGroup: contentTypeGroup,
                    actionCommand: ReportModel.VIEW.PROJECT.name(),
                    text: "1-" + TextUtils.getText("freeplaneGTD.tab.project.title"),
                    toolTipText: TextUtils.getText("freeplaneGTD.tab.project.tooltip"),
                    mnemonic: "1",
                    selected: report.defaultView == "PROJECT",
                    actionPerformed: { refresh() }
            )
            whoButton = radioButton(
                    buttonGroup: contentTypeGroup,
                    actionCommand: ReportModel.VIEW.WHO.name(),
                    text: "2-" + TextUtils.getText("freeplaneGTD.tab.who.title"),
                    toolTipText: TextUtils.getText("freeplaneGTD.tab.who.tooltip"),
                    mnemonic: "2",
                    selected: report.defaultView == "WHO",
                    actionPerformed: { refresh() }
            )
            contextButton = radioButton(
                    buttonGroup: contentTypeGroup,
                    actionCommand: ReportModel.VIEW.CONTEXT.name(),
                    text: "3-" + TextUtils.getText("freeplaneGTD.tab.context.title"),
                    toolTipText: TextUtils.getText("freeplaneGTD.tab.context.tooltip"),
                    mnemonic: "3",
                    selected: report.defaultView == "CONTEXT",
                    actionPerformed: { refresh() }
            )
            whenButton = radioButton(
                    buttonGroup: contentTypeGroup,
                    actionCommand: ReportModel.VIEW.WHEN.name(),
                    text: "4-" + TextUtils.getText("freeplaneGTD.tab.when.title"),
                    toolTipText: TextUtils.getText("freeplaneGTD.tab.when.tooltip"),
                    mnemonic: "4",
                    selected: report.defaultView == "WHEN",
                    actionPerformed: { refresh() }
            )
            aboutButton = radioButton(
                    buttonGroup: contentTypeGroup,
                    actionCommand: ReportModel.VIEW.ABOUT.name(),
                    text: TextUtils.getText("freeplaneGTD.tab.about.title"),
                    toolTipText: TextUtils.getText("freeplaneGTD.tab.about.tooltip"),
                    actionPerformed: { refresh() }
            )
        }
        reportPanel = panel(constraints: BorderLayout.CENTER) {
            gridLayout(cols: 1, rows: 1)
        }
        projectPane = new XHTMLPanel()
        reportPanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), new FSScrollPane(projectPane))

        projectPane.getSharedContext().setReplacedElementFactory(new SwingReplacedElementFactory(projectPane, imageLoader))

        panel(constraints: BorderLayout.SOUTH) {
            boxLayout(axis: BoxLayout.X_AXIS)
            button(text: TextUtils.getText("freeplaneGTD.button.refresh"),
                    actionPerformed: {
                        refresh()
                    })
            button(text: TextUtils.getText("freeplaneGTD.button.copy"),
                    actionPerformed: {
                        Clipboard clip = projectPane.getToolkit().getSystemClipboard();
                        if (clip != null) {
                            switch (contentTypeGroup.getSelection().actionCommand) {
                                case ReportModel.VIEW.PROJECT.name(): curContent = report.projectList(); break;
                                case ReportModel.VIEW.WHO.name(): curContent = report.delegateList(); break;
                                case ReportModel.VIEW.CONTEXT.name(): curContent = report.contextList(); break;
                                case ReportModel.VIEW.WHEN.name(): curContent = report.timelineList(); break;
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
                    actionPerformed: { report.filterDone = it.source.selected; refresh() })
            cbShowNotes = checkBox(text: TextUtils.getText("freeplaneGTD.button.show_notes"),
                    selected: report.showNotes,
                    actionPerformed: { report.showNotes = it.source.selected; refresh() })
        }
    }
}

//---------------------------------------------------------
// Process hyperlink to map node
//---------------------------------------------------------
class NodeLink extends LinkListener {
    Proxy.Controller ctrl
    JFrame frame
    ReportModel report
    private final Closure<Boolean> refresh

    NodeLink(Proxy.Controller ctrl, JFrame frame, ReportModel report, Closure<Boolean> refresh) {
        this.ctrl = ctrl
        this.frame = frame
        this.report = report
        this.refresh = refresh
    }

    public void linkClicked(BasicPanel panel, String uri) {
        if (uri.startsWith('done:')) {
            String linkNodeID = uri.substring(5)
            def nodesFound = ctrl.find { it.nodeID == linkNodeID }

            if (nodesFound[0] != null) {
                def node = nodesFound[0]
                if (node.icons.contains(report.mapReader.iconDone)) {
                    node.icons.remove(report.mapReader.iconDone)
                } else {
                    node.icons.add(report.mapReader.iconDone)
                }
                refresh()
            } else {
                UITools.informationMessage("Cannot find node to mark as done");
            }
        } else if (uri.startsWith('copy:')) {
            int pos = uri.substring(5).toInteger()
            Map feeder
            Clipboard clip = panel.getToolkit().getSystemClipboard();
            if (clip != null) {
                switch (report.selectedView) {
                    case ReportModel.VIEW.PROJECT: feeder = [type: 'project', groups: [report.projectList()['groups'][pos]]]; break;
                    case ReportModel.VIEW.WHO: feeder = [type: 'who', groups: [report.delegateList()['groups'][pos]]]; break;
                    case ReportModel.VIEW.CONTEXT: feeder = [type: 'context', groups: [report.contextList()['groups'][pos]]]; break;
                    case ReportModel.VIEW.WHEN: feeder = [type: 'when', groups: [report.timelineList()['groups'][pos]]]; break;
                    default: throw new UnsupportedOperationException("Invalid selection pane: " + report.selPane)
                }
                clip.setContents(ClipBoardUtil.createTransferable(feeder, report.mapReader, report.showNotes), null)
                UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
                frame.toFront()
            }
        } else if (uri.startsWith('select:')) {
            int pos = uri.substring(7).toInteger()
            List list
            switch (report.selectedView) {
                case ReportModel.VIEW.PROJECT: list = (List) report.projectList()['groups'][pos]['items']; break;
                case ReportModel.VIEW.WHO: list = (List) report.delegateList()['groups'][pos]['items']; break;
                case ReportModel.VIEW.CONTEXT: list = (List) report.contextList()['groups'][pos]['items']; break;
                case ReportModel.VIEW.WHEN: list = (List) report.timelineList()['groups'][pos]['items']; break;
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

NodeLink nl = new NodeLink(c, mainFrame, report, refresh)
projectPane.getMouseTrackingListeners().each {
    if (it instanceof LinkListener) {
        projectPane.removeMouseTrackingListener(it)
    }
}
projectPane.addMouseTrackingListener(nl);

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

refresh()
projectPane.scrollTo(new Point(0, 0))
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