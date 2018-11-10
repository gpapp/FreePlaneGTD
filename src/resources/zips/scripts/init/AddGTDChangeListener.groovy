import freeplaneGTD.GTDNodeChangeListener
import freeplaneGTD.GTDMapChangeListener
import org.freeplane.features.map.MapController
import org.freeplane.features.mode.Controller

MapController mapController = Controller.currentController.modeController.mapController

mapController.getMapChangeListeners().findAll {
    it.getClass().simpleName.equals("GTDMapChangeListener")
}.each {
    mapController.removeMapChangeListener(it)
}
mapController.addMapChangeListener(new GTDMapChangeListener())

mapController.getNodeChangeListeners().findAll {
    it.getClass().simpleName.equals("GTDNodeChangeListener")
}.each {
    mapController.removeNodeChangeListener(it)
}
mapController.addNodeChangeListener(new GTDNodeChangeListener())