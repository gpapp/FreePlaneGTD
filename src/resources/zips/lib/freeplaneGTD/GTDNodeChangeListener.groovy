package freeplaneGTD

import groovy.util.logging.Log
import org.freeplane.api.Node
import org.freeplane.features.attribute.NodeAttributeTableModel
import org.freeplane.features.map.INodeChangeListener
import org.freeplane.features.map.NodeChangeEvent
import org.freeplane.plugin.script.proxy.ScriptUtils

@Log
class GTDNodeChangeListener implements INodeChangeListener {
    boolean mutex
    GTDMapReader reader

    GTDNodeChangeListener() {
        reader = GTDMapReader.instance
        reader.findIcons()
    }

    void nodeChanged(NodeChangeEvent event) {
        if (!event.setsDirtyFlag()) return
        if (mutex) return
        mutex = true
        try {
            log.info("Got event:" + event.source.class)
            boolean changed = true
            if (event.property == 'node_text') {

                Node node = ScriptUtils.c().find({ Node it -> it.id == event.node.id })[0]
                if (GTDMapReader.isConfigAlias(node)) {
                    reader.findAliases()
                } else if (GTDMapReader.isConfigIcon(node)) {
                    reader.findIcons()
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

                reader.findIcons()
                if (reader.isTask(node)) {
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
                }
            } else changed = event.property == NodeAttributeTableModel.class
            if (changed) {
                ReportWindow.instance.refresh()
            }

        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            log.severe("Error caught:" + e.message)
        }
        mutex = false
    }
}