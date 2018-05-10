package freeplaneGTD

import org.freeplane.features.map.*
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ProxyFactory

import java.util.logging.Level
import java.util.logging.Logger

class GTDChangeListener extends AMapChangeListenerAdapter {
    GTDMapReader reader;

    GTDChangeListener() {
        reader = GTDMapReader.instance
    }

    ReportWindow getReportWindow() {
        return Controller.currentController.metaClass.getGtdReportWindow ?
                Controller.currentController.getGtdReportWindow() : null
    }

    @Override
    void onNodeDeleted(NodeDeletionEvent nodeDeletionEvent) {
        getReportWindow()?.refresh()
        super.onNodeDeleted(nodeDeletionEvent)
    }

    @Override
    void onNodeMoved(NodeMoveEvent nodeMoveEvent) {
        getReportWindow()?.refresh()
        super.onNodeMoved(nodeMoveEvent)
    }

    void nodeChanged(NodeChangeEvent event) {
        // freeplane doesn't previous state of a node
        // so will make some assumptions
        try {
            NodeModel nodeModel = event.getNode()
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
                }
            } else if (event.property == 'icon') {
                // TODO
            }

        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            Logger.anonymousLogger.log(Level.SEVERE, "Error caught:" + e.message, e)
            System.err.print("caught in handler" + this.toString() + ": " + e.toString())
        }
        super.nodeChanged(event)
    }
}