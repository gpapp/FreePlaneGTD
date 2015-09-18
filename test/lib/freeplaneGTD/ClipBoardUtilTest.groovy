package freeplaneGTD

import groovy.mock.interceptor.MockFor
import org.freeplane.core.util.TextUtils

/**
 * Created by gpapp on 2015.03.05..
 */
class ClipBoardUtilTest extends GroovyTestCase {
    void testExtractText() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert 'Title' == ClipBoardUtil.extractText([type: 'test_type', groups: []])
        }
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert 'Title\n\tGroup1' == ClipBoardUtil.extractText([type: 'test_type', groups: [
                    [title: 'Group1', list: []]]])
        }
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert 'Title\n' +
                    '\tGroup1\n' +
                    '\t\t* item1' == ClipBoardUtil.extractText([type: 'test_type', groups: [
                    [title: 'Group1', items: [[action: 'item1', nodeID: '1234']]]]])
        }
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert 'Title\n' +
                    '\tGroup1\n' +
                    '\t\t* item1\n' +
                    '\t\t* item2 [who] {when} for project @context' == ClipBoardUtil.extractText([type: 'test_type', groups: [
                    [title: 'Group1',
                     items: [[action: 'item1', nodeID: '1234'],
                             [action: 'item2', nodeID: '1234', who: 'who', when: 'when', context: 'context', project: 'project']]]]])
        }
    }

    void testExtractHtml() {
        def mockReportModel = new MockFor(TextUtils)
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert '<body><h1>Title</h1></body>' == ClipBoardUtil.extractHtml([type: 'test_type', groups: []],true)
        }
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert '<body><h1>Title</h1><h2>Group1</h2><ul></ul></body>' == ClipBoardUtil.extractHtml([type: 'test_type', groups: [
                    [title: 'Group1', list: []]]],true)
        }
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert '<body><h1>Title</h1><h2>Group1</h2><ul><li>item1</li></ul></body>' == ClipBoardUtil.extractHtml([type: 'test_type', groups: [
                    [title: 'Group1', items: [[action: 'item1', notes:'abc', nodeID: '1234']]]]],false)
        }
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert '<body><h1>Title</h1><h2>Group1</h2><ul><li>item1<div><div style=\'background-color: rgb(250,250,240);font-size:10pt\'>abc</div></div></li></ul></body>' == ClipBoardUtil.extractHtml([type: 'test_type', groups: [
                    [title: 'Group1', items: [[action: 'item1', notes:'abc', nodeID: '1234']]]]],true)
        }
        mockReportModel.demand.getText { 'Title' }
        mockReportModel.use {
            assert '<body><h1>Title</h1><h2>Group1</h2><ul><li>item1</li><li>item2 [who] {when} for project @context</li></ul></body>' == ClipBoardUtil.extractHtml([type: 'test_type', groups: [
                    [title: 'Group1',
                     items: [[action: 'item1', nodeID: '1234'],
                             [action: 'item2', nodeID: '1234', who: 'who', when: 'when', context: 'context', project: 'project']]]]],true)
        }
    }
}
