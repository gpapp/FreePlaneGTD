package freeplaneGTD.util

import org.freeplane.core.resources.ResourceController
import org.freeplane.features.icon.UIIcon
import org.freeplane.features.icon.factory.IconFactory

import javax.swing.*

class IconUtil {
    static Icon getIcon(String s) {
        URL iconUrl = ResourceController.getResourceController().getResource("/images/icons/" + s + ".svg")
        if (!iconUrl) {
            iconUrl = ResourceController.getResourceController().getResource("/images/IconNotFound.svg")
        }
        return IconFactory.getInstance().getIcon(iconUrl)
    }

    static UIIcon getUIIcon(String s) {
        return new UIIcon(s, "icons/" + s + ".svg", "", "?", -1)
    }

}
