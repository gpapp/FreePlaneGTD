package freeplaneGTD

import groovy.swing.SwingBuilder
import javafx.application.Platform
import javafx.beans.value.ChangeListener
import javafx.beans.value.ObservableValue
import javafx.concurrent.Worker
import javafx.embed.swing.JFXPanel
import javafx.scene.Scene
import javafx.scene.web.WebEngine
import javafx.scene.web.WebView
import netscape.javascript.JSObject
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.format.FormattedDate
import org.freeplane.features.mode.Controller
import org.freeplane.plugin.script.FreeplaneScriptBaseClass
import org.freeplane.plugin.script.proxy.ScriptUtils

import javax.swing.*
import java.awt.*
import java.awt.datatransfer.Clipboard
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent
import java.awt.event.WindowAdapter
import java.awt.event.WindowEvent
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.util.logging.Level
import java.util.logging.Logger

class ReportWindow {
    static enum VIEW {
        PROJECT, WHO, CONTEXT, WHEN, DONETIMELINE, ABOUT
    }

    enum DONE_TIMELINE {
        TODAY,
        LAST_WEEK,
        LAST_MONTH,
        EARLIER

    }

    private static Map<String, URL> iconCache = new HashMap<>()
    static final String title = 'GTD Next Actions'
    static final String HTML_HEADER = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" ' +
            '"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n'
    static final String txtVer = '2.0.1'
    static final String txtURI = 'http://www.itworks.hu/index.php/freeplane-gtd+'
    public static final String FREEPLANE_GTD_DEFAULT_VIEW = 'freeplaneGTD_default_view'
    public static final String FREEPLANE_GTD_REMEMBER_LAST_POSITION = 'freeplaneGTD_remember_last_position'
    public static final String BASE_CSS = '/*<![CDATA[*/' +

            'body {' +
            '   color:#000000;' +
            '   font-family: Tahoma,Arial,"Helvetica Neue",Helvetica,sans-serif;' +
            '   font-size: 11pt;' +
            '}' +
            'h1 {font-size:150%; font-weight:bold;}' +
            'h2 {font-size:125%; font-weight:bold;}' +
            'a {text-decoration: none; color:#000077;}' +
            'ul.actionlist { list-style: none; }' +
            '.doneIcon { padding-right: 1em }' +
            '.priorityIcon { left: 2em; position:absolute; }' +
            '.contextIcon { padding-left: 2pt; padding-right:2pt }' +
            '.contextTitleIcon { padding-left: 2pt; padding-right:2pt; width:24px;}' +
            '.wait {font-size:90%; margin-left:32px; margin-top:4px}' +
            '.details {margin-left:18px; padding:5px; background-color:rgb(240,250,240);font-size:90%;}' +
            '.note    {margin-left:18px; padding:5px; background-color:rgb(250,250,240);font-size:90%;}' +
            '.overdue {background-color: rgb(250,150,140)}' +
            '.buttons {display:inline-block;float:right;font-size:90%;background-color: rgb(200,200,200);padding:2px;color: rgb(0,0,0);}' +
            '/*]]>*/'
    private FreeplaneScriptBaseClass.ConfigProperties config
    private ReportModel report
    private JFrame mainFrame
    private JFXPanel projectPane
    private WebView webView
    private ButtonGroup contentTypeGroup
    private JCheckBox cbFilterDone

    protected boolean showNotes
    protected VIEW selectedView

    static def getInstance() {
        Controller currentController = Controller.currentController
        def reportWindow
        try {
            reportWindow = currentController.getGtdReportWindow()
        } catch (Exception e) {
            reportWindow = new ReportWindow()
            currentController.metaClass.getGtdReportWindow = { reportWindow }
        }
        return reportWindow
    }

    private JFrame getMainFrame(FreeplaneScriptBaseClass.ConfigProperties configModel) {
        config = configModel
        boolean rememberLastPosition
        if (!mainFrame) {
            String defaultView
            try {
                defaultView = VIEW.valueOf(config.getProperty(FREEPLANE_GTD_DEFAULT_VIEW)).toString()
            } catch (Exception e) {
                defaultView = VIEW.PROJECT.toString()
                Logger.getAnonymousLogger().log(Level.WARNING, "Cannot parse default view property:" + config.getProperty(FREEPLANE_GTD_DEFAULT_VIEW), e)
            }

            Dimension screenSize = Toolkit.defaultToolkit.screenSize
            int tPosX = (int) (screenSize.width / 16 * 3)
            int tPosY = (int) (screenSize.height / 16 * 3)
            int tSizeX = (int) (screenSize.width / 4 * 3)
            int tSizeY = (int) (screenSize.height / 4 * 3)

            rememberLastPosition = config.getBooleanProperty(FREEPLANE_GTD_REMEMBER_LAST_POSITION)
            int posX = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_x', tPosX) : tPosX
            int posY = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_y', tPosY) : tPosY
            int sizeX = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_w', tSizeX) : tSizeX
            int sizeY = rememberLastPosition ? config.getIntProperty('freeplaneGTD_last_position_h', tSizeY) : tSizeY

            SwingBuilder.edtBuilder {
                String userPath = ScriptUtils.c().userDirectory.toString()
                def iconFrame = imageIcon(userPath + "/resources/images/freeplaneGTD-icon.png").image

                mainFrame = frame(title: title,
                        iconImage: iconFrame,
                        defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
                        show: false) {
                    borderLayout()
                    panel(constraints: BorderLayout.NORTH) {
                        gridLayout(columns: 1, rows: 1)
                        contentTypeGroup = buttonGroup()
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.PROJECT.name(),
                                text: "1 - " + TextUtils.getText("freeplaneGTD.tab.project.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.project.tooltip"),
                                mnemonic: (char) '1',
                                selected: defaultView == "PROJECT",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.WHO.name(),
                                text: "2 - " + TextUtils.getText("freeplaneGTD.tab.who.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.who.tooltip"),
                                mnemonic: (char) '2',
                                selected: defaultView == "WHO",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.CONTEXT.name(),
                                text: "3 - " + TextUtils.getText("freeplaneGTD.tab.context.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.context.tooltip"),
                                mnemonic: (char) '3',
                                selected: defaultView == "CONTEXT",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.WHEN.name(),
                                text: "4 - " + TextUtils.getText("freeplaneGTD.tab.when.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.when.tooltip"),
                                mnemonic: (char) '4',
                                selected: defaultView == "WHEN",
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.DONETIMELINE.name(),
                                text: "5 - " + TextUtils.getText("freeplaneGTD.tab.done_timeline.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.done_timeline.tooltip"),
                                mnemonic: (char) '5',
                                actionPerformed: { refreshContent() }
                        )
                        radioButton(
                                buttonGroup: contentTypeGroup,
                                actionCommand: VIEW.ABOUT.name(),
                                text: "? - " + TextUtils.getText("freeplaneGTD.tab.about.title"),
                                toolTipText: TextUtils.getText("freeplaneGTD.tab.about.tooltip"),
                                mnemonic: (char) '?',
                                actionPerformed: { refreshContent() }
                        )
                    }
                    panel(constraints: BorderLayout.CENTER) {
                        gridLayout(columns: 1, rows: 1)
                        projectPane = new JFXPanel()
                        Platform.setImplicitExit(false)

                        final ReportWindow currentWindow = this
                        Platform.runLater({
                            webView = new WebView()
                            projectPane.setScene(new Scene(webView))
                            WebEngine engine = webView.getEngine()
                            engine.getLoadWorker().stateProperty().addListener(new ChangeListener<Worker.State>() {
                                @Override
                                void changed(ObservableValue<? extends Worker.State> observable, Worker.State oldValue, Worker.State newValue) {
                                    if (newValue == Worker.State.SUCCEEDED) {
                                        JSObject win = engine.executeScript("window") as JSObject
                                        win.setMember("app", new JSHandler(report, currentWindow) as Object)
                                    }
                                }
                            })
                            engine.loadContent("TODO: no content")
                        })

                    }.add(TextUtils.getText("freeplaneGTD.tab.project.tooltip"), projectPane)

                    panel(constraints: BorderLayout.SOUTH) {
                        boxLayout(axis: BoxLayout.X_AXIS)
                        button(text: TextUtils.getText("freeplaneGTD.button.refresh"),
                                actionPerformed: {
                                    refreshContent()
                                })
                        button(text: TextUtils.getText("freeplaneGTD.button.copy"),
                                actionPerformed: {
                                    Clipboard clip = projectPane.getToolkit().getSystemClipboard()
                                    if (clip != null) {
                                        switch (contentTypeGroup.getSelection().actionCommand) {
                                            case VIEW.PROJECT.name(): curContent = report.projectList(); break
                                            case VIEW.WHO.name(): curContent = report.delegateList(); break
                                            case VIEW.CONTEXT.name(): curContent = report.contextList(); break
                                            case VIEW.WHEN.name(): curContent = report.timelineList(); break
                                            case VIEW.DONETIMELINE.name(): curContent = report.doneTimeline(); break
                                            default: curContent = report.projectList(); break
                                        }
                                        clip.setContents(ClipBoardUtil.createTransferable(curContent, report.mapReader, showNotes), null)
                                        UITools.informationMessage(TextUtils.getText('freeplaneGTD.message.copy_ok'))
                                    }
                                    mainFrame.toFront()
                                })
                        button(
                                name: "button_cancel",
                                text: TextUtils.getText("freeplaneGTD.button.cancel"),
                                actionPerformed: {
                                    mainFrame.dispatchEvent(new WindowEvent(mainFrame, WindowEvent.WINDOW_CLOSING))
                                })
                        cbFilterDone = checkBox(text: TextUtils.getText("freeplaneGTD.button.filter_done"),
                                selected: config.getBooleanProperty('freeplaneGTD_filter_done'),
                                actionPerformed: {
                                    config.properties['freeplaneGTD_filter_done'] = Boolean.toString(it.source.selected)
                                    refreshContent()
                                })
                        checkBox(text: TextUtils.getText("freeplaneGTD.button.show_notes"),
                                selected: showNotes,
                                actionPerformed: {
                                    showNotes = it.source.selected; refreshContent()
                                })
                    }
                }
            }
            // on ESC key close frame
            mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
                    KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText("freeplaneGTD.button.cancel"))
            mainFrame.getRootPane().getActionMap().put(TextUtils.getText("freeplaneGTD.button.cancel"),
                    new AbstractAction() {
                        @Override
                        void actionPerformed(ActionEvent e) {
                            mainFrame.dispatchEvent(new WindowEvent(mainFrame, WindowEvent.WINDOW_CLOSING))
                        }
                    })
            mainFrame.addWindowListener(new WindowAdapter() {
                void windowClosing(WindowEvent e) {
		            Logger.getAnonymousLogger().log(Level.INFO, "Closing window. rememberLastPosition=" + config.getBooleanProperty(FREEPLANE_GTD_REMEMBER_LAST_POSITION))

                    if (config.getBooleanProperty(FREEPLANE_GTD_REMEMBER_LAST_POSITION)) {
						Logger.getAnonymousLogger().log(Level.INFO, "lastPosition=" + Integer.toString(mainFrame.x) + ", "+ Integer.toString(mainFrame.y) + ", "+ Integer.toString(mainFrame.width) + ", "+ Integer.toString(mainFrame.height))
                        config.properties.put('freeplaneGTD_last_position_x', Integer.toString(mainFrame.x))
                        config.properties.put('freeplaneGTD_last_position_y', Integer.toString(mainFrame.y))
                        config.properties.put('freeplaneGTD_last_position_w', Integer.toString(mainFrame.width))
                        config.properties.put('freeplaneGTD_last_position_h', Integer.toString(mainFrame.height))
                    }
                    mainFrame.visible = false
                }
            })

            mainFrame.setLocation(posX, posY)
            mainFrame.setSize(sizeX, sizeY)
        }
        return mainFrame
    }


    void refreshContent() {
        cbFilterDone.selected = config.getBooleanProperty('freeplaneGTD_filter_done')
        report.parseMap(cbFilterDone.selected)

		String content
		selectedView = VIEW.valueOf(contentTypeGroup.selection?.actionCommand)
		switch (selectedView) {
			case VIEW.WHO: content = formatList(report.delegateList(), report.mapReader.contextIcons, showNotes)
				break
			case VIEW.CONTEXT: content = formatList(report.contextList(), report.mapReader.contextIcons, showNotes)
				break
			case VIEW.WHEN: content = formatList(report.timelineList(), report.mapReader.contextIcons, showNotes)
				break
			case VIEW.DONETIMELINE: content = formatList(report.doneTimeline(), report.mapReader.contextIcons, showNotes)
				break
			case VIEW.ABOUT:

				Tag html = new Tag('html').
						addChild('head').addContent('style', BASE_CSS, [type: 'text/css'])
				html.addChild('body', [style: 'padding-left:25px'])
						.addContent(new Tag('h1', 'Freeplane|').addContent('span', 'GTD', [style: 'color:#ff3300']))
						.addContent('h2', 'Version ' + txtVer)
						.addContent('h4', 'by Gergely Papp')
						.addContent('h5', 'based on the original code by Auxilus Systems LLC')
						.addContent('h4', 'Licensed under GNU GPL Version 3')
						.addContent('a', txtURI, [href: txtURI])
				content = HTML_HEADER + html.toString()
				break
			case VIEW.PROJECT:
			default:
				content = formatList(report.projectList(), report.mapReader.contextIcons, showNotes)
		}
		Platform.runLater({
			webView.engine.loadContent(content)
			webView.engine.reload()
		})
    }

    private static URL getIconCopyURL(String iconName) {
        URL retval = iconCache.get(iconName)
        if (retval == null) {
            Logger.getAnonymousLogger().log(Level.WARNING, "Loading icon to temp cache:" + iconName)
            try {
                InputStream inputStream = new URL("bundle://1:1/images/icons/" + iconName).openStream()
                File tempDest = File.createTempFile(iconName, "")
                tempDest.deleteOnExit()
                Files.copy(inputStream, tempDest.toPath(), StandardCopyOption.REPLACE_EXISTING)
                inputStream.close()
                retval = tempDest.toURI().toURL()
                iconCache.put(iconName, retval)
            } catch (Exception e) {
                Logger.getAnonymousLogger().log(Level.WARNING, "Cannot load icon for " + iconName, e)
            }
        }
        return retval
    }

    private static String formatList(Map list, Map<String, String> contextIcons, boolean showNotes) {
        Tag html = new Tag('html', [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent('style', BASE_CSS, [type: 'text/css'])

        head.addChild('title')
        Tag body = new Tag('body')
        Date now = new Date().clearTime()
        list['groups'].eachWithIndex { it, index ->
            body.addChild('div', [class: 'buttons']).
                    addContent('a', TextUtils.getText("freeplaneGTD.button.copy"), [href: '#', onclick: 'app.copyToClipboard(' + index + ')']).
                    addContent('|').
                    addContent('a', TextUtils.getText("freeplaneGTD.button.select"), [href: '#', onclick: 'app.selectOnMap(' + index + ')'])
            Tag title = body.addChild('h2')
            if (contextIcons.keySet().contains(it['title'])) {

                title.addChild('img', [class: "contextTitleIcon", src: getIconCopyURL(contextIcons.get(it['title']) + ".png"), "title": it['title']])
            }
            title.addContent(it['title'] as String)
            Tag curItem = body.addChild('ul', ['class': 'actionlist'])
            it['items'].each {
                Tag wrap = curItem.addChild('li')
                if (it['priority']) {
                    wrap.addChild('img', [class: "priorityIcon", src: getIconCopyURL("full-" + it['priority'] + ".png")])
                }
                wrap.addChild('A', [href: '#', onclick: 'app.toggleDone("' + it['nodeID'] + '")']).addChild('img', [class: "doneIcon", src: getIconCopyURL((it['done'] ? "" : "un") + "checked" + ".png")])
                if (it['time'] instanceof FormattedDate && ((FormattedDate) it['time']).before(now)) wrap.addProperty('class', 'overdue')
                (it['context'] as String)?.tokenize(',')?.each { key ->
                    if (contextIcons.keySet().contains(key)) {
                        wrap.addChild('img', [class: "contextIcon", src: getIconCopyURL(contextIcons.get(key) + ".png"), "title": key])
                    }
                }
                wrap.addChild('A', [href: '#', onclick: 'app.followLink("' + it['nodeID'] + '")']).addPreformatted(it['action'] as String)

                Tag contextTag = new Tag('span')

                (it['context'] as String)?.tokenize(',')?.each { key ->
                    contextTag.addContent('@')
                    contextTag.addContent(key)
                }
                !it['who'] ?: wrap.addContent(' [' + it['who'] + ']')
                !it['when'] ?: wrap.addContent(' {' + it['when'] + '}')
                !it['context'] ?: wrap.addContent(contextTag)
                !it['project'] ?: wrap.addContent(' for ' + it['project'])
                if (it['waitFor'] || it['waitUntil']) {
                    wrap.addContent('div', 'wait' + (it['waitFor'] ? ' for ' + it['waitFor'] : '') + (it['waitUntil'] ? ' until ' + it['waitUntil'] : ''), [class: 'wait'])
                }
                if (showNotes) {
                    if (it['details']) {
                        wrap.addChild('div', [class: 'details']).addPreformatted((String) it['details'])
                    }
                    if (it['notes']) {
                        wrap.addChild('div', [class: 'note']).addPreformatted((String) it['notes'])
                    }
                }
            }
        }
        html.addContent(body)

        return HTML_HEADER + html.toString()
    }

    void show(FreeplaneScriptBaseClass.ConfigProperties config) {
        JFrame frameinstance = getMainFrame(config)
        frameinstance.visible = true
    }

    void refresh() {
        report = new ReportModel()
        if (mainFrame?.visible) {
			refreshContent()
		} else {
			report.parseMap(false)
		}
    }

    boolean getAutoFoldMap() {
        return config.getBooleanProperty('freeplaneGTD_auto_fold_map')
    }

}
