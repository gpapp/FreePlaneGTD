package freeplaneGTD

import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy

/**
 * Created by gpapp on 2015.03.05..
 */
class ReportModel {
    boolean filterDone
    int selPane
    Proxy.Node rootNode;
    def actionList;
    GTDMapReader mapreader;
    String todayText = TextUtils.getText("freeplaneGTD.view.when.today")
    String thisWeekText = TextUtils.getText("freeplaneGTD.view.when.this_week")

    def taskDateComparator = { a, b ->
        def aw = a['when']
        def bw = b['when']
        if ((!aw && !bw) || aw.equals(bw)) {
            return 0
        }
        Date today = new Date().clearTime()
        Date ad = null
        Date bd = null
        if (aw == todayText) ad = today
        else if (aw == thisWeekText) ad = today + 7
        else if (aw instanceof Date) ad = aw
        if (bw == todayText) bd = today
        else if (bw == thisWeekText) bd = today + 7
        else if (bw instanceof Date) bd = bw
        if (!ad && !bd) {
            return aw <=> bw
        }
        if (ad && !bd) return 1
        if (!ad && bd) return -1
        return ad <=> bd
    }
    def taskSortComparator = { a, b ->
        if ((!a['priority'] && !b['priority']) || a['priority'].equals(b['priority'])) {
            return taskDateComparator(a, b)
        }
        if (!a['priority']) return -1
        if (!b['priority']) return 1
        return a['priority'] <=> b['priority']
    }


    ReportModel(Proxy.Node rootNode) {
        this.rootNode = rootNode
        this.mapreader = GTDMapReader.instance
    }

    //--------------------------------------------------------------
    // parse the GTD mind map
    void parseMap() {
        // Expand any nodes with next action shorthand
        mapreader.convertShorthand(rootNode);

        // Get next action lists
        actionList = mapreader.getActionList(rootNode, filterDone);
    }

    int projectCount() {
        return actionList.size()
    }

    int delegateCount() {
        //Filter the missing delegates
        Set delegateGroups = actionList.groupBy({ it['who'] }).keySet()
        Set delegates = []
        delegateGroups.each {
            def individuals = it?.split(',')
            if (individuals) delegates.addAll(individuals)
        }
        return delegates.size()
    }

    static Tag getStyleSheet() {
        Tag style = new Tag('style',
                '/*<![CDATA[*/' +
                        'body {color:#000000; font-family:Calibri, Verdana, Arial; font-size:13pt; padding: 10px 25px 0px 25px; }\n' +
                        'h1 {font-size:24pt; font-weight:bold;}\n' +
                        'a {text-decoration: none; color:#990000;}\n' +
                        '.priority {padding: 2px; display:inline-block; margin-right: 2px; color: black; font-weight:bold;}\n' +
                        '.priority-0 {background-color: rgb(215,48,39);}\n' +
                        '.priority-1 {background-color: rgb(244,109,67);}\n' +
                        '.priority-2 {background-color: rgb(253,174,97);}\n' +
                        '.priority-3 {background-color: rgb(204,174,89)}\n' +
                        '.priority-4 {background-color: rgb(255,255,191);}\n' +
                        '.priority-5 {background-color: rgb(217,239,139);}\n' +
                        '.priority-6 {background-color: rgb(166,217,106);}\n' +
                        '.priority-7 {background-color: rgb(102,189,99);}\n' +
                        '.priority-8 {background-color: rgb(26,152,80);}\n' +
                        '.priority-9 {background-color: rgb(16,82,50);}' +
                        '.note {background-color: rgb(240,250,240);font-size:10pt}' +
                        '/*]]>*/',
                [type: 'text/css'])

        return style
    }

    static Tag displayNote(Proxy.Node n) {
        /*       if (n.noteText) {
                   Tag tag = new Tag('div',null,[class: 'note'])
                   tag.addContent(n.displayedText)
                   return tag
               }*/
        return null
    }


    String projectText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_project"))
        Map naByGroup = actionList.groupBy { it['project'] }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                body.addContent('h2', key)
                Tag curItem = body.addChild('ul')
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                curGroup.each {
                    Tag wrap = curItem.addChild('li')
                    if (it['done']) wrap = wrap.addChild('del')
                    if (it['priority']) {
                        wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                    }
                    wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                            (it['who'] ? ' [' + it['who'] + ']' : '') +
                                    (it['when'] ? ' {' + it['when'] + '}' : '') +
                                    (it['context'] ? ' @' + it['context'] : ''))
                    wrap.addContent(displayNote(it['node']) ?: '')
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n' + html.toString()
    }

    String delegateText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_who"))
        Map naByGroupFull = actionList.groupBy { it['who'] }
        Map naByGroup = [:]
        naByGroupFull.each {
            key, value ->
                def keyList = key?.split(',')
                keyList.each {
                    naByGroup.put(it, naByGroup[it] ? naByGroup[it] + value : value)
                }
        }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                if (key) {
                    body.addContent('h2', key)
                    Tag curItem = body.addChild('ul')
                    def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                    curGroup.each {
                        Tag wrap = curItem.addChild('li')
                        if (it['done']) wrap = wrap.addChild('del')
                        if (it['priority']) {
                            wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                        }
                        wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                                (it['when'] ? ' {' + it['when'] + '}' : '') +
                                        (it['context'] ? ' @' + it['context'] : '') +
                                        ' for ' + it['project'])
                        wrap.addContent(displayNote(it['node']) ?: '')
                    }
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "resources/schema/xhtml/xhtml-1/xhtml1-strict.dtd">\n' + html.toString()
    }

    String contextText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_context"))
        Map naByGroupFull = actionList.groupBy { it['context'] }

        Map naByGroup = [:]
        naByGroupFull.each {
            key, value ->
                if (!key) {
                    naByGroup.put(key, value)
                } else {
                    def keyList = key.split(',')
                    keyList.each {
                        naByGroup.put(it, naByGroup[it] ? naByGroup[it] + value : value)
                    }
                }
        }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                body.addContent('h2', key ?: TextUtils.getText("freeplaneGTD.view.context.unassigned"))
                Tag curItem = body.addChild('ul')
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                curGroup.each {
                    Tag wrap = curItem.addChild('li')
                    if (it['done']) wrap = wrap.addChild('del')
                    if (it['priority']) {
                        wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                    }
                    wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                            (it['who'] ? ' [' + it['who'] + ']' : '') +
                                    (it['when'] ? ' {' + it['when'] + '}' : '') +
                                    ' for ' + it['project'])
                    wrap.addContent(displayNote(it['node']) ?: '')
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "resources/schema/xhtml/xhtml-1/xhtml1-strict.dtd">\n' + html.toString()
    }

    String timelineText() {
        Tag html = new Tag('html', null, [xmlns: 'http://www.w3.org/1999/xhtml'])
        Tag head = html.addChild('head')
        head.addContent(getStyleSheet())
        head.addChild('title')
        Tag body = html.addChild('body')
        body.addContent('h1', TextUtils.getText("freeplaneGTD_view_when"))
        def sortedList = actionList.sort { a, b -> taskDateComparator(a, b) }
        def naByGroup = sortedList.groupBy { it['when'] }
        naByGroup.each {
            key, value ->
                body.addContent('h2', key)
                Tag curItem = body.addChild('ul')
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                curGroup.each {
                    Tag wrap = curItem.addChild('li')
                    if (it['done']) wrap = wrap.addChild('del')
                    if (it['priority']) {
                        wrap = wrap.addContent('span', it['priority'], [class: 'priority priority-' + it['priority']])
                    }
                    wrap.addContent('a', it['action'], [href: it['nodeID']]).addContent(
                            (it['who'] ? ' [' + it['who'] + ']' : '') +
                                    (it['context'] ? ' @' + it['context'] : '') +
                                    ' for ' + it['project'])
                    wrap.addContent(displayNote(it['node']) ?: '')
                }
        }
        return '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "resources/schema/xhtml/xhtml-1/xhtml1-strict.dtd">\n' + html.toString()
    }
}
