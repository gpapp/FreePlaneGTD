package freeplaneGTD;

import static org.junit.Assert.*
import groovy.lang.Closure;

import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import org.freeplane.features.filter.condition.ICondition
import org.freeplane.plugin.script.proxy.Convertible
import org.freeplane.plugin.script.proxy.Proxy
import org.freeplane.plugin.script.proxy.Proxy.Attributes
import org.freeplane.plugin.script.proxy.Proxy.Cloud
import org.freeplane.plugin.script.proxy.Proxy.Connector
import org.freeplane.plugin.script.proxy.Proxy.ExternalObject
import org.freeplane.plugin.script.proxy.Proxy.Icons
import org.freeplane.plugin.script.proxy.Proxy.Link
import org.freeplane.plugin.script.proxy.Proxy.Map
import org.freeplane.plugin.script.proxy.Proxy.Node
import org.freeplane.plugin.script.proxy.Proxy.NodeRO
import org.freeplane.plugin.script.proxy.Proxy.NodeStyle
import org.freeplane.plugin.script.proxy.Proxy.Reminder
import org.junit.Test


class MyAttributes implements Proxy.Attributes {
	java.util.Map<String,Object> attributes = [:]
	
	@Override
	public int findAttribute(String arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int findFirst(String arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<? extends Convertible> findValues(Closure<Boolean> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object get(String arg0) {
		return attributes[arg0];
	}

	@Override
	public Object get(int arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> getAll(String arg0) {
		return attributes.values();
	}

	@Override
	public List<String> getAttributeNames() {
		return attributes.keySet()
	}

	@Override
	public Object getFirst(String arg0) {
		return attributes.get(arg0);
	}

	@Override
	public String getKey(int arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public java.util.Map<String, Object> getMap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> getNames() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<? extends Convertible> getValues() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isEmpty() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int size() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void add(String arg0, Object arg1) {
		attributes.put(arg0, arg1)		
	}

	@Override
	public void clear() {
		attributes.clear()		
	}

	@Override
	public Iterator<Entry<String, Object>> iterator() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean remove(String arg0) {
		return attributes.remove(arg0);
	}

	@Override
	public void remove(int arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean removeAll(String arg0) {
		return attributes.remove(arg0);
	}

	@Override
	public void set(int arg0, Object arg1) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void set(String arg0, Object arg1) {
		attributes.put(arg0,arg1);
	}

	@Override
	public void set(int arg0, String arg1, Object arg2) {
		attributes.put(arg0,arg1);
	}	
}

class MyIcons implements Proxy.Icons {
	List icons = []
	
	@Override
	public boolean contains(String arg0) {
		return icons.contains(arg0)
	}

	@Override
	public String getAt(int arg0) {
		return icons[arg0]
	}

	@Override
	public String getFirst() {
		return icons[0]
	}

	@Override
	public List<String> getIcons() {
		return icons
	}

	@Override
	public List<URL> getUrls() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterator<String> iterator() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int size() {
		return icons.size()
	}

	@Override
	public void add(String arg0) {
		icons.add(arg0)
	}

	@Override
	public void addIcon(String arg0) {
		icons.add(arg0)
	}

	@Override
	public void clear() {
		icons.clear()
	}

	@Override
	public boolean remove(int arg0) {
		icons.remove(arg0)
	}

	@Override
	public boolean remove(String arg0) {
		return icons.remove(arg0)
	}

	@Override
	public boolean removeIcon(String arg0) {
		return icons.remove(arg0)
	}	
}

class MyNode implements Proxy.Node {
	private MyNode parent
	private List children = []

	private String text
	private String id = 'unimplemented'
	private MyIcons myIcons = new MyIcons()
	private Proxy.Attributes attributes = new MyAttributes()

	@Override
	public List<Node> find(ICondition arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Node> find(Closure<Boolean> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Node> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Node> findAllDepthFirst() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Convertible getAt(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Attributes getAttributes() {
		return attributes
	}

	@Override
	public byte[] getBinary() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getChildPosition(Node arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Node> getChildren() {
		return children;
	}

	@Override
	public Cloud getCloud() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<Connector> getConnectorsIn() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<Connector> getConnectorsOut() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Date getCreatedAt() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Convertible getDetails() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getDetailsText() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getDisplayedText() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ExternalObject getExternalObject() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getFormat() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean getHideDetails() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getHorizontalShift() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MyIcons getIcons() {
		return myIcons;
	}

	@Override
	public String getId() {
		return id;
	}

	@Override
	public Date getLastModifiedAt() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Link getLink() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map getMap() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getMinimalDistanceBetweenChildren() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Node getNext() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getNodeID() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getNodeLevel(boolean arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Convertible getNote() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getNoteText() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getObject() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Node getParent() {
		return parent;
	}

	@Override
	public Node getParentNode() {
		return parent;
	}

	@Override
	public List<Node> getPathToRoot() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPlainText() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPlainTextContent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Node getPrevious() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Reminder getReminder() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getShortText() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NodeStyle getStyle() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getText() {
		return text
	}

	@Override
	public Convertible getTo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getTransformedText() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Convertible getValue() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getVerticalShift() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean hasStyle(String arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isDescendantOf(Node arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isFolded() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isFree() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isLeaf() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isLeft() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isMinimized() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isRoot() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isVisible() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Connector addConnectorTo(Node arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Connector addConnectorTo(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Node appendBranch(NodeRO arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Node appendChild(NodeRO arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Node createChild() {
		MyNode newNode = new MyNode()
		children.add(newNode)
		newNode.parent=this		
		return newNode
	}

	@Override
	public Node createChild(Object arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Node createChild(int arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void decrypt(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void encrypt(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean hasEncryption() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEncrypted() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void moveTo(Node arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void moveTo(Node arg0, int arg1) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Object putAt(String arg0, Object arg1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeConnector(Connector arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeEncryption(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setAttributes(java.util.Map<String, Object> arg0) {
		arg0.each {
			key, value ->
			attributes.set(key, value)
		}
		
	}

	@Override
	public void setBinary(byte[] arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setCreatedAt(Date arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setDateTime(Date arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setDetails(Object arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setDetailsText(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setFolded(boolean arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setFormat(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setFree(boolean arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setHideDetails(boolean arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setHorizontalShift(int arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setLastModifiedAt(Date arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setLeft(boolean arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setMinimalDistanceBetweenChildren(int arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setMinimized(boolean arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setNote(Object arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setNoteText(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setObject(Object arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setText(Object arg0) {
		text=arg0
	}

	@Override
	public void setVerticalShift(int arg0) {
		// TODO Auto-generated method stub
		
	}

}

class GTDMapReaderTest {

	@Test
	public void testParseShortHand() {
		assert ( [action:'a b c'] == GTDMapReader.parseShorthand('*a b c'));
		assert ( [action:'a b c'] == GTDMapReader.parseShorthand(' *a b c'));
		assert ( [action:'a b c'] == GTDMapReader.parseShorthand(' * a b c'));

		assert ( [action:'a b c', when:'now'] == GTDMapReader.parseShorthand('*a b c {now}'));
		assert ( [action:'a b c', when:'now'] == GTDMapReader.parseShorthand(' { now }*a b c'));
		assert ( [action:'a b c', when:'now'] == GTDMapReader.parseShorthand('*a  {now} b c'));

		assert ( [action:'a b c', when:Date.parse('yyyy-MM-dd','2003-01-02')] == GTDMapReader.parseShorthand('*a b c {1/2/3}'));
		assert ( [action:'a b c', when:Date.parse('yyyy-MM-dd','2014-11-24')] == GTDMapReader.parseShorthand(' { 14-11-24 }*a b c'));
		assert ( [action:'a b c', when:Date.parse('yyyy-MM-dd','2014-11-24')] == GTDMapReader.parseShorthand('*a  {2014-11-24} b c'));

		assert ( [action:'a b c', when:'now', delegate:'Joe'] == GTDMapReader.parseShorthand('*a b c {now} [Joe]'));
		assert ( [action:'a b c', when:'now', delegate:'Joe'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b c'));
		assert ( [action:'a b c', when:'now', delegate:'Joe'] == GTDMapReader.parseShorthand('*a  {now}[ Joe ] b c'));

		assert ( [action:'a b c', when:'now', delegate:'Joe', context:'Home'] == GTDMapReader.parseShorthand('*a b c {now}@Home [Joe]'));
		assert ( [action:'a b c', when:'now', delegate:'Joe', context:'Home'] == GTDMapReader.parseShorthand(' [Joe]{ now }*a b @Home c'));
		assert ( [action:'a b c', when:'now', delegate:'Joe', context:'Home'] == GTDMapReader.parseShorthand('@Home*a  {now}[ Joe ] b c'));
	}
	
	@Test 
	public void testConvertShortHand () {
		MyNode rootNode = new MyNode()
		rootNode.icons.add('aa')
		rootNode.text='aa'
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
			[text:'Icon: Project', icon:'project'],
			[text:'Icon: Next action', icon:'action'],
			[text:'Icon: Done', icon:'done'],
			[text:'Icon: Today', icon:'today'],
			[text:'Icon: @Home', icon:'home'],
		];
		config.each {
			MyNode n = configNode.createChild()
			n.text=it['text']
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
		
		
		List testvalues =
		[
			[orig: '*a b c', action:'a b c'], 
			[orig: ' *a b c', action:'a b c'], 
			[orig: ' * a b c', action:'a b c'], 
			[orig: '*a  {now} b c', action:'a b c', attr:[When:'now']], 
			[orig: '*a  {2014-11-24} b c', action:'a b c', attr:[When:Date.parse('yyyy-MM-dd','2014-11-24')]], 
			[orig: '*a  {2014-11-24} [Joe]b c', action:'a b c', attr:[When:Date.parse('yyyy-MM-dd','2014-11-24'),Who:'Joe']], 
			[orig: '*a  {2014-11-24} [Joe]b @Home c', action:'a b c', attr:[When:Date.parse('yyyy-MM-dd','2014-11-24'),Who:'Joe',Where:'Home'], icon:['home']], 
		]
		
		testvalues.each {
			MyNode n = child1.createChild()
			n.text = it['orig']
			mapreader.convertShorthand(rootNode)
			assert n.text == it['action']
			it['attr'].each {
				key, value -> assert n.attributes.getFirst(key)==value
			}
			it['icon'].each {
				assert n.icons.contains(it)
			}
		}
	}
	
}
