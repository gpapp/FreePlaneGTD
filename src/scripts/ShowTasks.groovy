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
import javafx.application.Platform
import javafx.beans.value.ChangeListener
import javafx.beans.value.ObservableValue
import javafx.concurrent.Worker
import javafx.embed.swing.JFXPanel
import javafx.scene.Scene
import javafx.scene.web.WebEngine
import javafx.scene.web.WebView
import netscape.javascript.JSObject
import org.freeplane.core.resources.ResourceBundles
import org.freeplane.core.resources.ResourceController
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.format.FormattedDate
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import org.freeplane.plugin.script.proxy.Proxy

import javax.swing.*
import java.awt.*
import java.awt.datatransfer.Clipboard
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import java.awt.event.WindowAdapter
import java.awt.event.WindowEvent
import java.lang.reflect.Field
import java.lang.reflect.Method
import java.util.logging.Level
import java.util.logging.Logger

import static javafx.application.Platform.runLater

class ReportWindow {

    static final String title = 'GTD Next Actions'
    static final String HTML_HEADER = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" ' +
            '"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n'
    static final String txtVer = '2.0.0'
    static final String txtURI = 'http://www.itworks.hu/index.php/freeplane-gtd+'

    static ConfigProperties config
    static ReportModel report
    static JFrame mainFrame
    static JFXPanel projectPane
    static WebView webView
    static ButtonGroup contentTypeGroup
    static JCheckBox cbFilterDone

    static boolean showNotes
    static ReportModel.VIEW selectedView
    static boolean autoFoldMap

    static {
        ResourceController resourceController = ResourceController.getResourceController()
        try {
            Field handlersField = URL.class.getDeclaredField("handlers");
            handlersField.setAccessible(true);
            Hashtable handlers = handlersField.get(null) as Hashtable;
            //this is extremely ugly, I have to add a custom protocol handler,
            // because I cannot use the "bundle:" protocol in the knopflerfish due
            // to some weird JavaFX bug
            // wasted about a week worth of progress on this alone
            handlers.put("fpgtd", new URLStreamHandler() {
                @Override
                protected URLConnection openConnection(URL u) throws IOException {
                    return resourceController.getResource("/images/icons/" + u.getPath()).openConnection()
                }
            })
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        // load i18n resources

        try {
            for (lang in [ "de","es","fr", "hu", "nl", "ru"]) {
                ((ResourceBundles) (resourceController.resources)).
                        addResources(lang,
                                resourceController.getResource("../translations/freeplaneGTD_" + lang + ".properties"))
            }
        } catch (Exception e) {
            Logger.anonymousLogger.log(Level.WARNING, "Could not load i18 resource:" + e.getMessage())
        }
    }

    static JFrame getMainFrame(ConfigProperties configModel, Proxy.Controller c) {
        config = configModel
        boolean rememberLastPosition
        if (!mainFrame) {
            String defaultView
            try {
                defaultView = ReportModel.VIEW.valueOf(config.getProperty('freeplaneGTD_default_view')).toString()
            } catch (Exception e) {
                defaultView = ReportModel.VIEW.PROJECT.toString()
            }
            autoFoldMap = config.getBooleanProperty('freeplaneGTD_auto_fold_map')

            Dimension screenSize = Toolkit.defaultToolkit.screenSize
            int tPosX = (int) (screenSize.width / 16 * 3)
            int tPosY = (int) (screenSize.height / 16 * 3)
            int tSizeX = (int) (screenSize.width / 4 * 3)
            int tSizeY = (int) (screenSize.height / 4 * 3)

            rememberLastPosition = config.getBooleanProperty('freeplaneGTD_remember_last_position')
            int posX = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_x', tPosX) : tPosX
            int posY = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_y', tPosY) : tPosY
            int sizeX = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_size_x', tSizeX) : tSizeX
            int sizeY = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_size_y', tSizeY) : tSizeY

            SwingBuilder.edtBuilder {
                String userPath = c.userDirectory.toString()
                def iconFrame = imageIcon(userPath + "/resources/images/freeplaneGTD-icon.png").image

                mainFrame = frame(title: title,
                        iconImage: iconFrame,
                        defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
                        show: false) {
                    borderLayout()
                    buttonPanel = panel(constraints: BorderLayout.NORTH) {
                        gridLayout(columns: 1, rows: 1)
                        contentTypeGroup = buttonGroup()
                        projectButton = radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: ReportModel.VIEW.PROJECT.name(),
                                text: "1 - " + TextUtils.getText("freeplaneGTD.tab.project.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.project.tooltip"),
                                mnemonic: "1",
                                selected: defaultView == "PROJECT",
                                actionPerformed: { refreshContent(c) }
                        )
                        whoButton = radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: ReportModel.VIEW.WHO.name(),
                                text: "2 - " + TextUtils.getText("freeplaneGTD.tab.who.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.who.tooltip"),
                                mnemonic: "2",
                                selected: defaultView == "WHO",
                                actionPerformed: { refreshContent(c) }
                        )
                        contextButton = radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: ReportModel.VIEW.CONTEXT.name(),
                                text: "3 - " + TextUtils.getText("freeplaneGTD.tab.context.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.context.tooltip"),
                                mnemonic: "3",
                                selected: defaultView == "CONTEXT",
                                actionPerformed: { refreshContent(c) }
                        )
                        whenButton = radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: ReportModel.VIEW.WHEN.name(),
                                text: "4 - " + TextUtils.getText("freeplaneGTD.tab.when.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.when.tooltip"),
                                mnemonic: "4",
                                selected: defaultView == "WHEN",
                                actionPerformed: { refreshContent(c) }
                        )
                        aboutButton = radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: ReportModel.VIEW.ABOUT.name(),
                                text: "? - " + TextUtils.getText("freeplaneGTD.tab.about.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.about.tooltip"),
                                mnemonic: "?",
                                actionPerformed: { refreshContent(c) }
                        )
                    }
                    reportPanel = panel(constraints: BorderLayout.CENTER) {
                        gridLayout(columns: 1, rows: 1)
                    }
                    projectPane = new JFXPanel()
                    Platform.setImplicitExit(false)
                    runLater({
                        webView = new WebView()
                        projectPane.setScene(new Scene(webView))
                        WebEngine engine = webView.getEngine()
                        engine.getLoadWorker().stateProperty().addListener(new ChangeListener<Worker.State>() {
                            @Override
                            void changed(ObservableValue<? extends Worker.State> observable, Worker.State oldValue, Worker.State newValue) {
                                if (newValue == Worker.State.SUCCEEDED) {
                                    JSObject win = engine.executeScript("window") as JSObject
                                    win.setMember("app", new JSHandler(report, c,
                                            ReportWindow.getMethod('refreshContent', Proxy.Controller.class)))
                                }
                            }
                        })
                        engine.loadContent("TODO: no content")
                    })

                    reportPanel.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), projectPane)

                    panel(constraints: BorderLayout.SOUTH) {
                        boxLayout(axis: BoxLayout.X_AXIS)
                        button(text: TextUtils.getText("freeplaneGTD.button.refresh"),
                                actionPerformed: {
                                    refreshContent(c)
                                })
                        button(text: TextUtils.getText("freeplaneGTD.button.copy"),
                                actionPerformed: {
                                    Clipboard clip = projectPane.getToolkit().getSystemClipboard()
                                    if (clip != null) {
                                        switch (contentTypeGroup.getSelection().actionCommand) {
                                            case ReportModel.VIEW.PROJECT.name(): curContent = report.projectList(); break
                                            case ReportModel.VIEW.WHO.name(): curContent = report.delegateList(); break
                                            case ReportModel.VIEW.CONTEXT.name(): curContent = report.contextList(); break
                                            case ReportModel.VIEW.WHEN.name(): curContent = report.timelineList(); break
                                            default: curContent = report.projectList(); break
                                        }
                                        clip.setContents(ClipBoardUtil.createTransferable(curContent, report.mapReader, showNotes), null)
                                        UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
                                    }
                                    mainFrame.toFront()
                                })
                        button(
                                name: "button_cancel",
                                text: TextUtils.getText("freeplaneGTD.button.cancel"),
                                actionPerformed: {
                                    mainFrame.dispatchEvent(new WindowEvent(mainFrame, WindowEvent.WINDOW_CLOSING))
                                })
                        cbFilterDone = checkBox(text: TextUtils.getText("freeplaneGTD.button.filter_done"),
                                selected: config.getBooleanProperty('freeplaneGTD_filter_done'),
                                actionPerformed: {
                                    config.properties.setProperty('freeplaneGTD_filter_done', Boolean.toString(it.source.selected))
                                    refreshContent(c)
                                })
                        cbShowNotes = checkBox(text: TextUtils.getText("freeplaneGTD.button.show_notes"),
                                selected: showNotes,
                                actionPerformed: {
                                    showNotes = it.source.selected; refreshContent(c)
                                })
                    }
                }
            }
            // on ESC key close frame
            mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
                    KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText("freeplaneGTD.button.cancel"))
            mainFrame.getRootPane().getActionMap().put(TextUtils.getText("freeplaneGTD.button.cancel"),
                    new AbstractAction() {
                        @Override
                        void actionPerformed(ActionEvent e) {
                            mainFrame.dispatchEvent(new WindowEvent(mainFrame, WindowEvent.WINDOW_CLOSING))
                        }
                    })
            mainFrame.addWindowListener(new WindowAdapter() {
                void windowClosing(WindowEvent e) {
                    if (config.getBooleanProperty('freeplaneGTD_remember_last_position')) {
                        config.properties.setProperty('freeplaneGTD_last_position_x', Integer.toString(mainFrame.x))
                        config.properties.setProperty('freeplaneGTD_last_position_y', Integer.toString(mainFrame.y))
                        config.properties.setProperty('freeplaneGTD_last_position_w', Integer.toString(mainFrame.width))
                        config.properties.setProperty('freeplaneGTD_last_position_h', Integer.toString(mainFrame.height))
                    }
                    mainFrame.visible = false
                }
            })

            mainFrame.setLocation(posX, posY)
            mainFrame.setSize(sizeX, sizeY)
        }
        return mainFrame
    }


    static refreshContent(Proxy.Controller c) {
        cbFilterDone.selected = config.getBooleanProperty('freeplaneGTD_filter_done')
        report.parseMap(cbFilterDone.selected)

        def content
        selectedView = ReportModel.VIEW.valueOf(contentTypeGroup.selection?.actionCommand)
        switch (selectedView) {
            case ReportModel.VIEW.WHO: content = formatList(report.delegateList(), report.mapReader.contextIcons, showNotes)
                break
            case ReportModel.VIEW.CONTEXT: content = formatList(report.contextList(), report.mapReader.contextIcons, showNotes)
                break
            case ReportModel.VIEW.WHEN: content = formatList(report.timelineList(), report.mapReader.contextIcons, showNotes)
                break
            case ReportModel.VIEW.ABOUT:

                Tag html = new Tag('html',
                        new Tag('body', [style: 'padding-left:25px'])
                                .addContent(new Tag('h1', 'Freeplane|').addContent('span', 'GTD', [style: 'color:#ff3300']))
                                .addContent('h2', 'Version ' + txtVer)
                                .addContent('h4', 'by Gergely Papp')
                                .addContent('h5', 'based on the original code by Auxilus Systems LLC')
                                .addContent('h4', 'Licensed under GNU GPL Version 3')
                                .addContent('a', txtURI, [href: txtURI]))
                content = HTML_HEADER + html.toString()
                break
            case ReportModel.VIEW.PROJECT:
            default:
                content = formatList(report.projectList(), report.mapReader.contextIcons, showNotes)
        }
        runLater({
            webView.engine.loadContent(content)
            webView.engine.reload()
        })
    }

    static String formatList(Map list, Map<String, String> contextIcons, boolean showNotes) {
        Tag html = new Tag('html', [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent('style',
                '/*<![CDATA[*/' +

                        'body {' +
                        '   color:#000000;' +
                        '   font-family: Arial,"Helvetica Neue",Helvetica,sans-serif;' +
                        '   font-size: 13px;' +
                        '}' +
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
        Date now = new Date().clearTime()
        list['groups'].eachWithIndex { it, index ->
            body.addChild('div', [class: 'buttons']).
                    addContent('a', TextUtils.getText("freeplaneGTD.button.copy"), [href: '#', onclick: 'app.copyToClipboard(' + index + ')']).
                    addContent('|').
                    addContent('a', TextUtils.getText("freeplaneGTD.button.select"), [href: '#', onclick: 'app.selectOnMap(' + index + ')'])
            body.addContent('h2', it['title'])
            Tag curItem = body.addChild('ul', ['class': 'actionlist'])
            it['items'].each {
                Tag wrap = curItem.addChild('li')
                if (it['priority']) {
                    wrap.addChild('img', [class: "priorityIcon", src: "fpgtd:full-" + it['priority'] + ".png"])
                }
                wrap.addChild('A', [href: '#', onclick: 'app.toggleDone("' + it['nodeID'] + '")']).addChild('img', [class: "doneIcon", src: "fpgtd:" + (it['done'] ? "" : "un") + "checked" + ".png"])
                if (it['time'] instanceof FormattedDate && ((FormattedDate) it['time']).before(now)) wrap.addProperty('class', 'overdue')
                wrap.addChild('A', [href: '#', onclick: 'app.followLink("' + it['nodeID'] + '")']).addPreformatted(it['action'] as String)

                Tag contextTag = new Tag('span')

                it['context']?.split(',')?.each { key ->
                    if (contextIcons.keySet().contains(key)) {
                        contextTag.addChild('img', [class: "contextIcon", src: "fpgtd:" + contextIcons.get(key) + ".png", "title": key])
                    } else {
                        contextTag.addContent('@')
                        contextTag.addContent(key)
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

        return HTML_HEADER + html.toString()
    }

    static void refresh(Proxy.Controller c, Proxy.Node root) {
        report = new ReportModel(root)
        if (mainFrame?.visible) {
            refreshContent(c)
        }
    }

}

class JSHandler {
    private final ReportModel report
    private final Proxy.Controller ctrl
    private final Method refresh

    JSHandler(ReportModel report, Proxy.Controller ctrl, Method refresh) {
        this.refresh = refresh
        this.ctrl = ctrl
        this.report = report
    }

    void toggleDone(String linkNodeID) {

        try {

            def nodesFound = ctrl.find {
                it.id == linkNodeID
            }

            if (nodesFound[0] != null) {
                def node = nodesFound[0]
                if (node.icons.contains(report.mapReader.iconDone)) {
                    node.icons.remove(report.mapReader.iconDone)
                } else {
                    node.icons.add(report.mapReader.iconDone)
                }
                refresh.invoke(null, ctrl)
            } else {
                UITools.informationMessage("Cannot find node to mark as done")
            }
        } catch (Exception e) {
            System.err.println(e)
        }
    }

    void followLink(String linkNodeID) {
        def nodesFound = ctrl.find { it.id == linkNodeID }

        if (nodesFound[0] != null) {
            if (ReportWindow.autoFoldMap) {
                FoldToTop(nodesFound[0])
            }
            UnfoldBranch(nodesFound[0])
            ctrl.select(nodesFound[0])
            ctrl.centerOnNode(nodesFound[0])
            ctrl.centerOnNode(nodesFound[0])
        } else {
            UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list")
        }
    }

    void copyToClipboard(int pos) {
        try {
            Map feeder
            Clipboard clip = panel.getToolkit().getSystemClipboard()
            if (clip != null) {
                switch (ReportWindow.selectedView) {
                    case ReportModel.VIEW.PROJECT: feeder = [type: 'project', groups: [report.projectList()['groups'][pos]]]; break
                    case ReportModel.VIEW.WHO: feeder = [type: 'who', groups: [report.delegateList()['groups'][pos]]]; break
                    case ReportModel.VIEW.CONTEXT: feeder = [type: 'context', groups: [report.contextList()['groups'][pos]]]; break
                    case ReportModel.VIEW.WHEN: feeder = [type: 'when', groups: [report.timelineList()['groups'][pos]]]; break
                    default: throw new UnsupportedOperationException("Invalid selection pane: " + report.selPane)
                }
                clip.setContents(ClipBoardUtil.createTransferable(feeder, report.mapReader, freeplaneGTD.report.ReportWindow.showNotes), null)
                UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
                frame.toFront()
            }
        } catch (Exception e) {
            System.err.println(e)
        }
    }

    void selectOnMap(int pos) {
        try {
            java.util.List list
            switch (ReportWindow.selectedView) {
                case ReportModel.VIEW.PROJECT: list = (java.util.List) report.projectList()['groups'][pos]['items']; break
                case ReportModel.VIEW.WHO: list = (java.util.List) report.delegateList()['groups'][pos]['items']; break
                case ReportModel.VIEW.CONTEXT: list = (java.util.List) report.contextList()['groups'][pos]['items']; break
                case ReportModel.VIEW.WHEN: list = (java.util.List) report.timelineList()['groups'][pos]['items']; break
                default: throw new UnsupportedOperationException("Invalid selection pane: " + report.selPane)
            }
            java.util.List ids = list.collect { it['nodeID'] }
            def nodesFound = ctrl.find { ids.contains(it.id) }
            if (nodesFound.size() > 0) {
                if (freeplaneGTD.report.ReportWindow.autoFoldMap) {
                    FoldToTop(nodesFound[0])
                }
                nodesFound.each {
                    UnfoldBranch(it)
                }
                ctrl.selectMultipleNodes(nodesFound)
                frame.visible = false
                frame.dispose()
            } else {
                UITools.informationMessage("Error finding selection")
            }
        }

        catch (Exception e) {
            System.err.println(e)
        }
    }

// recursive unfolding of branch
    private void UnfoldBranch(Proxy.Node thisNode) {
        Proxy.Node rootNode = thisNode.getMap().getRoot()
        if (thisNode != rootNode) {
            thisNode.setFolded(false)
            UnfoldBranch(thisNode.getParent())
        }
    }

// fold to first level
    private void FoldToTop(Proxy.Node thisNode) {
        Proxy.Node rootNode = thisNode.getMap().getRoot()
        def Nodes = ctrl.findAll()
        Nodes.each {
            it.setFolded(true)
        }
        rootNode.setFolded(false)
    }

}

JFrame frameinstance = ReportWindow.getMainFrame(config, c)
frameinstance.visible = true
ReportWindow.refresh(c, node.map.root)
