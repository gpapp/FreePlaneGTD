package freeplaneGTD

import org.freeplane.features.attribute.AttributeController
import org.freeplane.features.icon.MindIcon
import org.freeplane.features.map.AMapChangeListenerAdapter
import org.freeplane.features.map.NodeChangeEvent
import org.freeplane.features.map.NodeModel
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ProxyFactory

import java.text.DateFormat
import java.text.SimpleDateFormat

class GTDChangeListener extends AMapChangeListenerAdapter {
    GTDMapReader reader;

    GTDChangeListener (){
        reader = GTDMapReader.instance
    }
    ReportWindow getReportWindow() {
        return Controller.currentController.metaClass.getGtdReportWindow ?
                Controller.currentController.getGtdReportWindow() : null
    }

    void nodeChanged(NodeChangeEvent event) {
        // freeplane doesn't previous state of a node
        // so will make some assumptions
        try {

            NodeModel nodeModel = event.getNode()
            Node node = ProxyFactory.createNode(nodeModel, null)
            if (node) {
                if (!isTask(node)) {
                    System.out.print('ignore - it isnt a task, remove if it has done mark')
                    removeDone(node)
                    return
                }

                if (isDone(node) && !isPrevioslyDone(node)) {
                    System.out.print('marking node as done')
                    markDone(node)
                }
                if (!isDone(node)) {
                    System.out.print('remove done')
                    removeDone(node)
                }
            }
        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            System.err.print("caught in handler" + this.toString() + ": " + e.toString())
        }
    }

    private boolean hasIcon(Proxy.Node node, String iconName) {
        Proxy.Icons icons = node.getIcons()
        return icons.find { String it -> it.equals(iconName) }
    }

    private boolean isTask(Proxy.Node node) {
        return hasIcon(node, 'yes')
    }

    private boolean isDone(Proxy.Node node) {
        return hasIcon(node, 'button_ok')
    }

    private boolean isPrevioslyDone(Proxy.Node node) {
        def res = node['DONE']
        println "$node is previously " + (res ? "" : "not") + " done"
        return res
    }

    private markDone(Proxy.Node node) {
        node['DONE'] = getNowString()
    }

    private removeDone(Proxy.Node node) {
        node.attributes = [:]
    }

}