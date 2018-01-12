package freeplaneGTD.mover

import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy

class ArchiveTask extends DoneMover {

    public static Proxy.Node findOrCreateArchiveDir(Proxy.Node node) {
        final Proxy.Node rootNode = node.map.root
        final String archiveDirName = TextUtils.getText("freeplaneGTD.config.archiveDirName")

        Proxy.Node archiveNode = rootNode.children.find {
            it.transformedText == archiveDirName
        }
        if (!archiveNode) {
            archiveNode = rootNode.createChild()
            archiveNode.text = archiveDirName
        }
        return archiveNode
    }
}