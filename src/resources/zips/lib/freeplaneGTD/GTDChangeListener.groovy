package freeplaneGTD

import org.freeplane.features.map.AMapChangeListenerAdapter
import org.freeplane.features.map.NodeChangeEvent
import org.freeplane.features.map.NodeModel

import java.text.DateFormat
import java.text.SimpleDateFormat

class GTDChangeListener extends AMapChangeListenerAdapter {

    void nodeChanged(NodeChangeEvent event) {
        // freeplane doesn't previous state of a node
        // so will make some assumptions
        try {

            NodeModel node = event.getNode()
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

    //TBD: change to proxy
    private boolean _is(NodeModel node, String iconName) {
        //System.out.print("checking " + node.toString() + " for " + iconName)
        def icons = node.getIcons()
        // consider that we are working with MindIcon not Proxy.Icon
        return icons.find { it.getName().equals(iconName) }
    }

    private boolean isTask(NodeModel node) {
        return _is(node, 'yes')
    }

    private boolean isDone(NodeModel node) {
        return _is(node, 'button_ok')
    }

    private boolean isPrevioslyDone(NodeModel node) {
        def res = node.getAt("DONE")
        println "$node is previously " + (res ? "" : "not") + " done"
        return res
    }

    private markDone(NodeModel node) {
        node.attributes = [DONE: getNowString()]
    }

    private removeDone(pnode) {
        pnode.attributes = [:]
    }

    private getNowString() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        return dateFormat.format(date);
    }
}