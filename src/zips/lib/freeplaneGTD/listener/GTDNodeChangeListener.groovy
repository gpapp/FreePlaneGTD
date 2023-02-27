package freeplaneGTD.listener

import freeplaneGTD.GTDMapReader
import freeplaneGTD.GtdReportController
import groovy.util.logging.Log
import org.freeplane.api.Node
import org.freeplane.features.attribute.NodeAttributeTableModel
import org.freeplane.features.map.INodeChangeListener
import org.freeplane.features.map.NodeModel
import org.freeplane.features.map.NodeChangeEvent
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.proxy.ScriptUtils

import java.util.logging.Level

@Log
class GTDNodeChangeListener implements INodeChangeListener {
    boolean enabled
    GTDMapReader reader

    GTDNodeChangeListener() {
        enabled = true
        reader = GTDMapReader.instance
        reader.findIcons()
    }

    Node findById (def id) {
  		try {
  			return ScriptUtils.c().find({ Node it -> it.id === id })[0]
  		} catch (Exception e) {
  			throw e
  		}
  	}

    void nodeChanged(NodeChangeEvent event) {
        if (!event.setsDirtyFlag()) return
        if (!enabled) return
        try {
            boolean changed = true
            if (NodeModel.NODE_TEXT==event.property) {

                Node node=findById(event.node.createID())
                if (GTDMapReader.isConfigAlias(node)) {
                    reader.findAliases()
                    reader.fixIconsOnAliasConfigChange()
                } else if (GTDMapReader.isConfigIcon(node)) {
                    reader.findIcons()
                    reader.fixIconsOnContextConfigChange()
                } else if (GTDMapReader.isShorthandQuestion(node)) {
                    reader.parseSingleQuestionNode(node)
                } else if (GTDMapReader.isShorthandTask(node)) {
                    reader.parseSingleTaskNode(node)
                    reader.fixAliasesForNode(node)
                    reader.fixIconsForNode(node)
                } else if (reader.isTask(node)) {
                    reader.parseSingleTaskNode(node)
                    reader.fixAliasesForNode(node)
                    reader.fixIconsForNode(node)
                } else {
                    changed = false
                }
            } else if (NodeModel.NODE_ICON == event.property) {
                Node node=findById(event.node.createID())

                if (reader.isTask(node)) {
                    reader.findIcons()
                    // re-read icons on context change
                    if (!event.oldValue && event.newValue) {
                        reader.handleIconAdd(node, event.newValue.name)
                    } else if (event.oldValue && !event.newValue) {
                        reader.handleIconRemove(node, event.oldValue.name)
                    } else if (event.oldValue && event.newValue) {
                        reader.handleIconRemove(node, event.oldValue.name)
                        reader.handleIconAdd(node, event.newValue.name)
                    } else {
                        changed = false
                    }
                } else if (GTDMapReader.isConfigIcon(node) || GTDMapReader.isConfigAlias(node)) {
                    if (node.icons.size() > 1 && !event.oldValue) {
                        node.icons.remove(1)
                    } else {
                        try {
                            reader.findIcons()
                            reader.handleConfigIconChange(node, event.oldValue?.name, event.newValue?.name)
                        } catch (Exception e) {
                            node.icons.remove(0)
                            reader.findIcons()
                            ScriptUtils.c().statusInfo = e.message
                            log.severe("Error caught:" + e.message)
                        }
                    }
                }
            } else changed = event.property == NodeAttributeTableModel.class
				/* TODO: 
						event is fired on each node attribute modification with no before/after
						Will trigger multiple times on parsing string or action dialog
						Should find a way to reduce bogus events
				*/
				if (changed) {
					Node node=findById(event.node.createID())

					def when=node.attributes['When']
					def whenDone=node.attributes['WhenDone']
					
					if ((!whenDone) && (when instanceof java.util.Date)) {
						node.reminder.remove()
						def nextReminder = new Date().clearTime() + 1
						if (when.before(nextReminder)) {
							when = nextReminder
						}
						node.reminder.createOrReplace (when, "DAY",1)
					} else {
						node.reminder.remove()
					}
					Controller.currentModeController.getExtension(GtdReportController.getGtdReportControllerClass(Controller.currentModeController)).
							gtdReportViewController.refreshContent()
            }

        } catch (Exception e) {
            // exceptions from a handler are destructive for freeplane
            // so handling everything here
            log.log(Level.SEVERE, "Error caught:" + e.message, e)
        }
    }

    void setEnabled(boolean b) {
        enabled = b
    }
}
