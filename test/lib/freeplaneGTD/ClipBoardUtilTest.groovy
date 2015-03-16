package freeplaneGTD

/**
 * Created by gpapp on 2015.03.05..
 */
class ClipBoardUtilTest extends GroovyTestCase {
    void testExtractText() {
        assert 'Title' == ClipBoardUtil.extractText([title: 'Title', groups: []])
        assert 'Title\n\tGroup1' == ClipBoardUtil.extractText([title: 'Title', groups: [
                [title: 'Group1', list: []]]])
        assert 'Title\n' +
                '\tGroup1\n' +
                '\t\t* item1' == ClipBoardUtil.extractText([title: 'Title', groups: [
                [title: 'Group1', items: [[action: 'item1', nodeID: '1234']]]]])
        assert 'Title\n' +
                '\tGroup1\n' +
                '\t\t* item1\n' +
                '\t\t* item2 [who] {when} @context for project' == ClipBoardUtil.extractText([title: 'Title', groups: [
                [title: 'Group1',
                 items: [[action: 'item1', nodeID: '1234'],
                         [action: 'item2', nodeID: '1234', who: 'who', when: 'when', context: 'context', project: 'project']]]]])
    }

    void testExtractHtml() {
        assert '<body><h1>Title</h1></body>' == ClipBoardUtil.extractHtml([title: 'Title', groups: []])
        assert '<body><h1>Title</h1><h2>Group1</h2><ul></ul></body>' == ClipBoardUtil.extractHtml([title: 'Title', groups: [
                [title: 'Group1', list: []]]])
        assert '<body><h1>Title</h1><h2>Group1</h2><ul><li>item1</li></ul></body>' == ClipBoardUtil.extractHtml([title: 'Title', groups: [
                [title: 'Group1', items: [[action: 'item1', nodeID: '1234']]]]])
        assert '<body><h1>Title</h1><h2>Group1</h2><ul><li>item1</li><li>item2 [who] {when} @context for project</li></ul></body>' == ClipBoardUtil.extractHtml([title: 'Title', groups: [
                [title: 'Group1',
                 items: [[action: 'item1', nodeID: '1234'],
                         [action: 'item2', nodeID: '1234', who: 'who', when: 'when', context: 'context', project: 'project']]]]])
    }
}
