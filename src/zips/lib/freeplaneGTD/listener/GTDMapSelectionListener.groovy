package freeplaneGTD.listener

import freeplaneGTD.GtdReportController
import org.freeplane.features.map.IMapSelectionListener
import org.freeplane.features.map.MapModel
import org.freeplane.features.mode.Controller


/**
 * On changing the map make sure the task list is updated to the newly selected map
 *
 * @author gergely.papp@itworks.hu
 */
class GTDMapSelectionListener implements IMapSelectionListener {
    @Override
    void afterMapChange(MapModel oldMap, MapModel newMap) {
        if (newMap) {
            Controller.currentModeController.getExtension(GtdReportController.class).gtdReportViewController.refreshContent()
        }
    }
}
