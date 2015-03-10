package freeplaneGTD

import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.ConvertibleDate
import org.freeplane.plugin.script.proxy.Proxy

/**
 * Created by gpapp on 2015.03.05..
 */
class ReportModel {
    boolean showNotes
    boolean filterDone
    int selPane
    Proxy.Node rootNode
    def actionList
    GTDMapReader mapReader
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
        else if (aw instanceof ConvertibleDate) ad = aw.calendar.time
        if (bw == todayText) bd = today
        else if (bw == thisWeekText) bd = today + 7
        else if (bw instanceof Date) bd = bw
        else if (bw instanceof ConvertibleDate) bd = bw.calendar.time
        if (!ad && !bd) {
            return aw <=> bw
        }
        if (ad && !bd) return -1
        if (!ad && bd) return 1
        return ad <=> bd
    }
    def taskSortComparator = { a, b ->
        if ((!a['priority'] && !b['priority']) || a['priority'].equals(b['priority'])) {
            return taskDateComparator(a, b)
        }
        if (!a['priority']) return 1
        if (!b['priority']) return -1
        return a['priority'] <=> b['priority']
    }


    ReportModel(Proxy.Node rootNode) {
        this.rootNode = rootNode
        this.mapReader = GTDMapReader.instance
    }

    //--------------------------------------------------------------
    // parse the GTD mind map
    void parseMap() {
        // Expand any nodes with next action shorthand
        mapReader.convertShorthand(rootNode);

        // Get next action lists
        actionList = mapReader.getActionList(rootNode, filterDone);
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

    Tag displayNote(Proxy.Node n) {
        if (!showNotes) return null
        if (!(n.noteText || n.detailsText)) return null
        Tag tag = new Tag('div', [class: 'note'])
        if (n.detailsText) {
            tag.addChild('div', [class: 'note']).addPreformatted(n.detailsText)
        }
        if (n.noteText) {
            tag.addChild('div', [class: 'note']).addPreformatted(n.noteText)
        }
        return tag
    }


    Tag projectText() {
        Tag body = new Tag('body')
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
        return body
    }

    Tag delegateText() {
        Tag body = new Tag('body')
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
        return body
    }

    Tag contextText() {
        Tag body = new Tag('body')
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
        return body
    }

    Tag timelineText() {
        Tag body = new Tag('body')
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
        return body
    }
}
