package FreePlaneGTD

import freeeplaneHarness.MyController
import freeplaneGTD.ReportWindow
import groovy.swing.SwingBuilder
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

class Harness implements Runnable {
    private static final String PROPERTY_FILE = "harness/keys.properties"

    @Override
    void run() {
        def config = new FreeplaneScriptBaseClass.ConfigProperties()
        Proxy.Map map

        JFrame myFrame
        SwingBuilder.edtBuilder {
            myFrame = frame(title: 'FreePlaneGTD.Harness',
                    defaultCloseOperation: JFrame.EXIT_ON_CLOSE) {
                borderLayout()
                button(name: 'toolbar', constraints: BorderLayout.NORTH)
                button(
                        constraints: BorderLayout.SOUTH,
                        text: 'Refresh',
                        action:
                                new AbstractAction() {
                                    @Override
                                    void actionPerformed(ActionEvent e) {
                                        ReportWindow reportWindow = ReportWindow.instance
                                        reportWindow.show(config)
                                        reportWindow.refresh(map.root)
                                    }
                                }
                )
            }
        }

        myFrame.visible = true
        myFrame.setLocation(10, 10)
        myFrame.setSize(100, 100)

        def resourceController = new ApplicationResourceController()
        Controller.currentController = new MyController(resourceController, myFrame)
        ((ResourceBundles) resourceController.resources).
                addResources("hu", new URL("file:src/zips/translations/freeplaneGTD_en.properties"))

        ServiceURLStreamHandlerFactory streamHandlerFactory = new ServiceURLStreamHandlerFactory()
        URL.setURLStreamHandlerFactory(streamHandlerFactory)
        streamHandlerFactory.addFramework(new FrameworkContext([
                "org.osgi.framework.security": "",
                "org.osgi.framework.storage" : "/usr/share/freeplane/fwdir"]))


        map = Controller.currentController.newMap()
        addNode(map, "ID__1", "*test task 1")
        addNode(map, "ID__2", "*test task 2 {2017-06-19}")
        addNode(map, "ID__3", "*test task 3 #3 {2017-06-19} @Context1 @Context2")


        config.properties.put(ReportWindow.FREEPLANE_GTD_DEFAULT_VIEW, ReportWindow.VIEW.WHEN.toString())
        config.properties.put(ReportWindow.FREEPLANE_GTD_REMEMBER_LAST_POSITION, Boolean.TRUE)
    }

    private static void addNode(Proxy.Map map, String id, String text) {
        Proxy.Node child = map.root.createChild()
        child.text = text
    }

}
