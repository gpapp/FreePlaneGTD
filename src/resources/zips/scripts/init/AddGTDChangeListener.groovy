import freeplaneGTD.GTDChangeListener
import org.freeplane.features.map.MapController
import org.freeplane.features.mode.Controller

MapController mapController = Controller.currentController.modeController.mapController
mapController.getNodeChangeListeners().findAll {
    it.getClass().simpleName.equals("GTDChangeListener")
}.each {
    mapController.removeNodeChangeListener(it)
}
mapController.addNodeChangeListener(new GTDChangeListener())