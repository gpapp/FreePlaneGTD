package freeeplaneHarness

import org.freeplane.plugin.script.proxy.Proxy

import java.awt.*

class MyMap implements Proxy.Map {
    Proxy.Node root

    MyMap(String text) {
        this.root = new MyNode(this, text)
    }

    boolean close(boolean b, boolean b1) {
        return false
    }

    boolean save(boolean b) {
        return false
    }

    void setSaved(boolean b) {

    }

    void setName(String s) {

    }

    void setBackgroundColor(Color color) {

    }

    void setBackgroundColorCode(String s) {

    }

    void filter(Closure<Boolean> closure) {

    }

    void setFilter(Closure<Boolean> closure) {

    }

    void filter(boolean b, boolean b1, Closure<Boolean> closure) {

    }

    void setFilter(boolean b, boolean b1, Closure<Boolean> closure) {

    }

    void redoFilter() {

    }

    void undoFilter() {

    }

    Proxy.Properties getStorage() {
        return null
    }

    Proxy.Node getRoot() {
        return root
    }

    Proxy.Node getRootNode() {
        return root
    }

    Proxy.Node node(String s) {
        return null
    }

    File getFile() {
        return null
    }

    String getName() {
        return null
    }

    boolean isSaved() {
        return false
    }

    Color getBackgroundColor() {
        return null
    }

    String getBackgroundColorCode() {
        return null
    }
}
