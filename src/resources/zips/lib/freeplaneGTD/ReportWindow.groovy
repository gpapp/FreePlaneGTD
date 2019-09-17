package freeplaneGTD

import groovy.swing.SwingBuilder
import org.freeplane.api.Node
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.clipboard.ClipboardController
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.FreeplaneScriptBaseClass
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ScriptUtils

import javax.swing.AbstractAction
import javax.swing.ButtonGroup
import javax.swing.JCheckBox
import javax.swing.JComponent
import javax.swing.JFrame
import javax.swing.JPanel
import javax.swing.KeyStroke
import javax.swing.SwingUtilities
import java.awt.Dimension
import java.awt.Toolkit
import java.awt.Window
import java.awt.datatransfer.Clipboard
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import java.awt.event.WindowAdapter
import java.awt.event.WindowEvent
import java.util.logging.Level
import java.util.logging.Logger

class ReportWindow {
    static enum VIEW {
        PROJECT, WHO, CONTEXT, WHEN, DONETIMELINE
    }

    enum DONE_TIMELINE {
        TODAY,
        LAST_WEEK,
        LAST_MONTH,
        EARLIER

    }

    static final String title = 'GTD Next Actions'
    public static final String FREEPLANE_GTD_DEFAULT_VIEW = 'freeplaneGTD_default_view'
    public static final String FREEPLANE_GTD_REMEMBER_LAST_POSITION = 'freeplaneGTD_remember_last_position'
    private FreeplaneScriptBaseClass.ConfigProperties config
    private ReportModel report
    private JFrame mainFrame
    private JPanel taskPanel
    private ButtonGroup contentTypeGroup
    private JCheckBox cbFilterDone

    protected boolean showNotes
    protected VIEW selectedView

    static def getInstance() {
        Controller currentController = Controller.currentController
        def reportWindow
        try {
            reportWindow = currentController.getGtdReportWindow()
        } catch (Exception e) {
            reportWindow = new ReportWindow()
            currentController.metaClass.getGtdReportWindow = { reportWindow }
        }
        return reportWindow
    }

    private JFrame getMainFrame(FreeplaneScriptBaseClass.ConfigProperties configModel) {
        config = configModel
        boolean rememberLastPosition
        if (!mainFrame) {
            String defaultView
            try {
                defaultView = VIEW.valueOf(config.getProperty(FREEPLANE_GTD_DEFAULT_VIEW)).toString()
            } catch (Exception e) {
                defaultView = VIEW.PROJECT.toString()
                Logger.getAnonymousLogger().log(Level.WARNING, "Cannot parse default view property:" + config.getProperty(FREEPLANE_GTD_DEFAULT_VIEW), e)
            }

            Dimension screenSize = Toolkit.defaultToolkit.screenSize
            int tPosX = (int) (screenSize.width / 16 * 3)
            int tPosY = (int) (screenSize.height / 16 * 3)
            int tSizeX = (int) (screenSize.width / 4 * 3)
            int tSizeY = (int) (screenSize.height / 4 * 3)

            rememberLastPosition = config.getBooleanProperty(FREEPLANE_GTD_REMEMBER_LAST_POSITION)
            int posX = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_x', tPosX) : tPosX
            int posY = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_y', tPosY) : tPosY
            int sizeX = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_w', tSizeX) : tSizeX
            int sizeY = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_h', tSizeY) : tSizeY

            SwingBuilder.edtBuilder {
                String userPath = ScriptUtils.c().userDirectory.toString()
                def iconFrame = imageIcon(userPath + "/resources/images/freeplaneGTD-icon.png").image

                mainFrame = frame(title: title,
                        iconImage: iconFrame,
                        defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
                        show: false) {
                    borderLayout()
                    panel(constraints: BorderLayout.NORTH) {
                        gridLayout(columns: 1, rows: 1)
                        contentTypeGroup = buttonGroup()
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.PROJECT.name(),
                                text: "1 - " + TextUtils.getText("freeplaneGTD.tab.project.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.project.tooltip"),
                                mnemonic: (char) '1',
                                selected: defaultView == "PROJECT",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.WHO.name(),
                                text: "2 - " + TextUtils.getText("freeplaneGTD.tab.who.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.who.tooltip"),
                                mnemonic: (char) '2',
                                selected: defaultView == "WHO",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.CONTEXT.name(),
                                text: "3 - " + TextUtils.getText("freeplaneGTD.tab.context.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.context.tooltip"),
                                mnemonic: (char) '3',
                                selected: defaultView == "CONTEXT",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.WHEN.name(),
                                text: "4 - " + TextUtils.getText("freeplaneGTD.tab.when.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.when.tooltip"),
                                mnemonic: (char) '4',
                                selected: defaultView == "WHEN",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.DONETIMELINE.name(),
                                text: "5 - " + TextUtils.getText("freeplaneGTD.tab.done_timeline.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.done_timeline.tooltip"),
                                mnemonic: (char) '5',
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.ABOUT.name(),
                                text: "? - " + TextUtils.getText("freeplaneGTD.tab.about.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.about.tooltip"),
                                mnemonic: (char) '?',
                                actionPerformed: { refreshContent() }
                        )
                    }
                    taskPanel = (JPanel) panel(constraints: BorderLayout.CENTER) {
                        gridLayout(columns: 1, rows: 1)
                    }.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), taskPanel)

                    panel(constraints: BorderLayout.SOUTH) {
                        boxLayout(axis: BoxLayout.X_AXIS)
                        button(text: TextUtils.getText("freeplaneGTD.button.refresh"),
                                actionPerformed: {
                                    refreshContent()
                                })
                        button(text: TextUtils.getText("freeplaneGTD.button.copy"),
                                actionPerformed: {
                                    Clipboard clip = taskPanel.getToolkit().getSystemClipboard()
                                    if (clip != null) {
                                        Map<String, Object> curContent
                                        switch (contentTypeGroup.getSelection().actionCommand) {
                                            case VIEW.PROJECT.name():
                                                curContent = report.projectList(); break
                                            case VIEW.WHO.name(): curContent = report.delegateList(); break
                                            case VIEW.CONTEXT.name(): curContent = report.contextList(); break
                                            case VIEW.WHEN.name(): curContent = report.timelineList(); break
                                            case VIEW.DONETIMELINE.name(): curContent = report.doneTimeline(); break
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
                                    config.properties['freeplaneGTD_filter_done'] = Boolean.toString(it.source.selected as boolean)
                                    refreshContent()
                                })
                        checkBox(text: TextUtils.getText("freeplaneGTD.button.show_notes"),
                                selected: showNotes,
                                actionPerformed: {
                                    showNotes = it.source.selected; refreshContent()
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
                    Logger.getAnonymousLogger().log(Level.INFO, "Closing window. rememberLastPosition=" + config.getBooleanProperty(FREEPLANE_GTD_REMEMBER_LAST_POSITION))

                    if (config.getBooleanProperty(FREEPLANE_GTD_REMEMBER_LAST_POSITION)) {
                        Logger.getAnonymousLogger().log(Level.INFO, "lastPosition=" + Integer.toString(mainFrame.x) + ", " + Integer.toString(mainFrame.y) + ", " + Integer.toString(mainFrame.width) + ", " + Integer.toString(mainFrame.height))
                        config.properties.put('freeplaneGTD_last_position_x', Integer.toString(mainFrame.x))
                        config.properties.put('freeplaneGTD_last_position_y', Integer.toString(mainFrame.y))
                        config.properties.put('freeplaneGTD_last_position_w', Integer.toString(mainFrame.width))
                        config.properties.put('freeplaneGTD_last_position_h', Integer.toString(mainFrame.height))
                    }
                    mainFrame.visible = false
                }
            })

            mainFrame.setLocation(posX, posY)
            mainFrame.setSize(sizeX, sizeY)
        }
        return mainFrame
    }


    void refreshContent() {
        cbFilterDone.selected = config.getBooleanProperty('freeplaneGTD_filter_done')
        report.parseMap(cbFilterDone.selected)

        JComponent content
        selectedView = VIEW.valueOf(contentTypeGroup.selection?.actionCommand)
        switch (selectedView) {
            case VIEW.WHO: content = formatList(report.delegateList(), report.mapReader.contextIcons, showNotes)
                break
            case VIEW.CONTEXT: content = formatList(report.contextList(), report.mapReader.contextIcons, showNotes)
                break
            case VIEW.WHEN: content = formatList(report.timelineList(), report.mapReader.contextIcons, showNotes)
                break
            case VIEW.DONETIMELINE: content = formatList(report.doneTimeline(), report.mapReader.contextIcons, showNotes)
                break
            case VIEW.PROJECT:
                content = formatList(report.projectList(), report.mapReader.contextIcons, showNotes)
        }
        taskPanel.add(content)
    }

    private static JComponent formatList(Map list, Map<String, String> contextIcons, boolean showNotes) {
        JComponent newContent
        SwingBuilder.edtBuilder {
            newContent = panel() {
                list['groups'].eachWithIndex { item, index ->
                    button(text: TextUtils.getText("freeplaneGTD.button.copy"),
                            actionPerformed: {
                                copyToClipboard(index)
                            }
                    )
                    button(text: TextUtils.getText("freeplaneGTD.button.select"),
                            actionPerformed: {
                                selectOnMap(index)
                            }
                    )
                    if (contextIcons.keySet().contains(item['title'])) {
                        //TODO : find image
                        // imageIcon(?getSystemIcon?(contextIcons.get(it['title']) ))

                    }
                    label(title: item['title'])
                    //TODO: Indent task group
                    panel() {
                        gridLayout(columns: 4, rows: it['items'].length)
                        it['items'].each {
                            // priority block
                            panel {
                                if (it['priority']) {
                                    //TODO : find image
                                    // imageIcon(?getSystemIcon("full-" + it['priority'] + "))
                                    label(title: it['priority'])
                                }
                            }
                            // done checkbox
                            checkBox(selected: it['done'],
                                    actionPerformed: {
                                        toggleDone((String) it['nodeId'])
                                    })
                            // context icons
                            panel {
                                (it['context'] as String)?.tokenize(',')?.each { key ->
                                    if (contextIcons.keySet().contains(key)) {
                                        // imageIcon(?getSystemIcon(contextIcons.get(key)))
                                    }
                                }
                            }
                            // task content
                            panel(name: 'content') {
                                // TODO: set color for overdue
                                //  if (it['time'] instanceof FormattedDate && ((FormattedDate) it['time']).before(now)) wrap.addProperty('class', 'overdue')
                                StringBuilder actionText = new StringBuilder(it['action'])

                                !it['who'] ?: actionText.append(' [' + it['who'] + ']')
                                !it['when'] ?: actionText.append(' {' + it['when'] + '}')
                                !it['context'] ?: (it['context'] as String)?.tokenize(',')?.each { key ->
                                    actionText.append('@')
                                    actionText.append(key)
                                }
                                !it['project'] ?: actionText.append(' for ' + it['project'])
                                // TODO: differentiate waitfor somehow?
                                if (it['waitFor'] || it['waitUntil']) {
                                    actionText.append('wait' + (it['waitFor'] ? ' for ' + it['waitFor'] : '') + (it['waitUntil'] ? ' until ' + it['waitUntil'] : ''))
                                }
                                button(text: actionText,
                                        actionPerformed: {
                                            followLink(it['nodeId'] as String)
                                        }
                                )
                                //TODO Invent something to show the notes\
                                /*
                                if (showNotes) {
                                    if (it['details']) {
                                        wrap.addChild('div', [class: 'details']).addPreformatted((String) it['details'])
                                    }
                                    if (it['notes']) {
                                        wrap.addChild('div', [class: 'note']).addPreformatted((String) it['notes'])
                                    }
                                }

                                */
                            }
                        }
                    }
                }
            }
        }
        return newContent
    }

    void show(FreeplaneScriptBaseClass.ConfigProperties config) {
        JFrame frameinstance = getMainFrame(config)
        refreshContent()
        frameinstance.visible = true
    }

    void refresh() {
        report = new ReportModel()
        if (mainFrame?.visible) {
            refreshContent()
        } else {
            report.parseMap(false)
        }
    }

    boolean getAutoFoldMap() {
        return config.getBooleanProperty('freeplaneGTD_auto_fold_map')
    }

    void toggleDone(String linkNodeID) {
        try {
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                void run() {
                    def nodesFound = ScriptUtils.c().find { it.id == linkNodeID }

                    if (nodesFound[0] != null) {
                        def node = nodesFound[0]
                        if (node.icons.contains(report.mapReader.iconDone)) {
                            node.icons.remove(report.mapReader.iconDone)
                        } else {
                            node.icons.add(report.mapReader.iconDone)
                        }
                        target.refreshContent()
                    } else {
                        Logger.getAnonymousLogger().log(Level.SEVERE, "Cannot find node to mark as done")
                        UITools.informationMessage("Cannot find node to mark as done")
                    }
                }
            })
        } catch (Exception e) {
            Logger.getAnonymousLogger().log(Level.SEVERE, "Error in toggling as done", e)
        }
    }

    void followLink(String linkNodeID) {
        try {
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                void run() {
                    switchToMainWindow()
                    List<? extends Node> nodesFound = ScriptUtils.c().find { it.id == linkNodeID }

                    if (nodesFound[0] != null) {
                        if (target.autoFoldMap) {
                            foldToTop(nodesFound[0])
                        }
                        unfoldBranch(nodesFound[0])
                        ScriptUtils.c().centerOnNode(nodesFound[0])
                        ScriptUtils.c().select(nodesFound[0])
                    } else {
                        Logger.anonymousLogger.log(Level.SEVERE, "Next Action not found in mind map. Refresh Next Action list")
                        UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list")
                    }
                }
            })
        } catch (Exception e) {
            Logger.anonymousLogger.log(Level.SEVERE, e.message, e)
        }
    }

    void copyToClipboard(int pos) {
        try {
            Map feeder
            ClipboardController clip = ClipboardController.controller
            switch (target.selectedView) {
                case VIEW.PROJECT: feeder = [type: 'project', groups: [report.projectList()['groups'][pos]]]; break
                case VIEW.WHO: feeder = [type: 'who', groups: [report.delegateList()['groups'][pos]]]; break
                case VIEW.CONTEXT: feeder = [type: 'context', groups: [report.contextList()['groups'][pos]]]; break
                case VIEW.WHEN: feeder = [type: 'when', groups: [report.timelineList()['groups'][pos]]]; break
                default: throw new UnsupportedOperationException("Invalid selection pane: " + target.selectedView)
            }
            clip.clipboardContents = ClipBoardUtil.createTransferable(feeder, report.mapReader, target.showNotes)
            UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
        } catch (Exception e) {
            Logger.anonymousLogger.log(Level.SEVERE, e.message, e)
        }
    }

    void selectOnMap(int pos) {
        try {
            List list
            switch (target.selectedView) {
                case VIEW.PROJECT: list = (List) report.projectList()['groups'][pos]['items']; break
                case VIEW.WHO: list = (List) report.delegateList()['groups'][pos]['items']; break
                case VIEW.CONTEXT: list = (List) report.contextList()['groups'][pos]['items']; break
                case VIEW.WHEN: list = (List) report.timelineList()['groups'][pos]['items']; break
                default: throw new UnsupportedOperationException("Invalid selection pane: " + target.selectedView)
            }
            List ids = list.collect { it['nodeID'] }
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                void run() {
                    switchToMainWindow()
                    def nodesFound = ScriptUtils.c().find { ids.contains(it.id) }
                    if (nodesFound.size() > 0) {
                        if (target.autoFoldMap) {
                            foldToTop(nodesFound[0])
                        }
                        nodesFound.each {
                            unfoldBranch(it)
                        }
                        ScriptUtils.c().centerOnNode(nodesFound[0])
                        ScriptUtils.c().selectMultipleNodes(nodesFound)
                    } else {
                        UITools.informationMessage("Error finding selection")
                    }
                }
            })
        } catch (Exception e) {
            Logger.anonymousLogger.log(Level.SEVERE, e.message, e)
        }
    }

    private static void switchToMainWindow() {
        JFrame parentFrame = Controller.currentController.viewController.menuComponent as JFrame
        for (Window window : Window.windows) {
            if (parentFrame == window) {
                window.toFront()
            }
        }
    }

// recursive unfolding of branch
    private static void unfoldBranch(Node thisNode) {
        Node rootNode = thisNode.getMap().getRoot()
        if (thisNode != rootNode) {
            if (thisNode.folded) thisNode.setFolded(false)
            unfoldBranch(thisNode.getParent())
        }
    }

// fold to first level
    private static void foldToTop(Node thisNode) {
        Node rootNode = thisNode.getMap().getRoot()
        def Nodes = ScriptUtils.c().findAll()
        Nodes.each {
            if (!it.folded) it.setFolded(true)
        }
        rootNode.setFolded(false)
    }
}
