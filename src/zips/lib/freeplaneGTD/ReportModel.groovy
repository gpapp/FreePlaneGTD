package freeplaneGTD

import freeplaneGTD.util.DateUtil
import groovy.util.logging.Log
import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.ConvertibleDate

import java.time.temporal.ChronoUnit
import java.util.logging.Level

/**
 * Model for the freeplaneGTD.report pane.
 *
 * Created by gpapp on 2015.03.05..
 */
@Log
class ReportModel {
    List actionList
    List doneList
    GTDMapReader mapReader

    String todayText = TextUtils.getText("freeplaneGTD.view.when.today")
    String thisWeekText = TextUtils.getText("freeplaneGTD.view.when.this_week")

    /**
     * Calculate the next time the action should be taken care of
     * (either waitUntil date, or the due date, whichever comes first)
     */
    def taskDate = { task ->
        def when = task['when']
        def waitUntil = task['waitUntil']
        Date today = new Date().clearTime()
        Date whenDate = null
        Date waitUntilDate = null
        if (when == todayText) whenDate = today
        else if (when instanceof Date) whenDate = when
        else if (when instanceof ConvertibleDate) whenDate = when.calendar.time

        if (waitUntil instanceof Date) waitUntilDate = waitUntil
        else if (waitUntil instanceof ConvertibleDate) waitUntilDate = waitUntil.calendar.time

        if (!whenDate && !waitUntilDate) {
            return waitUntil ?: (when ?: thisWeekText)
        }
        Date retval
        if (whenDate && !waitUntilDate) retval = whenDate
        else if (!whenDate && waitUntilDate) retval = waitUntilDate
        else retval = whenDate < waitUntilDate ? whenDate : waitUntilDate
        return retval == today ? todayText : retval
    }

    /**
     * Compare tasks based on the task date calculated above
     */
    def taskDateComparator = { a, b ->
        def aw = a['when']
        def bw = b['when']
        if ((!aw && !bw) || aw == bw) {
            return 0
        }
        Date ad = null
        Date bd = null
        Date today = new Date().clearTime()
        if (aw instanceof Date) ad = aw
        else if (aw == todayText) ad = today
        else if (aw == thisWeekText) ad = today + 7
        if (bw instanceof Date) bd = bw
        else if (bw == todayText) bd = today
        else if (bw == thisWeekText) bd = today + 7
        if (ad == null && bd == null) {
            return aw <=> bw
        }
        if (ad && !bd) return -1
        if (!ad && bd) return 1
        return ad <=> bd
    }

    /**
     * Sort tasks according to priority and next action time
     */
    def taskSortComparator = { a, b ->
        def ap = a['priority'] ?: '5'
        def bp = b['priority'] ?: '5'
        if ((!ap && !bp) || ap == bp) {
            return taskDateComparator.call(a, b)
        }
        return ap <=> bp
    }

    ReportModel() {
        this.mapReader = GTDMapReader.instance
    }

    //--------------------------------------------------------------
    // parse the GTD mind map
    void parseMap() {
        // Expand any nodes with next action shorthand
        mapReader.convertShorthand()
    }

    void refreshModel(boolean filterDone) {
        try {
            // Get next action lists
            actionList = mapReader.getActionList(filterDone)
            doneList = mapReader.getDoneList()

            // Fill actionList with next actionable time
            actionList.each { it['time'] = taskDate(it) }
        } catch (Exception e) {
            log.log(Level.SEVERE, "Error refreshing model", e)
        }
    }

    def projectList() {
        Map retval = [type: 'project' as Object]
        List<Map> groups = []
        if (actionList) {
            Map<Object, Object> naByGroup = actionList.groupBy { it['project'] }
            naByGroup = naByGroup.sort { it.toString().toLowerCase() }
            naByGroup.each {
                key, value ->
                    List<Map> items = []
                    def curGroup = naByGroup[key].sort { a, b -> taskSortComparator.call(a, b) }
                    curGroup.each {
                        items << [done     : it['done'],
                                  cancelled: it['cancelled'],
                                  whenDone : it['whenDone'],
                                  time     : it['time'],
                                  priority : it['priority'],
                                  action   : it['action'],
                                  nodeID   : it['nodeID'],
                                  who      : it['who'],
                                  when     : it['when'],
                                  context  : it['context'],
                                  waitFor  : it['waitFor'],
                                  waitUntil: it['waitUntil'],
                                  details  : it['details'],
                                  notes    : it['notes']
                        ]
                    }
                    groups << [title: key, items: items]
            }
        }
        retval['groups'] = groups
        return retval
    }

    def delegateList() {
        Map retval = [type: 'who' as Object]
        List groups = []
        Map naByWhoFull = actionList.groupBy({ it['who'] })
        Map naByWaitForFull = actionList.groupBy({ it['waitFor'] })
        Map naByDelegate = [:]
        naByWhoFull.each {
            key, value ->
                if (key) {
                    def keyList = key.split(',')*.trim()
                    keyList.each {
                        naByDelegate.put(it, naByDelegate[it] ? (naByDelegate[it] + value).unique() : value)
                    }
                }
        }
        naByWaitForFull.each {
            key, value ->
                if (key) {
                    def keyList = key.split(',')*.trim()
                    keyList.each {
                        naByDelegate.put(it, naByDelegate[it] ? (naByDelegate[it] + value).unique() : value)
                    }
                }
        }

        naByDelegate = naByDelegate.sort { it.toString().toLowerCase() }
        naByDelegate.each {
            key, value ->
                List<Map> items = []
                def curGroup = naByDelegate[key].sort { a, b -> taskSortComparator.call(a, b) }
                curGroup.each {
                    def newItem = [done     : it['done'],
                                   cancelled: it['cancelled'],
                                   whenDone : it['whenDone'],
                                   time     : it['time'],
                                   priority : it['priority'],
                                   action   : it['action'],
                                   nodeID   : it['nodeID'],
                                   when     : it['when'],
                                   context  : it['context'],
                                   project  : it['project'],
                                   waitUntil: it['waitUntil'],
                                   details  : it['details'],
                                   notes    : it['notes']
                    ]
                    if (it['who'] && it['who'].trim() != key) {
                        newItem['who'] = it['who']
                    }
                    if (it['waitFor'] && it['waitFor'].trim() != key) {
                        newItem['waitFor'] = it['waitFor']
                    }
                    items << newItem
                }
                groups << [title: key, items: items]
        }
        retval['groups'] = groups
        return retval
    }

    def contextList() {
        Map retval = [type: 'context' as Object]
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
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator.call(a, b) }
                curGroup.each {
                    items << [done     : it['done'],
                              cancelled: it['cancelled'],
                              whenDone : it['whenDone'],
                              time     : it['time'],
                              priority : it['priority'],
                              action   : it['action'],
                              nodeID   : it['nodeID'],
                              when     : it['when'],
                              who      : it['who'],
                              project  : it['project'],
                              waitFor  : it['waitFor'],
                              waitUntil: it['waitUntil'],
                              details  : it['details'],
                              notes    : it['notes']
                    ]
                }
                groups << [title: key ?: TextUtils.getText("freeplaneGTD.view.context.unassigned"), items: items]
        }
        retval['groups'] = groups
        return retval
    }

    def timelineList() {
        Map retval = [type: 'when' as Object]
        List groups = []
        def sortedList = actionList.sort { a, b -> taskDateComparator.call(a, b) }
        def naByGroup = sortedList.groupBy { it['time'] }
        naByGroup.each {
            key, value ->
                List<Map> items = []
                def curGroup = naByGroup[key].sort { a, b -> taskSortComparator.call(a, b) }
                curGroup.each {
                    def newItem = [done     : it['done'],
                                   cancelled: it['cancelled'],
                                   whenDone : it['whenDone'],
                                   time     : it['time'],
                                   priority : it['priority'],
                                   action   : it['action'],
                                   nodeID   : it['nodeID'],
                                   who      : it['who'],
                                   project  : it['project'],
                                   context  : it['context'],
                                   waitFor  : it['waitFor'],
                                   details  : it['details'],
                                   notes    : it['notes']
                    ]
                    if (it['when'] && it['when'] != key) {
                        newItem['when'] = it['when']
                    }
                    if (it['waitUntil'] && it['waitUntil'] != key) {
                        newItem['waitUntil'] = it['waitUntil']
                    }
                    items << newItem
                }
                groups << [title: key, items: items]
        }
        retval['groups'] = groups
        return retval
    }

    GtdReportViewController.DONE_TIMELINE doneTimeline(Date today, Object time) {
        if (!time) return GtdReportViewController.DONE_TIMELINE.EARLIER
        Date date = DateUtil.normalizeDate(time) as Date

        // consider today as exactly this day
        // consider this month as today + month before
        def days = ChronoUnit.DAYS.between(date.toInstant(), today.toInstant())
        println "diff days $today->$date = $days"
        
        if (days < 1) return GtdReportViewController.DONE_TIMELINE.TODAY
        if (days < 7) return GtdReportViewController.DONE_TIMELINE.LAST_WEEK
        if (days < 30) return GtdReportViewController.DONE_TIMELINE.LAST_MONTH
        return GtdReportViewController.DONE_TIMELINE.EARLIER
    }

    def doneTimeline() {
        Map retval = [type: 'whenDone' as Object]
        List groups = []
        // today to compare with
        Date today = new Date();
        Map<GtdReportViewController.DONE_TIMELINE, Object> byDoneTimeline = doneList.groupBy({ node -> doneTimeline(today, node['whenDone']) }).sort { a, b -> a.key.compareTo(b.key) }
        byDoneTimeline.each {
            key, value ->
                groups << [title: TextUtils.getText("freeplaneGTD.doneTimeline." + key), items: value]
        }
        retval['groups'] = groups
        return retval
    }
}
