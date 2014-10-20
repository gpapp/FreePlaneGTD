<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node LOCALIZED_TEXT="new_mindmap" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1283093380553"><hook NAME="MapStyle">
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
<hook NAME="AutomaticEdgeColor" COUNTER="6"/>
<node TEXT="Action tests" POSITION="right" ID="ID_1890009009" CREATED="1413667814847" MODIFIED="1413840466701">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      *a
    </p>
    <p>
      *a@b
    </p>
    <p>
      *a@b{v1.0}
    </p>
    <p>
      *a@b[me]{v1.0}
    </p>
    <p>
      *{v1.0}a
    </p>
    <p>
      *[me]{v1.0}a
    </p>
    <p>
      *@b[me]{v1.0}a
    </p>
    <p>
      *abc
    </p>
    <p>
      *abc@bde
    </p>
    <p>
      *abc@bde{v1.0}
    </p>
    <p>
      *abc@bde[me]{v1.0}
    </p>
    <p>
      * abc @bde [me] {v1.0}
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="*a" ID="ID_950991618" CREATED="1413839958293" MODIFIED="1413839958293"/>
<node TEXT="*a@b" ID="ID_1565576495" CREATED="1413839958295" MODIFIED="1413839991827"/>
<node TEXT="*a@b{v1.0}" ID="ID_1277023639" CREATED="1413839958296" MODIFIED="1413839990166"/>
<node TEXT="*a@b[me]{v1.0}" ID="ID_86267830" CREATED="1413839958298" MODIFIED="1413839988224"/>
<node TEXT="*{v1.0}a" ID="ID_175577920" CREATED="1413839958299" MODIFIED="1413839958299"/>
<node TEXT="*[me]{v1.0}a" ID="ID_1525654385" CREATED="1413839958300" MODIFIED="1413839958300"/>
<node TEXT="*@b[me]{v1.0}a" ID="ID_1936872034" CREATED="1413839958302" MODIFIED="1413839958302"/>
<node TEXT="*abc" ID="ID_1163258386" CREATED="1413839958306" MODIFIED="1413839958306"/>
<node TEXT="*abc@bde" ID="ID_1494452820" CREATED="1413839958307" MODIFIED="1413839984941"/>
<node TEXT="*abc@bde{v1.0}" ID="ID_1086645094" CREATED="1413839958309" MODIFIED="1413839982765"/>
<node TEXT="*abc@bde[me]{v1.0}" ID="ID_1449169181" CREATED="1413839958311" MODIFIED="1413839980105"/>
<node TEXT="* abc @bde [me] {v1.0}" ID="ID_591419351" CREATED="1413839958312" MODIFIED="1413839972030"/>
</node>
<node TEXT="Shorthand tests" POSITION="right" ID="ID_1488226184" CREATED="1413840469105" MODIFIED="1413840511178">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ? aa
    </p>
    <p>
      ?*aa
    </p>
    <p>
      ? * aa {10 9}
    </p>
  </body>
</html>
</richcontent>
<node TEXT="? aa" ID="ID_679181670" CREATED="1413840527302" MODIFIED="1413840527302"/>
<node TEXT="?*aa" ID="ID_1994160377" CREATED="1413840527302" MODIFIED="1413840527302"/>
<node TEXT="? * aa {10 9}" ID="ID_965612994" CREATED="1413840527338" MODIFIED="1413840527338"/>
</node>
<node TEXT="Date tests" POSITION="left" ID="ID_1944568774" CREATED="1413839100071" MODIFIED="1413839912092">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      * Parse normal {2014-10-05}
    </p>
    <p>
      * Parse normal {2014.10.05.}
    </p>
    <p>
      * Parse normal {2014.10.05}
    </p>
    <p>
      * Parse normal {05/10/2014}
    </p>
    <p>
      * Parse short {10 05}
    </p>
    <p>
      * Parse short {05/10}
    </p>
    <p>
      * Parse short {10.05}
    </p>
    <p>
      * Parse short {10.05.}
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="* Parse normal {2014-10-05}" ID="ID_1688946449" CREATED="1413839788216" MODIFIED="1413839788216"/>
<node TEXT="* Parse normal {2014.10.05.}" ID="ID_67657887" CREATED="1413839788216" MODIFIED="1413839788216"/>
<node TEXT="* Parse normal {2014.10.05}" ID="ID_661306974" CREATED="1413839788219" MODIFIED="1413839788219"/>
<node TEXT="* Parse normal {10/05/2014}" ID="ID_1370829400" CREATED="1413839788221" MODIFIED="1413839889403"/>
<node TEXT="* Parse short {10 05}" ID="ID_647889501" CREATED="1413839788223" MODIFIED="1413839788223"/>
<node TEXT="* Parse short {10/05}" ID="ID_445647609" CREATED="1413839788226" MODIFIED="1413839928996"/>
<node TEXT="* Parse short {10.05}" ID="ID_1346902296" CREATED="1413839788228" MODIFIED="1413839788228"/>
<node TEXT="* Parse short {10.05.}" ID="ID_216964866" CREATED="1413839788230" MODIFIED="1413839788230"/>
</node>
<node TEXT="Icon lookup" POSITION="left" ID="ID_1531552782" CREATED="1413841021577" MODIFIED="1413841028966">
<edge COLOR="#ffff00"/>
<node TEXT="= &quot;Icons: &quot; + node.icons.icons" ID="ID_968337881" CREATED="1413841030747" MODIFIED="1413841041673">
<icon BUILTIN="messagebox_warning"/>
</node>
<node TEXT="= &quot;Icons: &quot; + node.icons.icons" ID="ID_965338511" CREATED="1413841030747" MODIFIED="1413841065197">
<icon BUILTIN="clanbomber"/>
</node>
</node>
</node>
</map>
