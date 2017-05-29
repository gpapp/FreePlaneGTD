import freeeplaneHarness.MyController
import freeeplaneHarness.MyMap
import freeeplaneHarness.MyNode
import freeeplaneHarness.MyResourceController
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.FreeplaneScriptBaseClass
import org.freeplane.plugin.script.proxy.Proxy

/**
 * Created by gpapp on 2017.05.28..
 */
class Harness implements Runnable {
    private static final String PROPERTY_FILE = "harness/keys.properties"

    @Override
    void run() {
        Controller.currentController = new MyController(new MyResourceController("harness", PROPERTY_FILE))

        def config = new FreeplaneScriptBaseClass.ConfigProperties()

        Proxy.Map map = new MyMap("Root Node")
        map.rootNode.appendChild(new MyNode(map,"*test task 1"))
        map.rootNode.appendChild(new MyNode(map,"*test task 2 {2017-06-19}"))

        def frameinstance = ReportWindow.getMainFrame(config, Controller.currentController)
        frameinstance.visible = true
        ReportWindow.refresh(map.root)
    }
}
