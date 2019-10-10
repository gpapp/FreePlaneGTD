package freeplaneGTD.mover

import org.freeplane.api.Node
import org.freeplane.core.util.TextUtils

class ArchiveTask extends DoneMover {

    static Node findOrCreateArchiveDir(Node node) {
        final Node rootNode = node.map.root
        final String archiveDirName = TextUtils.getText("freeplaneGTD.config.archiveDirName")

        Node archiveNode = rootNode.children.find {
            it.transformedText == archiveDirName
        }
        if (!archiveNode) {
            archiveNode = rootNode.createChild()
            archiveNode.text = archiveDirName
        }
        return archiveNode
    }
}