import freeeplaneHarness.MyController
import org.freeplane.core.resources.ResourceBundles
import org.freeplane.features.mode.Controller
import org.freeplane.main.application.ApplicationResourceController
import org.freeplane.plugin.script.FreeplaneScriptBaseClass
import org.freeplane.plugin.script.proxy.Proxy
import org.knopflerfish.framework.FrameworkContext
import org.knopflerfish.framework.ServiceURLStreamHandlerFactory

import javax.swing.*
import java.awt.*
import java.awt.event.ActionEvent

/**
 * Created by gpapp on 2017.05.28..
 */
class Harness implements Runnable {
    private static final String PROPERTY_FILE = "harness/keys.properties"

    @Override
    void run() {
        JFrame frame = new JFrame("Test harness")
        JToolBar bar = new JToolBar()
        frame.add(bar)

        def resourceController = new ApplicationResourceController()
        Controller.currentController = new MyController(resourceController, frame)
        ((ResourceBundles) resourceController.resources).
                addResources("hu", new URL("file:src/zips/translations/freeplaneGTD_en.properties"))

        ServiceURLStreamHandlerFactory streamHandlerFactory = new ServiceURLStreamHandlerFactory()
        URL.setURLStreamHandlerFactory(streamHandlerFactory)
        streamHandlerFactory.addFramework(new FrameworkContext([
                "org.osgi.framework.security": "",
                "org.osgi.framework.storage" : "/usr/share/freeplane/fwdir"]))
        def config = new FreeplaneScriptBaseClass.ConfigProperties()

        Proxy.Map map = Controller.currentController.newMap()
        addNode(map, "ID__1", "*test task 1")
        addNode(map, "ID__2", "*test task 2 {2017-06-19}")
        addNode(map, "ID__3", "*test task 3 #3 {2017-06-19} @Context1 @Context2")

        def frameinstance = null
        JButton refreshButton = new JButton("Refresh")
        frame.layout = new BorderLayout()
        refreshButton.action = new AbstractAction() {
            @Override
            void actionPerformed(ActionEvent e) {
                def controller = Controller.currentController
                frameinstance = ReportWindow.getMainFrame(config, controller)
                frameinstance.visible = true
                ReportWindow.refresh(controller, map.root)
            }
        }

        frame.add(refreshButton)
        frame.defaultCloseOperation = JFrame.EXIT_ON_CLOSE
        frame.visible = true
        frame.setLocation(10, 10)
        frame.setSize(100, 100)

    }

    private static void addNode(Proxy.Map map, String id, String text) {
        Proxy.Node child = map.root.createChild()
        child.text = text
        map.root.appendChild(child)
    }
}
