import freeplaneGTD.GtdReportController
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController
import org.freeplane.main.addons.AddOnsController

def isActive = AddOnsController.getController().getInstalledAddOns().find{it.name == 'freeplaneGTD'}?.active

if (isActive){
    ModeController modeController = Controller.currentModeController
    GtdReportController.install(modeController)
}
