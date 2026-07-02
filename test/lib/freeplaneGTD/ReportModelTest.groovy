package freeplaneGTD

import groovy.mock.interceptor.MockFor
import org.freeplane.core.util.TextUtils

/**
 * Created by gpapp on 2015.03.05..
 */
class ReportModelTest extends GroovyTestCase {
    void testGetTaskDateComparator() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'TODAY' }
        mockReportModel.demand.getText { 'THIS WEEK' }
        mockReportModel.use {
            ReportModel reportModel = new ReportModel()
            assert reportModel.taskDateComparator([], []) == 0
            assert reportModel.taskDateComparator([when: '0'], [when: '0']) == 0
            assert reportModel.taskDateComparator([when: '1'], [when: '0']) == 1
            assert reportModel.taskDateComparator([when: '0'], [when: '1']) == -1
            assert reportModel.taskDateComparator([when: new Date()], [when: '0']) == -1
            assert reportModel.taskDateComparator([when: 'TODAY'], [when: new Date().clearTime()]) == 0
            assert reportModel.taskDateComparator([when: 'THIS WEEK'], [when: new Date().clearTime() + 7]) == 0
            assert reportModel.taskDateComparator([when: 'TODAY'], [when: 'THIS WEEK']) == -1
            assert reportModel.taskDateComparator([when: 'TODAY'], [when: new Date().clearTime() + 1]) == -1
            assert reportModel.taskDateComparator([when: 'THIS WEEK'], [when: new Date().clearTime() + 8]) == -1
        }
    }

    void testGetTaskSortComparator() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'TODAY' }
        mockReportModel.demand.getText { 'THIS WEEK' }
        mockReportModel.use {
            ReportModel reportModel = new ReportModel()
            assert reportModel.taskSortComparator([priority: null], [priority: '0']) == 1
            assert reportModel.taskSortComparator([priority: '1'], [priority: '1']) == 0
            assert reportModel.taskSortComparator([priority: '0'], [priority: '1']) == -1
            assert reportModel.taskSortComparator([priority: '1', when: 'TODAY'], [priority: '2', when: 'TODAY']) == -1
            assert reportModel.taskSortComparator([priority: '1', when: 'TODAY'], [priority: '1', when: 'TODAY']) == 0
            assert reportModel.taskSortComparator([priority: '1', when: 'TODAY'], [priority: '1', when: 'THIS WEEK']) == -1
        }
    }

    void testGroupingListsExposeEnergyAndDuration() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'UNASSIGNED' }
        mockReportModel.use {
            ReportModel reportModel = new ReportModel()
            reportModel.actionList = [[
                    action   : 'Test task',
                    project  : 'Project',
                    energy   : 'High',
                    duration : '30 min',
                    priority : '1',
                    done     : false,
                    cancelled: false,
                    nodeID   : '1',
                    who      : 'Alice',
                    when     : null,
                    context  : 'Home',
                    waitFor  : null,
                    waitUntil: null,
                    details  : null,
                    notes    : null
            ]]

            def projectList = reportModel.projectList()
            assert projectList.groups[0].items[0].energy == 'High'
            assert projectList.groups[0].items[0].duration == '30 min'

            def delegateList = reportModel.delegateList()
            assert delegateList.groups[0].items[0].energy == 'High'
            assert delegateList.groups[0].items[0].duration == '30 min'

            def contextList = reportModel.contextList()
            assert contextList.groups[0].items[0].energy == 'High'
            assert contextList.groups[0].items[0].duration == '30 min'

            def timelineList = reportModel.timelineList()
            assert timelineList.groups[0].items[0].energy == 'High'
            assert timelineList.groups[0].items[0].duration == '30 min'
        }
    }
}
