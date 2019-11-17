package freeplaneGTD.listener

import freeplaneGTD.GtdReportController
import groovy.util.logging.Log
import org.freeplane.features.map.IMapChangeListener
import org.freeplane.features.map.NodeDeletionEvent
import org.freeplane.features.map.NodeMoveEvent
import org.freeplane.features.mode.Controller

import java.util.logging.Level

@Log
class GTDMapChangeListener implements IMapChangeListener {
    private boolean enabled

    GTDMapChangeListener() {
        enabled = true
    }

    @Override
    void onNodeDeleted(NodeDeletionEvent nodeDeletionEvent) {
        if (!enabled) return
        try {
            Controller.currentModeController.getExtension(GtdReportController.getGtdReportControllerClass(Controller.currentModeController)).
                    gtdReportViewController.refreshContent()
        } catch (Exception e) {
            log.log(Level.SEVERE, e.message, e)
        }

    }

    @Override
    void onNodeMoved(NodeMoveEvent nodeMoveEvent) {
        if (!enabled) return
        try {
            Controller.currentModeController.getExtension(GtdReportController.getGtdReportControllerClass(Controller.currentModeController)).
                    gtdReportViewController.refreshContent()
        } catch (Exception e) {
            log.log(Level.SEVERE, e.message, e)
        }
    }

    void setEnabled(boolean b) {
        enabled = b
    }
}
