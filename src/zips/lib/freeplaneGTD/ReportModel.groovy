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
    List actionList
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

    Map projectList() {
        Map retval = [type: 'project']
        List groups = []
        Map naByGroup = actionList.groupBy { it['project'] }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                List<Map> items = []
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                curGroup.each {
                    Map item = [done    : it['done'],
                                priority: it['priority'],
                                action  : it['action'],
                                nodeID  : it['nodeID'],
                                who     : it['who'],
                                when    : it['when'],
                                context : it['context']]
                    if (showNotes) {
                        item['details'] = ((Proxy.Node) it['node']).detailsText
                        item['notes'] = ((Proxy.Node) it['node']).noteText
                    }
                    items << item
                }
                groups << [title: key, items: items]
        }
        retval['groups'] = groups
        return retval
    }

    Map delegateList() {
        Map retval = [type: 'who']
        List groups = []
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
                List<Map> items = []
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                curGroup.each {
                    Map item = [done    : it['done'],
                                priority: it['priority'],
                                action  : it['action'],
                                nodeID: it['nodeID'],
                                when    : it['when'],
                                context : it['context'],
                                project : it['project']]
                    if (showNotes) {
                        item['details'] = ((Proxy.Node) it['node']).detailsText
                        item['notes'] = ((Proxy.Node) it['node']).noteText
                    }
                    items << item
                }
                groups << [title: key, items: items]
        }
        retval['groups'] = groups
        return retval
    }

    Map contextList() {
        Map retval = [type: 'context']
        List groups = []
        Map naByGroupFull = actionList.groupBy { it['context'] }
        Map naByGroup = [:]
        naByGroupFull.each {
            key, value ->
                if (!key) {
                    naByGroup.put(key, value)
                } else {
                    def keyList = key?.split(',')
                    keyList.each {
                        naByGroup.put(it, naByGroup[it] ? naByGroup[it] + value : value)
                    }
                }
        }
        naByGroup = naByGroup.sort { it.toString().toLowerCase() }
        naByGroup.each {
            key, value ->
                List<Map> items = []
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                curGroup.each {
                    Map item = [done    : it['done'],
                                priority: it['priority'],
                                action  : it['action'],
                                nodeID: it['nodeID'],
                                when    : it['when'],
                                who     : it['who'],
                                project : it['project']]
                    if (showNotes) {
                        item['details'] = ((Proxy.Node) it['node']).detailsText
                        item['notes'] = ((Proxy.Node) it['node']).noteText
                    }
                    items << item
                }
                groups << [title: key ?: TextUtils.getText("freeplaneGTD.view.context.unassigned"), items: items]
        }
        retval['groups'] = groups
        return retval
    }

    Map timelineList() {
        Map retval = [type: 'when']
        List groups = []
        def sortedList = actionList.sort { a, b -> taskDateComparator(a, b) }
        def naByGroup = sortedList.groupBy { it['when'] }
        naByGroup.each {
            key, value ->
                List<Map> items = []
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator(a, b) }
                curGroup.each {
                    Map item = [done    : it['done'],
                                priority: it['priority'],
                                action  : it['action'],
                                nodeID: it['nodeID'],
                                who     : it['who'],
                                project : it['project'],
                                context : it['context']]
                    if (showNotes) {
                        item['details'] = ((Proxy.Node) it['node']).detailsText
                        item['notes'] = ((Proxy.Node) it['node']).noteText
                    }
                    items << item
                }
                groups << [title: key, items: items]
        }
        retval['groups'] = groups
        return retval
    }
}
