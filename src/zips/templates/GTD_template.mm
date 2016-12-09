<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="My tasks" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1453649765746">
<icon BUILTIN="mindmap"/>
<hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="Calibri" SIZE="10" BOLD="false" ITALIC="false"/>
<edge STYLE="bezier" WIDTH="thin"/>
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
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" BACKGROUND_COLOR="#fefc74">
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
<hook NAME="AutomaticEdgeColor" COUNTER="7"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Hover the mouse over the items for help.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Someday-Maybe" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="left" ID="ID_1137711775" CREATED="1427225928280" MODIFIED="1453649706521">
<icon BUILTIN="calendar"/>
<edge COLOR="#ff00ff"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is a recommended folder in the GTD method, that represents tasks you postpone indefinetly.
    </p>
    <p>
      
    </p>
    <p>
      You can move the tasks, projects here using the mindmap shortcuts, or with drag and drop.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="=textUtils.getText('freeplaneGTD.config.archiveDirName')" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="left" ID="ID_1068479685" CREATED="1427225933330" MODIFIED="1453649700929">
<icon BUILTIN="folder"/>
<edge COLOR="#00ffff"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This folder contains the items you want to look at later.
    </p>
    <p>
      
    </p>
    <p>
      The completed tasks can usually be removed. If you want to keep track of items, that were completed even after you already reviewed them, you can place them here.
    </p>
    <p>
      
    </p>
    <p>
      You can use the shortcut F6 to move tasks and their respective projects here.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Config" LOCALIZED_STYLE_REF="styles.topic" POSITION="left" ID="ID_867421423" CREATED="1427226495651" MODIFIED="1453650055976">
<edge COLOR="#7c0000"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is an optional folder to store nodes which define how the Freeplane GTD+ plugin handles icons.
    </p>
    <p>
      
    </p>
    <p>
      Icon: Project&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Icon to represent a project
    </p>
    <p>
      Icon: Task&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Icon to represent a task
    </p>
    <p>
      Icon: Done&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Icon to represent a completed task
    </p>
    <p>
      Icon: Next action&#160;&#160;&#160;&#160;&#160;- Icon to represent an urgent task
    </p>
    <p>
      
    </p>
    <p>
      Icon: @<i>[CONTEXT]</i>&#160;&#160;&#160;- Icon to represent a context
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Icon: @Computer" ID="ID_1821210832" CREATED="1427226511560" MODIFIED="1427226607171">
<icon BUILTIN="male1"/>
</node>
<node TEXT="Icon: @email" ID="ID_368331860" CREATED="1427226532275" MODIFIED="1427226613079">
<icon BUILTIN="Mail"/>
</node>
<node TEXT="Icon: @Meeting" ID="ID_1136940334" CREATED="1427226567638" MODIFIED="1427226653217">
<icon BUILTIN="group"/>
</node>
<node TEXT="Icon: @Home" ID="ID_635308207" CREATED="1427226636588" MODIFIED="1427226659054">
<icon BUILTIN="gohome"/>
</node>
</node>
<node TEXT="Inbox" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_1133937836" CREATED="1427225825443" MODIFIED="1453649696945">
<icon BUILTIN="edit"/>
<edge COLOR="#ff0000"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Inbox is where your ideas and notes go.&#160;&#160;You can use the shortcut format to define tasks on the go.
    </p>
    <p>
      
    </p>
    <p>
      Inbox can contain new, unclarified tasks, that you take down as soon as they occur. This is the first placeholder in the GTD process.
    </p>
    <p>
      
    </p>
    <p>
      You can use the mindmap shortcuts to move the items from here to it's respective folder.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Projects" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_1256051703" CREATED="1427225914994" MODIFIED="1453649695121">
<icon BUILTIN="desktop_new"/>
<edge COLOR="#ffff00"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Inbox contains your various groups of activities. Projects can be nested, and structured. FreeplaneGTD considers anything a project that has the respective configuration associated with it.
    </p>
    <p>
      
    </p>
    <p>
      Once you clarify an item in your inbox, you should place it in a folder under the projects.
    </p>
    <p>
      
    </p>
    <p>
      You can move around your tasks using the mindmap shorcuts.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="=textUtils.getText('freeplaneGTD.config.reviewDirName')" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_117855996" CREATED="1427225917881" MODIFIED="1453649693945">
<icon BUILTIN="revision"/>
<edge COLOR="#00ff00"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This folder should contain the items you completed and want to review later.
    </p>
    <p>
      
    </p>
    <p>
      Reviews are essential for Getting Things done, as they can provide retrospective to the completed tasks.
    </p>
    <p>
      
    </p>
    <p>
      You can use the shortcut F5 to move tasks along with their project structure here for review.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</map>
