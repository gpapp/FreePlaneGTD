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
<node TEXT="Task" POSITION="right" ID="ID_381795879" CREATED="1453635231243" MODIFIED="1453645202338">
<icon BUILTIN="yes"/>
<edge COLOR="#0000ff"/>
</node>
<node TEXT="Context 1" POSITION="right" ID="ID_355773797" CREATED="1453645738720" MODIFIED="1453645743011">
<edge COLOR="#007c00"/>
<node TEXT="Project 1" ID="ID_486093134" CREATED="1453635273577" MODIFIED="1453645738732">
<icon BUILTIN="list"/>
<node TEXT="Project 1.1" ID="ID_103295713" CREATED="1453644897919" MODIFIED="1453644917151">
<icon BUILTIN="list"/>
<node TEXT="Undone task in project 1.1" ID="ID_1642180583" CREATED="1453635293284" MODIFIED="1453645243999">
<icon BUILTIN="yes"/>
</node>
<node TEXT="Done task in project 1.1" ID="ID_1947655133" CREATED="1453635293284" MODIFIED="1453646909080">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node TEXT="Node" ID="ID_1295344986" CREATED="1453635283242" MODIFIED="1453635285070">
<node TEXT="Project 1.2" ID="ID_718281826" CREATED="1453635285987" MODIFIED="1453644914549">
<icon BUILTIN="list"/>
<node TEXT="Project 1.2.1" ID="ID_343390637" CREATED="1453644922622" MODIFIED="1453644938716">
<icon BUILTIN="list"/>
<node TEXT="Done task in project 1.2.1" ID="ID_1145756854" CREATED="1453648363071" MODIFIED="1453648380927">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="Text node in 1.2.1" ID="ID_190227762" CREATED="1453648383367" MODIFIED="1453648389598"/>
</node>
<node TEXT="Project 1.2.2" ID="ID_805940547" CREATED="1453644922622" MODIFIED="1453644938714">
<icon BUILTIN="list"/>
<node TEXT="Done task in project 1.2.2" ID="ID_1375914466" CREATED="1453635246929" MODIFIED="1453645126980">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Project 2" ID="ID_486506988" CREATED="1453635225798" MODIFIED="1453645738759">
<icon BUILTIN="list"/>
<node TEXT="Task in project" ID="ID_35723798" CREATED="1453635235874" MODIFIED="1453635259707">
<icon BUILTIN="yes"/>
</node>
</node>
</node>
<node TEXT="Context 2" POSITION="left" ID="ID_865993253" CREATED="1453645738720" MODIFIED="1453645748828">
<edge COLOR="#007c00"/>
<node TEXT="Project 1" ID="ID_958037735" CREATED="1453635273577" MODIFIED="1453645738732">
<icon BUILTIN="list"/>
<node TEXT="Node" ID="ID_1225887754" CREATED="1453635283242" MODIFIED="1453635285070">
<node TEXT="Project 1.1" ID="ID_610570922" CREATED="1453644897919" MODIFIED="1453644917151">
<icon BUILTIN="list"/>
<node TEXT="Undone task in project shadow 1.1" ID="ID_1943882133" CREATED="1453635293284" MODIFIED="1453645766937">
<icon BUILTIN="yes"/>
</node>
<node TEXT="Done task in project shadow 1.1" ID="ID_1992238520" CREATED="1453635293284" MODIFIED="1453645757568">
<icon BUILTIN="button_ok"/>
<icon BUILTIN="yes"/>
</node>
</node>
<node TEXT="Project 1.2" ID="ID_1385288745" CREATED="1453635285987" MODIFIED="1453644914549">
<icon BUILTIN="list"/>
<node TEXT="Project 1.2.1" ID="ID_1493311192" CREATED="1453644922622" MODIFIED="1453644938716">
<icon BUILTIN="list"/>
<node TEXT="Done task in project shadow 1.2.1" ID="ID_342069617" CREATED="1453648363071" MODIFIED="1453648457178">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node TEXT="Project 1.2.2" ID="ID_160168970" CREATED="1453644922622" MODIFIED="1453644938714">
<icon BUILTIN="list"/>
<node TEXT="Done task in project shadow 1.2.2" ID="ID_1693460486" CREATED="1453635246929" MODIFIED="1453645772384">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Project 2" ID="ID_840633043" CREATED="1453635225798" MODIFIED="1453645738759">
<icon BUILTIN="list"/>
<node TEXT="Task in project" ID="ID_1080345677" CREATED="1453635235874" MODIFIED="1453635259707">
<icon BUILTIN="yes"/>
</node>
</node>
</node>
<node TEXT="Done Task" POSITION="left" ID="ID_1329196383" CREATED="1453635231243" MODIFIED="1453648421914">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<edge COLOR="#0000ff"/>
</node>
</node>
</map>
