package freeplaneGTD

import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.clipboard.ClipboardController
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ScriptUtils

import javax.swing.*
import javax.swing.SwingUtilities
import java.awt.*
import java.util.List
import java.util.logging.Level
import java.util.logging.Logger

class JSHandler {
    private final ReportModel report
    private final ReportWindow target

    JSHandler(ReportModel report, ReportWindow target) {
        this.target = target
        this.report = report
    }

    void toggleDone(String linkNodeID) {
		try {
			SwingUtilities.invokeLater(new Runnable() {
				@Override public void run() {
					def nodesFound = ScriptUtils.c().find { it.id == linkNodeID }

					if (nodesFound[0] != null) {
						def node = nodesFound[0]
						if (node.icons.contains(report.mapReader.iconDone)) {
							node.icons.remove(report.mapReader.iconDone)
						} else {
							node.icons.add(report.mapReader.iconDone)
						}
						target.refreshContent()
					} else {
						Logger.getAnonymousLogger().log(Level.SEVERE, "Cannot find node to mark as done")
						UITools.informationMessage("Cannot find node to mark as done")
					}
				}
			})
        } catch (Exception e) {
            Logger.getAnonymousLogger().log(Level.SEVERE, "Error in toggling as done", e)
        }
    }

    void followLink(String linkNodeID) {
        try {
			SwingUtilities.invokeLater(new Runnable() {
				@Override public void run() {
					switchToMainWindow()
					def nodesFound = ScriptUtils.c().find { it.id == linkNodeID }

					if (nodesFound[0] != null) {
						if (target.autoFoldMap) {
							foldToTop(nodesFound[0])
						}
						unfoldBranch(nodesFound[0])
						ScriptUtils.c().centerOnNode(nodesFound[0])
						ScriptUtils.c().select(nodesFound[0])
					} else {
						Logger.anonymousLogger.log(Level.SEVERE, "Next Action not found in mind map. Refresh Next Action list")
						UITools.informationMessage("Next Action not found in mind map. Refresh Next Action list")
					}
				}
			})
        } catch (Exception e) {
            Logger.anonymousLogger.log(Level.SEVERE, e.message, e)
        }
    }

    void copyToClipboard(int pos) {
        try {
            Map feeder
            ClipboardController clip = ClipboardController.controller
            switch (target.selectedView) {
                case ReportWindow.VIEW.PROJECT: feeder = [type: 'project', groups: [report.projectList()['groups'][pos]]]; break
                case ReportWindow.VIEW.WHO: feeder = [type: 'who', groups: [report.delegateList()['groups'][pos]]]; break
                case ReportWindow.VIEW.CONTEXT: feeder = [type: 'context', groups: [report.contextList()['groups'][pos]]]; break
                case ReportWindow.VIEW.WHEN: feeder = [type: 'when', groups: [report.timelineList()['groups'][pos]]]; break
                default: throw new UnsupportedOperationException("Invalid selection pane: " + target.selectedView)
            }
            clip.clipboardContents = ClipBoardUtil.createTransferable(feeder, report.mapReader, target.showNotes)
            UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
        } catch (Exception e) {
            Logger.anonymousLogger.log(Level.SEVERE, e.message, e)
        }
    }

    void selectOnMap(int pos) {
        try {
            List list
            switch (target.selectedView) {
                case ReportWindow.VIEW.PROJECT: list = (List) report.projectList()['groups'][pos]['items']; break
                case ReportWindow.VIEW.WHO: list = (List) report.delegateList()['groups'][pos]['items']; break
                case ReportWindow.VIEW.CONTEXT: list = (List) report.contextList()['groups'][pos]['items']; break
                case ReportWindow.VIEW.WHEN: list = (List) report.timelineList()['groups'][pos]['items']; break
                default: throw new UnsupportedOperationException("Invalid selection pane: " + target.selectedView)
            }
            List ids = list.collect { it['nodeID'] }
			SwingUtilities.invokeLater(new Runnable() {
				@Override public void run() {
					switchToMainWindow()
					def nodesFound = ScriptUtils.c().find { ids.contains(it.id) }
					if (nodesFound.size() > 0) {
						if (target.autoFoldMap) {
							foldToTop(nodesFound[0])
						}
						nodesFound.each {
							unfoldBranch(it)
						}
						ScriptUtils.c().centerOnNode(nodesFound[0])
						ScriptUtils.c().selectMultipleNodes(nodesFound)
					} else {
						UITools.informationMessage("Error finding selection")
					}
				}
			})
        } catch (Exception e) {
            Logger.anonymousLogger.log(Level.SEVERE, e.message, e)
        }
    }

    private static void switchToMainWindow() {
		JFrame parentFrame = Controller.currentController.viewController.menuComponent as JFrame
        for (Window window : Window.windows) {
            if (parentFrame == window) {
                window.toFront()
            }
        }
    }

// recursive unfolding of branch
    private void unfoldBranch(Proxy.Node thisNode) {
        Proxy.Node rootNode = thisNode.getMap().getRoot()
        if (thisNode != rootNode) {
            if (thisNode.folded) thisNode.setFolded(false)
            unfoldBranch(thisNode.getParent())
        }
    }

// fold to first level
    private void foldToTop(Proxy.Node thisNode) {
        Proxy.Node rootNode = thisNode.getMap().getRoot()
        def Nodes = ScriptUtils.c().findAll()
        Nodes.each {
            if(!it.folded) it.setFolded(true)
        }
        rootNode.setFolded(false)
    }

}
