package freeplaneGTD

import groovy.util.logging.Log
import org.freeplane.features.map.IMapChangeListener
import org.freeplane.features.map.NodeDeletionEvent
import org.freeplane.features.map.NodeMoveEvent

import java.util.logging.Level

@Log
class GTDMapChangeListener implements IMapChangeListener {

    @Override
    void onNodeDeleted(NodeDeletionEvent nodeDeletionEvent) {
        try {
            GtdReportController.getGtdReportViewController().refreshContent()
        } catch (Exception e) {
            log.log(Level.SEVERE, e.message, e)
        }

    }

    @Override
    void onNodeMoved(NodeMoveEvent nodeMoveEvent) {
        try {
            GtdReportController.getGtdReportViewController().refreshContent()
        } catch (Exception e) {
            log.log(Level.SEVERE, e.message, e)
        }
    }
}
