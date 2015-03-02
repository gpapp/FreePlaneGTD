package freeplaneGTD

/**
 * Created by gpapp on 2015.03.02..
 */
class TagTest extends GroovyTestCase {
    void testConstructors() {
        assert new Tag('A').toString() == '<A>\n</A>\n'
        assert new Tag('A', 'content').toString() == '<A>\ncontent</A>\n'
        assert new Tag('A', 'content', [comes: 'here']).toString() == '<A comes=\'here\'>\ncontent</A>\n'
        assert new Tag('A', 'content', [comes: 'here', because: 'content', is: 'God']).toString() == '<A comes=\'here\' because=\'content\' is=\'God\'>\ncontent</A>\n'
    }

    void testToString() {
        assert new Tag('A', 'content').toString() == '<A>\ncontent</A>\n'
        assert new Tag('A', '<brackets & ampersand>').toString() == '<A>\n&lt;brackets &amp; ampersand&gt;</A>\n'
        assert new Tag('A').addContent('B', '<BOLD>').toString() == '<A>\n<B>\n&lt;BOLD&gt;</B>\n</A>\n'
    }
}
