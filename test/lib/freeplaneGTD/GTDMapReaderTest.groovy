package freeplaneGTD

import org.freeplane.features.map.MapModel
import org.freeplane.features.map.NodeModel
import org.freeplane.plugin.script.ScriptContext
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.ProxyFactory
import org.junit.Test

class GTDMapReaderTest {

    @Test
    void testParseShortHandSimple() {
        assert ([action: 'a b c'] == GTDMapReader.parseShorthand('*a b c'))
        assert ([action: 'a b c'] == GTDMapReader.parseShorthand(' *a b c'))
        assert ([action: 'a b c'] == GTDMapReader.parseShorthand(' * a b c'))
    }

    @Test
    void testParseShortHandNow() {
        assert ([action: 'a b c', when: 'now'] == GTDMapReader.parseShorthand('*a b c {now}'))
        assert ([action: 'a b c', when: 'now'] == GTDMapReader.parseShorthand(' { now }*a b c'))
        assert ([action: 'a b c', when: 'now'] == GTDMapReader.parseShorthand('*a  {now} b c'))
    }

    @Test
    void testParseShortHandDate() {
        assert ([action: 'a b c', when: Date.parse('yyyy-MM-dd', '2003-01-02')] == GTDMapReader.parseShorthand('*a b c {1/2/3}'))
        assert ([action: 'a b c', when: Date.parse('yyyy-MM-dd', '2014-11-24')] == GTDMapReader.parseShorthand(' { 14-11-24 }*a b c'))
        assert ([action: 'a b c', when: Date.parse('yyyy-MM-dd', '2014-11-24')] == GTDMapReader.parseShorthand('*a  {2014-11-24} b c'))
    }

    @Test
    void testParseShortSingleDelegate() {
        assert ([action: 'a b c', when: 'now', delegate: 'Joe'] == GTDMapReader.parseShorthand('*a b c {now} [Joe]'))
        assert ([action: 'a b c', when: 'now', delegate: 'Joe'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b c'))
        assert ([action: 'a b c', when: 'now', delegate: 'Joe'] == GTDMapReader.parseShorthand('*a  {now}[ Joe ] b c'))
    }

    @Test
    void testParseShortHandSingleContext() {
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home'] == GTDMapReader.parseShorthand('*a b c {now}@Home [Joe]'))
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b @Home c'))
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home'] == GTDMapReader.parseShorthand('@Home*a  {now}[ Joe ] b c'))
    }

    @Test
    void testParseShortHandSinglePriority() {
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home', priority: '2'] == GTDMapReader.parseShorthand('*a b c {now}@Home#2 [Joe]'))
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home', priority: '4'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b #4@Home c'))
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home', priority: '6'] == GTDMapReader.parseShorthand('#6 @Home*a  {now}[ Joe ] b c'))
    }

    @Test
    void testParseShortHandMultiContext() {
        assert ([action: 'a b c', when: 'now', delegate: 'John,Ringo,George', context: 'Home,Office'] == GTDMapReader.parseShorthand('*a b c {now}@Home,Office [John,Ringo,George]'))
        assert ([action: 'a b c', when: 'now', delegate: 'John,Ringo,George', context: 'Home,Barn,Office'] == GTDMapReader.parseShorthand(' [John][ Ringo ][ George]{ now }*a b @Home@Barn @Office c'))
        assert ([action: 'a b c', when: 'now', delegate: 'John,Ringo,George', context: 'Home,Office'] == GTDMapReader.parseShorthand('@Home[John]*a  {now}[ John ,Ringo] b c@Office[George]'))

    }

    @Test
    void testConvertShortHand() {
        Proxy.Node rootNode = ProxyFactory.createNode(new NodeModel(new MapModel()),new ScriptContext())
        rootNode.icons.add('aa')
        rootNode.text = 'aa'
        Proxy.Node child1 = rootNode.createChild()
        child1.text = 'bb'
        Proxy.Node child2 = rootNode.createChild()
        child2.text = 'cc'
        Proxy.Node child3 = rootNode.createChild()
        child3.text = 'dd'
        assert rootNode.text == 'aa'
        assert child1.text == 'bb'
        assert child2.text == 'cc'
        assert child3.text == 'dd'

        Proxy.Node configNode = rootNode.createChild()
        configNode.text = 'Config'
        List config = [
                [text: 'Icon: Project', icon: 'project'],
                [text: 'Icon: Next action', icon: 'action'],
                [text: 'Icon: Done', icon: 'done'],
                [text: 'Icon: Today', icon: 'today'],
                [text: 'Icon: @Home', icon: 'home'],
                [text: 'Icon: @Email', icon: 'email'],
        ]
        config.each {
            Proxy.Node n = configNode.createChild()
            n.text = it['text']
            n.icons.add(it['icon'])
        }
        GTDMapReader mapreader = GTDMapReader.instance
        assert mapreader != null
        mapreader.convertShorthand(rootNode)
        assert 'project' == mapreader.iconProject
        assert 'action' == mapreader.iconNextAction
        assert 'done' == mapreader.iconDone
        assert 'today' == mapreader.iconToday
        assert mapreader.contextIcons.containsKey('Home')
        assert mapreader.contextIcons.containsValue('home')
        assert mapreader.contextIcons.containsKey('Email')
        assert mapreader.contextIcons.containsValue('email')


        List testvalues =
                [
                        [orig: '*a b c', action: 'a b c'],
                        [orig: ' *a b c', action: 'a b c'],
                        [orig: ' * a b c', action: 'a b c'],
                        [orig: '*a  {now} b c', action: 'a b c', attr: [When: 'now']],
                        [orig: '*a  {2014-11-24} b c', action: 'a b c', attr: [When: Date.parse('yyyy-MM-dd', '2014-11-24')]],
                        [orig: '*a  {2014-11-24} [Joe]b c', action: 'a b c', attr: [When: Date.parse('yyyy-MM-dd', '2014-11-24'), Who: 'Joe']],
                        [orig: '*a  {2014-11-24} [Joe]b @Home c', action: 'a b c', attr: [When: Date.parse('yyyy-MM-dd', '2014-11-24'), Who: 'Joe', Where: 'Home'], icon: ['home']],
                        [orig: '*@Home[John]a @Email {now}[ John ,Ringo] b c@Office[George]', action: 'a b c', attr: [When: 'now', Who: 'John,Ringo,George', Where: 'Home,Email,Office'], icon: ['home', 'email']],
                        [orig: '*@Home[John]a @Email {now}[ John ,Ringo] @Email b c@Office[George]', action: 'a b c', attr: [When: 'now', Who: 'John,Ringo,George', Where: 'Home,Email,Office'], icon: ['home', 'email']],
                        [orig: '*Killer node <>', action: 'Killer node <>'],
                ]

        testvalues.each {
            Proxy.Node n = child1.createChild()
            n.text = it['orig']
            mapreader.convertShorthand(rootNode)
            assert n.text == it['action']
            it['attr'].each {
                key, value -> assert n.attributes.getFirst(key) == value
            }
            it['icon'].each {
                assert n.icons.contains(it)
            }
        }
    }

}
