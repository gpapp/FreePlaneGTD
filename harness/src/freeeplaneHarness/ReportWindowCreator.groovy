package freeeplaneHarness

import freeplaneGTD.ReportWindow
import groovy.swing.SwingBuilder
import groovy.util.logging.Log
import org.freeplane.core.resources.ResourceBundles
import org.freeplane.features.mode.Controller
import org.freeplane.main.application.ApplicationResourceController
import org.freeplane.plugin.script.FreeplaneScriptBaseClass
import org.freeplane.plugin.script.proxy.Proxy
import org.knopflerfish.framework.FrameworkContext
import org.knopflerfish.framework.ServiceURLStreamHandlerFactory

import javax.swing.AbstractAction
import javax.swing.JFrame
import java.awt.BorderLayout
import java.awt.Dimension
import java.awt.event.ActionEvent

//
//@Grapes([
//        @Grab(group = 'ch.qos.logback', module = 'logback-classic', version = '1.0.13')
//])

@Log
class ReportWindowCreator {
    static ReportWindow window

    public static void main(String[] args) {
        def properties = new FreeplaneScriptBaseClass.ConfigProperties() {
            Properties props = new Properties()
            String freeplaneUserDirectory = "/home/gpapp/.config/freeplane/1.7.x"

            void setProperty(String s, Object o) {
                this.props.setProperty(s, o.toString())
            }

            @Override
            boolean getBooleanProperty(String name) {
                log.info("Getting boolean " + name)
                Boolean.getBoolean(this.props.getProperty(name))
            }

            @Override
            int getIntProperty(String name, int defaultValue = 0) {
                log.info("Getting int " + name)
                Integer.parseInt(this.props.getProperty(name))
            }

            @Override
            String getProperty(String name, String defaultValue = null) {
                log.info("Getting String " + name)
                this.props.getOrDefault(name, defaultValue)
            }

            @Override
            String getFreeplaneUserDirectory() {
                this.freeplaneUserDirectory
            }
        }
        properties.setProperty("", 500);
        properties.setProperty(ReportWindow.FREEPLANE_GTD_DEFAULT_VIEW, ReportWindow.VIEW.CONTEXT.name());
        JFrame myFrame
        Proxy.Map map
        def resourceController = new ApplicationResourceController()
        Controller.currentController = new MyController(resourceController)
        ((ResourceBundles) resourceController.resources).
                addResources("hu", new URL("file:/home/gpapp/IdeaProjects/FreePlaneGTD/src/resources/translations/hu.properties"))

        ServiceURLStreamHandlerFactory streamHandlerFactory = new ServiceURLStreamHandlerFactory()
        URL.setURLStreamHandlerFactory(streamHandlerFactory)
        streamHandlerFactory.addFramework(new FrameworkContext([
                "org.osgi.framework.security": "",
                "org.osgi.framework.storage" : "/usr/share/freeplane/fwdir"]))
        (Controller.currentController as MyController).start()
        map = Controller.currentController.newMap()
        addNode(map, "ID__1", "*test task 1")
        addNode(map, "ID__2", "*test task 2 {2017-06-19}")
        addNode(map, "ID__3", "*test task 3 #3 {2017-06-19} @Context1 @Context2")

        ReportWindow reportWindow = ReportWindow.instance
        reportWindow.show(properties)
        reportWindow.refresh()

    }

    private static void addNode(Proxy.Map map, String id, String text) {
        Proxy.Node child = map.root.createChild()
        child.text = text
    }

}
