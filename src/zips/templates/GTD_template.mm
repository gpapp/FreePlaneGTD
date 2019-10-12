<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="My tasks" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1569025373074">
<icon BUILTIN="mindmap"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#808080ff,#808080ff,#808080ff,#808080ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="Calibri" SIZE="10" BOLD="false" ITALIC="false"/>
<edge STYLE="bezier" WIDTH="thin"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
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
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
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
<hook NAME="AutomaticEdgeColor" COUNTER="8" RULE="ON_BRANCH_CREATION"/>
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
<node TEXT="=textUtils.getText(&apos;freeplaneGTD.config.archiveDirName&apos;)" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="left" ID="ID_1068479685" CREATED="1427225933330" MODIFIED="1453649700929">
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
<node TEXT="Config" LOCALIZED_STYLE_REF="styles.topic" FOLDED="true" POSITION="left" ID="ID_867421423" CREATED="1427226495651" MODIFIED="1569025346043">
<edge COLOR="#7c0000"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is an optional folder to store nodes which define how the Freeplane GTD+ plugin handles icons.
    </p>
    <ul>
      <li>
        <i>Icon: Project</i>&#160;&#8211; specifies the grouping node for actions
      </li>
      <li>
        <i>Icon: Next action</i>&#160;&#8211; specifies the individual actions
      </li>
      <li>
        <i>Icon: Today</i>&#160;&#8211; specifies the next actions (When property will be ignored on grouping)
      </li>
      <li>
        <i>Icon: Week</i>&#160;&#8211; specifies the tasks until the end of the week (will be sorted accordingly)
      </li>
      <li>
        <i>Icon: Done</i>&#160;- looks like a checkmark)&#8211; Once an item is completed it can be marked as done.
      </li>
      <li>
        <i>Icon: Cancel</i>&#160;&#8211; Once an item is cancelled it can be marked as cancelled.
      </li>
    </ul>
    <p>
      
    </p>
    <ul>
      <li>
        <i>Icon: @[CONTEXT]</i>&#160;&#160;&#160;- Icon to represent a context
      </li>
    </ul>
    <p>
      
    </p>
    <ul>
      <li>
        <i>Alias: @Context @ContextAlias</i>&#160;- Alias for a context
      </li>
      <li>
        <i>Alias: [sc] [shortcut]</i>&#160;- Alias for a person
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      The defined aliases will replace the text when node is parsed with the shorcuts or edited through the editor.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Icon: Project" ID="ID_1157697080" CREATED="1569024963288" MODIFIED="1569024979471">
<icon BUILTIN="list"/>
</node>
<node TEXT="Icon: Next Action" ID="ID_1013958613" CREATED="1569024883681" MODIFIED="1569024934988">
<icon BUILTIN="yes"/>
</node>
<node TEXT="Icon: Today" ID="ID_814374461" CREATED="1569024936433" MODIFIED="1569025053119">
<icon BUILTIN="bookmark"/>
</node>
<node TEXT="Icon: Week" ID="ID_488551912" CREATED="1569024947745" MODIFIED="1569024986145">
<icon BUILTIN="idea"/>
</node>
<node TEXT="Icon: Done" ID="ID_728586866" CREATED="1569024954920" MODIFIED="1569024989126">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="Icon: Cancel" ID="ID_1238753012" CREATED="1569024990296" MODIFIED="1569025068165">
<icon BUILTIN="button_cancel"/>
</node>
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
<node TEXT="=textUtils.getText(&apos;freeplaneGTD.config.reviewDirName&apos;)" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_117855996" CREATED="1427225917881" MODIFIED="1453649693945">
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
