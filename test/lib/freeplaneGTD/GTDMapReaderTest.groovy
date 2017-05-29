package freeplaneGTD

import com.thoughtworks.xstream.core.util.ArrayIterator
import freeeplaneHarness.MyNode
import org.freeplane.core.ui.LengthUnits
import org.freeplane.core.util.Quantity
import org.freeplane.features.filter.condition.ICondition
import org.freeplane.plugin.script.proxy.Convertible
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.Proxy.Attributes
import org.freeplane.plugin.script.proxy.Proxy.Cloud
import org.freeplane.plugin.script.proxy.Proxy.Connector
import org.freeplane.plugin.script.proxy.Proxy.ExternalObject
import org.freeplane.plugin.script.proxy.Proxy.Link
import org.freeplane.plugin.script.proxy.Proxy.Map
import org.freeplane.plugin.script.proxy.Proxy.Node
import org.freeplane.plugin.script.proxy.Proxy.NodeRO
import org.freeplane.plugin.script.proxy.Proxy.NodeStyle
import org.freeplane.plugin.script.proxy.Proxy.Reminder
import org.junit.Test

import java.util.Map.Entry

class GTDMapReaderTest {

    @Test
    public void testParseShortHandSimple() {
        assert ([action: 'a b c'] == GTDMapReader.parseShorthand('*a b c'));
        assert ([action: 'a b c'] == GTDMapReader.parseShorthand(' *a b c'));
        assert ([action: 'a b c'] == GTDMapReader.parseShorthand(' * a b c'));
    }

    @Test
    public void testParseShortHandNow() {
        assert ([action: 'a b c', when: 'now'] == GTDMapReader.parseShorthand('*a b c {now}'));
        assert ([action: 'a b c', when: 'now'] == GTDMapReader.parseShorthand(' { now }*a b c'));
        assert ([action: 'a b c', when: 'now'] == GTDMapReader.parseShorthand('*a  {now} b c'));
    }

    @Test
    public void testParseShortHandDate() {
        assert ([action: 'a b c', when: Date.parse('yyyy-MM-dd', '2003-01-02')] == GTDMapReader.parseShorthand('*a b c {1/2/3}'));
        assert ([action: 'a b c', when: Date.parse('yyyy-MM-dd', '2014-11-24')] == GTDMapReader.parseShorthand(' { 14-11-24 }*a b c'));
        assert ([action: 'a b c', when: Date.parse('yyyy-MM-dd', '2014-11-24')] == GTDMapReader.parseShorthand('*a  {2014-11-24} b c'));
    }

    @Test
    public void testParseShortSingleDelegate() {
        assert ([action: 'a b c', when: 'now', delegate: 'Joe'] == GTDMapReader.parseShorthand('*a b c {now} [Joe]'));
        assert ([action: 'a b c', when: 'now', delegate: 'Joe'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b c'));
        assert ([action: 'a b c', when: 'now', delegate: 'Joe'] == GTDMapReader.parseShorthand('*a  {now}[ Joe ] b c'));
    }

    @Test
    public void testParseShortHandSingleContext() {
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home'] == GTDMapReader.parseShorthand('*a b c {now}@Home [Joe]'));
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b @Home c'));
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home'] == GTDMapReader.parseShorthand('@Home*a  {now}[ Joe ] b c'));
    }

    @Test
    public void testParseShortHandSinglePriority() {
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home', priority: '2'] == GTDMapReader.parseShorthand('*a b c {now}@Home#2 [Joe]'));
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home', priority: '4'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b #4@Home c'));
        assert ([action: 'a b c', when: 'now', delegate: 'Joe', context: 'Home', priority: '6'] == GTDMapReader.parseShorthand('#6 @Home*a  {now}[ Joe ] b c'));
    }

    @Test
    public void testParseShortHandMultiContext() {
        assert ([action: 'a b c', when: 'now', delegate: 'John,Ringo,George', context: 'Home,Office'] == GTDMapReader.parseShorthand('*a b c {now}@Home,Office [John,Ringo,George]'));
        assert ([action: 'a b c', when: 'now', delegate: 'John,Ringo,George', context: 'Home,Barn,Office'] == GTDMapReader.parseShorthand(' [John][ Ringo ][ George]{ now }*a b @Home@Barn @Office c'));
        assert ([action: 'a b c', when: 'now', delegate: 'John,Ringo,George', context: 'Home,Office'] == GTDMapReader.parseShorthand('@Home[John]*a  {now}[ John ,Ringo] b c@Office[George]'));

    }

    @Test
    public void testConvertShortHand() {
        MyNode rootNode = new MyNode()
        rootNode.icons.add('aa')
        rootNode.text = 'aa'
        MyNode child1 = rootNode.createChild();
        child1.text = 'bb'
        MyNode child2 = rootNode.createChild();
        child2.text = 'cc'
        MyNode child3 = rootNode.createChild();
        child3.text = 'dd'
        assert rootNode.text == 'aa'
        assert child1.text == 'bb'
        assert child2.text == 'cc'
        assert child3.text == 'dd'

        MyNode configNode = rootNode.createChild();
        configNode.text = 'Config'
        List config = [
                [text: 'Icon: Project', icon: 'project'],
                [text: 'Icon: Next action', icon: 'action'],
                [text: 'Icon: Done', icon: 'done'],
                [text: 'Icon: Today', icon: 'today'],
                [text: 'Icon: @Home', icon: 'home'],
                [text: 'Icon: @Email', icon: 'email'],
        ];
        config.each {
            MyNode n = configNode.createChild()
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
            MyNode n = child1.createChild()
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
