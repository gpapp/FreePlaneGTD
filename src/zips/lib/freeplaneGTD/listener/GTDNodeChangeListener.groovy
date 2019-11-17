package freeplaneGTD.listener

import freeplaneGTD.GTDMapReader
import freeplaneGTD.GtdReportController
import groovy.util.logging.Log
import org.freeplane.api.Node
import org.freeplane.features.attribute.NodeAttributeTableModel
import org.freeplane.features.map.INodeChangeListener
import org.freeplane.features.map.NodeChangeEvent
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.proxy.ScriptUtils

import java.util.logging.Level

@Log
class GTDNodeChangeListener implements INodeChangeListener {
    boolean enabled
    GTDMapReader reader

    GTDNodeChangeListener() {
        enabled = true
        reader = GTDMapReader.instance
        reader.findIcons()
    }

    void nodeChanged(NodeChangeEvent event) {
        if (!event.setsDirtyFlag()) return
        if (!enabled) return
        try {
            log.info("Got event:" + event.source.class)
            boolean changed = true
            if (event.property == 'node_text') {

                Node node = ScriptUtils.c().find({ Node it -> it.id == event.node.id })[0]
                if (GTDMapReader.isConfigAlias(node)) {
                    reader.findAliases()
                    reader.fixIconsOnAliasConfigChange()
                } else if (GTDMapReader.isConfigIcon(node)) {
                    reader.findIcons()
                    reader.fixIconsOnContextConfigChange()
                } else if (GTDMapReader.isShorthandQuestion(node)) {
                    reader.parseSingleQuestionNode(node)
                } else if (GTDMapReader.isShorthandTask(node)) {
                    reader.parseSingleTaskNode(node)
                    reader.fixAliasesForNode(node)
                    reader.fixIconsForNode(node)
                } else if (reader.isTask(node)) {
                    reader.parseSingleTaskNode(node)
                    reader.fixAliasesForNode(node)
                    reader.fixIconsForNode(node)
                } else {
                    changed = false
                }
            } else if (event.property == 'icon') {
                Node node = ScriptUtils.c().find({ Node it -> it.id == event.node.id })[0]

                if (reader.isTask(node)) {
                    reader.findIcons()
                    // re-read icons on context change
                    if (!event.oldValue && event.newValue) {
                        reader.handleIconAdd(node, event.newValue.name)
                    } else if (event.oldValue && !event.newValue) {
                        reader.handleIconRemove(node, event.oldValue.name)
                    } else if (event.oldValue && event.newValue) {
                        reader.handleIconRemove(node, event.oldValue.name)
                        reader.handleIconAdd(node, event.newValue.name)
                    } else {
                        changed = false
                    }
                } else if (GTDMapReader.isConfigIcon(node) || GTDMapReader.isConfigAlias(node)) {
                    if (node.icons.size() > 1 && !event.oldValue) {
                        node.icons.remove(1)
                    } else {
                        try {
                            reader.findIcons()
                            reader.handleConfigIconChange(node, event.oldValue?.name, event.newValue?.name)
                        } catch (Exception e) {
                            node.icons.remove(0)
                            reader.findIcons()
                            ScriptUtils.c().statusInfo = e.message
                            log.severe("Error caught:" + e.message)
                        }
                    }
                }
            } else changed = event.property == NodeAttributeTableModel.class
            if (changed) {
                Controller.currentModeController.getExtension(GtdReportController.getGtdReportControllerClass(Controller.currentModeController)).
                        gtdReportViewController.refreshContent()
            }

        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            log.log(Level.SEVERE, "Error caught:" + e.message, e)
        }
    }

    void setEnabled(boolean b) {
        enabled = b
    }
}