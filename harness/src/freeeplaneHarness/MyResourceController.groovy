package freeeplaneHarness

import org.freeplane.core.resources.ResourceController

/**
 * Created by gpapp on 2017.05.28..
 */
class MyResourceController extends ResourceController {
    private Properties loadedProperties
    private final String userDirectory

    MyResourceController(String userDirectory, String properties) {
        this.userDirectory = userDirectory
        loadedProperties = new Properties()
        loadedProperties.load(new FileReader(properties))
    }

    @Override
    String getFreeplaneUserDirectory() {
        return userDirectory
    }

    @Override
    String getProperty(String key) {
        if (!loadedProperties.containsKey(key)){
            System.err.println(key+"=\"missing\"")
        }
        return loadedProperties.getProperty(key)
    }

    @Override
    Properties getProperties() {
        return loadedProperties
    }

    @Override
    ResourceBundle getResources() {
        return super.getResources()
    }

    @Override
    void saveProperties() {

    }

    @Override
    void setDefaultProperty(String s, String s1) {

    }

    @Override
    void setProperty(String s, String s1) {

    }
}
