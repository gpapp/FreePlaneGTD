package freeplaneGTD.protocol.fpgtd

import java.net.URL
import java.net.URLConnection
import java.net.URLStreamHandler
import org.freeplane.core.resources.ResourceController

class Handler extends URLStreamHandler {
	@Override
	protected URLConnection openConnection(URL u) throws IOException {
	    ResourceController resourceController = ResourceController.getResourceController()
		return resourceController.getResource("/images/icons/" + u.getPath()).openConnection()
	}
}