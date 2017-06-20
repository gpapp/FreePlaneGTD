package freeplaneGTD.editor

import freeplaneGTD.DateUtil
import freeplaneGTD.GTDMapReader
import freeplaneGTD.ReportWindow
import groovy.swing.SwingBuilder
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController
import org.freeplane.plugin.script.proxy.Proxy

import javax.swing.AbstractAction
import javax.swing.BorderFactory
import javax.swing.BoxLayout
import javax.swing.JButton
import javax.swing.JCheckBox
import javax.swing.JComponent
import javax.swing.JDialog
import javax.swing.JFrame
import javax.swing.JTextField
import javax.swing.KeyStroke
import java.awt.Dimension
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

        Proxy.Node node

        boolean setNode(Proxy.Node node) {
            this.node = node
            GTDMapReader mapReader = GTDMapReader.instance
            mapReader.findIcons(node.map.root)
            mapReader.internalConvertShorthand(node)
            if (!node.icons.contains(mapReader.iconNextAction)) {
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
            return true
        }

        void updateNode() {
            String localContext = ' @' + (context.split(',')*.trim()).join(' @')
            node.text = "* $action " +
                    (context?.trim() ? "$localContext" : '') +
                    (delegate?.trim() ? "[$delegate]" : '') +
                    (when?.trim() ? "{$when}" : '') +
                    (priority?.trim() ? "#$priority" : '')

            !delegate ? node.attributes.removeAll('Who') : false
            !context ? node.attributes.removeAll('Where') : false
            !when ? node.attributes.removeAll('When') : false
            !priority ? node.attributes.removeAll('Priority') : false
            if (waitFor) {
                node.attributes.set('WaitFor', waitFor.split(',')*.trim().unique({ a, b -> a.toLowerCase() <=> b.toLowerCase() }).join(','))
            } else
                node.attributes.removeAll('WaitFor')

            if (waitUntil) {
                def waitUntilDate = DateUtil.normalizeDate(waitUntil)
                node.attributes.set('WaitUntil', waitUntilDate)
            } else
                node.attributes.removeAll('WaitUntil')

            GTDMapReader mapReader = GTDMapReader.instance
            if (node.icons.contains(mapReader.iconToday) != today) {
                if (!today) {
                    node.icons.remove(mapReader.iconToday)
                } else {
                    node.icons.add(mapReader.iconToday)
                }
            }
            if (node.icons.contains(mapReader.iconDone) != done) {
                if (!done) {
                    node.icons.remove(mapReader.iconDone)
                } else {
                    node.icons.add(mapReader.iconDone)
                }
            }
            // Find icons in the entire map
            mapReader.findIcons(node.map.root)
            // Remove priority icons that are to be re-added by the shorthand conversion
            node.icons.each {
                if (it ==~ /^full\-\d$/) {
                    node.icons.remove(it)
                }
            }
            // Remove all existing context icons, that are to be re-added by the shorthand conversion
            node.icons.each {
                if (mapReader.contextIcons.containsValue(it)) {
                    node.icons.remove(it)
                }
            }
            // Only re-parse the current node
            mapReader.internalConvertShorthand(node)

			ReportWindow.instance.refresh(node.map.root)
        }
    }
    ActionEditorModel model = new ActionEditorModel();

    JDialog mainFrame;
    JTextField actionField
    JTextField delegateField
    JTextField contextField
    JCheckBox todayField
    JTextField whenField
    JTextField priorityField
    JCheckBox doneField
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
                boxLayout(axis: BoxLayout.Y_AXIS)
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
                    doneField = checkBox(text: TextUtils.getText("freeplaneGTD.actioneditor.done"),
                            constraints: gbc(gridx: 3, gridy: 3, fill: HORIZONTAL))

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
                                model.updateNode()
                                mainFrame.setVisible(false)
                                mainFrame.dispose()
                            })
                }
            }
            mainFrame.getRootPane().setDefaultButton(doneButton)
        }
        // on ESC key close frame
        mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
                KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText("freeplaneGTD.button.cancel"));
        mainFrame.getRootPane().getActionMap().put(TextUtils.getText("freeplaneGTD.button.cancel"),
                new AbstractAction() {
                    void actionPerformed(ActionEvent e) {
                        mainFrame.setVisible(false);
                        mainFrame.dispose();
                    }
                });
    }

    void editNode(Proxy.Node node) {
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
        mainFrame.pack()
        mainFrame.setLocationRelativeTo(UITools.frame)
        mainFrame.setVisible(true)
    }
}