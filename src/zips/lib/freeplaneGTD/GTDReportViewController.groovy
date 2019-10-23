package freeplaneGTD

import groovy.swing.SwingBuilder
import groovy.util.logging.Log
import org.freeplane.api.Node
import org.freeplane.core.resources.ResourceController
import org.freeplane.core.ui.components.MultipleImage
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.clipboard.ClipboardController
import org.freeplane.features.format.FormattedDate
import org.freeplane.features.icon.factory.MindIconFactory
import org.freeplane.features.map.clipboard.MapClipboardController
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController
import org.freeplane.plugin.script.proxy.ScriptUtils

import javax.swing.*
import java.awt.*
import java.awt.datatransfer.Clipboard
import java.awt.event.MouseAdapter
import java.awt.event.MouseEvent
import java.util.logging.Level

@Log
class GTDReportViewController {

    public static final String FREEPLANE_GTD_DEFAULT_VIEW = 'freeplaneGTD_default_view'
    static enum VIEW {
        PROJECT, WHO, CONTEXT, WHEN, DONETIMELINE
    }

    static enum DONE_TIMELINE {
        TODAY,
        LAST_WEEK,
        LAST_MONTH,
        EARLIER

    }

    private ReportModel report = new ReportModel()
    private JPanel taskPanel
    private ButtonGroup contentTypeGroup
    private JCheckBox cbFilterDone
    private Font titleFont

    protected boolean showNotes
    protected VIEW selectedView

    Component createPanel(ModeController modeController) {
        String defaultView
        try {
            defaultView = VIEW.valueOf(ResourceController.resourceController.getProperty(FREEPLANE_GTD_DEFAULT_VIEW)).toString()
        } catch (Exception e) {
            defaultView = VIEW.PROJECT.toString()
            log.log(Level.WARNING, "Cannot parse default view property:" + config.getProperty(FREEPLANE_GTD_DEFAULT_VIEW), e)
        }

        JPanel newPanel = null
        SwingBuilder.edtBuilder {
            newPanel = panel {
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
                }
                scrollPane(constraints: BorderLayout.CENTER) {
                    taskPanel = panel(border: emptyBorder(bottom: 10, left: 10, top: 10, right: 10)) {
                        borderLayout()
                    }
                }

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
                            })
                    cbFilterDone = checkBox(text: TextUtils.getText("freeplaneGTD.button.filter_done"),
                            selected: ResourceController.resourceController.getBooleanProperty('freeplaneGTD_filter_done'),
                            actionPerformed: {
                                ResourceController.resourceController.properties['freeplaneGTD_filter_done'] = Boolean.toString(it.source.selected as boolean)
                                refreshContent()
                            })
                    checkBox(text: TextUtils.getText("freeplaneGTD.button.show_notes"),
                            selected: showNotes,
                            actionPerformed: {
                                showNotes = it.source.selected
                                refreshContent()
                            })
                }
            }
        }
        titleFont = newPanel.getFont().deriveFont(Font.BOLD, 16.0)
        return newPanel
    }

    void refreshContent() {
        cbFilterDone.selected = ResourceController.resourceController.getBooleanProperty('freeplaneGTD_filter_done')
        report.refreshModel(cbFilterDone.selected)
        Component content
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
        taskPanel.clear()
        taskPanel.add(content)
        taskPanel.updateUI()
    }

    private Component formatList(Map list, Map<String, String> contextIcons, boolean showNotes) {
        Component newList
        SwingBuilder.edtBuilder {
            newList = panel {

                gridBagLayout()
                list['groups'].eachWithIndex { group, index ->
                    panel(constraints: gbc(anchor: GridBagConstraints.NORTHWEST, fill: GridBagConstraints.HORIZONTAL, gridwidth: GridBagConstraints.REMAINDER)) {
                        gridBagLayout()
                        if (contextIcons.keySet().contains(group['title'])) {
                            label(icon: MindIconFactory.createIcon(contextIcons.get(group['title'])).icon,
                                    text: group['title'], font: titleFont, constraints: gbc(weightx: 1.0, fill: GridBagConstraints.BOTH))
                        } else {
                            label(text: group['title'], font: titleFont, constraints: gbc(weightx: 1.0, fill: GridBagConstraints.BOTH))
                        }

                        button(
                                text: TextUtils.getText("freeplaneGTD.button.copy"),
                                constraints: gbc(weightx: 0.0, anchor: GridBagConstraints.EAST),
                                actionPerformed: {
                                    copyToClipboard(index)
                                }
                        )
                        button(text: TextUtils.getText("freeplaneGTD.button.select"),
                                constraints: gbc(weightx: 0.0, anchor: GridBagConstraints.EAST),
                                actionPerformed: {
                                    selectOnMap(index)
                                }
                        )
                    }

                    group['items'].each { Object item ->
                        rigidArea(width: 15)

                        // priority block
                        panel(constraints: gbc(weightx: 0.0)) {
                            if (item['priority']) {
                                label(icon: MindIconFactory.createIcon("full-" + item['priority']).icon)
                            }
                        }
                        // done checkbox
                        checkBox(selected: item['done'],
                                constraints: gbc(weightx: 0.0),
                                icon: MindIconFactory.createIcon("unchecked").icon,
                                selectedIcon: MindIconFactory.createIcon("button_ok").icon,
                                actionPerformed: {
                                    toggleDone((String) item['nodeID'], false)
                                })
                        // cancelled checkbox
                        checkBox(selected: item['cancelled'],
                                constraints: gbc(weightx: 0.0),
                                icon: MindIconFactory.createIcon("unchecked").icon,
                                selectedIcon: MindIconFactory.createIcon("button_cancel").icon,
                                actionPerformed: {
                                    toggleDone((String) item['nodeID'], true)
                                })
                        // context icons
                        panel(constraints: gbc(weightx: 0.0)) {
                            MultipleImage multipleImage = new MultipleImage()
                            (item['context'] as String)?.tokenize(',')?.each { key ->
                                if (contextIcons.keySet().contains(key)) {
                                    multipleImage.addIcon(MindIconFactory.createIcon(contextIcons.get(key)))
                                }
                            }
                            label(icon: multipleImage)
                        }
                        // task content

                        boolean overdue = item['time'] instanceof FormattedDate && ((FormattedDate) item['time']).before(new Date())
                        StringBuilder actionText = new StringBuilder(item['action'] as String)

                        !item['who'] ?: actionText.append(' [' + item['who'] + ']')
                        !item['when'] ?: actionText.append(' {' + item['when'] + '}')
                        !item['context'] ?: (item['context'] as String)?.tokenize(',')?.each { key ->
                            actionText.append(' @')
                            actionText.append(key)
                        }
                        !item['project'] ?: actionText.append(' for ' + item['project'])
                        // TODO: differentiate waitfor somehow?
                        if (item['waitFor'] || item['waitUntil']) {
                            actionText.append(' wait' + (item['waitFor'] ? ' for ' + item['waitFor'] : '') + (item['waitUntil'] ? ' until ' + item['waitUntil'] : ''))
                        }
                        JLabel taskLabel = label(text: actionText, foreground: overdue ? Color.RED : Color.BLACK,
                                constraints: gbc(weightx: 0.0, anchor: GridBagConstraints.NORTHEAST, fill: GridBagConstraints.BOTH)
                        )
                        glue(constraints: gbc(weightx: 1.0, fill: GridBagConstraints.BOTH, gridwidth: GridBagConstraints.REMAINDER))
                        taskLabel.addMouseListener(new MouseAdapter() {
                            @Override
                            void mouseClicked(MouseEvent e) {
                                followLink(item['nodeID'] as String)
                            }
                        })
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
                glue(constraints: gbc(fill: GridBagConstraints.BOTH, gridheight: GridBagConstraints.REMAINDER, gridwidth: GridBagConstraints.REMAINDER))
            } as Component
        }
        return newList
    }

    void copyToClipboard(int pos) {
        try {
            Map feeder
            ClipboardController clip = Controller.currentModeController.getExtension(MapClipboardController.class)
            switch (selectedView) {
                case VIEW.PROJECT: feeder = [type: 'project', groups: [report.projectList()['groups'][pos]]]; break
                case VIEW.WHO: feeder = [type: 'who', groups: [report.delegateList()['groups'][pos]]]; break
                case VIEW.CONTEXT: feeder = [type: 'context', groups: [report.contextList()['groups'][pos]]]; break
                case VIEW.WHEN: feeder = [type: 'when', groups: [report.timelineList()['groups'][pos]]]; break
                default: throw new UnsupportedOperationException("Invalid selection pane: " + selectedView)
            }
            clip.clipboardContents = ClipBoardUtil.createTransferable(feeder, report.mapReader, showNotes)
            UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
        } catch (Exception e) {
            log.severe(e.message)
        }
    }

    void selectOnMap(int pos) {
        try {
            java.util.List list
            switch (selectedView) {
                case VIEW.PROJECT: list = (java.util.List) report.projectList()['groups'][pos]['items']; break
                case VIEW.WHO: list = (java.util.List) report.delegateList()['groups'][pos]['items']; break
                case VIEW.CONTEXT: list = (java.util.List) report.contextList()['groups'][pos]['items']; break
                case VIEW.WHEN: list = (java.util.List) report.timelineList()['groups'][pos]['items']; break
                default: throw new UnsupportedOperationException("Invalid selection pane: " + selectedView)
            }
            java.util.List ids = list.collect { it['nodeID'] }
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                void run() {
                    def nodesFound = ScriptUtils.c().find { ids.contains(it.id) }
                    if (nodesFound.size() > 0) {
                        if (autoFoldMap) {
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
            log.severe(e.message)
        }
    }

    boolean getAutoFoldMap() {
        return ResourceController.resourceController.getBooleanProperty('freeplaneGTD_auto_fold_map')
    }

    void toggleDone(String linkNodeID, boolean isCancel) {
        try {
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                void run() {
                    def nodesFound = ScriptUtils.c().find { it.id == linkNodeID }

                    if (nodesFound[0] != null) {
                        def node = nodesFound[0]
                        boolean needsNewIcon = isCancel ? !node.icons.contains(report.mapReader.iconCancel) : !node.icons.contains(report.mapReader.iconDone)
                        node.icons.remove(report.mapReader.iconDone)
                        node.icons.remove(report.mapReader.iconCancel)
                        if (needsNewIcon) {
                            node.icons.add(isCancel ? report.mapReader.iconCancel : report.mapReader.iconDone)
                        }
                        refreshContent()
                    } else {
                        log.severe("Cannot find node to mark as done")
                        UITools.informationMessage("Cannot find node to mark as done")
                    }
                }
            })
        } catch (Exception e) {
            log.severe("Error in toggling as done:" + e.message)
        }
    }

    void followLink(String linkNodeID) {
        try {
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                void run() {
                    java.util.List<? extends Node> nodesFound = ScriptUtils.c().find { it.id == linkNodeID }

                    if (nodesFound[0] != null) {
                        if (autoFoldMap) {
                            foldToTop(nodesFound[0])
                        }
                        unfoldBranch(nodesFound[0])
                        ScriptUtils.c().centerOnNode(nodesFound[0])
                        ScriptUtils.c().select(nodesFound[0])
                    } else {
                        log.severe("Next Action not found in mind map. Refresh Next Action list")
                        UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list")
                    }
                }
            })
        } catch (Exception e) {
            log.severe(e.message)
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
