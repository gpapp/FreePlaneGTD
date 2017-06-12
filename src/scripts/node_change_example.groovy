import org.freeplane.features.map.*;
import org.freeplane.features.mode.*
import org.freeplane.plugin.script.proxy.Proxy.*

class MyChangeListener extends AMapChangeListenerAdapter  {
    org.freeplane.plugin.script.proxy.Proxy.Node pnode

    // need some node to find other proxy nodes
    public MyChangeListener(pnode) {
        System.out.print("initing with $pnode")
        this.pnode = pnode
    }
    public void nodeChanged(NodeChangeEvent event) {
        // freeplane doesn't previous state of a node
        // so will make some assumptions
        try {
            if (ignore) return

            def node = event.getNode()
            if (node) {
                System.out.print("searching proxy for $node")

                // TBD: what if it's a from another map?
                // well it won't work...
                def curr_pnode = pnode.map.root.find{node.getID() == it.getId()}
                if (!curr_pnode) {
                    System.out.print("can't find a proxy for $node")
                    return
                } else {
                    //TBD: WAT?
                    curr_pnode = curr_pnode[0]
                }

                System.out.print("found $curr_pnode for $node")

                if (!isTask(node)) {
                    System.out.print('ignore - it isnt a task, remove if it has done mark')
                    removeDone(curr_pnode)
                    return
                }

                if (isDone(node) && !isPrevioslyDone(curr_pnode)) {
                    System.out.print('marking node as done')
                    markDone(curr_pnode)
                }
                if (!isDone(node)) {// && isPrevioslyDone(curr_pnode)) {
                    System.out.print('remove done')
                    removeDone(curr_pnode)
                }
            }
        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            System.err.print("caught in handler" + this.toString() + ": " + e.toString())
        }
    }

    // workaround
    public boolean ignore = false;
    private boolean isActive() { return !ignore }

    //TBD: change to proxy
    private boolean _is(node, iconName) {
        System.out.print("checking " + node.toString() + " for " + iconName)
        def icons = node.getIcons()
        // consider that we are working with MindIcon not Proxy.Icon
        return icons.find{ it.getName().equals(iconName) }
    }

    private boolean isTask(node) {
        return _is(node, 'yes')
    }
    private boolean isDone(node) {
        return _is(node, 'button_ok')
    }
    private boolean isPrevioslyDone(pnode) {
        def res = pnode.getAt(DONE)
        println "$pnode is previously " + (res ? "" : "not") + " done"
        return res
    }
    private markDone(pnode) {
        // should ignore attribute change to avoid infinit recursion!
        ignore = true
        pnode.attributes = [DONE : "done!"]
        ignore = false // naive?
    }
    private removeDone(pnode) {
        // should ignore attribute change to avoid infinit recursion!
        ignore = true
        pnode.attributes = [:]
        ignore = false // naive?
    }
    private static String DONE = "done"
    public static String NAME = "MyChangeListener"
    //@Override
    String inspect() { return NAME }
}

controller = Controller.getCurrentController().getCurrentModeController().getMapController()

// tear down old listeners
controller.getNodeChangeListeners().findAll{it.inspect() == MyChangeListener.NAME}.each{
    println "tear down " + it
    it.ignore = true
}

// checking via inspect() for wikdShell case
// in usual env may just use in MyChangeListener
if (!controller.getNodeChangeListeners().findAll{(it.inspect() == MyChangeListener.NAME) && it.isActive()}) {
    listener = new MyChangeListener(node)
    controller.addNodeChangeListener(listener)
    println "adding new listener " + listener
} else {
    println "the controller already added"
}