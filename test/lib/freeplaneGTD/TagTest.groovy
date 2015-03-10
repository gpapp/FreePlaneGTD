package freeplaneGTD

/**
 * Created by gpapp on 2015.03.02..
 */
class TagTest extends GroovyTestCase {
    void testConstructors() {
        assert new Tag('A').toString() == '<A></A>'
        assert new Tag('A', 'content').toString() == '<A>content</A>'
        assert new Tag('A', 'content', [comes: 'here']).toString() == '<A comes=\'here\'>content</A>'
        assert new Tag('A', 'content', [comes: 'here', because: 'content', is: 'God']).toString() == '<A comes=\'here\' because=\'content\' is=\'God\'>content</A>'
    }

    void testToString() {
        assert new Tag('A', 'content').toString() == '<A>content</A>'
        assert new Tag('A', '<brackets & ampersand>').toString() == '<A>&lt;brackets &amp; ampersand&gt;</A>'
        assert new Tag('A').addContent('B', '<BOLD>').toString() == '<A><B>&lt;BOLD&gt;</B></A>'
    }
}
