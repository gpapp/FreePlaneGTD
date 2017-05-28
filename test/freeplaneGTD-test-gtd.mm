<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node LOCALIZED_TEXT="new_mindmap" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1283093380553"><hook NAME="MapStyle">
    <properties fit_to_viewport="false;" show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="9" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Action tests" FOLDED="true" POSITION="right" ID="ID_1890009009" CREATED="1413667814847" MODIFIED="1413840466701">
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
<node TEXT="*a @b @c@d @EEE" ID="ID_1565576495" CREATED="1413839958295" MODIFIED="1425054070223"/>
<node TEXT="*a@b{v1.0}" ID="ID_1277023639" CREATED="1413839958296" MODIFIED="1413839990166"/>
<node TEXT="*a@b[me,john, paul , george, ringo]{v1.0}" ID="ID_86267830" CREATED="1413839958298" MODIFIED="1425067764484"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Here is a long stuff
    </p>
    <p>
      ...
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      about long stuff
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="*{v1.0}a" ID="ID_175577920" CREATED="1413839958299" MODIFIED="1413839958299"/>
<node TEXT="*[me]{v1.0}a" ID="ID_1525654385" CREATED="1413839958300" MODIFIED="1413839958300"/>
<node TEXT="*@b[me]{v1.0}a" ID="ID_1936872034" CREATED="1413839958302" MODIFIED="1413839958302"/>
<node TEXT="*abc" ID="ID_1163258386" CREATED="1413839958306" MODIFIED="1413839958306"/>
<node TEXT="*abc@bde" ID="ID_1494452820" CREATED="1413839958307" MODIFIED="1413839984941"/>
<node TEXT="*abc@bde{v1.0}" ID="ID_1086645094" CREATED="1413839958309" MODIFIED="1413839982765"/>
<node TEXT="*abc@bde[me]{v1.0}" ID="ID_1449169181" CREATED="1413839958311" MODIFIED="1413839980105"/>
<node TEXT="* abc @bde [me] {v1.0}" ID="ID_591419351" CREATED="1413839958312" MODIFIED="1413839972030"/>
<node TEXT="* KILLER &lt;&gt;" ID="ID_1764118338" CREATED="1425073942429" MODIFIED="1425073952727"/>
</node>
<node TEXT="Shorthand tests" FOLDED="true" POSITION="right" ID="ID_1488226184" CREATED="1413840469105" MODIFIED="1413840511178">
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
<node TEXT="? * aa {10 9}" ID="ID_965612994" CREATED="1413840527338" MODIFIED="1414803712429">
<attribute NAME="dateClass" VALUE="= node.attributes[&apos;When&apos;].class"/>
</node>
<node TEXT="* aa #3" ID="ID_743874059" CREATED="1421399779261" MODIFIED="1421399790869"/>
<node TEXT="* #43 dodo" ID="ID_973470716" CREATED="1421399792202" MODIFIED="1421399807938"/>
<node TEXT="* #5 nah" ID="ID_211000701" CREATED="1421399809202" MODIFIED="1421403498651">
<attribute_layout VALUE_WIDTH="326.2499902769926 pt"/>
<attribute NAME="i" VALUE="=(node.text.matches(&apos;#\\d&apos;)"/>
<attribute NAME="j" VALUE="=node.text"/>
</node>
</node>
<node TEXT="Context icon tests" FOLDED="true" POSITION="right" ID="ID_596843020" CREATED="1414538178214" MODIFIED="1414538187291">
<edge COLOR="#7c0000"/>
<node TEXT="* doit @Home" ID="ID_1683724110" CREATED="1414538189836" MODIFIED="1414538207409"/>
<node TEXT="doit" ID="ID_1820217533" CREATED="1414538208273" MODIFIED="1414538278587">
<icon BUILTIN="gohome"/>
<icon BUILTIN="help"/>
<icon BUILTIN="yes"/>
</node>
<node TEXT="" FOLDED="true" ID="ID_394864049" CREATED="1414538256765" MODIFIED="1414538264744">
<icon BUILTIN="button_cancel"/>
<node TEXT="doit" ID="ID_787199979" CREATED="1414538208273" MODIFIED="1414538229521">
<icon BUILTIN="gohome"/>
</node>
<node TEXT="doit" ID="ID_355625033" CREATED="1414538208273" MODIFIED="1414538246664">
<icon BUILTIN="gohome"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node TEXT="Priority icon tests" FOLDED="true" POSITION="right" ID="ID_1127701216" CREATED="1421401059533" MODIFIED="1421401066512">
<edge COLOR="#007c00"/>
<node TEXT="ny&#xfa;l" ID="ID_7975647" CREATED="1421400996628" MODIFIED="1421401036596">
<icon BUILTIN="full-1"/>
<icon BUILTIN="yes"/>
</node>
<node TEXT="" FOLDED="true" ID="ID_790305926" CREATED="1414538256765" MODIFIED="1414538264744">
<icon BUILTIN="button_cancel"/>
<node TEXT="ny&#xfa;l" ID="ID_867782640" CREATED="1421400996628" MODIFIED="1421401053162">
<icon BUILTIN="full-1"/>
</node>
</node>
<node TEXT="ny&#xfa;l" ID="ID_928488610" CREATED="1421400996628" MODIFIED="1425007767000">
<icon BUILTIN="full-1"/>
<icon BUILTIN="yes"/>
<icon BUILTIN="full-3"/>
</node>
<node TEXT="ny&#xfa;l" ID="ID_1214747762" CREATED="1421400996628" MODIFIED="1425007782626">
<icon BUILTIN="full-1"/>
<icon BUILTIN="yes"/>
<icon BUILTIN="full-6"/>
</node>
<node TEXT="ny&#xfa;l" ID="ID_1692722207" CREATED="1421400996628" MODIFIED="1425007786820">
<icon BUILTIN="full-1"/>
<icon BUILTIN="yes"/>
<icon BUILTIN="full-2"/>
</node>
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
<node TEXT="* Parse normal {2014.10.06.}" ID="ID_67657887" CREATED="1413839788216" MODIFIED="1425007694260"/>
<node TEXT="* Parse normal {2014.10.07}" ID="ID_661306974" CREATED="1413839788219" MODIFIED="1425007699380"/>
<node TEXT="* Parse normal {10/08/2014}" ID="ID_1370829400" CREATED="1413839788221" MODIFIED="1425007714336"/>
<node TEXT="* Parse short {10 09}" ID="ID_647889501" CREATED="1413839788223" MODIFIED="1425007723685"/>
<node TEXT="* Parse short {10/11}" ID="ID_445647609" CREATED="1413839788226" MODIFIED="1425007730756"/>
<node TEXT="* Parse short {10.12}" ID="ID_1346902296" CREATED="1413839788228" MODIFIED="1425007736038"/>
<node TEXT="* Parse short {10.13.}" ID="ID_216964866" CREATED="1413839788230" MODIFIED="1425007740912"/>
<node TEXT="* Parse unknown {someday}" ID="ID_1423365175" CREATED="1480975832304" MODIFIED="1480975848005"/>
</node>
<node TEXT="Icon lookup" FOLDED="true" POSITION="left" ID="ID_1531552782" CREATED="1413841021577" MODIFIED="1413841028966">
<edge COLOR="#ffff00"/>
<node TEXT="= &quot;Icons: &quot; + node.icons.icons" ID="ID_968337881" CREATED="1413841030747" MODIFIED="1413841041673">
<icon BUILTIN="messagebox_warning"/>
</node>
<node TEXT="= &quot;Icons: &quot; + node.icons.icons" ID="ID_965338511" CREATED="1413841030747" MODIFIED="1413841065197">
<icon BUILTIN="clanbomber"/>
</node>
</node>
<node TEXT="Config" FOLDED="true" POSITION="left" ID="ID_1683616886" CREATED="1412442290868" MODIFIED="1412442749954">
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
<node TEXT="Icon: @Home" ID="ID_1284521253" CREATED="1414538159916" MODIFIED="1414538172358">
<icon BUILTIN="gohome"/>
</node>
<node TEXT="Icon: @bde" ID="ID_1962555405" CREATED="1414539088151" MODIFIED="1414539102638">
<icon BUILTIN="launch"/>
</node>
<node TEXT="GTD View: Who" ID="ID_1343410379" CREATED="1414798826010" MODIFIED="1414798869909"/>
<node TEXT="Icon: @ShouldFail" ID="ID_507523636" CREATED="1421399720909" MODIFIED="1421400499163"/>
<node TEXT="Icon: b" ID="ID_78834689" CREATED="1425334301550" MODIFIED="1425334330878">
<icon BUILTIN="ksmiletris"/>
</node>
<node TEXT="Icon: c" ID="ID_1527819302" CREATED="1425334301550" MODIFIED="1425334335794">
<icon BUILTIN="smiley-neutral"/>
</node>
<node TEXT="Icon: d" ID="ID_359275779" CREATED="1425334301550" MODIFIED="1425334353719">
<icon BUILTIN="smily_bad"/>
</node>
</node>
</node>
</map>
