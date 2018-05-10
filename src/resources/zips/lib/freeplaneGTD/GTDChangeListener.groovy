package freeplaneGTD

import org.freeplane.features.attribute.NodeAttributeTableModel
import org.freeplane.features.map.*
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ProxyFactory

import java.util.logging.Level
import java.util.logging.Logger

class GTDChangeListener extends AMapChangeListenerAdapter {
    boolean mutex
    GTDMapReader reader

    GTDChangeListener() {
        reader = GTDMapReader.instance
    }

    def getReportWindow() {
        return ReportWindow.instance
    }

    @Override
    void onNodeDeleted(NodeDeletionEvent nodeDeletionEvent) {
        getReportWindow()?.refreshContent()
        super.onNodeDeleted(nodeDeletionEvent)
    }

    @Override
    void onNodeMoved(NodeMoveEvent nodeMoveEvent) {
        getReportWindow()?.refreshContent()
        super.onNodeMoved(nodeMoveEvent)
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
                    reader.fixAliasesAndIconsForNode(node)
                } else if (GTDMapReader.isShorthandTask(node)) {
                    reader.parseSingleTaskNode(node)
                    reader.fixAliasesAndIconsForNode(node)
                } else if (reader.isTask(node)) {
                    reader.parseSingleTaskNode(node)
                    reader.fixAliasesAndIconsForNode(node)
                } else {
                    changed = false
                }
            } else if (event.property == 'icon') {
                Proxy.Node node = ProxyFactory.createNode(nodeModel, null)
                if (reader.isDone(node) && !node['WhenDone']) {
                    node['WhenDone'] = DateUtil.getFormattedDate()
                } else if (!reader.isDone(node) && node['WhenDone']) {
                    node['WhenDone'] = null
                } else {
                    changed = false
                }
            } else if (event.property == NodeAttributeTableModel.class) {
                changed = true
            } else {
                changed = false
            }
            if (changed) {
                getReportWindow()?.refreshContent()
            }

        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            Logger.anonymousLogger.log(Level.SEVERE, "Error caught:" + e.message, e)
            System.err.print("caught in handler" + this.toString() + ": " + e.toString())
        }
        mutex = false
        super.nodeChanged(event)
    }
}