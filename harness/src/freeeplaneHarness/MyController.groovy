package freeeplaneHarness

import org.freeplane.core.resources.ResourceController
import org.freeplane.core.util.FreeplaneVersion
import org.freeplane.features.filter.condition.ICondition
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.proxy.Proxy

import javax.swing.*

/**
 * Created by gpapp on 2017.05.28..
 */
class MyController extends Controller implements Proxy.Controller {
    MyController(ResourceController resourceController) {
        super(resourceController)
    }

    @Override
    void centerOnNode(Proxy.Node node) {

    }

    @Override
    void edit(Proxy.Node node) {

    }

    @Override
    void editInPopup(Proxy.Node node) {

    }

    @Override
    void select(Proxy.Node node) {

    }

    @Override
    void select(Collection<Proxy.Node> collection) {

    }

    @Override
    void selectBranch(Proxy.Node node) {

    }

    @Override
    void selectMultipleNodes(Collection<Proxy.Node> collection) {

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
    Proxy.Map newMap() {
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
    List<Proxy.Node> find(ICondition iCondition) {
        return null
    }

    @Override
    List<Proxy.Node> find(Closure<Boolean> closure) {
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
    void export(Proxy.Map map, File file, String s, boolean b) {

    }
}
