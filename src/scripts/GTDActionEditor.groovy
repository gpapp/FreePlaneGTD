// @ExecutionModes({on_single_node="main_menu_scripting/freeplaneGTD[addons.editAction]"})
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
import freeplaneGTD.GTDMapReader
import groovy.swing.SwingBuilder
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy

import javax.swing.*
import java.awt.*
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent

class ActionEditorModel {
    String action
    String delegate
    String context
    boolean today
    String when
    String priority
    boolean done

    Proxy.Node node

    boolean setNode(Proxy.Node node) {
        this.node=node
        GTDMapReader mapReader = GTDMapReader.instance
        mapReader.findIcons(node.map.root)
        mapReader.internalConvertShorthand(node)
        if(!node.icons.contains(mapReader.iconNextAction)){
            UITools.errorMessage ('Selected node is not a task')
            return false
        }
        action=node.text
        delegate=node.attributes['Who']
        context=node.attributes['Where']
        today=node.icons.contains(GTDMapReader.instance.iconToday)
        when=node.attributes['When']
        priority=node.attributes['Priority']
        done=node.icons.contains(GTDMapReader.instance.iconDone)
        return true
    }

    void updateNode() {
        node.text = "* $action " +
                (context?.trim() ? "@$context" : '') +
                (delegate?.trim() ? "[$delegate]" : '') +
                (when?.trim() ? "{$when}" : '') +
                (priority?.trim() ? "#$priority" : '')
        !delegate?node.attributes.delete('Who'):false
        !context?node.attributes.delete('Where'):false
        !when?node.attributes.delete('When'):false
        !priority?node.attributes.delete('Priority'):false

        GTDMapReader mapReader = GTDMapReader.instance
        if (node.icons.contains(mapReader.iconToday)!=today) {
            if(!today){
                node.icons.remove(mapReader.iconToday)
            } else {
        	   node.icons.add(mapReader.iconToday)
            }
        }
        if (node.icons.contains(mapReader.iconDone)!=done) {
            if(!done){
                node.icons.remove(mapReader.iconDone)
            } else {
                node.icons.add(mapReader.iconDone)
            }
        }
        // Remove priority icons that are to be re-added by the shorthand conversion
        node.icons.each {
            if (it ==~ /^full\-\d$/) {
                node.icons.remove(it)
            }
        }
        // Find icons in the entire map
        mapReader.findIcons(node.map.root)
        // Only re-parse the current node
        mapReader.internalConvertShorthand(node)
    }
}

class ActionEditor {
    ActionEditorModel model = new ActionEditorModel();

    JDialog mainFrame;
    JTextField actionField
    JTextField delegateField
    JTextField contextField
    JCheckBox  todayField
    JTextField whenField
    JTextField priorityField
    JCheckBox  doneField

    ActionEditor() {
        SwingBuilder.edtBuilder {
            mainFrame = dialog(
                    title: TextUtils.getText("freeplaneGTD.actioneditor.title"),
                    defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
                    show: false,
                    modal: true) {
                boxLayout(axis: BoxLayout.Y_AXIS)
                panel(border:BorderFactory.createEmptyBorder(10,10,10,10)) {
                    gridBagLayout()

                    label(text: TextUtils.getText("freeplaneGTD.actioneditor.action"),
                        constraints: gbc(gridx:0,gridy:0,ipadx:5,fill:HORIZONTAL))
                    actionField = textField(preferredSize:new Dimension(400,25),
                        constraints:gbc(gridx:1,gridy:0,gridwidth:REMAINDER,fill:HORIZONTAL))

                    label(text: TextUtils.getText("freeplaneGTD.actioneditor.delegate"),
                        constraints: gbc(gridx:0,gridy:1,ipadx:5,fill:HORIZONTAL))
                    delegateField = textField(preferredSize:new Dimension(300,25),
                        constraints:gbc(gridx:1,gridy:1,gridwidth:REMAINDER,fill:HORIZONTAL))

                    label(text: TextUtils.getText("freeplaneGTD.actioneditor.context"),
                        constraints: gbc(gridx:0,gridy:2,ipadx:5,fill:HORIZONTAL))
                    contextField = textField(preferredSize:new Dimension(300,25),
                        constraints:gbc(gridx:1,gridy:2,gridwidth:REMAINDER,fill:HORIZONTAL))

                    label(text: TextUtils.getText("freeplaneGTD.actioneditor.when"),
                        constraints: gbc(gridx:0,gridy:3,ipadx:5,fill:HORIZONTAL))
                    todayField=checkBox(text: TextUtils.getText("freeplaneGTD.actioneditor.today"),
                        preferredSize:new Dimension(150,25),
                        constraints:gbc(gridx:1,gridy:3))
                    whenField = textField(preferredSize:new Dimension(250,25),
                        constraints:gbc(gridx:2,gridy:3,gridwidth:REMAINDER,fill:HORIZONTAL))

                    label(text: TextUtils.getText("freeplaneGTD.actioneditor.priority"),
                        constraints: gbc(gridx:0,gridy:4,ipadx:5,fill:HORIZONTAL))
                    priorityField = textField(preferredSize:new Dimension(300,25),
                        constraints:gbc(gridx:1,gridy:4,gridwidth:REMAINDER,fill:HORIZONTAL))

                    doneField=checkBox(text: TextUtils.getText("freeplaneGTD.actioneditor.done"),
                        preferredSize:new Dimension(300,20),
                        constraints:gbc(gridx:1,gridy:4,gridwidth:REMAINDER,fill:HORIZONTAL))
                }
                panel() {
                    boxLayout(axis: BoxLayout.X_AXIS)
                    cancelButton = button(text: TextUtils.getText("freeplaneGTD.button.cancel"),
                            actionPerformed: {
                                mainFrame.setVisible(false)
                                mainFrame.dispose()
                            })
                    doneButton = button(id:'doneButton', text: TextUtils.getText("freeplaneGTD.button.done"),
                            actionPerformed: {
                                model.action=actionField.text
                                model.delegate=delegateField.text
                                model.context=contextField.text
                                model.today=todayField.selected
                                model.when=whenField.text
                                model.priority=priorityField.text
                                model.done=doneField.selected
                                model.updateNode()
                                mainFrame.setVisible(false)
                                mainFrame.dispose()
                            })
                    mainFrame.getRootPane().setDefaultButton(doneButton)
                }
            }
        }
        // on ESC key close frame
        mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
            KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText("freeplaneGTD.button.cancel"));
        mainFrame.getRootPane().getActionMap().put(TextUtils.getText("freeplaneGTD.button.cancel"),
            new AbstractAction () {
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
        actionField.text=model.action
        delegateField.text=model.delegate
        contextField.text=model.context
        todayField.selected=model.today
        whenField.text=model.when
        priorityField.text=model.priority
        doneField.selected=model.done
        mainFrame.pack()
        mainFrame.setLocationRelativeTo(UITools.frame)
        mainFrame.setVisible(true)
    }
}

ActionEditor editor = new ActionEditor()
editor.editNode(node)
