package freeplaneGTD

/**
 * Created by gpapp on 2015.03.05..
 */
class ClipBoardUtilTest extends GroovyTestCase {
    void testExtractText() {
        Tag base = new Tag('body', [class: 'base'])
        Tag wrap = base.addContent('h1', 'Title').
                addContent('h2', 'Project1').
                addChild('ul')
        wrap.addChild('li').
                addContent('a', 'item 1', [href: 'ID123456'])

        assert ClipBoardUtil.extractText(base) == 'Title\n\tProject1\n' +
                '\t\t* item 1'
        wrap.addChild('li').
                addContent('a', 'item 2', [href: 'ID123456']).
                addContent(' [delegate] {2123-12-01}')
        assert ClipBoardUtil.extractText(base) == 'Title\n\tProject1\n' +
                '\t\t* item 1\n' +
                '\t\t* item 2 [delegate] {2123-12-01}'
        wrap.addChild('li').addChild('del').
                addContent('span', '1', [class: 'priority priority-1']).
                addContent('a', 'item 3', [href: 'ID123456']).
                addContent(' [delegate] {2123-12-01}')
        assert ClipBoardUtil.extractText(base) == 'Title\n\tProject1\n' +
                '\t\t* item 1\n' +
                '\t\t* item 2 [delegate] {2123-12-01}\n' +
                '\t\t* #1 item 3 [delegate] {2123-12-01}'
    }

    void testExtractHtml() {
        Tag base = new Tag('body', 'empty', [class: 'base'])
        assert ClipBoardUtil.extractHtml(base) == '<body class=\'base\'>empty</body>'
        base.addContent('a', 'Show ME!', [href: 'should be ignored'])
        assert ClipBoardUtil.extractHtml(base) == '<body class=\'base\'>emptyShow ME!</body>'
        base.addContent('h1', 'Base 1')
        assert ClipBoardUtil.extractHtml(base) == '<body class=\'base\'>emptyShow ME!<h1>Base 1</h1></body>'
        base.addContent('h1', 'Base 2')
        assert ClipBoardUtil.extractHtml(base) == '<body class=\'base\'>emptyShow ME!<h1>Base 1</h1><h1>Base 2</h1></body>'
    }
}
