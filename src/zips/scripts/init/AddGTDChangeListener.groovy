import freeplaneGTD.GTDReportController
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController

ModeController modeController = Controller.currentModeController
GTDReportController.install(modeController)