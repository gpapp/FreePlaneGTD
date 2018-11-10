package freeplaneGTD

import org.freeplane.features.map.IMapChangeListener
import org.freeplane.features.map.NodeDeletionEvent
import org.freeplane.features.map.NodeMoveEvent

class GTDMapChangeListener implements IMapChangeListener {
    def getReportWindow() {
        return ReportWindow.instance
    }

    @Override
    void onNodeDeleted(NodeDeletionEvent nodeDeletionEvent) {
        getReportWindow()?.refreshContent()
    }

    @Override
    void onNodeMoved(NodeMoveEvent nodeMoveEvent) {
        getReportWindow()?.refreshContent()
    }
}