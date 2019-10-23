package freeplaneGTD

import org.freeplane.core.extension.IExtension
import org.freeplane.core.ui.components.JAutoScrollBarPane
import org.freeplane.features.map.MapController
import org.freeplane.features.mode.ModeController

import javax.swing.*
import java.awt.*

class GTDReportController implements IExtension {
    ModeController modeController
    GTDReportViewController gtdReportViewController
    static final String controllerTitle = 'GTD Next Actions'

    GTDReportController(ModeController modeController) {
        this.modeController = modeController
        this.gtdReportViewController = new GTDReportViewController()
    }

    static void install(ModeController modeController) {
        GTDReportController reportController = new GTDReportController(modeController)
        modeController.addExtension(GTDReportController.class, reportController)
        JTabbedPane tabs = (JTabbedPane) modeController.getUserInputListenerFactory().getToolBar("/format").getComponent(1)
        tabs.add(controllerTitle, reportController.createPanel())
        MapController mapController = modeController.mapController
        mapController.addMapChangeListener(new GTDMapChangeListener())
        mapController.addNodeChangeListener(new GTDNodeChangeListener())

    }

    private Component createPanel() {
        Component presentationEditor = this.gtdReportViewController.createPanel(this.modeController)
        return new JAutoScrollBarPane(presentationEditor)
    }
}
