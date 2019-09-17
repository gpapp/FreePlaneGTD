package freeplaneGTD.mover

import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy

class ReviewTask extends DoneMover {

    static Proxy.Node findOrCreateReviewDir(Proxy.Node node){
        final Proxy.Node rootNode = node.map.root
        final String reviewDirName = TextUtils.getText("freeplaneGTD.config.reviewDirName")

        Proxy.Node archiveNode = rootNode.children.find {
            it.transformedText==reviewDirName
        }
        if(!archiveNode) {
            archiveNode = rootNode.createChild()
            archiveNode.text=reviewDirName
        }
        return archiveNode
    }

}