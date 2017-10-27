package freeplaneGTD.protocol.fpgtd


import java.net.URL
import java.net.URLConnection
import java.net.URLStreamHandler
import org.freeplane.core.resources.ResourceController
import java.util.logging.Logger
import java.util.logging.Level

class Handler extends URLStreamHandler {
static {
            Logger.getAnonymousLogger().log(Level.INFO, "Protocol handler initialized")
}
	@Override
	protected URLConnection openConnection(URL u) throws IOException {
	    ResourceController resourceController = ResourceController.getResourceController()
		logger.info("Loading resource:" + u.path)

		return resourceController.getResource("/images/icons/" + u.path).openConnection()
	}
}
