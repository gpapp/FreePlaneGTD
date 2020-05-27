package freeplaneGTD.editor

import freeplaneGTD.GTDMapReader
import freeplaneGTD.GtdReportController
import freeplaneGTD.util.DateUtil
import freeplaneGTD.util.IconUtil
import groovy.swing.SwingBuilder
import org.freeplane.api.Node
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.mode.Controller

import javax.swing.*
import java.awt.*
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent

class ActionEditor {
    class ActionEditorModel {
        String action
        String delegate
        String context
        boolean today
        String when
        String priority
        String waitFor
        String waitUntil
        boolean done
        boolean cancelled

        Node editedNode

        boolean setNode(Node node) {
            this.editedNode = node
            GTDMapReader mapReader = GTDMapReader.instance
            if (GTDMapReader.isShorthandTask(node)) {
                mapReader.parseSingleTaskNode(node)
            }
            mapReader.findIcons()
            if (!mapReader.isTask(node)) {
                UITools.errorMessage('Selected node is not a task')
                return false
            }
            action = node.text
            delegate = node.attributes['Who']?.replaceAll(',', ', ')
            context = node.attributes['Where']?.replaceAll(',', ', ')
            today = node.icons.contains(GTDMapReader.instance.iconToday)
            when = node.attributes['When']
            priority = node.attributes['Priority']
            waitFor = node.attributes['WaitFor']?.replaceAll(',', ', ')
            waitUntil = node.attributes['WaitUntil']
            done = node.icons.contains(GTDMapReader.instance.iconDone)
            cancelled = node.icons.contains(GTDMapReader.instance.iconCancel)
            return true
        }

        void updateNode() {
            editedNode.text = "$action"
            delegate ? editedNode['Who'] = delegate : editedNode.attributes.removeAll('Who')
            context ? editedNode['Where'] = context : editedNode.attributes.removeAll('Where')
            when ? editedNode['When'] = when : editedNode.attributes.removeAll('When')
            priority ? editedNode['Priority'] = priority : editedNode.attributes.removeAll('Priority')

            if (waitFor) {
                editedNode.attributes.set('WaitFor', waitFor.split(',')*.trim().unique({ a, b -> a.toLowerCase() <=> b.toLowerCase() }).join(','))
            } else
                editedNode.attributes.removeAll('WaitFor')

            if (waitUntil) {
                def waitUntilDate = DateUtil.normalizeDate(waitUntil)
                editedNode.attributes.set('WaitUntil', waitUntilDate)
            } else
                editedNode.attributes.removeAll('WaitUntil')

            GTDMapReader mapReader = GTDMapReader.instance
            if (editedNode.icons.contains(mapReader.iconToday) != today) {
                if (!today) {
                    editedNode.icons.remove(mapReader.iconToday)
                } else {
                    editedNode.icons.add(mapReader.iconToday)
                }
            }
            if (editedNode.icons.contains(mapReader.iconDone) != done) {
                if (!done) {
                    editedNode.icons.remove(mapReader.iconDone)
                } else {
                    editedNode.icons.add(mapReader.iconDone)
                }
            }
            if (editedNode.icons.contains(mapReader.iconCancel) != cancelled) {
                if (!cancelled) {
                    editedNode.icons.remove(mapReader.iconCancel)
                } else {
                    editedNode.icons.add(mapReader.iconCancel)
                }
            }
            // Find icons in the entire map
            mapReader.findIcons()

            // Re-parse map
            mapReader.fixAliasesForNode(editedNode)
            mapReader.fixIconsForNode(editedNode)

            Controller.currentModeController.getExtension(GtdReportController.getGtdReportControllerClass(Controller.currentModeController)).
                    gtdReportViewController.refreshContent()
        }
    }
    ActionEditorModel model = new ActionEditorModel()

    JDialog mainFrame
    JTextField actionField
    JTextField delegateField
    JTextField contextField
    JCheckBox todayField
    JTextField whenField
    JTextField priorityField
    JCheckBox doneField
    JCheckBox cancelledField
    JTextField waitForField
    JTextField waitUntilField
    JButton doneButton

    ActionEditor() {
        SwingBuilder.edtBuilder {
            mainFrame = dialog(
                    title: TextUtils.getText("freeplaneGTD.actioneditor.title"),
                    defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
                    show: false,
                    modal: true) {
                boxLayout(axis: BoxLayout.Y_AXIS) {
                    panel(border: BorderFactory.createEmptyBorder(10, 10, 10, 10)) {
                        gridBagLayout()
                        label(text: TextUtils.getText("freeplaneGTD.actioneditor.action"),
                                constraints: gbc(gridx: 0, gridy: 0, ipadx: 5, fill: HORIZONTAL))
                        actionField = textField(preferredSize: new Dimension(400, 25),
                                constraints: gbc(gridx: 1, gridy: 0, gridwidth: REMAINDER, fill: HORIZONTAL))

                        label(text: TextUtils.getText("freeplaneGTD.actioneditor.delegate"),
                                constraints: gbc(gridx: 0, gridy: 1, ipadx: 5, fill: HORIZONTAL))
                        delegateField = textField(preferredSize: new Dimension(300, 25),
                                constraints: gbc(gridx: 1, gridy: 1, gridwidth: REMAINDER, fill: HORIZONTAL))

                        label(text: TextUtils.getText("freeplaneGTD.actioneditor.context"),
                                constraints: gbc(gridx: 0, gridy: 2, ipadx: 5, fill: HORIZONTAL))
                        contextField = textField(preferredSize: new Dimension(300, 25),
                                constraints: gbc(gridx: 1, gridy: 2, gridwidth: REMAINDER, fill: HORIZONTAL))

                        label(text: TextUtils.getText("freeplaneGTD.actioneditor.when"),
                                constraints: gbc(gridx: 0, gridy: 3, ipadx: 5, fill: HORIZONTAL))
                        todayField = checkBox(text: TextUtils.getText("freeplaneGTD.actioneditor.today"),
                                preferredSize: new Dimension(50, 25),
                                constraints: gbc(gridx: 1, gridy: 3, ipadx: 5))
                        whenField = textField(preferredSize: new Dimension(250, 25),
                                constraints: gbc(gridx: 2, gridy: 3, fill: HORIZONTAL))
                        hbox(constraints: gbc(gridx: 3, gridy: 3, fill: HORIZONTAL)) {
                            doneField = checkBox(
                                    text: TextUtils.getText("freeplaneGTD.actioneditor.done"),
                                    icon: IconUtil.getIcon("unchecked"),
                                    selectedIcon: IconUtil.getIcon("button_ok"),
                                    actionPerformed: {
                                        if (doneField.selected && cancelledField.selected) {
                                            cancelledField.selected = false
                                        }
                                    })
                            cancelledField = checkBox(
                                    text: TextUtils.getText("freeplaneGTD.actioneditor.cancelled"),
                                    icon: IconUtil.getIcon("unchecked"),
                                    selectedIcon: IconUtil.getIcon("button_cancel"),
                                    actionPerformed: {
                                        if (doneField.selected && cancelledField.selected) {
                                            doneField.selected = false
                                        }
                                    })
                        }

                        label(text: TextUtils.getText("freeplaneGTD.actioneditor.waitFor"),
                                constraints: gbc(gridx: 0, gridy: 4, ipadx: 5, fill: HORIZONTAL))
                        waitForField = textField(preferredSize: new Dimension(250, 25),
                                constraints: gbc(gridx: 1, gridy: 4, gridwidth: REMAINDER, fill: HORIZONTAL))

                        label(text: TextUtils.getText("freeplaneGTD.actioneditor.waitUntil"),
                                constraints: gbc(gridx: 0, gridy: 5, ipadx: 5, fill: HORIZONTAL))
                        waitUntilField = textField(preferredSize: new Dimension(250, 25),
                                constraints: gbc(gridx: 1, gridy: 5, gridwidth: REMAINDER, fill: HORIZONTAL))

                        label(text: TextUtils.getText("freeplaneGTD.actioneditor.priority"),
                                constraints: gbc(gridx: 0, gridy: 6, ipadx: 5, fill: HORIZONTAL))
                        priorityField = textField(preferredSize: new Dimension(20, 25),
                                constraints: gbc(gridx: 1, gridy: 6, gridwidth: REMAINDER, fill: HORIZONTAL))
                    }
                    
                    panel() {
                        boxLayout(axis: BoxLayout.X_AXIS)
                        button(text: TextUtils.getText("freeplaneGTD.button.cancel"),
                                actionPerformed: {
                                    mainFrame.setVisible(false)
                                    mainFrame.dispose()
                                })
                        doneButton = button(id: 'doneButton', text: TextUtils.getText("freeplaneGTD.button.done"),
                                actionPerformed: {
                                    model.action = actionField.text
                                    model.delegate = delegateField.text
                                    model.context = contextField.text
                                    model.today = todayField.selected
                                    model.when = whenField.text
                                    model.priority = priorityField.text
                                    model.waitFor = waitForField.text
                                    model.waitUntil = waitUntilField.text
                                    model.done = doneField.selected
                                    model.cancelled = cancelledField.selected
                                    model.updateNode()
                                    mainFrame.setVisible(false)
                                    mainFrame.dispose()
                                })
                    }
                }
            }
            mainFrame.getRootPane().setDefaultButton(doneButton)
        }
        // on ESC key close frame
        mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
                KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText("freeplaneGTD.button.cancel"))
        mainFrame.getRootPane().getActionMap().put(TextUtils.getText("freeplaneGTD.button.cancel"),
                new AbstractAction() {
                    void actionPerformed(ActionEvent e) {
                        mainFrame.setVisible(false)
                        mainFrame.dispose()
                    }
                })
    }

    void editNode(Node node) {
        if (!model.setNode(node)) {
            return
        }
        actionField.text = model.action
        delegateField.text = model.delegate
        contextField.text = model.context
        todayField.selected = model.today
        whenField.text = model.when
        priorityField.text = model.priority
        waitForField.text = model.waitFor
        waitUntilField.text = model.waitUntil
        doneField.selected = model.done
        cancelledField.selected = model.cancelled
        mainFrame.pack()
        mainFrame.setLocationRelativeTo(UITools.frame)
        mainFrame.setVisible(true)
    }
}
