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
        mockReportModel.demand.getText { 'TODAY' }
        mockReportModel.demand.getText { 'THIS WEEK' }
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

    void testEnergyListGroupsTasksByEnergyAndUsesTaskSortComparator() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'TODAY' }
        mockReportModel.demand.getText { 'THIS WEEK' }
        mockReportModel.use {
            ReportModel reportModel = new ReportModel()
            reportModel.actionList = [
                    [action: 'Low energy task', energy: 'Low', priority: '3', when: 'THIS WEEK', nodeID: '1', done: false, cancelled: false],
                    [action: 'High energy task', energy: 'High', priority: '1', when: 'TODAY', nodeID: '2', done: false, cancelled: false],
                    [action: 'Another high energy task', energy: 'High', priority: '2', when: 'TODAY', nodeID: '3', done: false, cancelled: false]
            ]

            def energyList = reportModel.energyList()
            assert energyList.groups.collect { it.title } == ['High', 'Low']
            assert energyList.groups.find { it.title == 'High' }.items[0].action == 'High energy task'
            assert energyList.groups.find { it.title == 'High' }.items[1].action == 'Another high energy task'
        }
    }

    void testDurationListGroupsTasksByDuration() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'TODAY' }
        mockReportModel.demand.getText { 'THIS WEEK' }
        mockReportModel.use {
            ReportModel reportModel = new ReportModel()
            reportModel.actionList = [
                    [action: 'Short task', duration: '15 min', priority: '1', when: 'TODAY', nodeID: '1', done: false, cancelled: false],
                    [action: 'Long task', duration: '60 min', priority: '1', when: 'TODAY', nodeID: '2', done: false, cancelled: false]
            ]

            def durationList = reportModel.durationList()
            assert durationList.groups.collect { it.title } == ['15 min', '60 min']
            assert durationList.groups.find { it.title == '15 min' }.items[0].action == 'Short task'
            assert durationList.groups.find { it.title == '60 min' }.items[0].action == 'Long task'
        }
    }

    void testEnergyAndDurationGroupingIncludesMissingValuesInUnassignedGroup() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'TODAY' }
        mockReportModel.demand.getText { 'THIS WEEK' }
        mockReportModel.demand.getText { 'UNASSIGNED' }
        mockReportModel.demand.getText { 'UNASSIGNED' }
        mockReportModel.use {
            ReportModel reportModel = new ReportModel()
            reportModel.actionList = [
                    [action: 'Missing energy', energy: '   ', duration: '30 min', priority: '1', when: 'TODAY', nodeID: '1', done: false, cancelled: false],
                    [action: 'Missing duration', energy: 'High', duration: '   ', priority: '1', when: 'TODAY', nodeID: '2', done: false, cancelled: false],
                    [action: 'Missing both', energy: null, duration: null, priority: '1', when: 'TODAY', nodeID: '3', done: false, cancelled: false]
            ]

            def energyList = reportModel.energyList()
            def energyUnassignedGroup = energyList.groups.find { it.title == 'UNASSIGNED' }
            assert energyUnassignedGroup != null
            assert energyUnassignedGroup.items.collect { it.action } == ['Missing energy', 'Missing both']

            def durationList = reportModel.durationList()
            def durationUnassignedGroup = durationList.groups.find { it.title == 'UNASSIGNED' }
            assert durationUnassignedGroup != null
            assert durationUnassignedGroup.items.collect { it.action } == ['Missing duration', 'Missing both']
        }
    }
}
