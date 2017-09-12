package freeplaneGTD

import org.freeplane.plugin.script.proxy.Proxy

/**
 * Created by gpapp on 2016.01.24..
 */
abstract class DoneMover {
    protected final GTDMapReader mapReader = GTDMapReader.instance

    /**
     * Walk up the node structure to find the project path.
     * @param targetDir where to create the new directory
     * @param projectDir which node we currently try to look at
     * @return
     */
    Proxy.Node findProjectRoot(final Proxy.Node targetDir, final Proxy.Node projectDir) {
        if (projectDir == targetDir.map.root) {
            return targetDir
        }
        Proxy.Node targetParentDir = findProjectRoot(targetDir, projectDir.parent)
        if (projectDir.icons.contains(mapReader.iconProject)) {
            Proxy.Node targetProjectDir = targetParentDir.children.find { it.text == projectDir.text }
            if (!targetProjectDir) {
                targetProjectDir = targetParentDir.appendChild(projectDir);
            }
            return targetProjectDir
        }
        return targetParentDir
    }

    void execute(final Proxy.Node targetDir, final Proxy.Node node) {
        // Must reread it every time in case the configuration nodes were changed
        mapReader.findIcons(node.map.root)
        mapReader.internalConvertShorthand(node)
        System.out.print("checking " + node.text)
        if (node.text.equals("Archives")) {
            return
        }

        if (!node.icons.contains(mapReader.iconNextAction) || !(node.icons.contains(mapReader.iconCancel) || node.icons.contains(mapReader.iconDone ))) {
            node.children.each {
                if (it==targetDir){
                    return
                }
                this.execute(targetDir, it)
            }
            return
        }

        Proxy.Node targetNode = findProjectRoot(targetDir, node.parent)
        Proxy.Node oldParentPtr = node.parent
        node.moveTo(targetNode)
        node.left=targetNode.left

        while (!oldParentPtr.children && oldParentPtr.icons.contains(mapReader.iconProject) && oldParentPtr.parent) {
            Proxy.Node toDelete = oldParentPtr
            oldParentPtr = oldParentPtr.parent
            toDelete.delete()
        }
    }
}
