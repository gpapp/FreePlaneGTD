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
import groovy.swing.SwingBuilder

import java.awt.Dimension
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import javax.swing.AbstractAction
import javax.swing.BorderFactory
import javax.swing.BoxLayout
import javax.swing.JButton
import javax.swing.JComponent
import javax.swing.JCheckBox
import javax.swing.JDialog
import javax.swing.JFrame
import javax.swing.JTextField
import javax.swing.KeyStroke

import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy

import freeplaneGTD.GTDMapReader

class ActionEditorModel {
    String action
    String delegate
    String context
    String when
    boolean done

    Proxy.Node node

    boolean setNode(Proxy.Node node) {
        this.node=node
        GTDMapReader mapReader = GTDMapReader.instance
        mapReader.convertShorthand(node)
        mapReader.findIcons(node.map.rootNode)
        if(!node.icons.contains(mapReader.iconNextAction)){
            UITools.errorMessage ('Selected node is not a task')
            return false
        }
        action=node.text
        delegate=node.attributes['Who']
        context=node.attributes['Where']
        when=node.attributes['When']
        done=node.icons.contains(GTDMapReader.instance.iconDone)
        return true
    }

    void updateNode() {
        node.text = "* $action " +
                (context?.trim() ? "@$context" : '') +
                (delegate?.trim() ? "[$delegate]" : '') +
                (when?.trim() ? "{$when}" : '')
        !delegate?node.attributes.remove('Who'):false
        !context?node.attributes.remove('Where'):false
        !when?node.attributes.remove('When'):false
        
        GTDMapReader mapReader = GTDMapReader.instance
        mapReader.convertShorthand(node)
        mapReader.findIcons(node.map.rootNode)
        if (node.icons.contains(GTDMapReader.instance.iconDone)!=done) {
            if(!done){
        	node.icons.remove(GTDMapReader.instance.iconDone)
            } else {
        	node.icons.add(GTDMapReader.instance.iconDone)
            }
        }
    }
}

class ActionEditor {
    ActionEditorModel model = new ActionEditorModel();

    JDialog mainFrame;
    JTextField actionField
    JTextField delegateField
    JTextField contextField
    JTextField whenField
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
                    whenField = textField(preferredSize:new Dimension(300,25),
                        constraints:gbc(gridx:1,gridy:3,gridwidth:REMAINDER,fill:HORIZONTAL))

                    doneField=checkBox(text: TextUtils.getText("freeplaneGTD.actioneditor.done"),
                        preferredSize:new Dimension(300,20),
                        constraints:gbc(gridx:1,gridy:4,gridwidth:REMAINDER,fill:HORIZONTAL))
                }
                panel() {
                    boxLayout(axis: BoxLayout.X_AXIS)
                    JButton cancelButton = button(text: TextUtils.getText("freeplaneGTD.button.cancel"),
                            actionPerformed: {
                                mainFrame.setVisible(false)
                                mainFrame.dispose()
                            })
                    JButton doneButton = button(id:'doneButton', text: TextUtils.getText("freeplaneGTD.button.done"),
                            actionPerformed: {
                                model.action=actionField.text
                                model.delegate=delegateField.text
                                model.context=contextField.text
                                model.when=whenField.text
                                model.done=doneField.selected
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
        whenField.text=model.when
        doneField.selected=model.done
        mainFrame.pack()
        mainFrame.setLocationRelativeTo(UITools.frame)
        mainFrame.setVisible(true)
    }
}

ActionEditor editor = new ActionEditor()
editor.editNode(node)
