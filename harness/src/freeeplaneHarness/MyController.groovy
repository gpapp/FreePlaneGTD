package freeeplaneHarness

import groovy.util.logging.Log
import org.freeplane.api.*
import org.freeplane.core.resources.ResourceController
import org.freeplane.core.ui.AFreeplaneAction
import org.freeplane.core.ui.IUserInputListenerFactory
import org.freeplane.core.ui.components.FreeplaneMenuBar
import org.freeplane.core.ui.menubuilders.generic.Entry
import org.freeplane.core.undo.IUndoHandler
import org.freeplane.core.undo.UndoHandler
import org.freeplane.core.util.FreeplaneVersion
import org.freeplane.features.attribute.AttributeController
import org.freeplane.features.attribute.AttributeRegistry
import org.freeplane.features.attribute.mindmapmode.MAttributeController
import org.freeplane.features.clipboard.ClipboardControllers
import org.freeplane.features.clipboard.mindmapmode.MClipboardControllers
import org.freeplane.features.cloud.CloudController
import org.freeplane.features.edge.EdgeController
import org.freeplane.features.filter.FilterController
import org.freeplane.features.filter.condition.ICondition
import org.freeplane.features.format.FormatController
import org.freeplane.features.format.ScannerController
import org.freeplane.features.icon.IconController
import org.freeplane.features.icon.mindmapmode.MIconController
import org.freeplane.features.link.LinkController
import org.freeplane.features.map.MapModel
import org.freeplane.features.map.mindmapmode.MMapController
import org.freeplane.features.mode.Controller
import org.freeplane.features.mode.ModeController
import org.freeplane.features.mode.mindmapmode.MModeController
import org.freeplane.features.nodelocation.LocationController
import org.freeplane.features.nodestyle.NodeStyleController
import org.freeplane.features.nodestyle.mindmapmode.MNodeStyleController
import org.freeplane.features.note.NoteController
import org.freeplane.features.note.mindmapmode.MNoteController
import org.freeplane.features.styles.LogicalStyleController
import org.freeplane.features.styles.MapStyle
import org.freeplane.features.styles.MapStyleModel
import org.freeplane.features.text.TextController
import org.freeplane.features.text.mindmapmode.MTextController
import org.freeplane.features.ui.FrameController
import org.freeplane.plugin.script.ScriptContext
import org.freeplane.plugin.script.proxy.MapProxy
import org.freeplane.plugin.script.proxy.NodeProxy
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.view.swing.map.MapView
import org.freeplane.view.swing.map.MapViewController
import org.freeplane.view.swing.ui.UserInputListenerFactory

import javax.swing.*
import java.awt.*
import java.awt.event.ActionEvent
import java.util.List

/**
 * Created by gpapp on 2017.05.28..
 */
@Log
class MyController extends Controller implements Proxy.Controller {
    ScriptContext scriptContext
    MapModel myMap

    MyController(ResourceController resourceController) {
        super(resourceController)
    }

    void start() {
        scriptContext = new ScriptContext()
        mapViewManager = new MapViewController(this)

        viewController = new FrameController(this, mapViewManager, "dummy_prefix") {
            @Override
            FreeplaneMenuBar getFreeplaneMenuBar() {
                return new FreeplaneMenuBar()
            }

            @Override
            void insertComponentIntoSplitPane(JComponent jComponent) {

            }

            @Override
            boolean isApplet() {
                return false
            }

            @Override
            void openDocument(URI uri) throws IOException {

            }

            @Override
            void openDocument(URL url) throws Exception {

            }

            @Override
            void removeSplitPane() {

            }

            @Override
            protected void setFreeplaneMenuBar(FreeplaneMenuBar freeplaneMenuBar) {

            }

            @Override
            void setTitle(String s) {

            }

            @Override
            void setWaitingCursor(boolean b) {

            }

            @Override
            void previousMapView() {

            }

            @Override
            void nextMapView() {

            }

            @Override
            Component getCurrentRootComponent() {
                return null
            }

            @Override
            Component getMenuComponent() {
                return null
            }
        }
        mapViewManager.changeToMap(myMap)

        ModeController modeController = new MyModeController(this)
        selectMode(modeController)

        modeController.addExtension(ClipboardControllers.class, new MClipboardControllers())


        MMapController mapController = new MMapController(modeController) {

        }
        modeController.setMapController(mapController)

        addExtension(FormatController.class, new FormatController())
        addExtension(FilterController.class, new FilterController())
        addExtension(ScannerController.class, new ScannerController())

        modeController.addExtension(TextController.class, new MTextController(modeController))
        modeController.addExtension(IconController.class, new MIconController(modeController))
        modeController.addExtension(NodeStyleController.class, new MNodeStyleController(modeController))
        modeController.addExtension(EdgeController.class, new EdgeController(modeController))
        modeController.addExtension(LinkController.class, new LinkController(modeController))
        modeController.addExtension(CloudController.class, new CloudController(modeController))
        modeController.addExtension(LocationController.class, new LocationController())

        NoteController noteController = new MNoteController(modeController)
        modeController.addExtension(NoteController.class, noteController)
        NoteController.install(noteController)
        modeController.addExtension(MapStyle.class, new MapStyle(true))

        modeController.addExtension(LogicalStyleController.class, new LogicalStyleController(modeController))
        def attributeController = new MAttributeController(modeController)
        modeController.addExtension(AttributeController.class, attributeController)


//        modeController.userInputListenerFactory.updateMenus("/xml/mindmapmodemenu.xml", new HashSet<String>())


    }

    @Override
    Proxy.Map newMap() {
        myMap = new MapModel()
        myMap.addExtension(IUndoHandler.class, new UndoHandler(myMap))
        myMap.createNewRoot()
        myMap.rootNode.addExtension(new AttributeRegistry(myMap,modeController.getExtension(AttributeController.class),modeController.getExtension(TextController.class)))
        MapStyleModel styleModel = new MapStyleModel()
        myMap.rootNode.addExtension(styleModel)
        styleModel.createStyleMap(myMap, styleModel, "\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.root_node\" STYLE=\"oval\" UNIFORM_SHAPE=\"true\" VGAP_QUANTITY=\"24.0 pt\">\n" +
                "<font SIZE=\"24\"/>\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.predefined\" POSITION=\"right\" STYLE=\"bubble\">\n" +
                "<stylenode LOCALIZED_TEXT=\"default\" COLOR=\"#000000\" STYLE=\"as_parent\">\n" +
                "<font NAME=\"SansSerif\" SIZE=\"12\" BOLD=\"false\" ITALIC=\"false\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"defaultstyle.details\"/>\n" +
                "<stylenode LOCALIZED_TEXT=\"defaultstyle.attributes\">\n" +
                "<font SIZE=\"9\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"defaultstyle.note\"/>\n" +
                "<stylenode LOCALIZED_TEXT=\"defaultstyle.floating\">\n" +
                "<edge STYLE=\"hide_edge\"/>\n" +
                "<cloud COLOR=\"#f0f0f0\" SHAPE=\"ROUND_RECT\"/>\n" +
                "</stylenode>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.user-defined\" POSITION=\"right\" STYLE=\"bubble\">\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.topic\" COLOR=\"#18898b\" STYLE=\"fork\">\n" +
                "<font NAME=\"Liberation Sans\" SIZE=\"12\" BOLD=\"true\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.subtopic\" COLOR=\"#cc3300\" STYLE=\"fork\">\n" +
                "<font NAME=\"Liberation Sans\" SIZE=\"12\" BOLD=\"true\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.subsubtopic\" COLOR=\"#669900\">\n" +
                "<font NAME=\"Liberation Sans\" SIZE=\"12\" BOLD=\"true\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.important\">\n" +
                "<icon BUILTIN=\"yes\"/>\n" +
                "</stylenode>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"styles.AutomaticLayout\" POSITION=\"right\" STYLE=\"bubble\">\n" +
                "<stylenode LOCALIZED_TEXT=\"AutomaticLayout.level.root\" COLOR=\"#000000\">\n" +
                "<font SIZE=\"20\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"AutomaticLayout.level,1\" COLOR=\"#0033ff\">\n" +
                "<font SIZE=\"18\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"AutomaticLayout.level,2\" COLOR=\"#00b439\">\n" +
                "<font SIZE=\"16\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"AutomaticLayout.level,3\" COLOR=\"#990000\">\n" +
                "<font SIZE=\"14\"/>\n" +
                "</stylenode>\n" +
                "<stylenode LOCALIZED_TEXT=\"AutomaticLayout.level,4\" COLOR=\"#111111\">\n" +
                "<font SIZE=\"12\"/>\n" +
                "</stylenode>\n" +
                "</stylenode>\n" +
                "</stylenode>")
        this.getMapViewManager().changeToMap(myMap)
        this.getMapViewManager().changeToMapView(new MapView(myMap, modeController))

        return new MapProxy(myMap, scriptContext)
    }


    @Override
    void select(Collection<? extends Node> collection) {

    }

    @Override
    void centerOnNode(Node node) {

    }

    @Override
    void edit(Node node) {

    }

    @Override
    void editInPopup(Node node) {

    }

    @Override
    void select(Node node) {

    }


    @Override
    void selectBranch(Node node) {

    }

    @Override
    void selectMultipleNodes(Collection<? extends Node> collection) {

    }

    @Override
    void deactivateUndo() {

    }

    @Override
    void undo() {

    }

    @Override
    void redo() {

    }

    @Override
    void setStatusInfo(String s) {

    }

    @Override
    void setStatusInfo(String s, String s1) {

    }

    @Override
    void setStatusInfo(String s, String s1, String s2) {

    }

    @Override
    void setStatusInfo(String s, Icon icon) {

    }

    @Override
    Loader load(File file) {
        return null
    }

    @Override
    Loader load(URL url) {
        return null
    }

    @Override
    Loader load(String s) {
        return null
    }

    @Override
    Proxy.Map newMap(URL url) {
        return null
    }

    @Override
    Proxy.Map newMapFromTemplate(File file) {
        return null
    }

    @Override
    void setZoom(float v) {

    }

    @Override
    List<Proxy.Map> getOpenMaps() {
        return null
    }

    @Override
    Proxy.Node getSelected() {
        return null
    }

    @Override
    List<Proxy.Node> getSelecteds() {
        return null
    }

    @Override
    List<Proxy.Node> getSortedSelection(boolean b) {
        return null
    }

    @Override
    FreeplaneVersion getFreeplaneVersion() {
        return null
    }

    @Override
    File getUserDirectory() {
        return new File(
                ResourceController.getResourceController().getFreeplaneUserDirectory()
        ).absoluteFile
    }

    @Override
    List<? extends Node> find(NodeCondition condition) {
        return null
    }

    @Override
    List<? extends Node> find(boolean withAncestors, boolean withDescendants, NodeCondition condition) {
        return null
    }

    @Override
    List<Proxy.Node> find(ICondition iCondition) {
        return null
    }

    @Override
    List<Proxy.Node> find(Closure<Boolean> closure) {
        return new NodeProxy(myMap.root, scriptContext).find(closure)
    }

    @Override
    List<? extends Node> find(boolean withAncestors, boolean withDescendants, Closure<Boolean> closure) {
        return null
    }

    @Override
    List<Proxy.Node> findAll() {
        return null
    }

    @Override
    List<Proxy.Node> findAllDepthFirst() {
        return null
    }

    @Override
    float getZoom() {
        return 0
    }

    @Override
    boolean isInteractive() {
        return false
    }

    @Override
    List<String> getExportTypeDescriptions() {
        return null
    }

    @Override
    void export(Map map, File destinationFile, String exportTypeDescription, boolean overwriteExisting) {

    }

    @Override
    Proxy.Loader mapLoader(File file) {
        return null
    }

    @Override
    Proxy.Loader mapLoader(URL file) {
        return null
    }

    @Override
    Proxy.Loader mapLoader(String file) {
        return null
    }

    @Override
    Script script(File file) {
        return null
    }

    @Override
    Script script(String s, String s1) {
        return null
    }

    @Override
    void quit(ActionEvent actionEvent) {
        System.exit(0)
    }

    class MyModeController extends MModeController {
        private UserInputListenerFactory factory

        MyModeController(Controller controller) {
            super(controller)
        }


        @Override
        IUserInputListenerFactory getUserInputListenerFactory() {
            if (!this.factory){

                this.factory = new UserInputListenerFactory(this)
                factory.genericMenuStructure=new Entry()
            }
            return this.factory
        }

        @Override
        String getModeName() {
            return "HarnessController"
        }
    }
}
