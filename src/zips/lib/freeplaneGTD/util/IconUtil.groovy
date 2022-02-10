package freeplaneGTD.util

import groovy.util.logging.Log

import org.freeplane.core.resources.ResourceController
import org.freeplane.features.icon.UIIcon
import org.freeplane.features.icon.factory.IconFactory
import org.freeplane.features.icon.factory.IconStoreFactory

import javax.swing.*

@Log
class IconUtil {
    static Icon getIcon(String s) {
        return IconFactory.getInstance().getIcon(getUIIcon(s))
    }

    static UIIcon getUIIcon(String s) {
        try {
			return IconStoreFactory.ICON_STORE.getUIIcon(s)
		} catch (Exception error) {
			log.info("Error looking up icon:"+s)
		}
        return new UIIcon(s, "icons/" + s + ".svg", "", "?", -1)
    }
}
