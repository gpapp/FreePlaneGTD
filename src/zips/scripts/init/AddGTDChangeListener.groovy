import freeplaneGTD.GtdReportController
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController

ModeController modeController = Controller.currentModeController
GtdReportController.install(modeController)