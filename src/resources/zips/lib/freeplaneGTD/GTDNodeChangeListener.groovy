package freeplaneGTD

import org.freeplane.features.attribute.NodeAttributeTableModel
import org.freeplane.features.map.INodeChangeListener
import org.freeplane.features.map.NodeChangeEvent
import org.freeplane.features.map.NodeModel
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ProxyFactory

import java.util.logging.Level
import java.util.logging.Logger

class GTDNodeChangeListener implements INodeChangeListener {
    boolean mutex
    GTDMapReader reader

    GTDNodeChangeListener() {
        reader = GTDMapReader.instance
		reader.findIcons()
    }

    def getReportWindow() {
        return ReportWindow.instance
    }

    void nodeChanged(NodeChangeEvent[] events) {
		events.each { event -> nodeChanged(event)}
	}
	
    void nodeChanged(NodeChangeEvent event) {
        // freeplane doesn't previous state of a node
        // so will make some assumptions
        if (mutex) return
        mutex = true
        try {
            NodeModel nodeModel = event.getNode()
            boolean changed = true
            if (event.property == 'node_text') {
                Proxy.Node node = ProxyFactory.createNode(nodeModel, null)
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
                Proxy.Node node = ProxyFactory.createNode(nodeModel, null)
				
				reader.findIcons()
				// re-read icons on context change
				if (!event.oldValue && event.newValue) {
					reader.handleIconAdd(node,event.newValue.name)
				} else if (event.oldValue && !event.newValue) {
					reader.handleIconRemove(node,event.oldValue.name)
				} else if (event.oldValue && event.newValue) {
					reader.handleIconRemove(node,event.oldValue.name)
					reader.handleIconAdd(node,event.newValue.name)
				} else {
                    changed = false
                }
            } else if (event.property == NodeAttributeTableModel.class) {
                changed = true
            } else {
                changed = false
            }
            if (changed) {
                getReportWindow()?.refresh()
            }

        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            Logger.anonymousLogger.log(Level.SEVERE, "Error caught:" + e.message, e)
            System.err.print("caught in handler" + this.toString() + ": " + e.toString())
        }
        mutex = false
    }
}