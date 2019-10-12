package freeplaneGTD.mover

import org.freeplane.api.Node
import org.freeplane.core.util.TextUtils

class ReviewTask extends DoneMover {

    static Node findOrCreateReviewDir(Node node) {
        String reviewDirName = TextUtils.getText("freeplaneGTD.config.reviewDirName")
        Node rootNode = node.map.root

        Node archiveNode = rootNode.children.find {
            it.transformedText == reviewDirName
        }
        if (!archiveNode) {
            archiveNode = rootNode.createChild()
            archiveNode.text = reviewDirName
        }
        return archiveNode
    }

}