package freeplaneGTD

import groovy.util.logging.Log
import org.freeplane.core.extension.IExtension
import org.freeplane.features.map.MapController
import org.freeplane.features.mode.ModeController

import javax.swing.*
import java.awt.*

@Log
class GtdReportController implements IExtension {
    ModeController modeController
    public GtdReportViewController gtdReportViewController
    static final String controllerTitle = 'GTD Next Actions'

    GtdReportController(ModeController modeController) {
        this.modeController = modeController
        this.gtdReportViewController = new GtdReportViewController()
    }

    static void install(ModeController modeController) {
        GtdReportController reportController = new GtdReportController(modeController)
        modeController.addExtension(GtdReportController.class, reportController)

        // I hate OSGI and Groovy all classloaders are running amok, so I need a monkeypatch to keep my reference
        modeController.metaClass.getGtdReportControllerClass = { GtdReportController.class }
        log.info("Monkey patching report view in Controller")

        JTabbedPane tabs = (JTabbedPane) modeController.getUserInputListenerFactory().getToolBar("/format").getComponent(1)
        tabs.add(controllerTitle, reportController.createPanel())
        MapController mapController = modeController.mapController
        mapController.addMapChangeListener(new GTDMapChangeListener())
        mapController.addNodeChangeListener(new GTDNodeChangeListener())
    }

    static Class<GtdReportController> getGtdReportControllerClass(ModeController modeController) {
        // use the monkeypatch
        return modeController.getGtdReportControllerClass()
    }

    private Component createPanel() {
        Component presentationEditor = this.gtdReportViewController.createPanel(this.modeController)
        return presentationEditor
    }
}
