package freeplaneGTD

import freeplaneGTD.listener.GTDMapChangeListener
import freeplaneGTD.listener.GTDMapSelectionListener
import freeplaneGTD.listener.GTDNodeChangeListener
import groovy.util.logging.Log
import org.freeplane.core.extension.IExtension
import org.freeplane.features.map.IMapChangeListener
import org.freeplane.features.map.MapController
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController

import javax.swing.*
import java.awt.*

@Log
class GtdReportController implements IExtension {
    ModeController modeController
    public GtdReportViewController gtdReportViewController
    static final String controllerTitle = 'GTD Next Actions'
    static private GTDMapChangeListener gtdMapChangeListener
    static private GTDNodeChangeListener gtdNodeChangeListener

    GtdReportController(ModeController modeController) {
        this.modeController = modeController
        this.gtdReportViewController = new GtdReportViewController()
    }

    static void install(ModeController modeController) {
        GtdReportController reportController = new GtdReportController(modeController)
        modeController.addExtension(GtdReportController.class, reportController)

        JTabbedPane tabs = (JTabbedPane) modeController.getUserInputListenerFactory().getToolBar("/format").getComponent(1)
        tabs.add(controllerTitle, reportController.createPanel())

        Controller controller = Controller.getCurrentController()
        controller.getMapViewManager().addMapSelectionListener(new GTDMapSelectionListener())

        // I hate OSGI and Groovy all classloaders are running amok, so I need to find a secure location to store my "main" class otherwise I
        // won't be able to access my own window from a script
        gtdMapChangeListener = new GTDMapChangeListener(GtdReportController.class)
        MapController mapController = modeController.mapController
        mapController.addMapChangeListener(gtdMapChangeListener)

        gtdNodeChangeListener = new GTDNodeChangeListener()
        mapController.addNodeChangeListener(gtdNodeChangeListener)
    }

    static Class<GtdReportController> getGtdReportControllerClass(ModeController modeController) {
        // try to find my ReportController class in the change listener
        for (IMapChangeListener i in modeController.mapController.getMapChangeListeners()) {
            // MUST NOT USE INSTANCEOF, I'm not fully crazy, it`s in a different classloader
            if (i.class.canonicalName == GTDMapChangeListener.class.canonicalName) {
                // Cannot cast it to the listener either, because it is of a "Different type"
                return i.class.getMethod("getGtdReportControllerClass").invoke(i)
            }
        }
        throw new Exception("Cannot find GTDMapChangeListener in map listeners")
    }

    static void disableListeners() {
        gtdMapChangeListener.setEnabled(false)
        gtdNodeChangeListener.setEnabled(false)
    }

    static void enableListeners() {
        gtdMapChangeListener.setEnabled(true)
        gtdNodeChangeListener.setEnabled(true)
    }

    private Component createPanel() {
        Component reportViewController = this.gtdReportViewController.createPanel(this.modeController)
        this.gtdReportViewController.refreshContent()
        return reportViewController
    }
}
