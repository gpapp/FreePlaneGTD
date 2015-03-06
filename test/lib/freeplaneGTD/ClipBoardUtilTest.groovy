package freeplaneGTD

/**
 * Created by gpapp on 2015.03.05..
 */
class ClipBoardUtilTest extends GroovyTestCase {
    void testExtractText() {

    }

    void testExtractHtml() {
        assert ClipBoardUtil.extractHtml('<HTML><a href=\'node\'>aasd</a></HTML>') == '<HTML>aasd</HTML>'
    }
}
