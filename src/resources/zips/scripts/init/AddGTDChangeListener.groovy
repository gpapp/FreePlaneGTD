import freeplaneGTD.GTDMapChangeListener
import freeplaneGTD.GTDNodeChangeListener
import org.freeplane.features.map.IMapChangeListener
import org.freeplane.features.map.INodeChangeListener
import org.freeplane.features.map.MapController
import org.freeplane.features.mode.Controller

MapController mapController = Controller.currentController.modeController.mapController

mapController.getMapChangeListeners().findAll { (it.getClass().simpleName == "GTDMapChangeListener") }.each {
    IMapChangeListener it -> mapController.removeMapChangeListener(it)
}
mapController.addMapChangeListener(new GTDMapChangeListener())

mapController.getNodeChangeListeners().findAll { (it.getClass().simpleName == "GTDNodeChangeListener") }.each {
    INodeChangeListener it -> mapController.removeNodeChangeListener(it)
}
mapController.addNodeChangeListener(new GTDNodeChangeListener())