package freeplaneGTD.mover

import freeplaneGTD.GTDMapReader
import org.freeplane.api.Node

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
    Node findProjectRoot(final Node targetDir, final Node projectDir) {
        if (projectDir == targetDir.map.root) {
            return targetDir
        }
        Node targetParentDir = findProjectRoot(targetDir, projectDir.parent)
        if (projectDir.icons.contains(mapReader.iconProject)) {
            Node targetProjectDir = targetParentDir.children.find { it.text == projectDir.text }
            if (!targetProjectDir) {
                targetProjectDir = targetParentDir.appendChild(projectDir)
            }
            return targetProjectDir
        }
        return targetParentDir
    }

    void execute(final Node targetDir, final Node node) {
        // Must reread it every time in case the configuration nodes were changed
        mapReader.findIcons()
        mapReader.internalConvertShorthand()
        if (node.text.equals("Archives")) {
            return
        }

        if (!node.icons.contains(mapReader.iconNextAction) || !mapReader.isDone(node)) {
            node.children.each {
                Node it ->
                    if (it == targetDir) {
                        return
                    }
                    this.execute(targetDir, it)
            }
            return
        }

        Node targetNode = findProjectRoot(targetDir, node.parent)
        Node oldParentPtr = node.parent
        node.moveTo(targetNode)
        node.left = targetNode.left

        while (!oldParentPtr.children && oldParentPtr.icons.contains(mapReader.iconProject) && oldParentPtr.parent) {
            Node toDelete = oldParentPtr
            oldParentPtr = oldParentPtr.parent
            toDelete.delete()
        }
    }
}
