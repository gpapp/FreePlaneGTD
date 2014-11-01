<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry FONT_SIZE="8"/>
<node TEXT="Freeplane GTD" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1413635195477"><hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="4"/>
<node TEXT="Administration" POSITION="left" ID="ID_424226512" CREATED="1412322328415" MODIFIED="1413635324311">
<icon BUILTIN="list"/>
<edge COLOR="#0000ff"/>
<node TEXT="Page for features planned for next release" ID="ID_518264125" CREATED="1412444227320" MODIFIED="1414798784389" VSHIFT="50">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="WordPress"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
<node TEXT="Announce plugin availability" ID="ID_1500090508" CREATED="1412322505424" MODIFIED="1414798784470">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="email"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
<node TEXT="Release page v1.0" ID="ID_1926303511" CREATED="1412322491868" MODIFIED="1414798784551">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="WordPress"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Release page v1.1" ID="ID_888899950" CREATED="1412322491868" MODIFIED="1414798784593">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="WordPress"/>
<attribute NAME="When" VALUE="v1.1"/>
</node>
</node>
<node TEXT="Config" POSITION="left" ID="ID_1683616886" CREATED="1412442290868" MODIFIED="1412442749954">
<edge COLOR="#ffff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      You can set up your icons as specified below.
    </p>
    <p>
      
    </p>
    <p>
      The examples are the default values, that are used when the icons are not otherwise specified.
    </p>
    <p>
      
    </p>
    <p>
      The configuration nodes can be placed anywhere in the map.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Icon: Project" ID="ID_868847204" CREATED="1412442368874" MODIFIED="1412442387680">
<icon BUILTIN="list"/>
</node>
<node TEXT="Icon: Next action" ID="ID_1578963095" CREATED="1412442389622" MODIFIED="1412442424997">
<icon BUILTIN="yes"/>
</node>
<node TEXT="Icon: Today" ID="ID_112477574" CREATED="1412442340273" MODIFIED="1412442355119">
<icon BUILTIN="bookmark"/>
</node>
<node TEXT="Icon: Done" ID="ID_349470145" CREATED="1412442302416" MODIFIED="1412442314458">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node TEXT="Features" POSITION="right" ID="ID_1859115734" CREATED="1412322157318" MODIFIED="1413635243906">
<icon BUILTIN="list"/>
<edge COLOR="#ff0000"/>
<node TEXT="UI experience" ID="ID_1229777349" CREATED="1413618360682" MODIFIED="1413633214518">
<icon BUILTIN="list"/>
<node TEXT="Map" ID="ID_347499073" CREATED="1413618419902" MODIFIED="1413618433636">
<node TEXT="Add action to parse shorhands" ID="ID_1157433072" CREATED="1412768944514" MODIFIED="1414544582744">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Don&apos;t allow multiple instances of decoration icons to come from shorthand" ID="ID_334479175" CREATED="1413475260651" MODIFIED="1414544582766">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The shorthand parsing can be redone on a node, by adding a * in the begining of the line.
    </p>
    <p>
      
    </p>
    <p>
      This is useful to add/update attributes when needed.
    </p>
    <p>
      
    </p>
    <p>
      The parsing should NOT erase the already existing attributes, but update them instead.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Re-parse shorthand for items with task icon (to update the attributes)" ID="ID_412919850" CREATED="1413617759413" MODIFIED="1414544582790">
<icon BUILTIN="yes"/>
<icon BUILTIN="help"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Add shortcut parser option to convert ? to marker" ID="ID_657496091" CREATED="1413794950783" MODIFIED="1414544582810">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Marker to scope" ID="ID_1632271861" CREATED="1412322213819" MODIFIED="1413619341680"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Allow definition of markers to be converted to scope and backwards.
    </p>
    <ul>
      <li>
        Look for scope marker definition nodes like <b>Icon: @Home</b>
      </li>
      <li>
        Update scope attribute from marker in nodes
      </li>
      <li>
        Add markers for scope from shorthands
      </li>
      <li>
        Add markers for scope from attibute
      </li>
      <li>
        Scope marker should take precedence.
      </li>
      <li>
        Only the first scope should be considered.
      </li>
      <li>
        The scope attribute should always be overwritten by the scope defined by the icon.
      </li>
      <li>
        The parser should issue a warning if any icon is reused in the config.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="Marker to scope configuration" ID="ID_1024363427" CREATED="1412322213819" MODIFIED="1414544582874">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Allow definition of markers to be converted to scope and backwards.
    </p>
    <ul>
      <li>
        Look for scope marker definition nodes like <b>Icon: @Home</b>
      </li>
      <li>
        The parser should issue a warning if any icon is reused in the config
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Marker to scope map parsing" ID="ID_1856466294" CREATED="1412322213819" MODIFIED="1414544582982">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Allow markers to be converted to scope and backwards.
    </p>
    <ul>
      <li>
        Update scope attribute from marker in nodes
      </li>
      <li>
        Add markers for scope from attibute

        <ul>
          <li>
            Only the first scope marker should be considered.
          </li>
          <li>
            The scope attribute should always be <b>overwritten</b>&#160;by the scope defined by the marker, not only on the initial parsing
          </li>
        </ul>
      </li>
      <li>
        <p>
          Add markers for scope from shorthands
        </p>
        <ul>
          <li>
            Scope marker should take precedence.
          </li>
        </ul>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Add editor form for creating, modifying actions" ID="ID_1606846197" CREATED="1412769115066" MODIFIED="1414544583006">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.2"/>
</node>
</node>
<node TEXT="Action view" ID="ID_100212872" CREATED="1413618434079" MODIFIED="1413618500167">
<node TEXT="Add preference to select default view" ID="ID_992161123" CREATED="1413201081977" MODIFIED="1414520983143">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Packaging"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Close window when selecting an item from the list" ID="ID_1447284219" CREATED="1413617558996" MODIFIED="1414520983163">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Rework ui to use groovy&apos;s SwingBuilder" ID="ID_1662989174" CREATED="1413475441440" MODIFIED="1414520997533">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Update copy to clipboard to support TXT/HTML exports" ID="ID_1773054557" CREATED="1414520129893" MODIFIED="1414520992053">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Scroll open panes up on the overview" ID="ID_138027227" CREATED="1412588960016" MODIFIED="1414536786519">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      http://www.coderanch.com/t/342584/GUI/java/JScrollPane-Set-Scroll-Position
    </p>
    <p>
      http://www.coderanch.com/t/336161/GUI/java/set-initial-position-vertical-scrollbar
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Add config parameter parsing to the map, to change the default view set in preferences" ID="ID_760673545" CREATED="1413618092101" MODIFIED="1414520983214">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      My maps are for different purposes, some are personal task management, some are for group task assingment, some for project task planning. This requires different default views.
    </p>
    <p>
      
    </p>
    <p>
      If there is a Config property to set the default view, like a node &quot;GTD: Default view&quot; this can be varying from map-to-map.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Add checkbox to mark an item completed to the list" ID="ID_252461090" CREATED="1413617605008" MODIFIED="1414520983271">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.1"/>
</node>
<node TEXT="Add popup for mouseover, to display node notes/node extensions for the actions" ID="ID_1282778473" CREATED="1412769283015" MODIFIED="1414520983293">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.1"/>
</node>
<node TEXT="Remove map links from clipboard HTML export" ID="ID_1319059003" CREATED="1414520946206" MODIFIED="1414520983413">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.1"/>
</node>
</node>
</node>
<node TEXT="Task management" ID="ID_1223056012" CREATED="1413618366915" MODIFIED="1413633214520">
<icon BUILTIN="list"/>
<node TEXT="Add preference to show/hide done items per default" ID="ID_831003287" CREATED="1413201048622" MODIFIED="1413237947693">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Packaging"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Multi-level projects" ID="ID_684898285" CREATED="1412322165283" MODIFIED="1413635367849">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Allow collecting the project hierarchy for the actions, and display them accordingly.
    </p>
    <p>
      
    </p>
    <p>
      eg. The done tasks in this file should be displayed for project &quot;Previous releases/v0.9&quot; instead of 'v0.9'
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Add priority handling to actions" ID="ID_1848651146" CREATED="1413619475951" MODIFIED="1413619776525">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.2"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Use the number icons to set the urgency of the tasks.
    </p>
    <p>
      Add a new tab to sort tasks by urgency dynamically.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Add completeness handling to actions" ID="ID_1398055650" CREATED="1413619600003" MODIFIED="1413619861067">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.2"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Enhance the done/undone state marking of the tasks with level of completeness.
    </p>
    <p>
      
    </p>
    <p>
      Use the task readyness icons to mark the status of the tasks
    </p>
    <p>
      
    </p>
    <p>
      Display a task state tab, only when any of the completeness icons are used.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Time management" ID="ID_1065985032" CREATED="1413618370803" MODIFIED="1413633214520">
<icon BUILTIN="list"/>
<node TEXT="Overdue handling" ID="ID_1374629210" CREATED="1412332185530" MODIFIED="1414544583036">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
</node>
<node TEXT="Scope management" ID="ID_1606059144" CREATED="1413618728883" MODIFIED="1413633214521">
<icon BUILTIN="list"/>
</node>
<node TEXT="Aspect management" ID="ID_1314956442" CREATED="1413619876781" MODIFIED="1413633214521">
<icon BUILTIN="list"/>
<node TEXT="Use the attributes to rotate the map around aspects" ID="ID_935562847" CREATED="1413619884444" MODIFIED="1414464380588">
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Idea"/>
<attribute NAME="When" VALUE="v2.0"/>
<attribute NAME="Who" VALUE="Kup&#xe1;s Tibor"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Turn the mindmap into a context map by rotating the tasks around the aspects (project, where, who, when).
    </p>
    <p>
      
    </p>
    <p>
      This requires multi level aspects to be available to be useful.
    </p>
    <p>
      
    </p>
    <p>
      <b>Rotate in place </b>
    </p>
    <p>
      Since not all tasks are in aspects this would require the
    </p>
    <ul>
      <li>
        action nodes to be detached from the parent
      </li>
      <li>
        store the parent node id in an attribute
      </li>
      <li>
        store the parent project (not the same as the parent project) in an attribute
      </li>
      <li>
        build a new structure in root to show the context
      </li>
      <li>
        store the current aspect somewhere in the map (root node attribute?)
      </li>
    </ul>
    <p>
      <b>Build a new map with the aspect only </b>
    </p>
    <p>
      Good for creating delagation lists.
    </p>
    <p>
      
    </p>
    <p>
      <b>Add a node with the copy of the rotated aspects&#160;to root, overwrite if exists</b>
    </p>
    <p>
      Useful for creating typed action lists
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Scrapped ideas" ID="ID_1278650076" CREATED="1413618698721" MODIFIED="1413633214521">
<icon BUILTIN="list"/>
<node TEXT="Add shortcuts for adding icons" ID="ID_898822197" CREATED="1413200978889" MODIFIED="1413619444351">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_cancel"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Packaging"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Set the icon default shorthand to Icon + A for actions and Icon + P for projects.
    </p>
    <p>
      
    </p>
    <p>
      These are my default settings and are quite useful.
    </p>
    <p>
      
    </p>
    <p>
      Scrapped, as this is not an important issue.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Multi-scope actions" ID="ID_1805653228" CREATED="1412322198260" MODIFIED="1413619424764">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_cancel"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Allow tasks to be in multiple scopes at once.
    </p>
    <p>
      
    </p>
    <p>
      I think it's against GTD principles, so this idea is scrapped for the time being.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Use stylesheets to render the viewers" ID="ID_1834974196" CREATED="1412600493524" MODIFIED="1413619411710">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_cancel"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.2"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      http://alvinalexander.com/blog/post/jfc-swing/how-create-simple-swing-html-viewer-browser-java
    </p>
    <p>
      
    </p>
    <p>
      http://www.javaworld.com/article/2076334/java-se/start-customizing-swing-s-editor-pane----patch-the-swing-htmleditorkit.html
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Toggle shorthand/action format on parse shorthand, and only apply to currently selected node" ID="ID_365112581" CREATED="1413617811238" MODIFIED="1414429949856">
<icon BUILTIN="yes"/>
<icon BUILTIN="help"/>
<icon BUILTIN="button_cancel"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
</node>
</node>
<node TEXT="Previous releases" POSITION="right" ID="ID_563183329" CREATED="1412769003141" MODIFIED="1413635156569">
<edge COLOR="#00007c"/>
<node TEXT="v0.9" ID="ID_1487316277" CREATED="1412769048518" MODIFIED="1413635155020">
<node TEXT="Features" ID="ID_1984572841" CREATED="1413635164820" MODIFIED="1413635169920">
<icon BUILTIN="list"/>
<node TEXT="UI experience" ID="ID_222840344" CREATED="1413635031140" MODIFIED="1413635161119">
<icon BUILTIN="list"/>
<node TEXT="Map" ID="ID_420079780" CREATED="1413635085538" MODIFIED="1413635087975">
<node TEXT="Date to format" ID="ID_655452047" CREATED="1412322237091" MODIFIED="1412769016104">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v0.9"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Allow parsing dates to Date, if successful assign Date object to attribute.
    </p>
    <p>
      Truncate dates for aggregation.
    </p>
    <p>
      Allow non-date specific whens.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Marker to done" ID="ID_518957387" CREATED="1412322229804" MODIFIED="1413617740016">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
</node>
<node TEXT="Action view" ID="ID_1040844796" CREATED="1413635074803" MODIFIED="1413635090654">
<node TEXT="Add default shortcut (Ctrl+H)" ID="ID_1205718068" CREATED="1412441691419" MODIFIED="1412769016108">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Packaging"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
<node TEXT="Increase default size of the GTD pane" ID="ID_202339886" CREATED="1412606744935" MODIFIED="1412769016131">
<icon BUILTIN="button_ok"/>
<icon BUILTIN="yes"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
</node>
</node>
</node>
<node TEXT="Administration" ID="ID_414647314" CREATED="1413635112144" MODIFIED="1413635191869">
<icon BUILTIN="list"/>
<node TEXT="Update package contents" ID="ID_1128364129" CREATED="1412442218528" MODIFIED="1412769016113">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Packaging"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
<node TEXT="GIT initialization" ID="ID_831667569" CREATED="1412322339486" MODIFIED="1412769023921">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Browser"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
<node TEXT="Project page" ID="ID_916926404" CREATED="1412322349228" MODIFIED="1412769023925">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="WordPress"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
<node TEXT="Release page v0.9" ID="ID_1522073442" CREATED="1412322491868" MODIFIED="1412769023939">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="WordPress"/>
<attribute NAME="When" VALUE="v0.9"/>
</node>
</node>
</node>
</node>
</node>
</map>
