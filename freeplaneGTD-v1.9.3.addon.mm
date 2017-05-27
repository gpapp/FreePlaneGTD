<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Freeplane|GTD+" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1495901093576" LINK="http://www.itworks.hu/freeplanegtd-release/" BACKGROUND_COLOR="#97c7dc">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" UNIFORM_SHAPE="true">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="12" BOLD="false" ITALIC="false"/>
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
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="20"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="12"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<attribute_layout NAME_WIDTH="100" VALUE_WIDTH="240"/>
<attribute NAME="name" VALUE="freeplaneGTD"/>
<attribute NAME="version" VALUE="v1.9.3"/>
<attribute NAME="author" VALUE="Gergely Papp"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.3.10"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="downloadUrl" VALUE="http://www.itworks.hu/freeplanegtd-release/" OBJECT="java.net.URI|http://www.itworks.hu/freeplanegtd-release/"/>
<attribute NAME="changelogUrl" VALUE=""/>
<attribute NAME="updateUrl" VALUE=""/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
      <li>
        updateUrl: URL of the file containing information (version, download url) on the latest version of this add-on. By default: &quot;${homepage}/version.properties&quot;
      </li>
    </ul>
  </body>
</html>
</richcontent>
<edge COLOR="#999999"/>
<node TEXT="description" FOLDED="true" POSITION="left" ID="ID_1125389651" CREATED="1323057303632" MODIFIED="1456082248398">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&#160;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_833172562" CREATED="1323057648210" MODIFIED="1453650197342" BACKGROUND_COLOR="#ffff99"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">Freeplane|GTD creates views of GTD-style lists extracted from a mind map, providing views: </font>
    </p>
    <ul>
      <li>
        <font size="2">By Project </font>
      </li>
      <li>
        <font size="2">By Context (where the next action gets done) </font>
      </li>
      <li>
        <font size="2">By Owner (who owns it, if not you) </font>
      </li>
      <li>
        <font size="2">By Due Date (when) </font>
      </li>
    </ul>
    <p>
      <font size="2">The completed actions can be marked and filtered, moved to Review folder or Archive folder </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">Markers (icons) can be configured to correspond to contexts </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">Simple action editor is provided.</font>
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="changes" POSITION="left" ID="ID_1824187995" CREATED="1323057303648" MODIFIED="1456082248421">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_1073906233" CREATED="1323057303663" MODIFIED="1456082248434">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&#160;node, either as plain text or as HTML.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 3 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;GNU General Public License for more details." ID="ID_1763974336" CREATED="1323057303679" MODIFIED="1323093766804">
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="preferences.xml" FOLDED="true" POSITION="left" ID="ID_800601165" CREATED="1323057303742" MODIFIED="1456082248445">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">Every property in the configuration should receive a default value in <i>default.properties</i>&#160;node.</font>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#xa;&lt;preferences_structure&gt;&#xa;         &lt;tabbed_pane&gt;&#xa;                  &lt;tab name=&quot;plugins&quot;&gt;&#xa;                           &lt;separator name=&quot;freeplaneGTD&quot;&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_filter_done&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;combo name=&quot;freeplaneGTD_default_view&quot;&gt;&#xa;                    &lt;choice value=&quot;PROJECT&quot; text=&quot;freeplaneGTD_view_project&quot; /&gt;&#xa;                    &lt;choice value=&quot;WHO&quot; text=&quot;freeplaneGTD_view_who&quot; /&gt;&#xa;                    &lt;choice value=&quot;CONTEXT&quot; text=&quot;freeplaneGTD_view_context&quot; /&gt;&#xa;                    &lt;choice value=&quot;WHEN&quot; text=&quot;freeplaneGTD_view_when&quot; /&gt;&#xa;                &lt;/combo&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_auto_fold_map&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_remember_last_position&quot; min=&quot;0&quot; /&gt;&#xa;                           &lt;/separator&gt;&#xa;                  &lt;/tab&gt;&#xa;         &lt;/tabbed_pane&gt;&#xa;&lt;/preferences_structure&gt;" ID="ID_561768128" CREATED="1413235874574" MODIFIED="1480965679776"/>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_680880217" CREATED="1323057303742" MODIFIED="1490362003848">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties play together with the preferences: Each property defined in the preferences should have a default value in the attributes of this node.
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="270" VALUE_WIDTH="130"/>
<attribute NAME="freeplaneGTD_filter_done" VALUE="false"/>
<attribute NAME="freeplaneGTD_default_view" VALUE="PROJECT" OBJECT="org.freeplane.features.format.FormattedObject|PROJECT|number:decimal:#0.####"/>
<attribute NAME="freeplaneGTD_auto_fold_map" VALUE="true"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="true"/>
</node>
<node TEXT="translations" POSITION="left" ID="ID_170932006" CREATED="1323057303757" MODIFIED="1456082248463">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least
    </p>
    <ul>
      <li>
        'addons.${name}' for the add-on's name
      </li>
      <li>
        'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
      </li>
      <li>
        'addons.${name}.&lt;scriptname&gt;' for each script since it will be the menu title.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="en" ID="ID_590286510" CREATED="1323057303773" MODIFIED="1480975130265">
<attribute_layout NAME_WIDTH="208" VALUE_WIDTH="220"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Next action list"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convert tasks from shorthand"/>
<attribute NAME="addons.${name}.editAction" VALUE="Edit action"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Move completed to archive"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Move completed to review"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filter completed tasks by default"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Default action view"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Fold map to show only relevant tasks"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Project"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Who"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Context"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Timeline"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="By Project"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="List actions by project"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="By Who"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="List action by delegates"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="By Context"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="List actions by context"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Timeline"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="List actions by time"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="About"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="About Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Refresh"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Print"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copy"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Close"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filter done"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Display notes"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Done"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Select nodes"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Unassigned"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Today"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="This week"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Edit action"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Action"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Who"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Context"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="When"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Today"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priority"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Done"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Wait for"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Wait until"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selection copied to clipboard."/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archives"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Review"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Remember last position"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="hu" ID="ID_1234559081" CREATED="1323057303773" MODIFIED="1480975171871">
<attribute_layout NAME_WIDTH="208" VALUE_WIDTH="220"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Teend\u0151k"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Feladatok l\u00E9trehoz\u00E1sa r\u00F6vid\u00EDt\u00E9sb\u0151l"/>
<attribute NAME="addons.${name}.editAction" VALUE="Szerkeszt\u00E9s"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="K\u00E9sz feladatok arc\u00EDvumba"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="K\u00E9sz feladatok \u00E1tn\u00E9z\u00E9sre"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD tulajdons\u00E1gai"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="K\u00E9sz elemek sz\u0171r\u00E9se alapb\u00F3l"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Kezdeti feladat n\u00E9zet"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Nem kiv\u00E1lasztott \u00E1gak automatikus \u00F6sszecsuk\u00E1sa"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Felel\u0151s"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontextus"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Id\u0151vonal"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Projektenk\u00E9nt"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Feladatok list\u00E1ja projektenk\u00E9nt"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Szem\u00E9lyenk\u00E9nt"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Feladatok list\u00E1ja szem\u00E9lyenk\u00E9nt"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Kontextusonk\u00E9nt"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Id\u0151vonal"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Feladatok list\u00E1ja id\u0151rendi sorrendben"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="N\u00E9vjegy"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="A Freeplane|GTD+ n\u00E9vjegye"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Friss\u00EDt\u00E9s"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Nyomtat\u00E1s"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="V\u00E1g\u00F3lapra"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Bez\u00E1r\u00E1s"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Lez\u00E1rtak sz\u0171r\u00E9se"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Jegyzetek megjelen\u00EDt\u00E9se"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Elemek kiv\u00E1laszt\u00E1sa"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Kontextus n\u00E9lk\u00FCl"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Ezen a h\u00E9ten"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Feladat szerkeszt\u00E9se"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Feladat"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="V\u00E9grehajt\u00F3"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontextus"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Id\u0151pont"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit\u00E1s"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="K\u00E9sz"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Kire v\u00E1r"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Meddig v\u00E1r"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="V\u00E1lasztott elemek a v\u00E1g\u00F3lapra m\u00E1solva."/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Arch\u00EDvum"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="\u00C1tn\u00E9zend\u0151"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Utols\u00F3 ablakpoz\u00EDci\u00F3 megjegyz\u00E9se"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="de" ID="ID_630670890" CREATED="1323057303773" MODIFIED="1490294088116">
<attribute_layout NAME_WIDTH="208" VALUE_WIDTH="220"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Offene-Punkte-Liste, OPL"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Kurzschreibweise f\u00FCr Aktivit\u00E4t verarbeiten"/>
<attribute NAME="addons.${name}.editAction" VALUE="Aktivit\u00E4t bearbeiten"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="verschiebe Aktivit\u00E4t ins Archiv"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="verschiebe Aktivit\u00E4t zum Review"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Voreinstellung: Erledigte Punkte herausfiltern"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Voreinstellung f\u00FCr OPL-Ansicht"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Map falten, um OPL-Punkte hervorzuheben"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Bearbeiter"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontext"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Wann"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="projektorientiert"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Projektorientierte Auflistung von Aktivit\u00E4ten "/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="personenorientiert"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Personenorientierte Auflistung von Aktivit\u00E4ten"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="kontextorientiert"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Kontextorientierte Auflistung von Aktivit\u00E4ten"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="zeitorientiert"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Zeitorientierte (chronologische) Auflistung von Aktivit\u00E4ten"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="\u00DCber FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Informationen bzgl. Freeplane|GTD"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Aktualisieren"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Drucken"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Kopieren"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Abbruch"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Erledigte Aktivit\u00E4ten herausfiltern"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Notizen darstellen"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Speichern"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Knoten in Map selektieren"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Nicht zugewiesen"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Diese Woche"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Aktivit\u00E4t bearbeiten"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="T\u00E4tigkeit / Aktivit\u00E4t"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Bearbeiter"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontext f\u00FCr Aktivit\u00E4t"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Wann"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit\u00E4t"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Erledigt"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Warten auf"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Warten bis"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Auswahl wurde in den Zwischenspeicher abgelegt."/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archiv"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="R\u00FCckblick"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="fr" ID="ID_148000654" CREATED="1323057303773" MODIFIED="1456080252314">
<attribute_layout NAME_WIDTH="208" VALUE_WIDTH="220"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Liste des prochaines actions"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convertir action \u00E0 partir du libell\u00E9"/>
<attribute NAME="addons.${name}.editAction" VALUE="Modifier action"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="D\u00E9placement termin\u00E9e pour archiver"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="D\u00E9placement termin\u00E9e \u00E0 donner votre avis"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Par d\u00E9faut, masquer les actions termin\u00E9es"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Par d\u00E9faut, lister les actions par"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="R\u00E9duire la carte pour n&apos;afficher que les actions personnelles"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projet"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Responsable"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Contexte"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="\u00C9ch\u00E9ance"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Par projet"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Liste les actions par projet"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Par responsable"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Liste les actions par responsable"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Par contexte"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Liste les actions par contexte"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Par \u00E9ch\u00E9ance"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Liste chronologique des actions"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="\u00C0 propos"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="\u00C0 propos de Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Rafra\u00EEchir"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Imprimer"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copier"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Annuler"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Masquer les actions termin\u00E9es"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Afficher les notes"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="S\u00E9lectionner les noeuds"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Non assign\u00E9"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Cette semaine"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Modifier action"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Action"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Responsable"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Contexte"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="\u00C9ch\u00E9ance"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit\u00E9"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Termin\u00E9e"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="S\u00E9lection copi\u00E9e dans le presse-papiers"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archives"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Revue"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="es" ID="ID_1393937145" CREATED="1323057303773" MODIFIED="1480975410029">
<attribute_layout NAME_WIDTH="199" VALUE_WIDTH="235"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Lista de acciones"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convertir acciones desde notaci\u00F3n"/>
<attribute NAME="addons.${name}.editAction" VALUE="Editar acci\u00F3n"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Pasar completadas a Archivo"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Pasar completadas a Revisar"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filtrar completadas por defecto"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Vista por defecto"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Colapsar mapa para ver solo acciones relevantes"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Proyecto"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Quien"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Contexto"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Orden temporal"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Por proyecto"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Listar acciones por proyecto"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="por Quien"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Listar acciones por persona"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="por Contexto"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Lista acciones por contexto"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Orden temporal"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Listar acciones por orden temporal"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Sobre"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Sobre Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Refrescar"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Imprimir"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copiar"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Cerrar"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filtrar hechos"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Mostrar notas"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Hecho"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Seleccionar nodos"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Sin asignar"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Hoy"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Esta semana"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Editar acci\u00F3n"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Acci\u00F3n"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Quien"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Contexto"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Cuando"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Hoy"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Prioridad"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Hecho"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Esperar a"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Esperar hasta"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selecci\u00F3n copiada al portapapeles"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archivo"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Revisar"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="nl" ID="ID_1763629932" CREATED="1323057303773" MODIFIED="1456080263018">
<attribute_layout NAME_WIDTH="208" VALUE_WIDTH="220"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Lijst met eerstvolgende acties"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Converteer actie vanuit omschrijving"/>
<attribute NAME="addons.${name}.editAction" VALUE="Wijzig actie"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Verplaats afgeronden naar archief"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Verplaats afgeronden naar review"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filter de afgewerkte acties er standaard uit."/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Standaard actie overzicht"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Vouw de map dicht zodat alleen relevante taken getoond worden"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Project"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Wie"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Context"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Tijdslijn"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Volgens Project"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Lijst van projectacties"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Volgens Wie"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Lijst van gedelegeerde acties"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Volgens Context"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Lijst van contextuele acties"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Tijdslijn"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Volgens Tijdslijn"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Over"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Over Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Ververs"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Print"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Kopieer"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Sluit"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filter klaar"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Toon notities"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Klaar"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Selecteer nodes"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Niet toegekend"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Vandaag"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Deze week"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Pas actie aan"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Actie"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Wie"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Context"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Wanneer"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Vandaag"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Prioriteit"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Klaar"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selectie gekopieerd naar het clipboard"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archief"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Review"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="ru" ID="ID_1596016669" CREATED="1323057303773" MODIFIED="1459603928376">
<attribute_layout NAME_WIDTH="208" VALUE_WIDTH="220"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="\u0421\u043B\u0435\u0434\u0443\u044E\u0449\u0438\u0439 \u0441\u043F\u0438\u0441\u043E\u043A \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="\u041A\u043E\u043D\u0432\u0435\u0440\u0442\u0438\u0440\u043E\u0432\u0430\u0442\u044C \u0437\u0430\u0434\u0430\u0447\u0438 \u0438\u0437 \u0441\u0442\u0435\u043D\u043E\u0433\u0440\u0430\u043C\u043C\u044B"/>
<attribute NAME="addons.${name}.editAction" VALUE="\u0418\u0437\u043C\u0435\u043D\u0438\u0442\u044C \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="\u041F\u0435\u0440\u0435\u043C\u0435\u0441\u0442\u0438\u0442\u044C \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043D\u043D\u043E\u0435 \u0432 \u0430\u0440\u0445\u0438\u0432"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="\u041F\u0435\u0440\u0435\u043C\u0435\u0441\u0442\u0438\u0442\u044C \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043D\u043D\u043E\u0435 \u0432 \u043F\u0435\u0440\u0435\u0441\u043C\u043E\u0442\u0440"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="\u0434\u043E\u043F\u043E\u043B\u043D\u0435\u043D\u0438\u0435 freeplaneGTD"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="\u0424\u0438\u043B\u044C\u0442\u0440\u043E\u0432\u0430\u0442\u044C \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043D\u043D\u044B\u0435 \u0437\u0430\u0434\u0430\u0447\u0438 \u043F\u043E \u0443\u043C\u043E\u043B\u0447\u0430\u043D\u0438\u044E"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="\u041E\u0431\u044B\u0447\u043D\u044B\u0439 \u0432\u0438\u0434 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="\u0421\u0432\u0435\u0440\u043D\u0443\u0442\u044C \u043A\u0430\u0440\u0442\u0443 \u0438 \u043F\u043E\u043A\u0430\u0437\u0430\u0442\u044C \u0442\u043E\u043B\u044C\u043A\u043E \u0437\u043D\u0430\u0447\u0438\u043C\u044B\u0435 \u0437\u0430\u0434\u0430\u0447\u0438"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="\u041F\u0440\u043E\u0435\u043A\u0442"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="\u041A\u0442\u043E"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="\u041A\u043E\u043D\u0442\u0435\u043A\u0441\u0442"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="\u041A\u043E\u0433\u0434\u0430"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="\u041F\u043E \u043F\u0440\u043E\u0435\u043A\u0442\u0443"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="\u0421\u043F\u0438\u0441\u043E\u043A \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439 \u043F\u043E \u043F\u0440\u043E\u0435\u043A\u0442\u0443"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="\u0418\u0441\u043F\u043E\u043B\u043D\u0438\u0442\u0435\u043B\u0438"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="\u0421\u043F\u0438\u0441\u043E\u043A \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439 \u043F\u043E \u0438\u0441\u043F\u043E\u043B\u043D\u0438\u0442\u0435\u043B\u044F\u043C"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="\u041F\u043E \u043A\u043E\u043D\u0442\u0435\u043A\u0441\u0442\u0443"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="\u0421\u043F\u0438\u0441\u043E\u043A \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439 \u043F\u043E \u043A\u043E\u043D\u0442\u0435\u043A\u0441\u0442\u0443"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="\u0421\u0440\u043E\u043A\u0438"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="\u0421\u043F\u0438\u0441\u043E\u043A \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439 \u043F\u043E \u0432\u0440\u0435\u043C\u0435\u043D\u0438"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="\u041E \u043F\u0440\u043E\u0433\u0440\u0430\u043C\u043C\u0435"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="\u041E Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="\u041E\u0431\u043D\u043E\u0432\u0438\u0442\u044C"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="\u041F\u0435\u0447\u0430\u0442\u044C"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="\u041A\u043E\u043F\u0438\u0440\u043E\u0432\u0430\u0442\u044C"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="\u0417\u0430\u043A\u0440\u044B\u0442\u044C"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="\u0424\u0438\u043B\u044C\u0442\u0440\u043E\u0432\u0430\u0442\u044C \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043D\u043D\u044B\u0435"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="\u041F\u043E\u043A\u0430\u0437\u0430\u0442\u044C \u0437\u0430\u043C\u0435\u0442\u043A\u0438"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="\u0417\u0430\u0432\u0435\u0440\u0448\u0435\u043D\u043E"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="\u0412\u044B\u0431\u0440\u0430\u0442\u044C \u0443\u0437\u043B\u044B"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="\u041D\u0435\u043D\u0430\u0437\u043D\u0430\u0447\u0435\u043D\u043E"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="\u0421\u0435\u0433\u043E\u0434\u043D\u044F"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="\u041D\u0430 \u044D\u0442\u043E\u0439 \u043D\u0435\u0434\u0435\u043B\u0435"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="\u0418\u0437\u043C\u0435\u043D\u0438\u0442\u044C \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="\u0414\u0435\u0439\u0441\u0442\u0432\u0438\u0435"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="\u0418\u0441\u043F\u043E\u043B\u043D\u0438\u0442\u0435\u043B\u044C"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="\u041A\u043E\u043D\u0442\u0435\u043A\u0441\u0442"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="\u041A\u043E\u0433\u0434\u0430"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="\u0421\u0435\u0433\u043E\u0434\u043D\u044F"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="\u041F\u0440\u0438\u043E\u0440\u0438\u0442\u0435\u0442"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="\u0417\u0430\u0432\u0435\u0440\u0448\u0435\u043D\u043E"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="\u0416\u0434\u0430\u0442\u044C"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="\u0416\u0434\u0430\u0442\u044C \u043F\u043E\u043A\u0430 "/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="\u0412\u044B\u0431\u0440\u0430\u043D\u043D\u043E\u0435 \u0441\u043A\u043E\u043F\u0438\u0440\u043E\u0432\u0430\u043D\u043E \u0432 \u0431\u0443\u0444\u0435\u0440 \u043E\u0431\u043C\u0435\u043D\u0430"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="\u0410\u0440\u0445\u0438\u0432\u044B"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="\u041F\u0435\u0440\u0435\u0441\u043C\u043E\u0442\u0440"/>
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_1357879524" CREATED="1323057303788" MODIFIED="1456082286858">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="45" VALUE_WIDTH="362"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/FreeplaneGTD.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/FreeplaneShorthand.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/GTDActionEditor.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/flying-saucer-core-9.0.8.jar"/>
<attribute NAME="delete" VALUE="${installationbase}/templates/GTD_template.mm"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/DateUtil.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/ClipBoardUtil.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/ReportModel.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/GTDMapReader.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/Tag.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/icons/fpgtdIcon.png"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/freeplaneGTD.png"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/freeplaneGTD-icon.png"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/fpgtdLogo.png"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/GTDArchiveTask.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/GTDReviewTask.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/DoneMover.groovy"/>
</node>
<node TEXT="scripts" FOLDED="true" POSITION="right" ID="ID_111817827" CREATED="1323057303804" MODIFIED="1456082248492">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. inserInlineImage.groovy). The name must have a suffix of a supported script language like .groovy or .js and may only consist of letters and digits. The script properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Defines where the menu location.
    </p>
    <p>
      &#160;&#160;&#160;-&#160;See mindmapmodemenu.xml for how the menu locations look like.
    </p>
    <p>
      &#160;&#160;&#160;- http://freeplane.bzr.sf.net/bzr/freeplane/freeplane_program/trunk/annotate/head%3A/freeplane/resources/xml/mindmapmodemenu.xml
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &#160;&#160;&#160;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&#160;variable is set to the selected node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &#160;&#160;&#160;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &#160;&#160;&#160;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &#160;&#160;&#160;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&#160;that the script(s) require, each either false or true:
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_asking
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &#160;&#160;Notes:
    </p>
    <p>
      &#160;&#160;- The set of permissions is fixed.
    </p>
    <p>
      &#160;&#160;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &#160;&#160;- Set the values either to true or to false
    </p>
    <p>
      &#160;&#160;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="FreeplaneGTD.groovy" FOLDED="true" ID="ID_875504923" CREATED="1323057833226" MODIFIED="1447782976148">
<attribute_layout NAME_WIDTH="206" VALUE_WIDTH="159"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.listActions"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="control H"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<edge COLOR="#999999"/>
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.listNextActions]&quot;})&#xd;&#xa;//=========================================================&#xd;&#xa;// Freeplane GTD+&#xd;&#xa;//&#xd;&#xa;// Copyright (c)2014 Gergely Papp&#xd;&#xa;//&#xd;&#xa;// This program is free software: you can redistribute it and/or modify&#xd;&#xa;// it under the terms of the GNU General Public License as published by&#xd;&#xa;// the Free Software Foundation, either version 3 of the License, or&#xd;&#xa;// any later version.&#xd;&#xa;//&#xd;&#xa;// This program is distributed in the hope that it will be useful,&#xd;&#xa;// but WITHOUT ANY WARRANTY; without even the implied warranty of&#xd;&#xa;// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xd;&#xa;// GNU General Public License for more details.&#xd;&#xa;//&#xd;&#xa;// You should have received a copy of the GNU General Public License&#xd;&#xa;// along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xd;&#xa;//&#xd;&#xa;//=========================================================&#xd;&#xa;import freeplaneGTD.ClipBoardUtil&#xd;&#xa;import freeplaneGTD.ReportModel&#xd;&#xa;import freeplaneGTD.Tag&#xd;&#xa;import groovy.swing.SwingBuilder&#xd;&#xa;import org.freeplane.core.ui.components.UITools&#xd;&#xa;import org.freeplane.core.util.FreeplaneIconUtils&#xd;&#xa;import org.freeplane.core.util.TextUtils&#xd;&#xa;import org.freeplane.features.format.FormattedDate&#xd;&#xa;import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties&#xd;&#xa;import org.freeplane.plugin.script.proxy.ControllerProxy&#xd;&#xa;import org.freeplane.plugin.script.proxy.Proxy&#xd;&#xa;import org.xhtmlrenderer.resource.ImageResource&#xd;&#xa;import org.xhtmlrenderer.simple.FSScrollPane&#xd;&#xa;import org.xhtmlrenderer.simple.XHTMLPanel&#xd;&#xa;import org.xhtmlrenderer.simple.extend.XhtmlNamespaceHandler&#xd;&#xa;import org.xhtmlrenderer.swing.*&#xd;&#xa;&#xd;&#xa;import javax.swing.*&#xd;&#xa;import java.awt.*&#xd;&#xa;import java.awt.datatransfer.Clipboard&#xd;&#xa;import java.awt.event.ActionEvent&#xd;&#xa;import java.awt.event.KeyEvent&#xd;&#xa;import java.awt.event.WindowAdapter&#xd;&#xa;import java.awt.event.WindowEvent&#xd;&#xa;import java.awt.image.BufferedImage&#xd;&#xa;import java.util.List&#xd;&#xa;&#xd;&#xa;class ReportWindow {&#xd;&#xa;    static final String title = &apos;GTD Next Actions&apos;&#xd;&#xa;    static final String HTML_HEADER = &apos;&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Strict//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd&quot;&gt;\n&apos;&#xd;&#xa;    static final String txtVer = &apos;1.9.3&apos;&#xd;&#xa;    static final String txtURI = &apos;http://www.itworks.hu/index.php/freeplane-gtd+&apos;&#xd;&#xa;&#xd;&#xa;&#x9;static ConfigProperties config&#xd;&#xa;    static ReportModel report&#xd;&#xa;    static JFrame mainFrame&#xd;&#xa;    static XHTMLPanel projectPane&#xd;&#xa;    static ButtonGroup contentTypeGroup&#xd;&#xa;    static JCheckBox cbFilterDone&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;&#xd;&#xa;&#x9;static boolean showNotes  &#xd;&#xa;&#x9;static ReportModel.VIEW selectedView&#x9;&#xd;&#xa;    static boolean autoFoldMap&#xd;&#xa;&#xd;&#xa;    static JFrame getMainFrame(ConfigProperties configModel, Proxy.Controller c, ReportModel reportModel) {&#xd;&#xa;        report = reportModel&#xd;&#xa;&#x9;&#x9;config = configModel&#xd;&#xa;&#x9;    boolean rememberLastPosition&#xd;&#xa;        if (!mainFrame) {&#xd;&#xa;&#x9;&#x9;&#x9;String defaultView&#xd;&#xa; &#x9;&#x9;&#x9;try {&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;defaultView = ReportModel.VIEW.valueOf(config.getProperty(&apos;freeplaneGTD_default_view&apos;)).toString()&#xd;&#xa;&#x9;&#x9;&#x9;} catch (Exception e) {&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;defaultView = ReportModel.VIEW.PROJECT.toString()&#xd;&#xa;&#x9;&#x9;&#x9;}&#xd;&#xa;&#x9;&#x9;&#x9;autoFoldMap = config.getBooleanProperty(&apos;freeplaneGTD_auto_fold_map&apos;)&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#xd;&#xa;            Dimension screenSize = Toolkit.defaultToolkit.screenSize&#xd;&#xa;            int tPosX = (int) (screenSize.width / 16 * 3)&#xd;&#xa;            int tPosY = (int) (screenSize.height / 16 * 3)&#xd;&#xa;            int tSizeX = (int) (screenSize.width / 4 * 3)&#xd;&#xa;            int tSizeY = (int) (screenSize.height / 4 * 3)&#xd;&#xa;&#xd;&#xa;            rememberLastPosition = config.getBooleanProperty(&apos;freeplaneGTD_remember_last_position&apos;)&#xd;&#xa;            int posX = rememberLastPosition ? config.getIntProperty(&apos;freeplaneGTD_last_position_x&apos;, tPosX) : tPosX&#xd;&#xa;            int posY = rememberLastPosition ? config.getIntProperty(&apos;freeplaneGTD_last_position_y&apos;, tPosY) : tPosY&#xd;&#xa;            int sizeX = rememberLastPosition ? config.getIntProperty(&apos;freeplaneGTD_last_size_x&apos;, tSizeX) : tSizeX&#xd;&#xa;            int sizeY = rememberLastPosition ? config.getIntProperty(&apos;freeplaneGTD_last_size_y&apos;, tSizeY) : tSizeY&#xd;&#xa;&#xd;&#xa;&#x9;&#x9;&#x9;ImageResourceLoader imageLoader = new ImageResourceLoader() {&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;@Override&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;public synchronized ImageResource get(final String uri, final int width, final int height) {&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;if (uri.startsWith(&quot;builtin:&quot;)) {&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Icon standardIcon = FreeplaneIconUtils.createStandardIcon(uri.replaceFirst(&quot;builtin:(.*)&quot;, &quot;\$1&quot;))&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return new ImageResource(uri, new AWTFSImage.NewAWTFSImage(iconToImage(standardIcon)))&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;return super.get(uri, width, height)&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;}&#xd;&#xa;&#x9;&#x9;&#x9;}&#xd;&#xa;&#x9;&#x9;&#xd;&#xa;            SwingBuilder.edtBuilder {&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;String userPath = c.userDirectory.toString()&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;def iconFrame = imageIcon(userPath + &quot;/icons/fpgtdIcon.png&quot;).image&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;def iconLogo = imageIcon(userPath + &quot;/resources/images/fpgtdLogo.png&quot;)&#xd;&#xa;                mainFrame = frame(title: title,&#xd;&#xa;                        iconImage: iconFrame,&#xd;&#xa;                        defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,&#xd;&#xa;                        show: false) {&#xd;&#xa;                    borderLayout()&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;}&#xd;&#xa;&#xd;&#xa;                mainFrame = frame(title: title,&#xd;&#xa;                        iconImage: iconFrame,&#xd;&#xa;                        defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,&#xd;&#xa;                        show: false) {&#xd;&#xa;                    borderLayout()&#xd;&#xa;                    buttonPanel = panel(constraints: BorderLayout.NORTH) {&#xd;&#xa;                        gridLayout(columns: 1, rows: 1)&#xd;&#xa;                        contentTypeGroup = buttonGroup()&#xd;&#xa;                        projectButton = radioButton(&#xd;&#xa;                                buttonGroup: contentTypeGroup,&#xd;&#xa;                                actionCommand: ReportModel.VIEW.PROJECT.name(),&#xd;&#xa;                                text: &quot;1 - &quot; + TextUtils.getText(&quot;freeplaneGTD.tab.project.title&quot;),&#xd;&#xa;                                toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.project.tooltip&quot;),&#xd;&#xa;                                mnemonic: &quot;1&quot;,&#xd;&#xa;                                selected: defaultView == &quot;PROJECT&quot;,&#xd;&#xa;                                actionPerformed: { ReportWindow.refreshContent() }&#xd;&#xa;                        )&#xd;&#xa;                        whoButton = radioButton(&#xd;&#xa;                                buttonGroup: contentTypeGroup,&#xd;&#xa;                                actionCommand: ReportModel.VIEW.WHO.name(),&#xd;&#xa;                                text: &quot;2 - &quot; + TextUtils.getText(&quot;freeplaneGTD.tab.who.title&quot;),&#xd;&#xa;                                toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.who.tooltip&quot;),&#xd;&#xa;                                mnemonic: &quot;2&quot;,&#xd;&#xa;                                selected: defaultView == &quot;WHO&quot;,&#xd;&#xa;                                actionPerformed: { ReportWindow.refreshContent() }&#xd;&#xa;                        )&#xd;&#xa;                        contextButton = radioButton(&#xd;&#xa;                                buttonGroup: contentTypeGroup,&#xd;&#xa;                                actionCommand: ReportModel.VIEW.CONTEXT.name(),&#xd;&#xa;                                text: &quot;3 - &quot; + TextUtils.getText(&quot;freeplaneGTD.tab.context.title&quot;),&#xd;&#xa;                                toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.context.tooltip&quot;),&#xd;&#xa;                                mnemonic: &quot;3&quot;,&#xd;&#xa;                                selected: defaultView == &quot;CONTEXT&quot;,&#xd;&#xa;                                actionPerformed: { ReportWindow.refreshContent() }&#xd;&#xa;                        )&#xd;&#xa;                        whenButton = radioButton(&#xd;&#xa;                                buttonGroup: contentTypeGroup,&#xd;&#xa;                                actionCommand: ReportModel.VIEW.WHEN.name(),&#xd;&#xa;                                text: &quot;4 - &quot; + TextUtils.getText(&quot;freeplaneGTD.tab.when.title&quot;),&#xd;&#xa;                                toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.when.tooltip&quot;),&#xd;&#xa;                                mnemonic: &quot;4&quot;,&#xd;&#xa;                                selected: defaultView == &quot;WHEN&quot;,&#xd;&#xa;                                actionPerformed: { ReportWindow.refreshContent() }&#xd;&#xa;                        )&#xd;&#xa;                        aboutButton = radioButton(&#xd;&#xa;                                buttonGroup: contentTypeGroup,&#xd;&#xa;                                actionCommand: ReportModel.VIEW.ABOUT.name(),&#xd;&#xa;                                text: &quot;? - &quot; + TextUtils.getText(&quot;freeplaneGTD.tab.about.title&quot;),&#xd;&#xa;                                toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.about.tooltip&quot;),&#xd;&#xa;                                mnemonic: &quot;?&quot;,&#xd;&#xa;                                actionPerformed: { ReportWindow.refreshContent() }&#xd;&#xa;                        )&#xd;&#xa;                    }&#xd;&#xa;                    reportPanel = panel(constraints: BorderLayout.CENTER) {&#xd;&#xa;                        gridLayout(columns: 1, rows: 1)&#xd;&#xa;                    }&#xd;&#xa;                    projectPane = new XHTMLPanel()&#xd;&#xa;                    reportPanel.add(TextUtils.getText(&quot;freeplaneGTD.tab.project.tooltip&quot;), new FSScrollPane(projectPane))&#xd;&#xa;&#xd;&#xa;                    projectPane.getSharedContext().setReplacedElementFactory(new SwingReplacedElementFactory(projectPane, imageLoader))&#xd;&#xa;&#xd;&#xa;                    panel(constraints: BorderLayout.SOUTH) {&#xd;&#xa;                        boxLayout(axis: BoxLayout.X_AXIS)&#xd;&#xa;                        button(text: TextUtils.getText(&quot;freeplaneGTD.button.refresh&quot;),&#xd;&#xa;                                actionPerformed: {&#xd;&#xa;                                    ReportWindow.refreshContent()&#xd;&#xa;                                })&#xd;&#xa;                        button(text: TextUtils.getText(&quot;freeplaneGTD.button.copy&quot;),&#xd;&#xa;                                actionPerformed: {&#xd;&#xa;                                    Clipboard clip = projectPane.getToolkit().getSystemClipboard();&#xd;&#xa;                                    if (clip != null) {&#xd;&#xa;                                        switch (contentTypeGroup.getSelection().actionCommand) {&#xd;&#xa;                                            case ReportModel.VIEW.PROJECT.name(): curContent = report.projectList(); break;&#xd;&#xa;                                            case ReportModel.VIEW.WHO.name(): curContent = report.delegateList(); break;&#xd;&#xa;                                            case ReportModel.VIEW.CONTEXT.name(): curContent = report.contextList(); break;&#xd;&#xa;                                            case ReportModel.VIEW.WHEN.name(): curContent = report.timelineList(); break;&#xd;&#xa;                                            default: curContent = report.projectList(); break;&#xd;&#xa;                                        }&#xd;&#xa;                                        clip.setContents(ClipBoardUtil.createTransferable(curContent, report.mapReader, showNotes), null)&#xd;&#xa;                                        UITools.informationMessage(TextUtils.getText(&apos;freeplaneGTD.message.copy_ok&apos;))&#xd;&#xa;                                    }&#xd;&#xa;                                    mainFrame.toFront();&#xd;&#xa;                                })&#xd;&#xa;                        button(&#xd;&#xa;                                name: &quot;button_cancel&quot;,&#xd;&#xa;                                text: TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;),&#xd;&#xa;                                actionPerformed: {&#xd;&#xa;                                    mainFrame.visible = false&#xd;&#xa;                                    mainFrame.dispose()&#xd;&#xa;                                })&#xd;&#xa;                        cbFilterDone = checkBox(text: TextUtils.getText(&quot;freeplaneGTD.button.filter_done&quot;),&#xd;&#xa;                                selected: config.getBooleanProperty(&apos;freeplaneGTD_filter_done&apos;),&#xd;&#xa;                                actionPerformed: {&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;config.properties.setProperty(&apos;freeplaneGTD_filter_done&apos;, Boolean.toString(it.source.selected))&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;ReportWindow.refreshContent()&#xd;&#xa;                                })&#xd;&#xa;                        cbShowNotes = checkBox(text: TextUtils.getText(&quot;freeplaneGTD.button.show_notes&quot;),&#xd;&#xa;                                selected: showNotes,&#xd;&#xa;                                actionPerformed: {&#xd;&#xa;                                    showNotes = it.source.selected; ReportWindow.refreshContent()&#xd;&#xa;                                })&#xd;&#xa;                    }&#xd;&#xa;                }&#xd;&#xa;            }&#xd;&#xa;            NodeLink nl = new NodeLink(c, mainFrame, report, refreshContent)&#x9;&#x9;&#x9;&#xd;&#xa;            projectPane.getMouseTrackingListeners().each {&#xd;&#xa;                if (it instanceof LinkListener) {&#xd;&#xa;                    projectPane.removeMouseTrackingListener(it)&#xd;&#xa;                }&#xd;&#xa;            }&#xd;&#xa;            projectPane.addMouseTrackingListener(nl);&#xd;&#xa;&#xd;&#xa;&#x9;&#x9;&#x9;// on ESC key close frame&#xd;&#xa;            mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(&#xd;&#xa;                    KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;));&#xd;&#xa;            mainFrame.getRootPane().getActionMap().put(TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;),&#xd;&#xa;                    new CloseAction(mainFrame));&#xd;&#xa;            mainFrame.addWindowListener(new WindowAdapter() {&#xd;&#xa;                void windowClosing(WindowEvent e) {&#xd;&#xa;                    if (config.getBooleanProperty(&apos;freeplaneGTD_remember_last_position&apos;)) {&#xd;&#xa;                        config.properties.setProperty(&apos;freeplaneGTD_last_position_x&apos;, Integer.toString(mainFrame.x))&#xd;&#xa;                        config.properties.setProperty(&apos;freeplaneGTD_last_position_y&apos;, Integer.toString(mainFrame.y))&#xd;&#xa;                        config.properties.setProperty(&apos;freeplaneGTD_last_position_w&apos;, Integer.toString(mainFrame.width))&#xd;&#xa;                        config.properties.setProperty(&apos;freeplaneGTD_last_position_h&apos;, Integer.toString(mainFrame.height))&#xd;&#xa;                    }&#xd;&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;ReportWindow.mainFrame=null&#xd;&#xa;                    super.windowClosing(e)&#xd;&#xa;                }&#xd;&#xa;            })&#xd;&#xa;            mainFrame.setLocation(posX, posY)&#xd;&#xa;            mainFrame.setSize(sizeY, sizeY)&#xd;&#xa;        }&#xd;&#xa;        return mainFrame&#xd;&#xa;    }&#xd;&#xa;&#x9;&#xd;&#xa;    static def refreshContent = {&#xd;&#xa;&#x9;&#x9;cbFilterDone.selected=config.getBooleanProperty(&apos;freeplaneGTD_filter_done&apos;)&#xd;&#xa;        report.parseMap(cbFilterDone.selected)&#xd;&#xa;&#xd;&#xa;        def content&#xd;&#xa;        selectedView = ReportModel.VIEW.valueOf(contentTypeGroup.selection?.actionCommand)&#xd;&#xa;        switch (selectedView) {&#xd;&#xa;            case ReportModel.VIEW.WHO: content = formatList(report.delegateList(), report.mapReader.contextIcons, showNotes)&#xd;&#xa;                break&#xd;&#xa;            case ReportModel.VIEW.CONTEXT: content = formatList(report.contextList(), report.mapReader.contextIcons, showNotes)&#xd;&#xa;                break&#xd;&#xa;            case ReportModel.VIEW.WHEN: content = formatList(report.timelineList(), report.mapReader.contextIcons, showNotes)&#xd;&#xa;                break&#xd;&#xa;            case ReportModel.VIEW.ABOUT:&#xd;&#xa;&#xd;&#xa;                Tag html = new Tag(&apos;html&apos;,&#xd;&#xa;                        new Tag(&apos;body&apos;, [style: &apos;padding-left:25px&apos;])&#xd;&#xa;                                .addContent(new Tag(&apos;h1&apos;, &apos;Freeplane|&apos;).addContent(&apos;span&apos;, &apos;GTD&apos;, [style: &apos;color:#ff3300&apos;]))&#xd;&#xa;                                .addContent(&apos;h2&apos;, &apos;Version &apos; + txtVer)&#xd;&#xa;                                .addContent(&apos;h4&apos;, &apos;by Gergely Papp&apos;)&#xd;&#xa;                                .addContent(&apos;h5&apos;, &apos;based on the original code by Auxilus Systems LLC&apos;)&#xd;&#xa;                                .addContent(&apos;h4&apos;, &apos;Licensed under GNU GPL Version 3&apos;)&#xd;&#xa;                                .addContent(&apos;a&apos;, txtURI, [href: txtURI]))&#xd;&#xa;                content = HTML_HEADER + html.toString()&#xd;&#xa;                break&#xd;&#xa;            case ReportModel.VIEW.PROJECT:&#xd;&#xa;            default:&#xd;&#xa;                content = formatList(report.projectList(), report.mapReader.contextIcons, showNotes)&#xd;&#xa;        }&#xd;&#xa;        projectPane.setDocumentFromString(content, null, new XhtmlNamespaceHandler())&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    static BufferedImage iconToImage(Icon icon) {&#xd;&#xa;        if (icon instanceof ImageIcon) {&#xd;&#xa;            Image img = ((ImageIcon) icon).image;&#xd;&#xa;            if (img instanceof BufferedImage) {&#xd;&#xa;                return (BufferedImage) img;&#xd;&#xa;            }&#xd;&#xa;&#xd;&#xa;            // Create a buffered image with transparency&#xd;&#xa;            BufferedImage bimage = new BufferedImage(img.getWidth(null), img.getHeight(null), BufferedImage.TYPE_INT_ARGB);&#xd;&#xa;&#xd;&#xa;            // Draw the image on to the buffered image&#xd;&#xa;            Graphics2D bGr = bimage.createGraphics();&#xd;&#xa;            bGr.drawImage(img, 0, 0, null);&#xd;&#xa;            bGr.dispose();&#xd;&#xa;&#xd;&#xa;            // Return the buffered image&#xd;&#xa;            return bimage;&#xd;&#xa;        } else {&#xd;&#xa;            int w = icon.getIconWidth();&#xd;&#xa;            int h = icon.getIconHeight();&#xd;&#xa;            GraphicsEnvironment ge =&#xd;&#xa;                    GraphicsEnvironment.getLocalGraphicsEnvironment();&#xd;&#xa;            GraphicsDevice gd = ge.getDefaultScreenDevice();&#xd;&#xa;            GraphicsConfiguration gc = gd.getDefaultConfiguration();&#xd;&#xa;            BufferedImage image = gc.createCompatibleImage(w, h);&#xd;&#xa;            Graphics2D g = image.createGraphics();&#xd;&#xa;            icon.paintIcon(null, g, 0, 0);&#xd;&#xa;            g.dispose();&#xd;&#xa;            return image;&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    static String formatList(Map list, Map&lt;String, String&gt; contextIcons, boolean showNotes) {&#xd;&#xa;        Tag html = new Tag(&apos;html&apos;, [xmlns: &apos;http://www.w3.org/1999/xhtml&apos;])&#xd;&#xa;        Tag head = html.addChild(&apos;head&apos;)&#xd;&#xa;        head.addContent(&apos;style&apos;,&#xd;&#xa;                &apos;/*&lt;![CDATA[*/&apos; +&#xd;&#xa;                        &apos;body {color:#000000;  }&apos; +&#xd;&#xa;                        &apos;h1 {font-size:150%; font-weight:bold;}&apos; +&#xd;&#xa;                        &apos;h2 {font-size:125%; font-weight:bold;}&apos; +&#xd;&#xa;                        &apos;a {text-decoration: none; color:#000077;}&apos; +&#xd;&#xa;                        &apos;ul.actionlist { list-style: none; }&apos; +&#xd;&#xa;                        &apos;.doneIcon { padding-right: 1em }&apos; +&#xd;&#xa;                        &apos;.priorityIcon { left: 2em; position:absolute; }&apos; +&#xd;&#xa;                        &apos;.contextIcon { padding-left: 1em }&apos; +&#xd;&#xa;                        &apos;.wait {font-size:90%; margin-left:32px; margin-top:4px}&apos; +&#xd;&#xa;                        &apos;.details {margin-left:18px; padding:5px; background-color:rgb(240,250,240);font-size:90%;}&apos; +&#xd;&#xa;                        &apos;.note    {margin-left:18px; padding:5px; background-color:rgb(250,250,240);font-size:90%;}&apos; +&#xd;&#xa;                        &apos;.overdue {background-color: rgb(250,150,140)}&apos; +&#xd;&#xa;                        &apos;.buttons {display:inline-block;float:right;font-size:90%;background-color: rgb(200,200,200);padding:2px;color: rgb(0,0,0);}&apos; +&#xd;&#xa;                        &apos;/*]]&gt;*/&apos;,&#xd;&#xa;                [type: &apos;text/css&apos;])&#xd;&#xa;        head.addChild(&apos;title&apos;)&#xd;&#xa;        Tag body = new Tag(&apos;body&apos;)&#xd;&#xa;//    body.addContent(&apos;h1&apos;, TextUtils.getText(&apos;freeplaneGTD_view_&apos; + list[&apos;type&apos;]))&#xd;&#xa;        Date now = new Date().clearTime()&#xd;&#xa;        list[&apos;groups&apos;].eachWithIndex { it, index -&gt;&#xd;&#xa;            body.addChild(&apos;div&apos;, [class: &apos;buttons&apos;]).&#xd;&#xa;                    addContent(&apos;a&apos;, TextUtils.getText(&quot;freeplaneGTD.button.copy&quot;), [href: &apos;copy:&apos; + index]).&#xd;&#xa;                    addContent(&apos;|&apos;).&#xd;&#xa;                    addContent(&apos;a&apos;, TextUtils.getText(&quot;freeplaneGTD.button.select&quot;), [href: &apos;select:&apos; + index])&#xd;&#xa;            body.addContent(&apos;h2&apos;, it[&apos;title&apos;])&#xd;&#xa;            Tag curItem = body.addChild(&apos;ul&apos;, [&apos;class&apos;: &apos;actionlist&apos;])&#xd;&#xa;            it[&apos;items&apos;].each {&#xd;&#xa;                Tag wrap = curItem.addChild(&apos;li&apos;)&#xd;&#xa;                if (it[&apos;priority&apos;]) {&#xd;&#xa;                    wrap.addChild(&apos;img&apos;, [class: &quot;priorityIcon&quot;, src: &quot;builtin:full-&quot; + it[&apos;priority&apos;]])&#xd;&#xa;                }&#xd;&#xa;                wrap.addChild(&apos;A&apos;, [href: &apos;done:&apos; + it[&apos;nodeID&apos;]]).addChild(&apos;img&apos;, [class: &quot;doneIcon&quot;, src: &quot;builtin:&quot; + (it[&apos;done&apos;] ? &quot;&quot; : &quot;un&quot;) + &quot;checked&quot;])&#xd;&#xa;                if (it[&apos;time&apos;] instanceof FormattedDate &amp;&amp; ((FormattedDate) it[&apos;time&apos;]).before(now)) wrap.addProperty(&apos;class&apos;, &apos;overdue&apos;)&#xd;&#xa;                wrap.addChild(&apos;a&apos;, [href: &apos;link:&apos; + it[&apos;nodeID&apos;]]).addPreformatted(it[&apos;action&apos;] as String);&#xd;&#xa;&#xd;&#xa;                Tag contextTag = new Tag(&apos;span&apos;)&#xd;&#xa;&#xd;&#xa;                it[&apos;context&apos;]?.split(&apos;,&apos;)?.each { key -&gt;&#xd;&#xa;                    if (contextIcons.keySet().contains(key)) {&#xd;&#xa;                        contextTag.addChild(&apos;img&apos;, [class: &quot;contextIcon&quot;, src: &quot;builtin:&quot; + contextIcons.get(key), &quot;title&quot;: key])&#xd;&#xa;                    } else {&#xd;&#xa;                        contextTag.addContent(&apos;@&apos;);&#xd;&#xa;                        contextTag.addContent(key);&#xd;&#xa;                    }&#xd;&#xa;                }&#xd;&#xa;                !it[&apos;who&apos;] ?: wrap.addContent(&apos; [&apos; + it[&apos;who&apos;] + &apos;]&apos;)&#xd;&#xa;                !it[&apos;when&apos;] ?: wrap.addContent(&apos; {&apos; + it[&apos;when&apos;] + &apos;}&apos;)&#xd;&#xa;                !it[&apos;context&apos;] ?: wrap.addContent(contextTag)&#xd;&#xa;                !it[&apos;project&apos;] ?: wrap.addContent(&apos; for &apos; + it[&apos;project&apos;])&#xd;&#xa;                if (it[&apos;waitFor&apos;] || it[&apos;waitUntil&apos;]) {&#xd;&#xa;                    wrap.addContent(&apos;div&apos;, &apos;wait&apos; + (it[&apos;waitFor&apos;] ? &apos; for &apos; + it[&apos;waitFor&apos;] : &apos;&apos;) + (it[&apos;waitUntil&apos;] ? &apos; until &apos; + it[&apos;waitUntil&apos;] : &apos;&apos;), [class: &apos;wait&apos;])&#xd;&#xa;                }&#xd;&#xa;                if (showNotes) {&#xd;&#xa;                    if (it[&apos;details&apos;]) {&#xd;&#xa;                        wrap.addChild(&apos;div&apos;, [class: &apos;details&apos;]).addPreformatted((String) it[&apos;details&apos;])&#xd;&#xa;                    }&#xd;&#xa;                    if (it[&apos;notes&apos;]) {&#xd;&#xa;                        wrap.addChild(&apos;div&apos;, [class: &apos;note&apos;]).addPreformatted((String) it[&apos;notes&apos;])&#xd;&#xa;                    }&#xd;&#xa;                }&#xd;&#xa;            }&#xd;&#xa;        }&#xd;&#xa;        html.addContent(body)&#xd;&#xa;&#xd;&#xa;        return HTML_HEADER + html.toString()&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    static void refresh(ReportModel reportModel) {&#xd;&#xa;&#x9;&#x9;report=reportModel&#xd;&#xa;        refreshContent()&#xd;&#xa;        projectPane.scrollTo(new Point(0, 0))&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;final ReportModel report = new ReportModel(node.map.root)&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;//---------------------------------------------------------&#xd;&#xa;// Process hyperlink to map node&#xd;&#xa;//---------------------------------------------------------&#xd;&#xa;class NodeLink extends LinkListener {&#xd;&#xa;    Proxy.Controller ctrl&#xd;&#xa;    JFrame frame&#xd;&#xa;    ReportModel report&#xd;&#xa;    private final Closure&lt;Boolean&gt; refresh&#xd;&#xa;&#xd;&#xa;    NodeLink(Proxy.Controller ctrl, JFrame frame, ReportModel report, Closure&lt;Boolean&gt; refresh) {&#xd;&#xa;        this.ctrl = ctrl&#xd;&#xa;        this.frame = frame&#xd;&#xa;        this.report = report&#xd;&#xa;        this.refresh = refresh&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    public void linkClicked(BasicPanel panel, String uri) {&#xd;&#xa;        if (uri.startsWith(&apos;done:&apos;)) {&#xd;&#xa;            String linkNodeID = uri.substring(5)&#xd;&#xa;            def nodesFound = ctrl.find { it.nodeID == linkNodeID }&#xd;&#xa;&#xd;&#xa;            if (nodesFound[0] != null) {&#xd;&#xa;                def node = nodesFound[0]&#xd;&#xa;                if (node.icons.contains(report.mapReader.iconDone)) {&#xd;&#xa;                    node.icons.remove(report.mapReader.iconDone)&#xd;&#xa;                } else {&#xd;&#xa;                    node.icons.add(report.mapReader.iconDone)&#xd;&#xa;                }&#xd;&#xa;                refresh(report)&#xd;&#xa;            } else {&#xd;&#xa;                UITools.informationMessage(&quot;Cannot find node to mark as done&quot;);&#xd;&#xa;            }&#xd;&#xa;        } else if (uri.startsWith(&apos;copy:&apos;)) {&#xd;&#xa;            int pos = uri.substring(5).toInteger()&#xd;&#xa;            Map feeder&#xd;&#xa;            Clipboard clip = panel.getToolkit().getSystemClipboard();&#xd;&#xa;            if (clip != null) {&#xd;&#xa;                switch (ReportWindow.selectedView) {&#xd;&#xa;                    case ReportModel.VIEW.PROJECT: feeder = [type: &apos;project&apos;, groups: [report.projectList()[&apos;groups&apos;][pos]]]; break;&#xd;&#xa;                    case ReportModel.VIEW.WHO: feeder = [type: &apos;who&apos;, groups: [report.delegateList()[&apos;groups&apos;][pos]]]; break;&#xd;&#xa;                    case ReportModel.VIEW.CONTEXT: feeder = [type: &apos;context&apos;, groups: [report.contextList()[&apos;groups&apos;][pos]]]; break;&#xd;&#xa;                    case ReportModel.VIEW.WHEN: feeder = [type: &apos;when&apos;, groups: [report.timelineList()[&apos;groups&apos;][pos]]]; break;&#xd;&#xa;                    default: throw new UnsupportedOperationException(&quot;Invalid selection pane: &quot; + report.selPane)&#xd;&#xa;                }&#xd;&#xa;                clip.setContents(ClipBoardUtil.createTransferable(feeder, report.mapReader, ReportWindow.showNotes), null)&#xd;&#xa;                UITools.informationMessage(TextUtils.getText(&apos;freeplaneGTD.message.copy_ok&apos;))&#xd;&#xa;                frame.toFront()&#xd;&#xa;            }&#xd;&#xa;        } else if (uri.startsWith(&apos;select:&apos;)) {&#xd;&#xa;            int pos = uri.substring(7).toInteger()&#xd;&#xa;            List list&#xd;&#xa;            switch (ReportWindow.selectedView) {&#xd;&#xa;                case ReportModel.VIEW.PROJECT: list = (List) report.projectList()[&apos;groups&apos;][pos][&apos;items&apos;]; break;&#xd;&#xa;                case ReportModel.VIEW.WHO: list = (List) report.delegateList()[&apos;groups&apos;][pos][&apos;items&apos;]; break;&#xd;&#xa;                case ReportModel.VIEW.CONTEXT: list = (List) report.contextList()[&apos;groups&apos;][pos][&apos;items&apos;]; break;&#xd;&#xa;                case ReportModel.VIEW.WHEN: list = (List) report.timelineList()[&apos;groups&apos;][pos][&apos;items&apos;]; break;&#xd;&#xa;                default: throw new UnsupportedOperationException(&quot;Invalid selection pane: &quot; + report.selPane)&#xd;&#xa;            }&#xd;&#xa;            List ids = list.collect { it[&apos;nodeID&apos;] }&#xd;&#xa;            def nodesFound = ctrl.find { ids.contains(it.nodeID) }&#xd;&#xa;            if (nodesFound.size() &gt; 0) {&#xd;&#xa;                if (ReportWindow.autoFoldMap) {&#xd;&#xa;                    FoldToTop(nodesFound[0])&#xd;&#xa;                }&#xd;&#xa;                nodesFound.each {&#xd;&#xa;                    UnfoldBranch(it)&#xd;&#xa;                }&#xd;&#xa;                ctrl.selectMultipleNodes(nodesFound)&#xd;&#xa;                frame.visible = false&#xd;&#xa;                frame.dispose()&#xd;&#xa;            } else {&#xd;&#xa;                UITools.informationMessage(&quot;Error finding selection&quot;);&#xd;&#xa;            }&#xd;&#xa;        } else if (uri.startsWith(&apos;link:&apos;)) {&#xd;&#xa;            String linkNodeID = uri.substring(5)&#xd;&#xa;            def nodesFound = ctrl.find { it.nodeID == linkNodeID }&#xd;&#xa;&#xd;&#xa;            if (nodesFound[0] != null) {&#xd;&#xa;                if (ReportWindow.autoFoldMap) {&#xd;&#xa;                    FoldToTop(nodesFound[0])&#xd;&#xa;                }&#xd;&#xa;                UnfoldBranch(nodesFound[0])&#xd;&#xa;                ctrl.select(nodesFound[0])&#xd;&#xa;                ctrl.centerOnNode(nodesFound[0])&#xd;&#xa;                ctrl.centerOnNode(nodesFound[0])&#xd;&#xa;                frame.visible = false&#xd;&#xa;                frame.dispose()&#xd;&#xa;            } else {&#xd;&#xa;                UITools.informationMessage(&quot;Next Action not found in mind map. Refresh Next Action list&quot;);&#xd;&#xa;            }&#xd;&#xa;        } else {&#xd;&#xa;            URI uriLink = new URI(uri);&#xd;&#xa;            if (Desktop.isDesktopSupported()) {&#xd;&#xa;                try {&#xd;&#xa;                    Desktop.getDesktop().browse(uriLink);&#xd;&#xa;                } catch (IOException e) {&#xd;&#xa;                    UITools.informationMessage(&apos;Cannot open link &apos; + uri + &apos; in browser: &apos; + e.message)&#xd;&#xa;                }&#xd;&#xa;            } else {&#xd;&#xa;                UITools.informationMessage(&apos;Error opening link: Desktop is not supported&apos;)&#xd;&#xa;            }&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    // recursive unfolding of branch&#xd;&#xa;    private void UnfoldBranch(Proxy.Node thisNode) {&#xd;&#xa;        Proxy.Node rootNode = thisNode.getMap().getRoot();&#xd;&#xa;        if (thisNode != rootNode) {&#xd;&#xa;            thisNode.setFolded(false);&#xd;&#xa;            UnfoldBranch(thisNode.getParent());&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    // fold to first level&#xd;&#xa;    private void FoldToTop(Proxy.Node thisNode) {&#xd;&#xa;        Proxy.Node rootNode = thisNode.getMap().getRoot();&#xd;&#xa;        def Nodes = ctrl.findAll();&#xd;&#xa;        Nodes.each {&#xd;&#xa;            it.setFolded(true);&#xd;&#xa;        }&#xd;&#xa;        rootNode.setFolded(false);&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;class CloseAction extends AbstractAction {&#xd;&#xa;    JFrame frame&#xd;&#xa;&#xd;&#xa;    CloseAction(frame) {&#xd;&#xa;        this.frame = frame&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    private recurseComponent(Component c) {&#xd;&#xa;        if (c.name == &quot;button_cancel&quot;) {&#xd;&#xa;            ((JButton) c).doClick()&#xd;&#xa;        } else if (c instanceof Container) {&#xd;&#xa;            ((Container) c).components.each {&#xd;&#xa;                recurseComponent(it)&#xd;&#xa;            }&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    public void actionPerformed(ActionEvent e) {&#xd;&#xa;        recurseComponent(frame.rootPane)&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;System.setProperty(&quot;xr.text.aa-smoothing-level&quot;, &quot;1&quot;)&#xd;&#xa;System.setProperty(&quot;xr.text.aa-fontsize-threshhold&quot;, &quot;1&quot;)&#xd;&#xa;System.setProperty(&quot;xr.text.aa-rendering-hint&quot;, &quot;RenderingHints.VALUE_TEXT_ANTIALIAS_DEFAULT&quot;)&#xd;&#xa;&#xd;&#xa;JFrame frameinstance = ReportWindow.getMainFrame(config, c, report)&#xd;&#xa;frameinstance.visible = true&#xd;&#xa;ReportWindow.refresh(report)&#xd;&#xa;" ID="ID_1957993551" CREATED="1495901104987" MODIFIED="1495901105018"/>
</node>
<node TEXT="FreeplaneShorthand.groovy" FOLDED="true" ID="ID_900035903" CREATED="1323057833226" MODIFIED="1447782976146">
<attribute_layout NAME_WIDTH="206" VALUE_WIDTH="159"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.parseShorthand"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="alt H"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<edge COLOR="#999999"/>
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.parseShorthand]&quot;})&#xd;&#xa;//=========================================================&#xd;&#xa;// Freeplane GTD+&#xd;&#xa;//&#xd;&#xa;// Copyright (c)2016 Gergely Papp&#xd;&#xa;//&#xd;&#xa;// This program is free software: you can redistribute it and/or modify&#xd;&#xa;// it under the terms of the GNU General Public License as published by&#xd;&#xa;// the Free Software Foundation, either version 3 of the License, or&#xd;&#xa;// any later version.&#xd;&#xa;//&#xd;&#xa;// This program is distributed in the hope that it will be useful,&#xd;&#xa;// but WITHOUT ANY WARRANTY; without even the implied warranty of&#xd;&#xa;// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xd;&#xa;// GNU General Public License for more details.&#xd;&#xa;//&#xd;&#xa;// You should have received a copy of the GNU General Public License&#xd;&#xa;// along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xd;&#xa;//&#xd;&#xa;//=========================================================&#xd;&#xa;&#xd;&#xa;//=========================================================&#xd;&#xa;// references&#xd;&#xa;//=========================================================&#xd;&#xa;import freeplaneGTD.GTDMapReader&#xd;&#xa;&#xd;&#xa;//=========================================================&#xd;&#xa;// script&#xd;&#xa;//=========================================================&#xd;&#xa;// Get icon keys for next actions and projects&#xd;&#xa;// Expand any nodes with next action shorthand&#xd;&#xa;GTDMapReader.instance.convertShorthand(node.map.root);&#xd;&#xa;" ID="ID_682430742" CREATED="1495901105018" MODIFIED="1495901105018"/>
</node>
<node TEXT="GTDActionEditor.groovy" FOLDED="true" ID="ID_572939250" CREATED="1415043619831" MODIFIED="1447782976145">
<attribute_layout NAME_WIDTH="215" VALUE_WIDTH="156"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.editAction"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F4" OBJECT="org.freeplane.features.format.FormattedObject|F4|number:decimal:#0.####"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.editAction]&quot;})&#xd;&#xa;//=========================================================&#xd;&#xa;// Freeplane GTD+&#xd;&#xa;//&#xd;&#xa;// Copyright (c)2014 Gergely Papp&#xd;&#xa;//&#xd;&#xa;// This program is free software: you can redistribute it and/or modify&#xd;&#xa;// it under the terms of the GNU General Public License as published by&#xd;&#xa;// the Free Software Foundation, either version 3 of the License, or&#xd;&#xa;// any later version.&#xd;&#xa;//&#xd;&#xa;// This program is distributed in the hope that it will be useful,&#xd;&#xa;// but WITHOUT ANY WARRANTY; without even the implied warranty of&#xd;&#xa;// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xd;&#xa;// GNU General Public License for more details.&#xd;&#xa;//&#xd;&#xa;// You should have received a copy of the GNU General Public License&#xd;&#xa;// along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xd;&#xa;//&#xd;&#xa;//=========================================================&#xd;&#xa;import freeplaneGTD.DateUtil&#xd;&#xa;import freeplaneGTD.GTDMapReader&#xd;&#xa;import groovy.swing.SwingBuilder&#xd;&#xa;import org.freeplane.core.ui.components.UITools&#xd;&#xa;import org.freeplane.core.util.TextUtils&#xd;&#xa;import org.freeplane.plugin.script.proxy.Proxy&#xd;&#xa;&#xd;&#xa;import javax.swing.*&#xd;&#xa;import java.awt.*&#xd;&#xa;import java.awt.event.ActionEvent&#xd;&#xa;import java.awt.event.KeyEvent&#xd;&#xa;&#xd;&#xa;class ActionEditorModel {&#xd;&#xa;    String action&#xd;&#xa;    String delegate&#xd;&#xa;    String context&#xd;&#xa;    boolean today&#xd;&#xa;    String when&#xd;&#xa;    String priority&#xd;&#xa;    String waitFor&#xd;&#xa;    String waitUntil&#xd;&#xa;    boolean done&#xd;&#xa;&#xd;&#xa;    Proxy.Node node&#xd;&#xa;&#xd;&#xa;    boolean setNode(Proxy.Node node) {&#xd;&#xa;        this.node = node&#xd;&#xa;        GTDMapReader mapReader = GTDMapReader.instance&#xd;&#xa;        mapReader.findIcons(node.map.root)&#xd;&#xa;        mapReader.internalConvertShorthand(node)&#xd;&#xa;        if (!node.icons.contains(mapReader.iconNextAction)) {&#xd;&#xa;            UITools.errorMessage(&apos;Selected node is not a task&apos;)&#xd;&#xa;            return false&#xd;&#xa;        }&#xd;&#xa;        action = node.text&#xd;&#xa;        delegate = node.attributes[&apos;Who&apos;]?.replaceAll(&apos;,&apos;, &apos;, &apos;)&#xd;&#xa;        context = node.attributes[&apos;Where&apos;]?.replaceAll(&apos;,&apos;, &apos;, &apos;)&#xd;&#xa;        today = node.icons.contains(GTDMapReader.instance.iconToday)&#xd;&#xa;        when = node.attributes[&apos;When&apos;]&#xd;&#xa;        priority = node.attributes[&apos;Priority&apos;]&#xd;&#xa;        waitFor = node.attributes[&apos;WaitFor&apos;]?.replaceAll(&apos;,&apos;, &apos;, &apos;)&#xd;&#xa;        waitUntil = node.attributes[&apos;WaitUntil&apos;]&#xd;&#xa;        done = node.icons.contains(GTDMapReader.instance.iconDone)&#xd;&#xa;        return true&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    void updateNode() {&#xd;&#xa;        String localContext = &apos; @&apos; + (context.split(&apos;,&apos;)*.trim()).join(&apos; @&apos;)&#xd;&#xa;        node.text = &quot;* $action &quot; +&#xd;&#xa;                (context?.trim() ? &quot;$localContext&quot; : &apos;&apos;) +&#xd;&#xa;                (delegate?.trim() ? &quot;[$delegate]&quot; : &apos;&apos;) +&#xd;&#xa;                (when?.trim() ? &quot;{$when}&quot; : &apos;&apos;) +&#xd;&#xa;                (priority?.trim() ? &quot;#$priority&quot; : &apos;&apos;)&#xd;&#xa;&#xd;&#xa;        !delegate ? node.attributes.removeAll(&apos;Who&apos;) : false&#xd;&#xa;        !context ? node.attributes.removeAll(&apos;Where&apos;) : false&#xd;&#xa;        !when ? node.attributes.removeAll(&apos;When&apos;) : false&#xd;&#xa;        !priority ? node.attributes.removeAll(&apos;Priority&apos;) : false&#xd;&#xa;        if (waitFor) {&#xd;&#xa;            node.attributes.set(&apos;WaitFor&apos;, waitFor.split(&apos;,&apos;)*.trim().unique({ a, b -&gt; a.toLowerCase() &lt;=&gt; b.toLowerCase() }).join(&apos;,&apos;))&#xd;&#xa;        } else&#xd;&#xa;            node.attributes.removeAll(&apos;WaitFor&apos;)&#xd;&#xa;&#xd;&#xa;        if (waitUntil) {&#xd;&#xa;            def waitUntilDate = DateUtil.normalizeDate(waitUntil)&#xd;&#xa;            node.attributes.set(&apos;WaitUntil&apos;, waitUntilDate)&#xd;&#xa;        } else&#xd;&#xa;            node.attributes.removeAll(&apos;WaitUntil&apos;)&#xd;&#xa;&#xd;&#xa;        GTDMapReader mapReader = GTDMapReader.instance&#xd;&#xa;        if (node.icons.contains(mapReader.iconToday) != today) {&#xd;&#xa;            if (!today) {&#xd;&#xa;                node.icons.remove(mapReader.iconToday)&#xd;&#xa;            } else {&#xd;&#xa;                node.icons.add(mapReader.iconToday)&#xd;&#xa;            }&#xd;&#xa;        }&#xd;&#xa;        if (node.icons.contains(mapReader.iconDone) != done) {&#xd;&#xa;            if (!done) {&#xd;&#xa;                node.icons.remove(mapReader.iconDone)&#xd;&#xa;            } else {&#xd;&#xa;                node.icons.add(mapReader.iconDone)&#xd;&#xa;            }&#xd;&#xa;        }&#xd;&#xa;        // Find icons in the entire map&#xd;&#xa;        mapReader.findIcons(node.map.root)&#xd;&#xa;        // Remove priority icons that are to be re-added by the shorthand conversion&#xd;&#xa;        node.icons.each {&#xd;&#xa;            if (it ==~ /^full\-\d$/) {&#xd;&#xa;                node.icons.remove(it)&#xd;&#xa;            }&#xd;&#xa;        }&#xd;&#xa;        // Remove all existing context icons, that are to be re-added by the shorthand conversion&#xd;&#xa;        node.icons.each {&#xd;&#xa;            if (mapReader.contextIcons.containsValue(it)) {&#xd;&#xa;                node.icons.remove(it)&#xd;&#xa;            }&#xd;&#xa;        }&#xd;&#xa;        // Only re-parse the current node&#xd;&#xa;        mapReader.internalConvertShorthand(node)&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;class ActionEditor {&#xd;&#xa;    ActionEditorModel model = new ActionEditorModel();&#xd;&#xa;&#xd;&#xa;    JDialog mainFrame;&#xd;&#xa;    JTextField actionField&#xd;&#xa;    JTextField delegateField&#xd;&#xa;    JTextField contextField&#xd;&#xa;    JCheckBox todayField&#xd;&#xa;    JTextField whenField&#xd;&#xa;    JTextField priorityField&#xd;&#xa;    JCheckBox doneField&#xd;&#xa;    JTextField waitForField&#xd;&#xa;    JTextField waitUntilField&#xd;&#xa;    JButton doneButton&#xd;&#xa;&#xd;&#xa;    ActionEditor() {&#xd;&#xa;        SwingBuilder.edtBuilder {&#xd;&#xa;            mainFrame = dialog(&#xd;&#xa;                    title: TextUtils.getText(&quot;freeplaneGTD.actioneditor.title&quot;),&#xd;&#xa;                    defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,&#xd;&#xa;                    show: false,&#xd;&#xa;                    modal: true) {&#xd;&#xa;                boxLayout(axis: BoxLayout.Y_AXIS)&#xd;&#xa;                panel(border: BorderFactory.createEmptyBorder(10, 10, 10, 10)) {&#xd;&#xa;                    gridBagLayout()&#xd;&#xa;&#xd;&#xa;                    label(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.action&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 0, gridy: 0, ipadx: 5, fill: HORIZONTAL))&#xd;&#xa;                    actionField = textField(preferredSize: new Dimension(400, 25),&#xd;&#xa;                            constraints: gbc(gridx: 1, gridy: 0, gridwidth: REMAINDER, fill: HORIZONTAL))&#xd;&#xa;&#xd;&#xa;                    label(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.delegate&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 0, gridy: 1, ipadx: 5, fill: HORIZONTAL))&#xd;&#xa;                    delegateField = textField(preferredSize: new Dimension(300, 25),&#xd;&#xa;                            constraints: gbc(gridx: 1, gridy: 1, gridwidth: REMAINDER, fill: HORIZONTAL))&#xd;&#xa;&#xd;&#xa;                    label(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.context&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 0, gridy: 2, ipadx: 5, fill: HORIZONTAL))&#xd;&#xa;                    contextField = textField(preferredSize: new Dimension(300, 25),&#xd;&#xa;                            constraints: gbc(gridx: 1, gridy: 2, gridwidth: REMAINDER, fill: HORIZONTAL))&#xd;&#xa;&#xd;&#xa;                    label(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.when&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 0, gridy: 3, ipadx: 5, fill: HORIZONTAL))&#xd;&#xa;                    todayField = checkBox(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.today&quot;),&#xd;&#xa;                            preferredSize: new Dimension(50, 25),&#xd;&#xa;                            constraints: gbc(gridx: 1, gridy: 3, ipadx: 5))&#xd;&#xa;                    whenField = textField(preferredSize: new Dimension(250, 25),&#xd;&#xa;                            constraints: gbc(gridx: 2, gridy: 3, fill: HORIZONTAL))&#xd;&#xa;                    doneField = checkBox(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.done&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 3, gridy: 3, fill: HORIZONTAL))&#xd;&#xa;&#xd;&#xa;                    label(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.waitFor&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 0, gridy: 4, ipadx: 5, fill: HORIZONTAL))&#xd;&#xa;                    waitForField = textField(preferredSize: new Dimension(250, 25),&#xd;&#xa;                            constraints: gbc(gridx: 1, gridy: 4, gridwidth: REMAINDER, fill: HORIZONTAL))&#xd;&#xa;&#xd;&#xa;                    label(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.waitUntil&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 0, gridy: 5, ipadx: 5, fill: HORIZONTAL))&#xd;&#xa;                    waitUntilField = textField(preferredSize: new Dimension(250, 25),&#xd;&#xa;                            constraints: gbc(gridx: 1, gridy: 5, gridwidth: REMAINDER, fill: HORIZONTAL))&#xd;&#xa;&#xd;&#xa;                    label(text: TextUtils.getText(&quot;freeplaneGTD.actioneditor.priority&quot;),&#xd;&#xa;                            constraints: gbc(gridx: 0, gridy: 6, ipadx: 5, fill: HORIZONTAL))&#xd;&#xa;                    priorityField = textField(preferredSize: new Dimension(20, 25),&#xd;&#xa;                            constraints: gbc(gridx: 1, gridy: 6, gridwidth: REMAINDER, fill: HORIZONTAL))&#xd;&#xa;&#xd;&#xa;                }&#xd;&#xa;&#xd;&#xa;                panel() {&#xd;&#xa;                    boxLayout(axis: BoxLayout.X_AXIS)&#xd;&#xa;                    button(text: TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;),&#xd;&#xa;                            actionPerformed: {&#xd;&#xa;                                mainFrame.setVisible(false)&#xd;&#xa;                                mainFrame.dispose()&#xd;&#xa;                            })&#xd;&#xa;                    doneButton = button(id: &apos;doneButton&apos;, text: TextUtils.getText(&quot;freeplaneGTD.button.done&quot;),&#xd;&#xa;                            actionPerformed: {&#xd;&#xa;                                model.action = actionField.text&#xd;&#xa;                                model.delegate = delegateField.text&#xd;&#xa;                                model.context = contextField.text&#xd;&#xa;                                model.today = todayField.selected&#xd;&#xa;                                model.when = whenField.text&#xd;&#xa;                                model.priority = priorityField.text&#xd;&#xa;                                model.waitFor = waitForField.text&#xd;&#xa;                                model.waitUntil = waitUntilField.text&#xd;&#xa;                                model.done = doneField.selected&#xd;&#xa;                                model.updateNode()&#xd;&#xa;                                mainFrame.setVisible(false)&#xd;&#xa;                                mainFrame.dispose()&#xd;&#xa;                            })&#xd;&#xa;                }&#xd;&#xa;            }&#xd;&#xa;            mainFrame.getRootPane().setDefaultButton(doneButton)&#xd;&#xa;        }&#xd;&#xa;        // on ESC key close frame&#xd;&#xa;        mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(&#xd;&#xa;                KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;));&#xd;&#xa;        mainFrame.getRootPane().getActionMap().put(TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;),&#xd;&#xa;                new AbstractAction() {&#xd;&#xa;                    void actionPerformed(ActionEvent e) {&#xd;&#xa;                        mainFrame.setVisible(false);&#xd;&#xa;                        mainFrame.dispose();&#xd;&#xa;                    }&#xd;&#xa;                });&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;    void editNode(Proxy.Node node) {&#xd;&#xa;        if (!model.setNode(node)) {&#xd;&#xa;            return&#xd;&#xa;        }&#xd;&#xa;        actionField.text = model.action&#xd;&#xa;        delegateField.text = model.delegate&#xd;&#xa;        contextField.text = model.context&#xd;&#xa;        todayField.selected = model.today&#xd;&#xa;        whenField.text = model.when&#xd;&#xa;        priorityField.text = model.priority&#xd;&#xa;        waitForField.text = model.waitFor&#xd;&#xa;        waitUntilField.text = model.waitUntil&#xd;&#xa;        doneField.selected = model.done&#xd;&#xa;        mainFrame.pack()&#xd;&#xa;        mainFrame.setLocationRelativeTo(UITools.frame)&#xd;&#xa;        mainFrame.setVisible(true)&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;ActionEditor editor = new ActionEditor()&#xd;&#xa;editor.editNode(node)&#xd;&#xa;" ID="ID_774288738" CREATED="1495901105018" MODIFIED="1495901105018"/>
</node>
<node TEXT="GTDReviewTask.groovy" FOLDED="true" ID="ID_1165981840" CREATED="1453634472702" MODIFIED="1453635023181">
<attribute_layout NAME_WIDTH="218" VALUE_WIDTH="150"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.reviewTask"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F5"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="import freeplaneGTD.DoneMover&#xd;&#xa;import freeplaneGTD.GTDMapReader&#xd;&#xa;import org.freeplane.core.util.TextUtils&#xd;&#xa;import org.freeplane.plugin.script.proxy.Proxy&#xd;&#xa;&#xd;&#xa;// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.archiveTask]&quot;})&#xd;&#xa;/*&#xd;&#xa;=========================================================&#xd;&#xa; Freeplane GTD+&#xd;&#xa;&#xd;&#xa; Copyright (c)2016 Gergely Papp&#xd;&#xa;&#xd;&#xa; This program is free software: you can redistribute it and/or modify&#xd;&#xa; it under the terms of the GNU General Public License as published by&#xd;&#xa; the Free Software Foundation, either version 3 of the License, or&#xd;&#xa; any later version.&#xd;&#xa;&#xd;&#xa; This program is distributed in the hope that it will be useful,&#xd;&#xa; but WITHOUT ANY WARRANTY; without even the implied warranty of&#xd;&#xa; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xd;&#xa; GNU General Public License for more details.&#xd;&#xa;&#xd;&#xa; You should have received a copy of the GNU General Public License&#xd;&#xa; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xd;&#xa;&#xd;&#xa;=========================================================&#xd;&#xa;*/&#xd;&#xa;&#xd;&#xa;class ReviewTask extends DoneMover {&#xd;&#xa;&#xd;&#xa;    public Proxy.Node findOrCreateReviewDir(Proxy.Node node){&#xd;&#xa;        final Proxy.Node rootNode = node.map.root&#xd;&#xa;        final String reviewDirName = TextUtils.getText(&quot;freeplaneGTD.config.reviewDirName&quot;)&#xd;&#xa;&#xd;&#xa;        Proxy.Node archiveNode = rootNode.children.find {&#xd;&#xa;            it.transformedText==reviewDirName&#xd;&#xa;        }&#xd;&#xa;        if(!archiveNode) {&#xd;&#xa;            archiveNode = rootNode.createChild()&#xd;&#xa;            archiveNode.text=reviewDirName&#xd;&#xa;        }&#xd;&#xa;        return archiveNode&#xd;&#xa;    }&#xd;&#xa;&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;ReviewTask reviewTask = new ReviewTask()&#xd;&#xa;reviewTask.execute(reviewTask.findOrCreateReviewDir(node), node)&#xd;&#xa;&#xd;&#xa;" ID="ID_284128976" CREATED="1495901105018" MODIFIED="1495901105018"/>
</node>
<node TEXT="GTDArchiveTask.groovy" FOLDED="true" ID="ID_1222024407" CREATED="1453634472702" MODIFIED="1453635033484">
<attribute_layout NAME_WIDTH="218" VALUE_WIDTH="150"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.archiveTask"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F6"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="import freeplaneGTD.DoneMover&#xd;&#xa;import freeplaneGTD.GTDMapReader&#xd;&#xa;import org.freeplane.core.ui.components.UITools&#xd;&#xa;import org.freeplane.core.util.TextUtils&#xd;&#xa;import org.freeplane.plugin.script.proxy.Proxy&#xd;&#xa;&#xd;&#xa;// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.archiveTask]&quot;})&#xd;&#xa;/*&#xd;&#xa;=========================================================&#xd;&#xa; Freeplane GTD+&#xd;&#xa;&#xd;&#xa; Copyright (c)2016 Gergely Papp&#xd;&#xa;&#xd;&#xa; This program is free software: you can redistribute it and/or modify&#xd;&#xa; it under the terms of the GNU General Public License as published by&#xd;&#xa; the Free Software Foundation, either version 3 of the License, or&#xd;&#xa; any later version.&#xd;&#xa;&#xd;&#xa; This program is distributed in the hope that it will be useful,&#xd;&#xa; but WITHOUT ANY WARRANTY; without even the implied warranty of&#xd;&#xa; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xd;&#xa; GNU General Public License for more details.&#xd;&#xa;&#xd;&#xa; You should have received a copy of the GNU General Public License&#xd;&#xa; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xd;&#xa;&#xd;&#xa;=========================================================&#xd;&#xa;*/&#xd;&#xa;&#xd;&#xa;class ArchiveTask extends DoneMover {&#xd;&#xa;&#xd;&#xa;    public Proxy.Node findOrCreateArchiveDir (Proxy.Node node){&#xd;&#xa;        final Proxy.Node rootNode = node.map.root&#xd;&#xa;        final String archiveDirName = TextUtils.getText(&quot;freeplaneGTD.config.archiveDirName&quot;)&#xd;&#xa;&#xd;&#xa;        Proxy.Node archiveNode = rootNode.children.find {&#xd;&#xa;            it.transformedText==archiveDirName&#xd;&#xa;        }&#xd;&#xa;        if(!archiveNode) {&#xd;&#xa;            archiveNode = rootNode.createChild()&#xd;&#xa;            archiveNode.text=archiveDirName&#xd;&#xa;        }&#xd;&#xa;        return archiveNode&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;ArchiveTask archiveTask = new ArchiveTask()&#xd;&#xa;archiveTask.execute(archiveTask.findOrCreateArchiveDir(node), node)&#xd;&#xa;&#xd;&#xa;" ID="ID_651229738" CREATED="1495901105018" MODIFIED="1495901105018"/>
</node>
</node>
<node TEXT="zips" FOLDED="true" POSITION="right" ID="ID_1927628745" CREATED="1323057303835" MODIFIED="1456082263793">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="icons" FOLDED="true" ID="ID_1422580718" CREATED="1323094256288" MODIFIED="1413298793053" LINK="zips/icons/">
<node TEXT="UEsDBBQACAgIAGGXd0oAAAAAAAAAAAAAAAATAAAAaWNvbnMvZnBndGRJY29uLnBuZ+1bB1xURx&#xa;r/HtthaSsgImXpoNJ7UBCXKtKWjR0UaUHpHUMUjQWIRIWoiJyKYEHvJBqxEsUIcmqikajYUFE0&#xa;EhVBCaDI7s28XcB4JrHc7+682z/8d+Z902e++aa83bxAfy95WQ1ZAJD38XbnI1cdcTiTjj6VdV&#xa;eaIYdI4XtNgN1nNdvQAzXazc8NYM9KuRdhNPTMDffm+wHMNwLIWQLwHIly7gOkWQL8Mhvgo2KU&#xa;WWLp4aCxKICV6D0tBeWnhkksadBPB5DJ83F3E3j7bl0TkusXpNJwTtfUKO922JOKTP6WmTd17t&#xa;wYEXWyofhkQdQclQSVZxr5wxVzTYyyihmKB4p3hGUbztFjWdymZUVsrNH/tUf0+NsvnVOu9mi3&#xa;X39e3TRtXnN1d+i8v3x2+5Muxcqfu8JLw6rizf2/yJnluph9tmBvYfQ9esl2uHk0c1lBa9Ye38&#xa;AUzmzVDFE8MzPApWKVv/3zCyXUTL7MxkLdJ6U1lga+xte+GWlnCJOTe/qjF82IyGEX9i2LaIso&#xa;UvzskcrFS0H9Haz5PcQUH51DnhNJ+UrDWo4wesS0eO9tu/msRfvbaivTb7GdvMzVC7cWmekcAf&#xa;P7PS2W+5YW9ho9/oHoO+WWXOdY9yusjktbcnZ9V1+vWq+7y/ZVX+6npbXEPPXJ/7U2vTHGe+1Z&#xa;I6Z8V5YT1OhVnRrJ25u692+sTVvaH0xwPspJOqBwKj32r5uzjww/6KVd6NW6R/cZcci3lXdzdu&#xa;VOv9yRy45qK7gpmj8yOQjH+lbKOFQe8Z9441726Z8mb9zxrGjUpvHD+MUT+9p2H7uTdyakVpX3&#xa;xCN544/b1zT5P2/vuDvVV+PUR+V5826sG+XU/Bezpzl35GtZyY2rsldoGi3S7r1Fa5xkX/hDRU&#xa;Gsnpmy0ZejjccnqX09T+HrDQ+tDHybgmaFTbLTemA2m9EUd/ISM+nh5w8M4i/6XrRdL6yoX3Xd&#xa;+xNfh6a062vK7L7LlNum2qwc1beebn+ZVeTg1PBza1zoXOu0lnVjfGr5mz9zN02f7+R6wjjDkO&#xa;3ndW/deOdJaz5pPXh4wQ4HzZzpVQ8K5+09XeEytShkvcHog+muyx4vUmhLuNhVPDdi68jwxCn1&#xa;rKt7jNzzCndNsK7K3/TFzKxkUWD7TvNpOkWiL0WMs7XW2QVX7+kjTYXwuAB3/1zWcYDxEJ7ok/&#xa;jjOeVbZXs0WuAVuAAFhCIW0F+SERKSUEIqLnkWikSiAbFIig8K/YhUyRhis4cNJh5zBiITmzZE&#xa;OUk4GxtTRAVERYlMig8bfEhAf6nABQ+IR24yZL1qCv4QakAbnPPYFixY6Fq9tXsZr6ysXMagMf&#xa;fx69JQxAlJuEMYKjUMgtFnAio98q1KB1ABgmBJ7A7ld+J0HHfnFe/7nriV7UO6L4dZvmV5r4IK&#xa;MsTL/fmm6RZJXKt/QfnYDuO5+6blU8h0YuDOwOnxXH6ZL89/bBOwDXh1/qMlAJQROYjDAI8FgC&#xa;qIh3Y4iDdcIxA1EEciaiJqIWoj6kjK1EWuHiJenAwQDRHRlguMEU0QTRFHIY6WxDeTuBYgHjvc&#xa;f9aINoi2iHaI9ogOiI6ITogfIToj4q3aOMBrG4Ar4BUQAG35YAIiD7AuApoFAJ6IXojeiD6IEx&#xa;F9ESchoi0h+CMGIAYiBiHizWUwogDxY0n9psCHYR/Fk8HEkhsomBbIdZCXteQGfCyYzHXEvkA3&#xa;TwHXGvsE3n7B8rLysiPhCVWiMZpiL0EOJhVLuEBtTbo9XheoBDmqSH9qUf8edNMHThQkQjSa4x&#xa;GoR8PRTI9HI42SK7m9gb7+Eah/HuUPgeutAUxtq1ReNHUuT9I+vAJqkvr9G2gDkfuKiPae5UOO&#xa;uAs1oCOOLq7OwNTBfYk5GpUhuiy6BUoTPX08kb0j0OqM5qfoGtJaGYLA/xJQaBQMOpVKoTHoDA&#xa;YmkyXHYjJlmQwGGj9ZOTYCg6WgKM9WwH7r96z+u9g/3MMDds/m/csn88P26k3Lp8GQ3tj+C8p/&#xa;2/Zj7cqWbKzt3r98AmeFbfWbls9F7JAR+7ESYfXBWoP+2UwGk/3WENWCMhPprTqF0AMZZYKiTI&#xa;jqsIknaASJgZIJGQqVRkcqKSuHIlQrocpTKDJIWWlUNCDEZygcqMo0jq6VG31YUBhDL0nFetHq&#xa;Mqb+hD3HVfnnOwxs5iQvZsmqDVcfoWFoZGxiOsrWzt7B0ekjnruHp5e3z8RgwceTp0ydNj08Ij&#xa;Iq+pOYuSmpaekZmVnzP1+ydNny3Lz8wqKv1qxdV7y+ZEt5xdZt23dU7tz7zb7q/QcOHjr83Ym6&#xa;+pMNfz91uvGnCxcvNV2+crXl9p3Wu/d+vt/2S+eTp12/dvf0PnuO20UAhRjAa9uljBdlNAepDN&#xa;wuQiYDR1Cm0nSt6By3IEZY0jA960VMlQmry/YcZ+nb8DtU5ySfl1UzsG0x7MRNI1v2Zg1b/E4t&#xa;G2zYULuuAptCoMGjKKO1cZcI6P3CelcYq9unfLn3SEOoUm9cZ3j9LKVZj5r8bmupNcw48GOh8V&#xa;rHR3Eveovr+vyjKNRTT0pzLzSdW9gR8rjXyGV5p033to5xPQ+v3frBQcix0Joxc0Zoptx3h+Oq&#xa;SxPlHIOWPqr+KzN/tYqCYVTt07E1nIjaJ1W9hiFVJ/2cu9Mzfnzhu+X+jRE1F4w2+K4M/HoTf3&#xa;WOs6FJZRrnhE5JwdLjY26EKxG0o6v6C0QQ91gt26J/59joirbDy5e/mNFp1H3etqsz5MXwyRt1&#xa;OuqXWHv0l0Vq7Z10716b4aemoYYlNvqTOD4tSnqb6nTU7phG232dXxOpYV20ru5h9TH7843d8z&#xa;Z4bbkY0++lqPDk+QtnntVa7aS1RkorwttNfa7Yndm1seYAv/WiS4z9hmN3Vz5y6iNeRPevSG3W&#xa;67m96cRClUy9cyFrvWONLzxK90gxCPPdPNv7OoXy+WLPpFJN1b5xIqC19u9/odhpI2Q9230/1O&#xa;SbkPR2YXdztrN2j3xMZUv3TPqsI3dP/Fx0ZNkIXs+OqsbeWS7T9qve5px3DhltfH9Dgv+3Lhm+&#xa;ndqOLV6rwnWXrvnpq6zSGTXlu6ZXq+8ad2ld+9+iRGB9lCW8pKMg5ArPCrU7btaZTV8o29vU8n&#xa;2nX0sCx2vbhqbqzGK7mtzVJ90Eyg2aq07b/31PebzFU69TCy5tqrZfur13Vu0CZu+43XP3CzU6&#xa;Ui2y+rerFM0IDcgyLllRX+LYOuWawff1TK++YPnNXJWgmY4L6Gd23FlwsLQ0a6ud3762Sh/bqy&#xa;vNhBdK/A7Wn/YzTLlY31u5oenMgs0t/jaJSx2mj5q4r4wxXOXuuTML02X5QfzCJYKKh9kiuGOR&#xa;t9Gg94vuhF7vbLfd846FN3cvfDSyLb6m4HLzgU+1Dl091BBS3phvUrV760SVLWX+pobnR+s/rf&#xa;E02q9Xvis0nv/p/msJ2x6HrBRdyftP3/zBcvHNX/NXxxVyuGze3XZRR/2C7VEMhZzGdEuFkkTu&#xa;g1CvvIpyYXvUzfhhO07sHbFCjbqCygz9xXyYWrs9yy6wZcXR/NUxgXbN4yrBU3QiuPSWcficrJ&#xa;8eFpx2vjvl5tG2KQE3vj1dRi9LPEKtWtQVu8uIc71uXSbnyvi80zQLP5OdYz2M5xQ+U9RSjVhz&#xa;pqA0E1soHw9/990TZi/GZl/2lxv+g4tBzuD+o2VgSfjtXsMb74NFLTDVIzMmCmXkM4pcbKhghQ&#xa;4eePuPt9NKQYT4eujEBVAOopL+cnQu4Lzkx8jIyDCPiZ+XEh6WGGmekBwt2cUw6XQGnYa2KAwW&#xa;iynLVpFny8mxR3CGKapoaehoa2loanINzI25emP0NTVNHEzHWFrZ2trqGDuNc7Qea25ja02uYi&#xa;wWiy3HVpeXV7fW1dS1fmuIVzHUDukq9r+xij0T5ptsVhRdobyq8y9BRgmfD8lNP6az2EsjZwQy&#xa;GzmuQ1GH/JJTAs5XE6g5v7vRegPwvP19ffx9uVS0g2XjLMkJCtBLsMn9nDoIPKYKxHOU9MmIDw&#xa;nq4OkeGCiWkz7JsYyU8wblPHKzScqDBcHeYjnpY4rP4fbvU3l4t/3vGBCfrzEEEAmZ6Fz4rpBF&#xa;LRooW/Z34gzc+9RemPJP9z88dJL3R7XwID+D37p8Dpok+G7kbdpvLq44CQLVIAHi0Ok4AObA3H&#xa;cp/637f7KEGGK9IAb1Qpspvv9A8mk+7hJ9Qb4Ipvj+B8m9ArkSOfIlMsUTRx2wFovl2Jc6KJ8g&#xa;8JDoaeAkHjeTKV6OSTlvSL5qUO4Z4C/Rd+zbwRTf2+B68oOH4rdK9PdDB75Pw20az4iTGTiTil&#xa;08mvh0LiMJHUiBF198I6ZEtp+t1/GMDqYaDBiFaI6v0sBSb/369YCNCZWMMfCeRkaSdzr6I+C3&#xa;dycyksDXyuniu7jX1VMRzZoYpL+RkILOlf7IzUAun9TpMIjHqWQISa1FMPT+iFR/vfe+PfngQU&#xa;h6BPfzC+JPIkvxPwXx9enQ+HdLx///BNj6cfRYVLEPD/s+RtYf2H8cOpD2P2v/X62n1P6/HwgQ&#xa;iiiyr7+7xe/NgtJiYmOd7LnBqQnJWVyv5IS0RC4vNiwlBYbe3gB0Oe1N+vfWWwoppJBCCimkkE&#xa;IKKaSQQgoppJBCCimkkEIKKaSQQgoppJBCiv8uKFzZeRc5w2IEU1MFMamx4t/fRiVGp0b4hCfE&#xa;BzRq4y8AKKZ6DAQPBjnsVMcvqB/GRQrCRMKx4AqZEAexwIV0iIRkSIEY8nd+40APrMAcLJHLRS&#xa;Hx5O//IlBoPESToR+DADzBDMWyR0+u4ALyIAtjyW8V4N8GuyB/OPmNgjgyR/wchiSpkIbcWJhF&#xa;fgMhDOUWify43PnI5wLWYAsW6NMGxbd4oxQ43qslWbxUD1yv3Oc2jbiPBr5R/w9QSwcI/gXnk0&#xa;0OAABqRAAAUEsBAhQAFAAICAgAYZd3Sv4F55NNDgAAakQAABMAAAAAAAAAAAAAAAAAAAAAAGlj&#xa;b25zL2ZwZ3RkSWNvbi5wbmdQSwUGAAAAAAEAAQBBAAAAjg4AAAAA" ID="ID_1099551955" CREATED="1495901105018" MODIFIED="1495901105018"/>
</node>
<node TEXT="lib" FOLDED="true" ID="ID_1543761795" CREATED="1413298467588" MODIFIED="1413298787850" LINK="zips/lib/">
<node TEXT="UEsDBBQACAgIAGGXd0oAAAAAAAAAAAAAAAARAAAAbGliL2ZyZWVwbGFuZUdURC8DAFBLBwgAAA&#xa;AAAgAAAAAAAABQSwMEFAAICAgAYZd3SgAAAAAAAAAAAAAAACUAAABsaWIvZnJlZXBsYW5lR1RE&#xa;L0NsaXBCb2FyZFV0aWwuZ3Jvb3Z57VhZb9tGEH4PkP+wSIGQrCXWMZIXOUbqxErqwkdQyz2gCM&#xa;GKXEmbUFx2ubKixvrvneG5vCUnfesChqTl7PfNzM5FB9T5TOeMzCRjgUd99m509vjR40d8GQip&#xa;iJBzO3tkO0Iye6W4Z4/YF3ULX8IGyRmjaiVZaM+EXFJlv40+FHPPqGL7nrlaLadMalp9onfUpm&#xa;tlu1RRJakfzpi0AZq+9eidkB2Co+QLnXqsQ/TWD1cBPmduDD384rBAceGjOo5Hw5C88XjwWlDp&#xa;okPIV3xAYIUAwx0Sy1xudFICnB5bMl+FpLCfHcYVSH4H3kqBZtynHsmNHE9ISbeQnJBxfj5dPl&#xa;trx8wnCu7up8ztfV+4LDyO9TyJvADbc/tGSe7Pn1i9TkAjAlyopdeEYuyMAipxfyeYSZ2rYh/F&#xa;0nlII8txh3BEvIsg2pnIaZKrqQdXVLxls06PXoWwV0a2MAx0T6kFD+0CClx0k3XZgYwAhOusyw&#xa;RTXpDTjEtFtjV2FoJwzlRqdb4fmhUrJIPs9isx20E1FcJj1Cc8zMFvUggz3yOz6KPCCrWE6GIl&#xa;ejKoKFSBwMVnxCwfPTlpIi2ZrOSKHVcltsWtba27ZtQLWYePrqefmKPKF1HnHLWQYh2S5qrWI+&#xa;fX2Y+yWeiEGMlmf69AsbJLwvHhxKr1RmpNS9Bu9yZ71k6WBvO30hy102S51coTeT6qec3OTxSx&#xa;itdduPWkFxSahiOhcbJC5bmkAXGEr6DD9Ah0dPj9G6Muk6A0fvSyvAoXYn0lFCuGfWIaqluqaV&#xa;U3QNmW1FFv06s1M+KYq672J2dwikjFW8R+gYvMUHOFUz+VnZOU0+jAFxWOxAUPlVncLVgbP4JS&#xa;5oEgVMFExg4DjyvT6BlWxTMG+dkgB9EB+5PgvokbVqs+FT91XVJBxxGdw525G1APbwV+mgZ2bq&#xa;NHxqPhn6MByUYyGwsBetbQh7qPd5ytP6LSCefYUJuAGRNropmXPZtLsQpCY2Iz6izK0Y/KOCt5&#xa;rtgS9EG1bOq6bxbcc8taceThygMinQcXPuIA0cSSMiEg3kpM2MoE/oU8qlLhQmntMAdT8fDr2/&#xa;OL0fnVIHG6jftX4L3TCKoOCIlc4YNF5NU+qGdwZmJBx4lqej1uEnp10DAKSz5dqcjkq9PL4YAY&#xa;fyyYxN+/n17cDgdFhFYqqHoovF4w8FZj/0LvIy0GXYsy9YfThaqSWFdwTbusZkesWp3/qwYQ7k&#xa;Ou+Q4TM1J402i0DBfagCa9lyJgUm1M4/r1r8M3IzDJ2ONt5h5zStPlgBj3G1j9y8u+6xoNBmyr&#xa;2zVbMazYPRxEMRiis7sEAoy6QnK1+fZgSK/7fYrYceUdSzMm17EesStW8vO18RK/Zf7XEROzZD&#xa;Gj+f1b48RlikL1r4sVyZ1FUtmjevnXe4yWs+Ho9PziBqhjm9gsVdJMuqVVBO6oXT525d3pr65H&#xa;w07uBLOBWfPEttKio7akRIxm7tSbo66pteVCMLhslg4IYy0Co62XLx/efvdtvimh8UGlUZQ02P&#xa;3bq4b1Qf2IcOVMeQWjzg/VaMUMNyysdSR9mPZectCcQKZe0AwyzkuniCvnxEiRO0GiYosoX6sF&#xa;eLsrTCAFvjslSPiymNuaPtkNSe/cpdGzENGZnBUD7xHR2rT5wTc6xl99di5Mmu2Tf92cib91Rb&#xa;OBL4Y0jcUzyOsHJ8DeGVDlPwJ+LRFKTm0dV1de+Q52nUvXEtxaN5d6vK7rp20oHh2t6LgdUEmX&#xa;0f/tQrXxGEQEBkffZY6QFPNpALfusz6+Pq7mi7rWt0cLTzSOmHX/hQH1Ew9qKR4ldy/XzBGekA&#xa;PJ3NpmVdOVyjz/V4nvVCVwNURYltXk6dMk3rK54P6+0FNbJz0Ff1oJcPmd0euYr7Q5oWWGAmAt&#xa;VSLcPMSm1PmMqe+7/TjaiJxPzaPnh72jF/D3/NA6noFn+iH/hw2eHQZqj+Fl5/lKtymbP76zRS&#xa;8eblGq0l72lFMRdO7O4QeNV1E7+hdQSwcIdOxIUNsFAABWGgAAUEsDBBQACAgIAGGXd0oAAAAA&#xa;AAAAAAAAAAAgAAAAbGliL2ZyZWVwbGFuZUdURC9EYXRlVXRpbC5ncm9vdnmtWG1v2kgQ/l6p/2&#xa;FOOgloyTpJo9OJNKfjEvIihQQBuV4u9CoHj2FbY1veJYRW+e83uzbGvNgspP7Cws7OMy/PDOux&#xa;rJNdn7dvLAvOI8TQs32Ei+6Z+kX/eie5x+UU+p4tBApwgwhCOxLcH4BjSxRVQNlnqfzfSHuBDw&#xa;dsf+8RpZ1unAbhNOKDoYRyv3K4f3AEFxgN0JtCyw7DVKw75ALCKBhE9gho6ZJVIAJXTuwIazAN&#xa;xtC3fYjQ4UJG/HEsEbgE23cssmwUONydakX049h3MAI5RJAYjQQErv5ycXNH2D5Gtget8aPH+3&#xa;DN++gLBJuw1S9iiA48xorUERUb6CRWwHlAmm1JbpLznPYjeErc/jADSTRWIYi0FtufgkfxSkVZ&#xa;rstzzxzgvtY2DEJyYmhL5daEex48IowFumOvqnWQNHy66l7e3nWhfnMPn+rtdv2me39M0nIY0C&#xa;4+YayLj0KPk2pyJbJ9Sm3gahXNRvv0ks7U/7q6vurek+FwftW9aXQ6cH7bhjq06u3u1enddb0N&#xa;rbt267bTYAAdVIah1lAQWFcnh2LnECe4J+be31NGBVnoOTC0n5Ay20f+RPbZ0CfKbE5aHF4vIE&#xa;IqX0l6Hk4y8MoFP5BVEGTox6GUYc2yJpMJG/hjFkQDy4u1COuP1KZX1FFo97/ZA9S01cWka+nt&#xa;Gwp6EEmK6YClW8xFW44jFIyiM7IlO9cflPYzIkrOmdAbD7jPRD/ioWTk5vOUnQY+kUryR2/HUz&#xa;Feevar/WQzic+SdRRZ9HZsW0ZISKqAfiw7pibBTm0PqSwidt+ot5WgbhmgDqsmAj/evgF6wjh5&#xa;yXGX+5TQZRjadZLVCfg4WREol6b07DWbe45TqigwrTriTySyqNtBF87q3cYXInGz3v3Sblw0/m&#xa;l1SPFDfGr2EIs6UyFxpPvarMktypT+6/WcH0cve+rjoHo4X8jZoqYWhy+93vtY9NdScra20ZNe&#xa;qdsrXV7WRqN/S5XqrsirBmyDXBMiD/z3uS9bPEXgzaZKX3U1D0PFsE1pUD73ejBbGhqXZ0+zCW&#xa;uMySJZPw3J2oDEfhoSM0WipQlYIRJbl8sm/VOPN9fUAqX3TP3PJ9esNxT4DluSKB8MtiCPIY8K&#xa;yWNNp8ZZfZ1nbDsKmbBpE9haFp1tTZ8jg+LJM8VxFH1Uh9qiD6s+m/5v5cbLWli8xsgZEwqMtF&#xa;ZQd4dTQFZR6zragXjFcIXky4MrbmSb4VbplyW7eLD3vn/+8UEtTRKYzzDqGU0oyN4C3lHVELAY&#xa;LwdQvYPwEdK1aRQWFpnxH5KJSbMLwOXlaJR74zAM81aAUIC4ro8kNmSuWMvGbO4joC9XW3ST3U&#xa;Hnt7pC0HXNaHfQeTPa4OlqS3qdp3FL2ujpusotBjaoXHPUbP0WwprUbzHsVqViEuFZjQqxqUp/&#xa;++lVmotpVqfL8TWt01ourlmpmuIul2o+rlm1muIuV2uRvyYFu42/2YIt9tesZrPYxjVrCFxcth&#xa;lk87LNIn8+nk0urHfvEmPewRmqaSX3cXUsEqrpUOQDrftDPh94IQy4Gu858fQjoi0GbZTjyBfg&#xa;jz0PuJvqj4dNatA49r/5wcRneganpqpCAU4BnyX6znxyo1H09C4+K0gdOYwOOixV+yddHOz4Pa&#xa;+jLYAu2ZWxCGSgpn+Jb8roXP8IJqM40o5odanjeUfVvHXm8RpP50rVOHB1uhXvWusmVSuIqS+Z&#xa;hCeez4NQmY291KOGoOVvOFVT3TUjKUZbHZTlysIh9ZAv5blOJoPrYILRqS2wXGE6JiiU4tWT6k&#xa;nitwbxgc4oEmalX+ZfM8tEh4rssbov3sUBTUKcxPVF0TleJkG7ffyKfQm+kvL4dx2qsn6XU+4s&#xa;WJsgOHoUmWrbpKs44Mmuy9Fz4ASyIYz4qFzJuL6SXnekho/rkqzVZc+q9CjxX050gFaSkDpMCk&#xa;mOqSs2ZhJaOV5Nt5KTQStmNWWZ+w4+37rUQ0sV+Aj7azOtgSgvydRUR2hZuXoU9IMa035WksEk&#xa;XucTYWZU5txHONhfb0RG6P0JHO7v7xcrnlGLDF4YgGs0NkCp3k3Kler85bqSoSigJ3DZjESlTt&#xa;QKnY14tTQcL6Qr25KzGd25ehdPaBQ1kK+kMC//A1BLBwhcqaUDOwYAAO8bAABQSwMEFAAICAgA&#xa;YZd3SgAAAAAAAAAAAAAAACEAAABsaWIvZnJlZXBsYW5lR1REL0RvbmVNb3Zlci5ncm9vdnmVVd&#xa;9r2zAQfg/kf7i9lDgMpS2jLyOw0cDYQ0voCntW5Yut1ZGEfG4b2vzvO9m1ZcdZ6ESwJd/dd5/u&#xa;V5xUjzJD2HhEV0iDP+5X08l0orfOegLrM9GJhCuqTBtRKq8dCefty06swzNYLObz6QTmcO1REq&#xa;bwsIPMSefAGrg8v7gS5xfi8osQQWkxnciHkrxUBKqQZQkra/DGPqGHV1bgxeiEKgBttJEFMK8b&#xa;6e5Qpqyz7XbLgUBoU5I0CgOhgNKQCmsOv2XxCJUDyhGMTRGYQKWo8ghkg5e0FrHjP+wYnKRcdM&#xa;bfnPRyCyR9hrTSHp5zbAxVfd8GFZ8h1Z6trd8dmr7jNrZa5Q2HZwRVeY+Gih2Q3wXEwtpHkBQB&#xa;PDJL054XzaYOvLgNIIH7uoG/s5ZmTcR6Ch3tzzCSRV5JG/uw9AZmPcrLZQQRHH7h2dHAIKyGaN&#xa;SM0n3cjnitZbh/7WV0lR7zyEa42iL5F1uhlTWl4AdJrojZNtYHf3uHT0bsx8R69z/kKlSui5QP&#xa;oq6cV9AkCF8oRKrHpP60H/oJZD8dehixCesDNLjD0KTXgUwvAsnXIdj+RJ4i/NF0DXVbv4183/&#xa;bZk9Up4AuqivD/yi90weDuiwXcVCWxX26slMMKyGOBG0NvEbQBJcum2ziVG51VXpLmERNwSm4n&#xa;bkqVS5NhGiFj/kOufobimAX9WMjHdLUh9Mz22homQL9yHoiMnNamSXvzLqE14MnCu+Va+K4C2w&#xa;Te3uADFmEqwrhQa8Ou/lDyMDlSPIGVpuWyi35yRClmeCzbHynIXJeizXMvrbofwiO2hy72/fCN&#xa;KqXenpwFdQRGU6AHZIu0qdU1ha7p6Uf1pgT4T+fezqLj5EChwA0to7g+99nzMC+Q89/32CUHzs&#xa;4GVD42mUZW7zc9NbDsCgukELa+5VD/IChHXAz1W1CR1q9ZMhoQ/OLfX1BLBwgEFMn+xgIAAEUI&#xa;AABQSwMEFAAICAgAYZd3SgAAAAAAAAAAAAAAACQAAABsaWIvZnJlZXBsYW5lR1REL0dURE1hcF&#xa;JlYWRlci5ncm9vdnntGm1v2zzucwfsP2jd8NjpMme7ly/py9pb163A1hVthmFIssG1lcRPHTuP&#xa;pTTr9en99iMlWZb80qRp73Afzhi6WCIpkiIpUnSnQ/bf/6LBnEdp8jkNKXNv0uQni5JxTH8mML&#xa;C7OfWj5OeUJvOfLMiiGYe5ziijdBb7Cf3QO+z7YZgmzJv5GaPnkzTjEz8Jh5u3radPOp3ddR9E&#xa;Jkf5OgQWeolDYvhdOrvOovGEEzdo/eX1m7+RDzQb0/ianPqzmQbrTSJGZlk6zvwpgZ/INWHpiC&#xa;/8jHbJdTongZ+QjIYR41l0MeeURJwA9500I9M0jEbXghAMzpOQZoRPKOE0mzKSjsTLh5OvsHZC&#xa;Mz8mp/OLOArIpyigCaPEh7VxhE1oSC4kIURBmci54oIcpUDZR/W3CY1gPiNXNGPwTv6aL6Iotk&#xa;maCSp+ck1inxegXqPIhWQhiRJBbZLOQIiJz1GsRRTH5IKSOaOjedwWNACafDvuffzytUcOTr6T&#xa;bwdnZwcnve/bAM0nKczSKyppRdNZHAFpECXzE34NHAsSn9+fvfsIOAf/OP503PsOjJOj497J+/&#xa;NzcvTljByQ04Oz3vG7r58Ozsjp17PTL+fvPULOKTJGBYU7FDsSmwO6Cyn3o5gV0n+HHWXAYRyS&#xa;iX9FYWcDGl0Bfz4JwGSWb5pUb5wmYyErQBfqBAaPRyRJeZswYHRnwvms2+ksFgtvnMy9NBt3Yk&#xa;mFdfY0Tw+w/5kfXPpjSkxne/rk6RNQOjgZ+d2/8j1w3Ng7BFvQw8CHpzG8APQkgT7yafwVfrCl&#xa;kD36i98FOYvn4yjxZDTwQDu/rr1T/IvMPdTjMzqiGU0Cyh5M62GMBLHP2IO5QPRX6z7SEXqHn/&#xa;3ZGfUh/nRBPX7IMEIREW4ZTpOpPxNOkcDGET/AYMIeuLCQ3lqb3Dx9QuCZZdEV2BthHKJWYINE&#xa;CYzC3pFd4GVhzbktVIYgID3uHOISuFkUpMkJ8H0g2G6CAPP6nQa8abqXhv510+RhmoB3bKgJ9B&#xa;XCK/DAJ4SIhAMnx4FQn5yuk3JM+bES1G2hWjY2csE9QXkXhceF3JYXxNTPetGUogKIejLK51mi&#xa;1SUnbrWClIZt9eX612AP2F+1yZIKnKYJnCPcNB+MovIcx4AnjicZECGizuHIgdi68OPLrqah4b&#xa;tka8cgtEf2d95Jve6R/s5iku4NyQ38T5O9W/J8B2RNs4hf72lKFzRIp5QVpDEL8ZCAUN0uschb&#xa;UH3nG5yf1Bki1AJ/VudTmCVyPq3BTnBaYleInypeFUiFdcugrtIoRItCzeqkyBVh0jsBciRLU4&#xa;4/9MbiM4qSUNifq6eLyQjUmCV+/K5MtQT76BbygXLhSeSSXpPEh92BMymdwnnNMRtkHcGy0BKT&#xa;OEL6QhhDbDxRK2JjmDPWYJVoJiOeDALM0IgVPGBTNq8p27TnVejAScjFeGlWRA6cu0jTy6mfXZ&#xa;bmMXiI6TnnkBin5rwZLwCm3x3mijd360hrQYtuAI2I23cmNJ45bZPbdsFcW/Mx9HBFyMaZawtu&#xa;EMyfP/+02POu/HgOyX2rkYS1H/jwSZYuRBh//yugMwRynV52jWGVpxAIIGUUrHUd8rK8Ey+Jg/&#xa;nvwDkpNnHgOAajt3cooSC0ih6UytZWQo7/CBrIbU2LrwbWF92yhxrhhWrWFl1iP4Lg0o202OL1&#xa;kYQWtEpSoyLWFlogP4LMIjRokfGtUWKLK+oHE3KTj0khyas9m501dNRoI1Vh1xO4EHYfh5QAOG&#xa;oLXhL+tpze5BUX45hKSaHwre50bBMIzJBCJXCaxBBQxeaZ4qhUCs+aQkXF8dk28GoUtyTSVA/U&#xa;+x+FeTYnjsTqobDsaFSJ7CjKmLAfOGhyOC8S9iSmtisYyAJWciYC7pcH01O3tW2dVWBtBfy/iP&#xa;PjWGx8xXAQ0GAFQDs/RvM4HrwahC8669tZnksVBlesglYH/yF/BGdyRpstrirSLnGERMQ4j6rS&#xa;CbxySqEZKS1HaIwOUr+MMrLmJYqsZC36wk6bqedZzVq00fCbSauE6D6UtT2R/Xq6ymLzgLKrt9&#xa;jL8MohoAdx7Goabv/HYMCGWy2IjM6LN05ru0rRDLh99TK8g20rWhUv2nGCSRSHGU1U8C6ZWsWp&#xa;I24yVQ6A/y/c/ucLt8ZSa8VwvW7w9WKajPkEqv098pr89lvhCcHEzw64+7qFnuriW4s4b6v+ZK&#xa;yscdn8ggm+3DetggMTy2LSQG0CkyePH4auzFFqzD0XbV3ZtkA2SOjc0pryb2MVU9EHXuyMIhqH&#xa;WKLZLQrN2TJtSPy+o86NobV9+IR0JKQ54DyTlSDmSbD0jrSHNvlygeF+r2Edn6tLeuaJnEKEmW&#xa;/gtsdJSH9BsoijkJZAmqjX6ePY0DQwgwrkVW7UsoNZviG5NCosOsNWQdPwwwpYM6WQxnQMOU6Z&#xa;VGoRKqCaKS2EI5cYSiwyEqSZxEw7u0nGCAEFqQK0rCeRnCrJmfIHW0Fvq2Mem8URd502WG6X9E&#xa;s81tQAjedWQ1FgirvcLerT/tJKjOzs5L/rgUt5VU2alZN667Hon9StX7fOxHJEb55Ef8zxtvT3&#xa;NEqEAiuL3hmImtSJ3EV8tTzVZtKyl4j3/z6sYlQ1s9S9DVPariry2f1iXX22XYnQJbTtJVzrTb&#xa;lLqZYxQykE5Y9VZtfcpuSPneypksbK1yJeo+wVdWQQutv+axRl4tbklEpbS4b+W6ZaIpvRaXpF&#xa;UfGrcFheuM7u78rU88Cpds9Bfl/ltVmZUI0qa5Rvkqyx0Vr13i89r+RyTVk6/vdoOTpeTGDeQR&#xa;MubrWx/2zkwbrpH0YZ1oMu99llC/vlgKeGZtYFZ6n/pu8HzPsPVV3WZavtmraatdUGjmRb/DTS&#xa;DMgtTsWElUUqqhnlV36MNuHYaaBB6xkEQTAYTAELQ2CHlAU0Cf2EfxkZ0FUvNhjEUoZmMrFT8C&#xa;XTWYBlUOJKwPqidpRP18Xbxsvh/NECY4Y9+9j7/Knnj1lOEeNJC/zCVWBvidNBP1GvXVBTXaip&#xa;CTNaVEVZSnynoxgs4hWZZkEvbrNc6FCyvf2fKlvtUlRcEM3HE3lnhldCwmXERc1B3ss2DF++YM&#xa;ZdvvOrtfbq9WGdB7Tr29HtSpO5Xe4sW4aBXAkjqt7Sib/bNmjiI8DxoQUdWtUFqEvcw4o6YEr5&#xa;JA1RReCDpMgqquWn/07fpeSUizSVpxLM7EhrRMjaS0hpA4osaQQKTcoLWSl6AelH/CjNbGA51g&#xa;j/NeFRXMEQoyaOFiA/eCyU4jSyRLH0zP1LSgL8JisdkWnE8CM4Q8meDFrAPZ3OgLysqAnFJoOP&#xa;qR1UfNrY/JhRO/49k3qq1uu5+vRXNxhg8cXdND/88a4iuvCw+PFQrJ8LSi83zW6DvHlroo5fIy&#xa;B1L0mzqR9Dni6+T1BMbWxs1CctRv0lQY0FEWdjQ5b4Yu7ZLmqohXFdjegvHECjuF6rJb6WACRX&#xa;fCjh0T/moCoFbX4r0VIfVmxsrKMgpI3KAfRb/Cv+lG5cCuOq2xPD8JpVpwk0Kq+wVKnB/L0hoc&#xa;GgkFE2j9Fx+2bmhB8hJkE8x9aIBAAhIF+cgNWZ13+ibsTbv4hjF4LLr/RwkMkOhbxHr34tZOrm&#xa;nnWHdj19Z24fLNZ1Svm4E77hFriQ/op73k79kavXOpTf/jUvpj4OrOkUWHROUlmWNVABFdY1Gy&#xa;wS5l1+XRZWHEZmRlFz7DfovqFLa1hrk4M4dznIqplHHtRCefNfw2BDO1ZubXHwYmAIa5uv+aNM&#xa;e2eH9IWZwtMtzvLmYk49ygcAJ7en5TgquRY4eTKwFCnvVHSLk3Y50gJOVimROGVXQYBt1Qh0JW&#xa;HkMdc1zsHlWIlMQsQ6MiFZjqO8S+AoV1xlIfS1fCH4vYIOVMbQLbKH1ZBk9O6aQXcFqdBKBYP4&#xa;a6UrH+PnfQtTae1Y/WJ/q5zNRvyBvev6TxF0MYBrl1P8Um0JLEGdoOKcHSCNwWRs+TN6vcqNdm&#xa;WhV3F3xQPO1fJo1ZI2Zf0VM1SM+Bu1rJarhhWrNkvGeTfxCJuA7qb7lrV+eFs7F2l4vTcYsC3X&#xa;22rh/zsdMeRtDV5stsnm4MWb5YmWXqpgkKeorfcs8Gc0FOFY8bm8SPtPVV6n2P9Y0i6stQTsop&#xa;SaJ6VOl6V8q+lyVzeksuc8lTwWLSg7O8qbCIKw4aCqzlfo3tTnwYQy14ENHgz6omU8HOL2Dr2t&#xa;F07VVDTd3B1zSpbNOEinP6ySzFvRRgtgS3XaysmhFrB+BTRAIK+owx8cQPLEyXt3tfaDzqGFqI&#xa;hX7cEAA4XMd92/l9bIuRYV6ZeR69w4LbK3S143rrnIK4iGRLqkB9nrx227kQ55izuW6/d+OhW0&#xa;pEZvkOLtPZSpiUJG+nwQVm9iq12kBgZAmOfuYBC2qoLcR47nQGIF3tFLjM5Vs5PIDzP6P/aHW/&#xa;hNxT7oZjDYGr4ENqttZd0VuNM9Gqg9qnPsG8TvsZ25AI3bqPucqzamjAXKDeImQ5CmuJWzXcO1&#xa;/pwNCRbHM/z7N1BLBwitxqaqNw0AAKs3AABQSwMEFAAICAgAYZd3SgAAAAAAAAAAAAAAACMAAA&#xa;BsaWIvZnJlZXBsYW5lR1REL1JlcG9ydE1vZGVsLmdyb292ee1abW/URhD+DBL/YcOH3l04nNAK&#xa;VbomQZAESgWkgtBUiqJqbW/utvHZxt7LcQr5753ZF3ttrxOfg1DVsoqIdz0zOzs788yMQ0qDCz&#xa;pl5DxjLI1ozF4dHzy4/+A+n6dJJkiSTb3ilRckGfMWgkfeMfssPsJD3kKZRospj708yHgqvDRL&#xa;Pq+8/SS+ZJngfsQOqGBrcP6O/6JWW5ubD+6TTfI2CVlEzpOMiBkjGZNyUmTH15JkP2OwSUj8FZ&#xa;mmNE1JEpMft5889bZ/8rafepJwC2UGEc1z8l7KUHKv4B0Muav3DpZIliQCH9SLNzwXhAaCJzE+&#xa;qkWw21uavmc0ZBmZmyfcAN9+EBmPp0QkIV2h7cguKUzoTZnAyfChfQneJWdLbzljsSe5Ho6qkm&#xa;Y8P2HsYn1hwPjXEjhRoBLJ4sWc/PH68MScXJ7+/dFvh/vHY3Ly69GY7B+9Oz78U84O343J8xdH&#xa;H48V7bWRou4GBxifRsEiAvvL+4lRR8HnaqYMR/JZsojgemCRXrCYBDRjJDkvRAwZB+qMLCkXH2&#xa;M4GglB3pjoOw8XTC8sZzyYMfAsEiRzlpNznuViZORsqYeQncM++QU6HpjrSk7I473yvEiBBoK3&#xa;+O50gJPBWY2gUKagMis2qdxF3hrQxWwpF4YjL4gYzY7BEMNRjRg307rFiyiqvzWbOEn4ORkqzX&#xa;dLBxvZIuVqycCinJVcPM4FjQOWnMvNKoz42IGvFtkNEV5AIxaHNPPQC4zDFLoXRm2qUjt4MXcp&#xa;5RLT1KxN4s06bhQn+uEHslERMiJX9+6V1DgyJhZZXMp+NlE2g9923FpOcF27cZBwSR133KaCot&#xa;fmVujaMFDlDK389npNSGMTslOz57Py1aRNlDaOEuaxTwsa5UPpoSPgLxFyUjGCG2aSeYqwgaGY&#xa;E5/mgPcALYgPMr4RIABYNBaFhPrJJbsBGZQ8KgBjECPomPgNjKBLeEdPB+gldXjw8Z3ffIfWH2&#xa;4AJ96cvxyRL19Ajjk7LIxs5LWMtN3uITR0Y4Xfst4VjlBX0LQRinI/unT4FVqkgjyStA1zNLUd&#xa;BhYDeUR+ruriO3SRZ/Rduvh1XfybdPEduvg36LIBisorDNsuDE63s7tX0e26ZttShOZ5/MS5i0&#xa;XxpBE9QCL3CW+Ijg9YFKnQoAGUbqGqQEia8STjYkVoHKrcrFOyAj7FXYsOlNUpOlIVHWaPwRkB&#xa;0Bs8HdQCJVWBcgOZjplUWStVMZMWMZO2xkwzmIeoqhtsjTlTZc60Zk6rKhw6ysGKCuhGnnkDx6&#xa;vWjAVFURoCiV0zesbL6ze69fhOw0iB8jjLVQUG25I5h8sHXdTry4SHigD0GfpJAsgQQyUVCZYd&#xa;JHH1oCDr8HOKzkPjFYnhiDlZQrFW8SUo7zIxA6KSrzg59BEyK38wNMPCoL/YiRc2esVERWwE9X&#xa;ZeUpRFOFizlA818PPiTSF8bB+ots9LHkW2tPp5KBQQdnxU9vYYDWYQEVwY6NflocRZDqByXbtU&#xa;jAFobf5mgZAqVuwLV7CjqvwxOfKRZq9MvadilTIIFc1tZxmUtAPMe2SaJYs0R+qzqlglbixJ90&#xa;hMX6xeISnGbHkayf1ipQ9UbGSHjc1ZPHs5Ag5yQceiDgBJRiRvkiXL9iE5D0dOGdp81WC+YKsx&#xa;gSNDmW9jTPOsXLB5/ahmoJmDRdbQ9BSknxl1NY45YE7hhq2zGUaoU3UzlGY7O+Q0BI+TSxNpUp&#xa;wOzsZurnLIjqnkUp51K1eB7hN9fQZhb+XUIWb2U9MOfIgArw8KPjXtwLecJcQ6H0w7MbG4wsS6&#xa;qAiAIzCYNZeedtkOatiXkPDMdmrakVEWvyWjbhNvZQ2ZoNDJF96ipp0uQgAUk/IiYDpwhAUOx7&#xa;LDzzWQoA8LLiIAHhmX0rMn6pclqJpXIXhPB0qABET12NIHOPARci6bAoA6AbIJiNJ9qmDYioMS&#xa;CU5myUsok53YN7wqXZJcjxzMyhFuFWD8xSnkQJ8QFZycVZFRa9cHG7FyApJGfWQGGhfe66wJT1&#xa;6eRlwMB+PBaNMD3J7b/UBtYyvftbujfTgvXQjIgePK4ikXUPGRYWPtkTrXyFvE/NMCM8ZEr7h3&#xa;c/jstdMha5f23a53tKtdP9V8uaLl+jVBwfoty4LCWN+kMkAFoA9/DTqiiv3KAzn61Qhy9C8U5O&#xa;hbLcjRt2SQo18JIEfvOkAOXQqTwmK6Mu6odv+KQI7eZYEcd6wNcCD+lVkR2vJiosGNbEjYawVI&#xa;qYdyeyNltxTSGYgquhQJ1uhjFnrpVEjbrQpbTzdT92u5//pKS4dBx0KrCJp1ii2Jia3Vkm41C8&#xa;n2+SoSXJVSIbpvTt+4yT/KLhXzbSnNkTev1YfFrtXBM6s8uHtZUOpoagLV6aqCoDrXxcDXLK2+&#xa;fwz4/jFAjv4fA/ok9V6fEHqn8e8fA5opCr/bd/rPBxrcoQGhec6nMQsfjr5RfsNgiXjc/UtC9Q&#xa;//7dkNhSNwsFDDupXaHIDi+quEfVTZFlhgWoquJUr9kfn/hJ8tLVP/jql/w3S3fuku7VK/bklB&#xa;5DoIKYeByV7Njmm0evVZBmfXhVk5DGDeqUv6Gk0SgkjZJcnZev2RZNm1+Ht3SDrZ2D2SWVq3PT&#xa;J8u3VJ/8UWCX7+AVBLBwhAOAN5tgcAACApAABQSwMEFAAICAgAYZd3SgAAAAAAAAAAAAAAABsA&#xa;AABsaWIvZnJlZXBsYW5lR1REL1RhZy5ncm9vdnm9Vclu2zAQvQfIP0wvtY0YVrdTNsBNsxhwHM&#xa;NWGgRtD7Q0ktjSlEBSNoQi/94hJXmL4xRtWh4EaZY3bzbK807+9OzveR5cKMRMMIlw6X86sCIn&#xa;PkuzQvE4MdAMWu/evP0Al6hiFAUMWZYtzPyEa8hUGis2BXqNCA10Gpk5U3gIRZpDwCQoDLk2ik&#xa;9yg8ANMBl6qYJpGvKocEAkzGWICkyCYFBNNaSR+7gc3FJsiYoJGOYTwQPo8wClRmAU20p0giFM&#xa;SiDrYnOCccUCLlJCZoansg3ISa9ghkrTN7yvg1SIbUiVQ2GyAMHM0rTzZMrLzELg0qElaUZJJM&#xa;zYtOZcCJgg5BqjXLQdBlnDXc+/urn1oTu4h7vuaNQd+PdHZG2SlLQ4wxKLTzPBCZpSUUyaghg7&#xa;iOvz0dkV+XQ/9vo9/56Iw0XPH5yPx3BxM4IuDLsjv3d22++OYHg7Gt6MzzsAY7TE0CHsKGzkmk&#xa;O1C9EwLvQy+3vqqCaGIoSEzZA6GyCfET8GAY3M800ryytSGbtcyXpZTiLYi0Cmpg2aiB4nxmSH&#xa;njefzzuxzDupij1RomjvdMHpL+Y/Y8EPFqMbW7cEtAP7e/t7gWBag89i+Lm/B3TG1GJibFg8YF&#xa;MsZSFGlLM0KA2cwJdvpfSaZZAxSkZb4eE3C2flBNas3NvrRjIXolUHsseWpFPZkn4tqD08gmbp&#xa;vea2cF0gly9Li4fy9WErp5vJdwxMnVH7GX61X2udVuX9iBcLw7NSVZt0TFoWtdlqPWL477K0Pf&#xa;1fKf77vFaDbvZv94zREn5GVYC29wtd2Uxy4+5It/tX/nUfCIUbjhqOT4EuTXy1MaF1I7NcJ1u6&#xa;2lF2pQLsCtFsvG60ofGaTbOjxrri2CmE2ZSfOnls5a2Xq509Ck2upLPfXtChQqrBlBm60ZvLxX&#xa;+8omsFsBbPBdnaN/v5MvBbwJ/c7t3TUXGyKpyvL9DG8rReknTCRfi7l+QOin/MjMVPTQT90JUp&#xa;6mn4gUW7/iXMmMhxjVkZnuKYpjMsLTaQ67larMsqQqUkWuRLGdKWwMHj/0AVCFmQbG5D5XpAvm&#xa;B9uekQF3ppnHxtVALHy4pI8tSm1CCnKxZ1IXfH5eY5zGNvJSvLYzVI1ZLSfKV27vELUEsHCNnM&#xa;NchVAwAA9AoAAFBLAQIUABQACAgIAGGXd0oAAAAAAgAAAAAAAAARAAAAAAAAAAAAAAAAAAAAAA&#xa;BsaWIvZnJlZXBsYW5lR1REL1BLAQIUABQACAgIAGGXd0p07EhQ2wUAAFYaAAAlAAAAAAAAAAAA&#xa;AAAAAEEAAABsaWIvZnJlZXBsYW5lR1REL0NsaXBCb2FyZFV0aWwuZ3Jvb3Z5UEsBAhQAFAAICA&#xa;gAYZd3SlyppQM7BgAA7xsAACAAAAAAAAAAAAAAAAAAbwYAAGxpYi9mcmVlcGxhbmVHVEQvRGF0&#xa;ZVV0aWwuZ3Jvb3Z5UEsBAhQAFAAICAgAYZd3SgQUyf7GAgAARQgAACEAAAAAAAAAAAAAAAAA+A&#xa;wAAGxpYi9mcmVlcGxhbmVHVEQvRG9uZU1vdmVyLmdyb292eVBLAQIUABQACAgIAGGXd0qtxqaq&#xa;Nw0AAKs3AAAkAAAAAAAAAAAAAAAAAA0QAABsaWIvZnJlZXBsYW5lR1REL0dURE1hcFJlYWRlci&#xa;5ncm9vdnlQSwECFAAUAAgICABhl3dKQDgDebYHAAAgKQAAIwAAAAAAAAAAAAAAAACWHQAAbGli&#xa;L2ZyZWVwbGFuZUdURC9SZXBvcnRNb2RlbC5ncm9vdnlQSwECFAAUAAgICABhl3dK2cw1yFUDAA&#xa;D0CgAAGwAAAAAAAAAAAAAAAACdJQAAbGliL2ZyZWVwbGFuZUdURC9UYWcuZ3Jvb3Z5UEsFBgAA&#xa;AAAHAAcAGwIAADspAAAAAA==" ID="ID_938536532" CREATED="1495901105018" MODIFIED="1495901105034"/>
</node>
<node TEXT="templates" FOLDED="true" ID="ID_1096097283" CREATED="1446325478471" MODIFIED="1446325502332" LINK="zips/templates">
<node TEXT="UEsDBBQACAgIAGGXd0oAAAAAAAAAAAAAAAAZAAAAdGVtcGxhdGVzL0dURF90ZW1wbGF0ZS5tbc&#xa;VZbW/juBH+XqD/gdUB3RZNbL1YL74mi2ZtZ2M0iReJF71tUQS0RFm8yKJBUvH5fv0NSVl2bGWd&#xa;FyPrLDaSRXEeDp+ZeYY5meE5eiBcUFacWiknZJ7jgiCn5bVs6+Of/3Tyl+PjMUMPlCyQzKhAKc&#xa;3JEUrYosgZTpB6Bc1okSCYaU6LKRIslQvMCTqvZ0s5m6FMyvnP7XZtoyVYyWOSMj4lrYJIdHys&#xa;7BUsIWg8+GV8al0tkcTiXljoctQ7uxz+d9C/ux1/uxzc3QzOT62zUrIZljS+xEtWylZOHkje4o&#xa;xJCw37p9awf+eEruf6fuA7FurdDM7GA/jecSPP7npeZPu+Z6GrUX94PtQPOr4XdLph4IedQC+e&#xa;xqxAn74OL8fD61NLLRNWabXVo4yxe3R9djUAnHh+K5c5Ua/AExhyJ9S9UOP0lV7UehFmeWaMBn&#xa;ynBljPGj7nJCEpLUhioS+j2+F4OAJonE4zuWcCeA2XOTjn6uyXu/8M++OLUyuwbfDM6HJ0c2r9&#xa;ZOuPhbSPTy0s7uawj4WZN2WFrNbbwzmdcAoDYXZwG7zyaXQJDkxxLgg4fwx2e6tb7S2STMlq3g&#xa;n5nRJuoQoCsKowg9o19mctRA9oJURimgszwzPfKZgkL3ohBa5LILe1vZaMJuROfWGmi3NWJrU/&#xa;U1v9gJsuzr7A2JvR1+s+ULc3blrucxdf0aAUhB+/kgjVFJLNabzefSeKutGk3n2Iy/vtjb+kE8&#xa;LBERAUt7gQuwSQvCQv28sKiygnW3Di2PM2yPjucHYRBUG3a9vvB4LO5oxLXMXf41S0JOIAJNrK&#xa;oC/l0fcS8HZO+XTW+/dnEwF1eJA0Djtrf1aOi17mrEYQR84mAs9L0x0zwSHMuJtmJh2vu2Omcw&#xa;gz3tqMouAmCSsz7iHMdDaSgf7smLH3k27r7nExbKuquVU9aywDSKM9ljOuYHy9Hg8ASGgMchpn&#xa;wH8JxQiNv6lk2h+Mz4aXt1XJzeQshyuETjKCE32FkL5v11+cTFiyrB6dzKsLhC4YyB+QNqBiGC&#xa;RVVN9SSWYgdxhHGcnnrerFtnnzpF3NBgaMbXW5AXNLytyyGUnw8vgKLyfkJXpGMXkdlTlJN8SN&#xa;44Wh44ShvyluOm7oun7XjdzIbhI3duC7TkNGiTHsWoL5Rr2uAzW1bYigPTuBLob9/uC6Snhv3p&#xa;exEpvwDyNOYjabATgCcpPlCewPLfQWfR730YzIjCVHcI8lDAV5JACbMMoRgSPRnAk5ZyBDQb7p&#xa;ginz5dZ2PrL8nUffYLoYF0CVB6IRaCtHaM7ZryQGqxkB4VsKpYM1pYxiRCKDTB6XEoYCnxZUZi&#xa;jheIow6OaEs1exq72KsQ2anUrym/wqQQ+1pkSO4eZvH2rBDd5qwfspnbYwjzP6QPqUX+MZ+fD3&#xa;QzHSDqJO2A2iJkZ68GlmpN11uw2MNHvdwEfFxh/Dx4p+yiCmhdjIE4poC6jVSDKUq+QGbMyxJP&#xa;yVTBvDzED7eU4k0N6QWTGvFCXO8yWaECC7omHSQsP0kfl72G8kOY7vEUsNvCo8Foqd61lhNwuE&#xa;UwCp38c5Bx8sYV7V7SmrGZkd6UfKMnAo1qSfaZa/MYJUqlXeW0UGOg8UdhNYerUqNmAE5QBIzC&#xa;G6gLCPA+1QUdPTQfFEDDwWy08QPwrCjgtE93Z4DwQ37ecW730buk9oNa0ddoexrvA/KNsWiM2V&#xa;mMX5iuywK0IyII7ymECLDDAhk0hRxhZ6F9etPiSZfwBVyimk6Ay2EHyHVFiLV/JlCO/+jL6Ybf&#xa;/rT05g//Pt/x/radXK6oIBdabi1l4wY6DnoZC8DKEKjL3w+lDq3hvY40y1F+I1FCaEY8WzV1iD&#xa;5MGn6mqPrb0w/nVCP/6vN7pWWeD/J2368fnLLVShfZskrDD0wHWlVOchqyIauY7r2JHn7iYT33&#xa;H8YKuI6geBHTphk6ybgaxzKtXekPoqEGSGaV4j8ILI85xIGdoB4Lmu0pu7ABzPDpuq+JWaeZ/9&#xa;K0L08cqGtA26HWjcOg0QgjDwoiYIAM4JGyBMOSvnezFcgESvAQSe79mRa4e79gNI3lGz/a7td5&#xa;rss0zN/RhAI5Jiwn57vRYzPfuGD72uF0ZesCvGItfvdJrOPgP46fgNayAJlU+0Bu9erLSbVLVa&#xa;aLkN7oCOICHYaAZ1uCfQlLU24/hJ2QH9HXhVBXhV0oz4YKbBgFlemWA0RGWx0oqoIIsjVBZxjj&#xa;lN6UrTVcJMaSyJ74k+V0ewEMGY/g0glojFcclbdY1WwFLKhTSSLNtpiaCQxUS8tuJuu2qnh1nr&#xa;tHWXrA/41WbAMyo/iE3NZnTEocRaJQVe9EeB74aJCxnVd0J7V7v5XafT7XYaw8R3GrtoUEj3IB&#xa;XvYLcbo0XFyw+Jlrpl0dHyACRkJUSJyoxCtQmqGj9QSUHqrtSWaTig0SiIgNJ+pKNLAKhYllz1&#xa;HecbnaUyICAIuQrCpTrTn64llSF5Zvi8SQ3TjpbV+SkWgsUUKxmhW2QqX0nhURET07foaFsqza&#xa;CIqoLEZAvlE9PaAK3LPKm6GyrVELySvmWRVIdBq77jEOcGGJwOntRATLZpPjBQsfbeBwOm9zvA&#xa;ucB2LQojaHe6DaWoC4+i3f5IxZjXXIoURvX3yidOBn5M71QxpmLTKuk/Ph9Yq2QVSat23bj8TY&#xa;cFN3oKiDxIwJD4YcVU928cfSZSCSuFsZgKKC8FOarriu7qOXuAsAUUkrM6LgGW3D2AOHjL72+3&#xa;/DkDrDr2Tee/yh911jFFRq3MuO1N8dHePKWG338AUEsHCA0jO6MkCAAADR8AAFBLAQIUABQACA&#xa;gIAGGXd0oNIzujJAgAAA0fAAAZAAAAAAAAAAAAAAAAAAAAAAB0ZW1wbGF0ZXMvR1REX3RlbXBs&#xa;YXRlLm1tUEsFBgAAAAABAAEARwAAAGsIAAAAAA==" ID="ID_1760453889" CREATED="1495901105034" MODIFIED="1495901105034"/>
</node>
</node>
<node TEXT="images" FOLDED="true" POSITION="right" ID="ID_907142452" CREATED="1323172874273" MODIFIED="1456082250782"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&#160;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
      <li>
        <i>${name}-screenshot-1.png</i>, like <i>oldicons-theme-screenshot-1.png</i>. This will be used in the app-on details dialog. Further images can be included but they are not used yet.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#160;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="${name}.png" FOLDED="true" ID="ID_1928924406" CREATED="1323059848070" MODIFIED="1323063753585">
<edge COLOR="#999999"/>
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAAIAAAAB9CAYAAABqMmsMAAAABmJLR0QAAAAAAAD5Q7t/AAAACX&#xa;BIWXMAAAXNAAAFzQFttF+BAAAAB3RJTUUH3woJEAw0iSNLuAAAH7FJREFUeNrtnXm4FcWVwH99&#xa;730rj/Wxg0FAQEBkXx6bIEajSXCN4xaNa2KMBpdJMokkMYkjWUxG1IzjmIkyiBqNSwiZxBUQlN&#xa;U8dkQQUNmR7fH2e2/PH32X6urq7uq+9wHKq+/rr29X962urrPUOafOOQX5K4cA8wQ8ZtJcXIuR&#xa;p3aKgdqT4DvzUS4GLgfaAO8BjwC7PuuI1HiCUn/62HOCjNPjir7tBwZ/loF/+QkO/PRRdJzH6a&#xa;J0X9rFMAeW2Pr2z88yazTlitrh2ZZNQ/EmQ/iT4dKY1Kppqt9qIgxj6nfMgNKVjn4mgNhxRIA5&#xa;wJXtYrBhCHQsgHs/gvt3ZO6fDrx/rDuV64A8JVccHQHFEQGwbmcv9DNUaKVADNP9/IeecONW2z&#xa;+jwFeBuccJAboCDCq1gA9wdmsbAnQ6HggQyfG/14oV7aPQIioANhaFaFR9Tv/O1EeyRyRiv07X&#xa;RSIQNSCSOqKKs2G9/4aOyj7/5ThygBhAoYD0CdPBofgscYC4XLFvVIoKDeDXc6Hi/GP/RRUxi9&#xa;ZN2D0cOjungt8A9xyvsY4JCBA3vcfzREaADjIDv72zwL7rgZHnQGPDsf+iV7bCpT0tnloApRGo&#xa;SdqeuBv4V49JpknHOupO8p8pDuBQq2b2EhDglU3uwM+nRq4CYct2WXHPhOoxYLzjeKoaKG3mAO&#xa;EQ4McyGJcOIjP30rkHtCqHRPzYmWFkRPjrDri4W+byK23hrwdtT5Qch7GOfl4Q4D5ZEhzVSgDy&#xa;7A1QffjY2OPcmHgkAqPPg6X/AGDuADAWO56qw7JgHjcOkDgBECCoFvCGg5dWCNQ/9nw4vB/ije&#xa;qjUTjiORw6bUyfDcls317u7/iWIuBfjrkM4M4BEic6ApQBZ4sV/UugOCq08t1HINGod4jAaorn&#xa;a47AtT/IIMCF5cpvevZknwKCIECVXLF+ZKoFA5gx1wmoMMB1O8K0ccE3UvYDq587Rym/63cnsx&#xa;CoiwBfkCt+1kOY1xuALqeqgRUPiRRBAe52//EVGS7QpQi6FTq+bRrHZrXwM60GbpcrpvcQ5v5H&#xa;34R4g1rYO5YLsabL70gEkkkw4JNxYLzl+Od+oLxZDVSXJ+WKHWME4HfvByUt7Gofwn0ZGPKaQB&#xa;BzjOEBZLE9uc2HF8NtFdYzCTi/LfyfXS1slyJOPyo8MyUH6awsVklALfVBgK+optkUf612eUcC&#xa;a/1gZ1MiwHU2BToCXYsEYNz7v9BY763uGT5AzVXtMzXqRn8Zls4D4G+DwFjo+Eejx5RoAA8Dt+&#xa;VMce5q4B9y4HsvAbcAn+YbAdbJFTXjBeoecz7UHtUHupEDEuQCfBO46nvwzrzMJLxoMIxf5ejF&#xa;ZcALihZvzwfwfdTAsMUALsEyz58VkKd6Dn1nJFelC8vh5TMEBPj1a9b7vIBv5Ej1hAS8CgmW/g&#xa;1e+I/MNGEs0B6TjUC/04rh1f7QUzIf1Scd6w1OXm3CkQS0iUK71HLwoTgckGbOgxqSQFXCQp4E&#xa;8NhueDk7nZ0HvJovBHAMsTkZy7gSAe56DDp0z04Fbuv9pgdCGDkA3tSQC0zFcz+cCmYSkrC9Dk&#xa;5d6njDU8A3FFbDonu6wK9P5YQqB+PQbnnm8gfAL/OhBk6RK/7Yj6xlLQG07eRUwZLSdVxDlQuq&#xa;+onvEuviPu9O37/36QxC9CiGPiXeMk+qbAOL0rbWnVgIsPKo7fJQmPlDj/rPElj/vU9DrMBdsi&#xa;cA1eciBJo+v93q7r8K4vEMQhvzHW/aRcqDJ1XuAB5y61aRYS07+wl/LaNwV1e4LbV0/tud8Ohu&#xa;+3NtNcTyVlFLlqhKQGU11FvfVgucFlQjUL3OsXjaMEG4OOX0lATTqAZ+LsiQi67vxvpVCPGDWf&#xa;CLqzLTwhfbwmt2tbAL0BpIr2o9DPR1EwTrTajXMOPsi1tAy1w3wof1cmOhGEEcuDWMOqhCgArx&#xa;oiwKBYYwh1433QK+4aLzNwUymCGo3u88ZBJUzgcTXlWrhYck68J3sNy6z04JyL6EKhj+CoDrPe&#xa;wA8ZQqp2QwePsubAH+i5CexTEF67OVwxXCMIz/KtTXOAFvStKEDkKYLhKI4SPlmz5CoanJBc69&#xa;BlbMz7iPzR8Ek9Y43ng28KZwvTp1BC2tMwggWXFSpRrLvf64WgIHypj9/e6WFTVrTLnAWoZVAT&#xa;jpggBeXMBUaAm60r8fy3e7Fs+XfRte+j0YcFYb5VvfyJPSGvOxAxwXM7CMAGvlmzN6Chff+Knl&#xa;5mX4zPs692T1zcgT8L24gKquez8wDCvowIA9o6GTUy18BbgwX+PsMgUkjjcCyHovrw6UBrmkzF&#xa;KnVIDWRYSgAmMQwOvcU9Xd8gA89gMAOhbCacWw2a7qTSWPDqQuCNAx4DsayFOkUxoB/ihWlkQs&#xa;yTgDkFsesAPfDwkMD+AaGtzBj/rDAN6LU7RoDUctgf+DkWC83XQUF3VfCwhSChXySWgEcAg1NW&#xa;NFg3BPa6nXi5IjPkghP6tCjogkG4hTRNIFIZIKzpAMwQWu+j48/sPM//+lHJ77tGlZbh4m/rzI&#xa;JzFgkFgxoEQw9wIc3GPX+VWUngzAFZI+9YaCok1NCvejdrf2Cuzj+Gx/eG5REyFAfheDfgV8L1&#xa;8ICcB6Ocq/via71u/FvoNMCX7ThaEB6GRAqjcVU0b6f8/9xvbJ7ZY4B6pxRFZSMw2hqZQMmQ6C&#xa;NVP3MbPPvF8LY9Y4ESA9BfQphkVnpNohFQhrZgNf03Wj1sOuRlu3/jUfCNAKOGKTejbAX0QhcM&#xa;4MuPwuf3avA2gd4ONBvTrA1bmfRoCqA1CflfqWH3WuyH2/C8QiAvCCBLwaUNqolgHSHKA4Ygmg&#xa;fnLPzuFgOJFzO9AjFwSoShkiWqQr5x5MAVrU07eth1P6uLNwFeAjmtzCSxAMwur9uIXjvgHznr&#xa;S9d9QqZxdm9FAYq7yQQGGn9ZoCooYw3m4lxVXOLIXVNbY7X0hpBPW5TAEtJaZK/+WwYYRQsezv&#xa;0K2X5VsX0USCpIQI6XuRgKZgcqB4t2eSwPZ1toF/RGFJXzxAmpbeDT5xx5cvh1GjXKeAWP8R8P&#xa;Zy9wamdoP9VudWnankAnVhBcKYMCSzEMK9N9Za802XQoELLPs7DJ2szwXk64jQlp+2oKP3616n&#xa;uYBcX/m2rfnbt0i6lgFjWwv9+uVL0KBJaCKg67OCVVTBGWKRiHe7f/4QJhZnxu/5vvC1TY6nxq&#xa;JYyAsiBF6HFO/fdQmYE4WKnR/CoPFOAEfywP5VXMBvWddrbvfjBu/+LUvVJnRTCH71ovPrUWDE&#xa;OVl7SBAOIMgYyikgEvFv95p74BlLWL1M7b+8OAwXkJdjHM4QS45IFW8+oxfE0ejipKF6VhU61u&#xa;jyjNf/020kXP6fOSfgyP4sMkRglxTMPLSFYJswgD+vCh3KlmzMAjcigKgxPQVEI/7tfGO6xTJS&#xa;QS4fDFPC839yRYBZsl26olKinngj1Bx1AtstfCvXGD/5+XiASCI3pHh9ju2jS51Lwbw3RJi2On&#xa;SFdp1DB7V0Km+bpZ+Uh8HeRliTEua6du7k7wnVUAczns8g5GklUO5czL8+ZzsAmcj6bLlqA8wZ&#xa;IMzfi+fCxAu92TsSBXmZhsE9hsBrlS8pPJP0MA2L4m11lU1Jn7sfaiWHzif7SH17ag3U17oLpj&#xa;5CbL+ePRhyxgAq167n/h3w8gFLvko7hF4+9ctZY5vXAtnAMRArgrglL+yvUJqtK4Ehugjg1u0q&#xa;rGDQ7LeKDqEGcNoQizJUQp+brSDiw390SlLTUphUyQUGvDvP9qzCHQxTdH0f+UW45/HwI5kqq9&#xa;atZ8plV/PpQbvb3s1XX8HjDz7gRChXki2ES7tl+n/OWnjD6QlYDhzIBQFiWIESWYGwEHZUSBL9&#xa;iHOzI234GH/8KF+nmB6cQEcb+GQz7NqWqfvuZpj5if0Vm0dA71Khj3M2WzJDSMCLZdeevTzy5G&#xa;zeW7OeNq1acvlXL+Di87/ozVlU5a5zYO/HmecU3kzaPfN6aCZWQESmHKiAtoUCFyhrDX2GegPd&#xa;azVQxxZgugxKYFXQgPfeytQlkhCTBq5zIewaLSD4D2dBn2HhAJ5LsIvfc6YJ1w/K3HtuL1yx0f&#xa;GvM4E1uXbT2zvYAM6cYJGglx3AD/hBemEGXCxKH5srobY6c124ICuFZ5qbJExzCeCPlXoj1dR5&#xa;j1T333zWMtGnp7KQXMDvgetl1eLlgXBhewGYsRj0HeotDOoC39AEvqmQC1S2gPTvRBI2rcwMVk&#xa;0cWkirfVNaw+uDBep/aBEUFnqPkm696XHfDIgIGSExCjcOz4jsB+PQzpkGZw5wda6Mqh7LASHb&#xa;h4kSUHv0h6Ii/9VCfLQBMyAXMD2QQDw2VdqMPpEFCq4qflOn7jD9Oe+RauqAV7d7Yt329fCbmz&#xa;PfVf4OHGgM1hud6OCW8kLD9e+nIoXSZdsG6DVQfxk4CPsPKwukf9fW2oA/c4eziUVDpP79aI7d&#xa;MpdL4Guu7N8rGKZ7HyhpCTVVYFhqYcQ5FawFzsgVV+OSGRtzggTkdp2hrFUwyT+XuAA/t7D08f&#xa;Em26qmUu0T5ZqxX4VL7vAHfL6RIEywK0BBEXx3YuYbv7YOXtjvaKkTsDcsB1AahwoXQcN4UUXY&#xa;DcUl/tRv5HGw/DSAg3tt96YqZOLdY6Qp6KLb7IEvxwIJwgLfTFlmyzvDp1aM2fNnKJF8j1vPgn&#xa;T3P4FviRU1Y6EkKgmE5Z3tLUdcpoB8aQEqO0C67P0kU9eQgCJJSDqjBawZIfTtpvuh50DniqUX&#xa;sI0mQABTUzjMWEIjcO/UzP/+axd8y7laOBJYkSu+2roVM6BxnDwVdFJTvQ5F+UnIpoZhKP378K&#xa;dWAGiqrmCR0wfPnCyYt5MG/Px5b0oXOYWXEBtGCDRwj2byk4EAVi2EF2dmTN+RhUocMsJOAely&#xa;CfBiRjAw4ak9cF0noTMH9kLLNsHm/KBGE9MHCZKmBfxU3a4GJ/Bv7ozdEXX60+pEV2G/wQhBUr&#xa;kEvg6ogGdmWvqaAVXjoMypFj4DXJn3GcscL7VYXGrtAUATaAFuMoA4ONVVdnv/YkVzotpX3hm+&#xa;+Sv9INd8IUEuQa+qur074Il/y3CB6ELJzUvRqzC5gsuw3CMy5dub4fe9hKZra6CoOD9cwNREBJ&#xa;H6hfofblfY5EdL77zp3y21LwjwDZ+pIqxAG0brSZ/bdbQyttVUgwH1462pTypbgZ65Ki67kAJJ&#xa;G8ekvF0yQp+R9X4Iq/6FUQfNpF3tU1H/BLLrGRMvtha1/AxYcl8jmohgugiPulSe9BF+DUkLKi&#xa;iEGTdmnrt5Ezyx29GDNqRyH+RNcy2KQN0o9Fy+mgoBpPPASmecQ9VYKIuRdVq9+1EwE1mgmgFs&#xa;GH4+DmHM27phb2KdISHKn/8DPvlQa7Uwlz2DnrTZi5OWyd3hnKE6ki6/vZ73+k/SeT7S6AT+l9&#xa;taCS8y5Yo7obHO6dmUCJCfOCHnLYqnDiGPUaIRknFnfiPVIeZZSireo3pno3Tv4tttDjZPnKaE&#xa;3+R8GDBNGaUmtUzt3STs7RTBfjaE66jLMynXN+f/5ENsR6if/okL6093tKAIbrwvfHSz9NsEqm&#xa;rrWfvRbp6e/0/Wbt9DfTyBmTQpKozRtkUxd14ygUmDeunHLOqEwbnd374e/j4rQxSFi52rn4CR&#xa;67Zx47C8UTPvfquKE7Lcdwr2mMebfpZV+0IAPP37YHUtzyxazYOvLGbbvsMkTdOxyeGIPt14at&#xa;pFnNqpbXaNQSeGUcfa6bYm0q1P1okUaBgDxruOYXkkVwR4h89I+fEp0mDVVesD3GHRNNhXVc0v&#xa;XlzI46+tpK5R7THUoqiAB66dwq1fGkGsIGJNAypgJQNwATMAZ+g3BD6ozPS7VdRKVimU2/Kxk2&#xa;YnTpy9eV3Le9UwrEwA4rvzYOS5TonfDQlSEvfR+gZ+/vJiZv5jBXUN7gHeEwacwuw7pvKFDq2A&#xa;BMQT7kDLRwS0fG1EYEulrU9HEupFnlyLI6nkmSVW3ry07JY0JTnNFO4Jqnsidc5cp581LUtt5h&#xa;lTase0y4miKSBdhq+SDFYbV8Ko87K5D3yCWhOmyex31nPPc/PZX+W+UXpZSQEPXTuF684aSDRq&#xa;ODOq6czfuXCA9PG8fR+Mn36s7O6AvK9iRw2Ij8zRghbGICQN2IIjMEnyk/tdT5jWXbQAdoKzr/&#xa;ANbdt24AhXPv5/LN2627mHsVAq+nThT9+5gO7lZd5GId35PSzwG+rhL4/ZnGRcsp7kLATOkSsa&#xa;RhAs/Cuok6VbjmBxkcaEs1pBiwhUC7bQO7fCNFEWOLDHyn8QK1C6tTcmEjy8YA0/emUpdXF3z+&#xa;CiWJSfXTyKu84bTCwWyVK9n4+DHyIkNdi/6pm5j9kl9VXKHrTJVQ1Mu05mSpcC2DkMvfDvfNvN&#xa;VZRhOCXf4S1gxXDsK3hTb3L0c8Pew1zx5Bus3untXt+vU2v+fOs5DOja1mrCLfrZ7Xv80t/I1z&#xa;LwZavh1rWwbknmXm0cSp2i+tvAxFxlAAdJ7BwpUWg+LYFu+YNU5lbBPHpqEWwTHNpWVlsyQkQE&#xa;1sE90KodGFAXT3L/G6v45fw1NHrkcIkaBreddTozLhpOSUFU7ULmhwAG6kAXEbgGzqgnt+nAiM&#xa;KaJbb3tlDraRNzFQIdqVJ/0l0yowb1BtJ1CTMU1GJIZlFh4LYOc3KB6Nup1cD0c4vmwrlXs/XQ&#xa;US6atZDVuw96fnzHlsU8e+04JvXpjGGYluUvDaSI5nf5RTyLtn4VpauQoPI1W76D9dXKpYgHws&#xa;zAcknK/zXHEix/YJBpIEx6WGGAfrsT7t5mb+KT0dCtOGXFM+ClREeuW3KAox6qHQZM6d2RP11T&#xa;QbuyQvdvynUtQEf4kxElmYCFL9pM4oo1AAeKhkGAnwHTxYqVg1M6dpAcQGGmAb+lYA8WqVwVPA&#xa;tqTZi2GZ7YZU0NbiUWMbh3cj9+NLmfFc5thAR+rkjgVr/gJQu0KeB/exP85y6nloq0AVXODiFF&#xa;BtSNQ9+gEnQqCEL9HlSz8iiMsNtFuLojrK6GNdXeH9y+tIBnvzaMKb3au+c2dFtaMzQ4WhBDj6&#xa;quoR5Wvp6lfrX3szI9d1AEWCAKEADxcUKSIy8k8KIQIwfqDzB4pe84Q8H9yqiurXn5a0Pp0qoI&#xa;2/5Iuomu3HwDVNFNbsJh0gchlr9qu+6+BHY4M84Uo0gkFUQIbCkDf2gLiEbwjwzOBxLIQh8KwU&#xa;/+LQmPVWMhppkAMmIY3D6sO7+c3JuiqGElygb9GEg3MvPzADbxj3WQI56Fsr9BCfxZuGQRyymI&#xa;KZM/yCsqOJ/xAQGFP3mwDjVAz2VwyCc3d3E0wlNf6stlfdtnU7oYmsAPogYGQYKki9pXucBWF2&#xa;AntEAcoJdcMbO3D/CDIIHuYBkKVc/LHiC0vbEavrTaH/jlMZg3OMnonq3teyP4ZUMxNDmAjjCL&#xa;pul36yrb9V/2KT/pVh3zSjjqNwIigBGCUsLa0IXjjQNw8Rr7fj2q0rcEXh0MPUqA1uXQ6Qvq7C&#xa;eGi80jrFzjJQ+4cYFkEj5YZftOl91QC726oMMBZssV+8ZoAj9oalhDkwO4WP1Uf5u1E27ZCA0a&#xa;yRiWDoU2BWQDS9p3ywp+uunwdb5JRw7wYv0Am9fY6i5a5yq3kSsHsHW3bQwOjAuIAEEHMKj0r8&#xa;gCmjDhF1vg51v0t+O4oTP8oa/Qv2jEisDV5WAG+dkM04/1NzZaORtF72fn3F+L92ZTWgiwAThd&#xa;Np6EAn6u00CA9fF4Au7YAI99FHyrj0yWkHRfu/a0Nk4KkuksH9Oal5l4xxa7ertYqd5q9cBrCu&#xa;gqA//yDopX5BMJvAQmLx974eMbTLhlLTy1w/vDCwz4bW+43a5FMe49WDxYqNi5NSsL5FurCaPd&#xa;HD5gA/7ueiXwH9B9dbC9gyd5AD6Sw3Sg2xMfta8uDtdWwvM+2ycWRuCJvvD1jjC+EhZL2VCrKo&#xa;TYAQNo0coKd1PlQTTzpNrqaASGAft32QW/RTkJ964c4Dy54vn+Csk3LPCDJotWqX1SqU/CZSth&#xa;no93YlEEnh0IF7W3OMei4WC8JUlO74IpyjlHj0C0wH1vREOhGQTlAH5RQSZw5JCtbobazWtKkF&#xa;fr7x08UQJ0RBMJIi5qlI51UCdbeCr2/+rl8MJOf7b/zCC4tAO2VbN7tsCDUhzBxyOge5HQt4IC&#xa;KCoJt0NqEOrHRatJmlbQqyj4Oan/qI7k74cAy7CSCWSVyQnWjhlagI9ocgk/jUBT+GtMwA0r4O&#xa;mPvQW+mAF/PAOu7gyGIspIFT6VWeJO9624JJxJ2y8rmM4qZ12trX7Malh6NCfLrusUMFK2jMV0&#xa;pF+v1HA65lSvlGsu7D9uwh2rYPbHPh9pwCP94eouYMhrCanfqk0jb/oAnugjVNTVQjSmN33lM+&#xa;w9adoQoi6hBP72EOKno5t7sDYxzHKeCZbsocX+fbiBacD2WthZB91KoVMxFBf4UJAL5ZtJ+NUG&#xa;+Le1eHrqGsBP+sCPe6Wa9ogxdOUCZgBjVq4rLK5IIDT/bm6CnxsHOFMG/vRTUsD3wnLD3/5tGr&#xa;ChCu5eDa/tzm6V0jIG53aFB4dBj5bBPuFPn8B0H+AD3HgK/Kh36juSuPsWYmXVaCk5jpz+Hmwc&#xa;rOYarmedLOJmiGkA+OdRZWvfImTxnJ0cqeB0KF14xjRgzRG4czUs2Oe+U2ZJFB4ZDTf09ZCQhW&#xa;PJPpjyBtT4mPjO6wgvDYcSA/dIZCmy+Itr4HUp+3btSGtnL23DT1NwgDSXWpY/6hc5wE3yjbcH&#xa;uWC726uFgTGB9w7Cd1bBskPerlYAtQn45hJIGHBzXzy3kN9fB1cs9gd+z1KYPTSVxcz0VyPT5b&#xa;VBziCKkuVgjpKAJCeLMlHHLpAjBxDO125RttSPHIpyqEsjUF3hQfUuFJ80YOkhuG01VB7xZ88O&#xa;ThCDRV+BYeXu6t4lb8E8HytfWRQWToChLb2p3e333R9ajqTHq6TD56MI4e9AldPid5hUgEfYEg&#xa;Ecicarx2latqT7jUlLQr2gE0xqD8XRYJ2pjcPXF6SieST5wgRmboS/+QA/asBDZ8KQVuEZ44On&#xa;5jcBeBjLcMK0zNp1SahJKoFPrsBPI4CThSTDNVYUgcnt4RcD4M3xsOvL8LshUB5go/P1B+Hhda&#xa;ntVwUobKmC+yr9F3cu7gLX9UgJfTmU89pyopdX88VtirA2HsyUgSWwdpge29e5v68BrlkGr+7W&#xa;61SbQlh7qaUqkrRW977yOvzDhy13KYbKKdCxAL1UMm6/jabdQj6PM0XOJYblLLhcNACtq8W50O&#xa;HGqwyP+tS5QxHMmwDTKuHRD/w7dagB7l0BfxhvdePlj+C1Xf4f8t/DoGNReA6WLt2WKquvBApQ&#xa;ZKmRDkPjmaji+WiANmY1BRY5HT/GaFC+DkdIXSeAW1fCf2/x71hxDJZdAH1bw+i/wirvaC0u7Q&#xa;bPjUy5qOtSv6L+/WpL95fKQ8A0PoclKiHDpIzVMwlT20GXIg2zro6xKCXRntcVlh2ALUe9OxZP&#xa;WvN+p2J4aIP33N+qAF4cA+0K9YwpruoW0EFN/RV8Tou4wPlT+ebwSvxX5HR0WuG60IA5FdC7zL&#xa;9zr++CG95xNyCly7Q+cGoL3H3nwT/nHjBbvZR8Dp/jIocKOTYcfHw3etuaBMhyUV4AL42HVj4u&#xa;qUkTdtd6P9O5CKadllrk0QG2x3Nfd6ZYbwTeOJkQYBXSfoHf/EBzIHUDHVLHoNbwxGj7ZsphBJ&#xa;hbe1vyim8aNby51GlqE2shn/MS0fnofst9qCugn376uLQbfO/08PpM20L4Vk/0I2jdpoYIbHEG&#xa;Tm3jJChuqWLfFy821WK3o5vBga06IibcNxAu6x6u89eeAh0KNQDtE3XTSq3z9zyZEeB0h3FmkQ&#xa;uVBwW+mB/OtPT3J0fC2PKABowIXN8jNfebAbmA0O+3Dysjhm7jJCleyaLvEC8Ox2HFEfSjVr0S&#xa;REt1pRF4qQJ6tdDveP8y6FemiXRu/TVgYqWy+d83IwA8LFeM/KfHFIAGYnh443QshPkToUepP+&#xa;V3L4E7elnJKcJMPenj51uVrxjESVT85K8KpHzAj/aBb3clmFs4aAeGfFwD49+Gj2qydWUxuKgL&#xa;3NkbBrS0bAkRcpM/zKRyk8X9QIdmBLCXw0ArG4FPRM/1WyekWmFB/KgWzloI9Sbcdzpc0z3l2A&#xa;HBkyi5HN2WwM76UONx0iGAw9Y3rAxWDlMgAASPBHLxOahNWDaCggh6/nIBkMBMQsQp+WeSJzYj&#xa;gLNsAvrYMGIS9iDKiAcCgL5HLbi7bgVMDOV26Oym1SwE2ovDXbNgAerMljpqoHxO6msMWv/32I&#xa;rmub1K4E/mJC1B9gyyOY7GTXi/JgDAvYDoB0hd5PLbhwi4YqPy2+afrAiQ09axIO3Do8P6PYQ/&#xa;7Tfr5tORrq/cCM868+j0AD5q5gB6ZaRc8dPt3pY++84QLnU6h6ptU/86kVQCf+PJDPywgs+nQD&#xa;sbcY5XUHfQ/QPdehMmgkZx3fJdOJrMy/ef1BwAwGG1r6jUFPj85mo3yteRJzzec6hRCfwXaC6h&#xa;KeB9WTOoGZ0y1oTNChYmikZHLQSMd/L67Sc9BwBFLEHpUrR39XSl6GQALqD5nofVruQDmkGfGw&#xa;IAfFOu+KBGE6D5ONwETvEM3LFN2fcNzaDPDxt0bB2bHK1Q9Zpy1zCP85h1ykQKrYEjzaDPnQOA&#xa;nEMQuH1bHti/6TENJH2sgqmzaSqBv6AZ+PkXhOqwwssyJTEylbtOonzDQ/0zdDqpUAENl/rSFc&#xa;32/mNZzM/AMaMZTE1XFp3gwE80g6jppgA3Me1EKh2Bfc3gzr8QKJa7T+DvbAa+S/l/+QggD1sJ&#xa;pdgAAAAASUVORK5CYII=" ID="ID_804482520" CREATED="1495901105034" MODIFIED="1495901105034"/>
</node>
<node TEXT="${name}-icon.png" FOLDED="true" ID="ID_1819207796" CREATED="1323059863835" MODIFIED="1323063753585">
<edge COLOR="#999999"/>
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAADAAAAAvCAYAAAClgknJAAAABmJLR0QA/wD/AP+gvaeTAAAACX&#xa;BIWXMAAALjAAAC4wGb/RrgAAAAB3RJTUUH3woJEBAFPooW3wAADO5JREFUaN7FmnlwFNedxz89&#xa;PZdGx4xGEujgMkJggQTCoIDNYWwDgQ1eQcBJBYIJhsQY23tU7ZZTzq43hZ04yXpTcW1sk6Tiiw&#xa;V7s+tkbadsbAM25lhiMGBuGQECHSNpRkJzHz3TvX90j6en1SKkCryv6qf3uqdfv9/3vff7/b6/&#xa;1wLzIgDfARKAoomsk4wmaU0knUSAv+MvLyJwaN4Yt1LhsmWAVdfTSRjm/mjg9clO7lhQAjaLel&#xa;PR9VJ0NxQNogLsCcHZBIeBtUDrXwBgZsOIwsMnH57FW+f8tLx28n3gq3+uk9XkngVYUyzS/GgV&#xa;PNiyBCZMRflCfUX7q2msZFEIcPpPvL57P5sucVtEZg3wpLYq11MKSp2qOqUFNoCC6+lkBmAGsO&#xa;7OImz3zaxHWP84jG9AkGUM65DXxGKB03/iXv/DvDVwSfzdVVYD7wL/y00sFsN1EbCuwsqtj95i&#xa;p2zRCqgcB8k4SElNUjlJ6ySVgPENlCxYxoNjRGrs1AIbgcIvE8BcYNWqMpg/oxGaF0IqDrHQ9U&#xa;kyBnPu5faGOu4rB2A5cNeXBcALbJ5cwMjvTnDhXNACBUUQHYR4OCcJg+h/i4WgyE3BXStYN8ZO&#xa;gwsv8DAw4mYB0NvA1x0CC9dWwtQZM6G2CeKhfF9l5rMUY1uACdOZNuM27u85xD9dZm5KYSWwVX&#xa;uiBdhgYqQew/V04IjJiBLwKvCCHkAdsKG5mILVdV7EmXer7j4WBkFRFReu4XQVnSCA3Y4w7U5W&#xa;t57lf/qDRQfDrAN2AdYKl+33L9w7yeJ2DPUfHs0LTa8s4siDM4s0h5JXoqkM6/5wdnb7YOJT4B&#xa;MrYAPWlIg0b66BMU3NUDFK3Q5G5c1AKGYiwOg6aqZM45GujznRSnNE5tvA8caRRZaVk6+9o4oc&#xa;VmZUlwz7+y0eJ+2DiersCtwOrFnqQVw2sQrqpmveJg4WQbWS4UAYFZfJxQZFgCmzWdx6imX+Ac&#xa;vrAR4Anthz6erF2b8+Mr7YIQ5RrHFkET9fUscxX5jvvnnOVPlgMk3bQPwgsDML4NFRdiY8OEqk&#xa;uK4RXMUQC6pKWsgB0NcWE8VlHYBs7SqhrL6JdZ172BdiVFeKZywQOtwV8mlv0wd0ezItlwFEUh&#xa;k+9YWTAvgV9W3bgDe1N8e0CC9nAcwabYcxDkX15/FwTkmj0nrBoLhe+Yy2jTIyZCRKRHAI0ODE&#xa;u6oUr6Azl6wPuJyEC7qZHmPDsdrLqPfDcDRGC/Ay0GbmhX51NMo/vxeQHZsunMRSXgmeMnX/i8&#xa;OAEHTzJw8nAlwNEG39jG29EJDgxToLy+fNgtrG7AR+sR33XerhiXf35QDUjOTpJZNo2vUxj7RT&#xa;H0jzPeAHRmpiBXYkFe7a2sM9i8v7mXDxJNQ1gU0EizJ05s1swEx5KQ1txzjgC/HfAVjmgcWTxy&#xa;I+9BQ0zgU5kzeT4v4DoAMg1EyA721had8GFg1cEF8bYBXwNrDPCOAS8OLZGNN/68P7pOci1hIv&#xa;eMvNV+F6ACgC+H1c7bjCzzugUISHxlopvmc5jK6DUGCodcbD+deZNIwaT8nCFTxy6Rd8FE7f4p&#xa;N4ADgJDBoj8R/T8MF/+uFgXxw6P4fgAETDEAmpEjXUeonqJBaGwQB0tfFGZ4IDQVhdAc2Nk+CO&#xa;ZZCIDaUg8RAko/kA5LTKwZoXM7OpgftHgKBSk7vNInEIeP5Sgjtf8VE5rcSPu6AI3N7ht48+Ds&#xa;iGlRgM0OYb4IVuqHXC2rFOHAtWqNQkG93Jj+5lLhsdoSQJKcP5/hje4hGqNyz2YJ+3jG+3nuW9&#xa;waTneJTNwH6gD9QNki09wIj2JLObChThVlsSRJu6lHoGKqUgZSJJTWJRMn3d/LJd4u1+eGw0LJ&#xa;0/C2He18EqQjoB6SRkknl1RYmLM1d62PjqR3zYnWTr439DjbdYHc9dRkXgIglfJx8HqU4rdAOH&#xa;zdhNA7B9oYep2+thhLcEXEX5NsC1ApkC0QiHfGG+dQbqnPDa7aWUfWMz3NoMipz/DhNq0h8MU1&#xa;zgxG616fiVBT4/Svf2Z7n/kyC7g3wGrAbOGMNhP+DqTjJ/lA3rV5ySbgWSkEpCUldn2wmtHU8Q&#xa;i8R5sl3hZAyeqhWYPns2TJ2n7umMljtkDCLn7rtEEOW0eq3POxwuimNXcfVe4r0BKpIKIeCgaL&#xa;Kjr6RhVk+KcbMLFdykkVISUlIaWicl0kmJdEKrkxIfDCj8uBNWlsOmyeU45rdAQaE6AXqFFYl0&#xa;KkEiHiUejyLKEhZZyimuByAlVXpiL2B04AKtgajlVIzRwBGzlLITeOFElKaHLuCeVKBmw4KgW3&#xa;nBnB4pCnwQhAobbKyEkvrbVOX11MQqEJckznT2se/sZT7vCjB5bDn3zWlkpKdIi+Im0V0GijwU&#xa;T5jCQ1f8HAjJ466k+AfrMIRvdxo6TsRwxzLgsOjYMiZtJdceSEOlXe2DnFHdqmgBCyQyaQ5e6O&#xa;atY+f547HzDEbifGtOPYvqKxlZoKixIKt0hvx21sbkDJV2dYwrKRqGAzAFqGgphe9Xg1NUY5Oe&#xa;u+hzGUVnyG8PwA87YUcfTGk9ir28EsVdSm8kxr/vPcmrh87RNRCmcZSXLWvm0jKzlkKXTY0H16&#xa;ImikpNMhdP8V6/zIkoKWCrGQAP8MgtDkZuqoTGEoZSarOMTJutEXbYFYJtffBXnYPMO3eE/c4x&#xa;PL33NHvO+yi0W1k/azyPLW6gttKNmIlDKKYLYIbtkyWGUgYufEZbTz/P+yChsBvYYQagxQoLv1&#xa;EOt3sYSiWGc6OCOmiZEzZXwcY2+EWHwsHYBV7su8zFYIKaEif/OG8C65vHUuKyaBmfYXR5GHoy&#xa;4CfZ2c7WLvg8TgB4EegwAhgHfKfehWdjNVitw9BowWRA3aALvLCkFLb7YefVNJKSZkqZix/dWc&#xa;uSiRU4MgmIJMxX1QyAlIbONvb3xnmjHzLwjj6h0dOKbzoF5m2ugfGFutm/HgCyZiMWaI9AZ0r9&#xa;OaXAAg/86+xyZtQ4EeIRSCjXpiZGAMEB+vv8/MYHHUk6gOdQz2DzAEwGNi4sRWypAEtWeZFr8y&#xa;HDjB3qh8faYF8w98gCN8xMB2DQBjbrn7epL0AIIEkofh87/TLvDCADLwHHjWTOCWwaYaN2fRVU&#xa;OXXK64HoKXV2MIuquCLAh/3w/VY4HAS7AN8cAZ+E4A0/rCyP0WALqHHhep2CDMSidA/G+WUXhD&#xa;McAXYAKSOAewRY/jUvwtIykwxM1J4UyT8j0mZeluGdLnjsFJyJgFWAtdXw1Dh4sw/+tg1e9sGP&#xa;XGEcKUmNC9ezAhmZTDzBy90KRyNENMNtNdLpSmDDWAdVm2ugwGrwOiIE0nCgT926TeUwyaObJQ&#xa;t82A1/fwLaomqXlZXwRC1U2uDeMngrAC/1wXKvzFw5BqKQr7gwDABF4WhQdckphY+AP5jlxCtF&#xa;WLR+JEwrymeK4Qy82wvbOuBAPyRk+Eo5bLkN5lepPvpUP/zwtKo8wKIK2DIRxjiBNFQ7Yf1IOB&#xa;yGn3aCC7CK6nlTHi0R1AQQ1NqiQEqGX/VAa4IB4PlsDmAE8MB4J0V/7c19yMiC8MXheBDORWBQ&#xa;Uidlby88cxomloID+NkZ2O9Xu8z0wNOTYWJxfuq9pBSai2DnIByL5pQ2liEhQYF+NXX+HbDXjD&#xa;JYgd2+FFNPx7BOc+e/ZEIhbKmH1ePgB6fgHR+kFXi/E/7rIpTb4c0O9dlSGzxaC9M96szrS3sS&#xa;OlKQhuNdErtyTjfPoozX2ZQ3qXme2HAAXo7IzH/Ox6y7vFDtyhmnxaIezjWUwL81QTwDH/RCUo&#xa;ZnToLHDiFtpr9WBS1VhsCG2ueVXjgdYxB4QjtZuGFFBPyA2CexoMyG/Q43CJahLtPrgEluOBgA&#xa;fxKCEvQmcrP/kwa4tZDcwZbmBg8MwpbLEMqwHfVEWbqRALK7/vcphb2v9MDxMMN+k2x2w8+mQq&#xa;3hm8vcMphRknsu2y+Ygue6oCtFG/BrIMoNLtmMLAYE+9MsLbBQMN+tnmsZrUsAxrug0gnHBqGu&#xa;CFZWw6axMN4JgoGAvdEHz3aRTik8pxmifKMB6G22EHi2ys6G/6iHu8swPxMVIKnA+Yh6YFXpgA&#xa;LBsFoytEdh7VnYH+ITYA0m55o3cgXQ9mZPJMPdkQzer7rBKTA0DVPAqvH+UlH9uPDF1tGUT2dg&#xa;azfs6COWgS3AHm5SMSb1fsDTmWDOJCeWRpdZdDSxD8PWOR6Cf7kMvRI7gZ8C8S8LQAboTinM8a&#xa;eovscNbtFkFYZL+zIQl+AnnbBzkF7gceAUN7GIJvcGAKVXYmG5iG2W5hoVRT2XygrZdiZXI8Ou&#xa;QXiyE+IyL2kBSLqZAIb7bFcObKt1sGRBCbgsuQ8SgsErZVdG0Op9YTgW46yi/q/Ep/w/lhXaam&#xa;T/CyWtE4PHz7MQCdVwxS9Dyf8DhKYmLeIPjq0AAAAASUVORK5CYII=" ID="ID_1012725598" CREATED="1495901105034" MODIFIED="1495901105034"/>
</node>
<node TEXT="fpgtdLogo.png" FOLDED="true" ID="ID_1897993304" CREATED="1323059879726" MODIFIED="1444407674459">
<edge COLOR="#999999"/>
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAAIAAAAB9CAYAAABqMmsMAAAABmJLR0QAAAAAAAD5Q7t/AAAACX&#xa;BIWXMAAAXNAAAFzQFttF+BAAAAB3RJTUUH3woJEAw0iSNLuAAAH7FJREFUeNrtnXm4FcWVwH99&#xa;730rj/Wxg0FAQEBkXx6bIEajSXCN4xaNa2KMBpdJMokkMYkjWUxG1IzjmIkyiBqNSwiZxBUQlN&#xa;U8dkQQUNmR7fH2e2/PH32X6urq7uq+9wHKq+/rr29X962urrPUOafOOQX5K4cA8wQ8ZtJcXIuR&#xa;p3aKgdqT4DvzUS4GLgfaAO8BjwC7PuuI1HiCUn/62HOCjNPjir7tBwZ/loF/+QkO/PRRdJzH6a&#xa;J0X9rFMAeW2Pr2z88yazTlitrh2ZZNQ/EmQ/iT4dKY1Kppqt9qIgxj6nfMgNKVjn4mgNhxRIA5&#xa;wJXtYrBhCHQsgHs/gvt3ZO6fDrx/rDuV64A8JVccHQHFEQGwbmcv9DNUaKVADNP9/IeecONW2z&#xa;+jwFeBuccJAboCDCq1gA9wdmsbAnQ6HggQyfG/14oV7aPQIioANhaFaFR9Tv/O1EeyRyRiv07X&#xa;RSIQNSCSOqKKs2G9/4aOyj7/5ThygBhAoYD0CdPBofgscYC4XLFvVIoKDeDXc6Hi/GP/RRUxi9&#xa;ZN2D0cOjungt8A9xyvsY4JCBA3vcfzREaADjIDv72zwL7rgZHnQGPDsf+iV7bCpT0tnloApRGo&#xa;SdqeuBv4V49JpknHOupO8p8pDuBQq2b2EhDglU3uwM+nRq4CYct2WXHPhOoxYLzjeKoaKG3mAO&#xa;EQ4McyGJcOIjP30rkHtCqHRPzYmWFkRPjrDri4W+byK23hrwdtT5Qch7GOfl4Q4D5ZEhzVSgDy&#xa;7A1QffjY2OPcmHgkAqPPg6X/AGDuADAWO56qw7JgHjcOkDgBECCoFvCGg5dWCNQ/9nw4vB/ije&#xa;qjUTjiORw6bUyfDcls317u7/iWIuBfjrkM4M4BEic6ApQBZ4sV/UugOCq08t1HINGod4jAaorn&#xa;a47AtT/IIMCF5cpvevZknwKCIECVXLF+ZKoFA5gx1wmoMMB1O8K0ccE3UvYDq587Rym/63cnsx&#xa;CoiwBfkCt+1kOY1xuALqeqgRUPiRRBAe52//EVGS7QpQi6FTq+bRrHZrXwM60GbpcrpvcQ5v5H&#xa;34R4g1rYO5YLsabL70gEkkkw4JNxYLzl+Od+oLxZDVSXJ+WKHWME4HfvByUt7Gofwn0ZGPKaQB&#xa;BzjOEBZLE9uc2HF8NtFdYzCTi/LfyfXS1slyJOPyo8MyUH6awsVklALfVBgK+optkUf612eUcC&#xa;a/1gZ1MiwHU2BToCXYsEYNz7v9BY763uGT5AzVXtMzXqRn8Zls4D4G+DwFjo+Eejx5RoAA8Dt+&#xa;VMce5q4B9y4HsvAbcAn+YbAdbJFTXjBeoecz7UHtUHupEDEuQCfBO46nvwzrzMJLxoMIxf5ejF&#xa;ZcALihZvzwfwfdTAsMUALsEyz58VkKd6Dn1nJFelC8vh5TMEBPj1a9b7vIBv5Ej1hAS8CgmW/g&#xa;1e+I/MNGEs0B6TjUC/04rh1f7QUzIf1Scd6w1OXm3CkQS0iUK71HLwoTgckGbOgxqSQFXCQp4E&#xa;8NhueDk7nZ0HvJovBHAMsTkZy7gSAe56DDp0z04Fbuv9pgdCGDkA3tSQC0zFcz+cCmYSkrC9Dk&#xa;5d6njDU8A3FFbDonu6wK9P5YQqB+PQbnnm8gfAL/OhBk6RK/7Yj6xlLQG07eRUwZLSdVxDlQuq&#xa;+onvEuviPu9O37/36QxC9CiGPiXeMk+qbAOL0rbWnVgIsPKo7fJQmPlDj/rPElj/vU9DrMBdsi&#xa;cA1eciBJo+v93q7r8K4vEMQhvzHW/aRcqDJ1XuAB5y61aRYS07+wl/LaNwV1e4LbV0/tud8Ohu&#xa;+3NtNcTyVlFLlqhKQGU11FvfVgucFlQjUL3OsXjaMEG4OOX0lATTqAZ+LsiQi67vxvpVCPGDWf&#xa;CLqzLTwhfbwmt2tbAL0BpIr2o9DPR1EwTrTajXMOPsi1tAy1w3wof1cmOhGEEcuDWMOqhCgArx&#xa;oiwKBYYwh1433QK+4aLzNwUymCGo3u88ZBJUzgcTXlWrhYck68J3sNy6z04JyL6EKhj+CoDrPe&#xa;wA8ZQqp2QwePsubAH+i5CexTEF67OVwxXCMIz/KtTXOAFvStKEDkKYLhKI4SPlmz5CoanJBc69&#xa;BlbMz7iPzR8Ek9Y43ng28KZwvTp1BC2tMwggWXFSpRrLvf64WgIHypj9/e6WFTVrTLnAWoZVAT&#xa;jpggBeXMBUaAm60r8fy3e7Fs+XfRte+j0YcFYb5VvfyJPSGvOxAxwXM7CMAGvlmzN6Chff+Knl&#xa;5mX4zPs692T1zcgT8L24gKquez8wDCvowIA9o6GTUy18BbgwX+PsMgUkjjcCyHovrw6UBrmkzF&#xa;KnVIDWRYSgAmMQwOvcU9Xd8gA89gMAOhbCacWw2a7qTSWPDqQuCNAx4DsayFOkUxoB/ihWlkQs&#xa;yTgDkFsesAPfDwkMD+AaGtzBj/rDAN6LU7RoDUctgf+DkWC83XQUF3VfCwhSChXySWgEcAg1NW&#xa;NFg3BPa6nXi5IjPkghP6tCjogkG4hTRNIFIZIKzpAMwQWu+j48/sPM//+lHJ77tGlZbh4m/rzI&#xa;JzFgkFgxoEQw9wIc3GPX+VWUngzAFZI+9YaCok1NCvejdrf2Cuzj+Gx/eG5REyFAfheDfgV8L1&#xa;8ICcB6Ocq/via71u/FvoNMCX7ThaEB6GRAqjcVU0b6f8/9xvbJ7ZY4B6pxRFZSMw2hqZQMmQ6C&#xa;NVP3MbPPvF8LY9Y4ESA9BfQphkVnpNohFQhrZgNf03Wj1sOuRlu3/jUfCNAKOGKTejbAX0QhcM&#xa;4MuPwuf3avA2gd4ONBvTrA1bmfRoCqA1CflfqWH3WuyH2/C8QiAvCCBLwaUNqolgHSHKA4Ygmg&#xa;fnLPzuFgOJFzO9AjFwSoShkiWqQr5x5MAVrU07eth1P6uLNwFeAjmtzCSxAMwur9uIXjvgHznr&#xa;S9d9QqZxdm9FAYq7yQQGGn9ZoCooYw3m4lxVXOLIXVNbY7X0hpBPW5TAEtJaZK/+WwYYRQsezv&#xa;0K2X5VsX0USCpIQI6XuRgKZgcqB4t2eSwPZ1toF/RGFJXzxAmpbeDT5xx5cvh1GjXKeAWP8R8P&#xa;Zy9wamdoP9VudWnankAnVhBcKYMCSzEMK9N9Za802XQoELLPs7DJ2szwXk64jQlp+2oKP3616n&#xa;uYBcX/m2rfnbt0i6lgFjWwv9+uVL0KBJaCKg67OCVVTBGWKRiHe7f/4QJhZnxu/5vvC1TY6nxq&#xa;JYyAsiBF6HFO/fdQmYE4WKnR/CoPFOAEfywP5VXMBvWddrbvfjBu/+LUvVJnRTCH71ovPrUWDE&#xa;OVl7SBAOIMgYyikgEvFv95p74BlLWL1M7b+8OAwXkJdjHM4QS45IFW8+oxfE0ejipKF6VhU61u&#xa;jyjNf/020kXP6fOSfgyP4sMkRglxTMPLSFYJswgD+vCh3KlmzMAjcigKgxPQVEI/7tfGO6xTJS&#xa;QS4fDFPC839yRYBZsl26olKinngj1Bx1AtstfCvXGD/5+XiASCI3pHh9ju2jS51Lwbw3RJi2On&#xa;SFdp1DB7V0Km+bpZ+Uh8HeRliTEua6du7k7wnVUAczns8g5GklUO5czL8+ZzsAmcj6bLlqA8wZ&#xa;IMzfi+fCxAu92TsSBXmZhsE9hsBrlS8pPJP0MA2L4m11lU1Jn7sfaiWHzif7SH17ag3U17oLpj&#xa;5CbL+ePRhyxgAq167n/h3w8gFLvko7hF4+9ctZY5vXAtnAMRArgrglL+yvUJqtK4Ehugjg1u0q&#xa;rGDQ7LeKDqEGcNoQizJUQp+brSDiw390SlLTUphUyQUGvDvP9qzCHQxTdH0f+UW45/HwI5kqq9&#xa;atZ8plV/PpQbvb3s1XX8HjDz7gRChXki2ES7tl+n/OWnjD6QlYDhzIBQFiWIESWYGwEHZUSBL9&#xa;iHOzI234GH/8KF+nmB6cQEcb+GQz7NqWqfvuZpj5if0Vm0dA71Khj3M2WzJDSMCLZdeevTzy5G&#xa;zeW7OeNq1acvlXL+Di87/ozVlU5a5zYO/HmecU3kzaPfN6aCZWQESmHKiAtoUCFyhrDX2GegPd&#xa;azVQxxZgugxKYFXQgPfeytQlkhCTBq5zIewaLSD4D2dBn2HhAJ5LsIvfc6YJ1w/K3HtuL1yx0f&#xa;GvM4E1uXbT2zvYAM6cYJGglx3AD/hBemEGXCxKH5srobY6c124ICuFZ5qbJExzCeCPlXoj1dR5&#xa;j1T333zWMtGnp7KQXMDvgetl1eLlgXBhewGYsRj0HeotDOoC39AEvqmQC1S2gPTvRBI2rcwMVk&#xa;0cWkirfVNaw+uDBep/aBEUFnqPkm696XHfDIgIGSExCjcOz4jsB+PQzpkGZw5wda6Mqh7LASHb&#xa;h4kSUHv0h6Ii/9VCfLQBMyAXMD2QQDw2VdqMPpEFCq4qflOn7jD9Oe+RauqAV7d7Yt329fCbmz&#xa;PfVf4OHGgM1hud6OCW8kLD9e+nIoXSZdsG6DVQfxk4CPsPKwukf9fW2oA/c4eziUVDpP79aI7d&#xa;MpdL4Guu7N8rGKZ7HyhpCTVVYFhqYcQ5FawFzsgVV+OSGRtzggTkdp2hrFUwyT+XuAA/t7D08f&#xa;Em26qmUu0T5ZqxX4VL7vAHfL6RIEywK0BBEXx3YuYbv7YOXtjvaKkTsDcsB1AahwoXQcN4UUXY&#xa;DcUl/tRv5HGw/DSAg3tt96YqZOLdY6Qp6KLb7IEvxwIJwgLfTFlmyzvDp1aM2fNnKJF8j1vPgn&#xa;T3P4FviRU1Y6EkKgmE5Z3tLUdcpoB8aQEqO0C67P0kU9eQgCJJSDqjBawZIfTtpvuh50DniqUX&#xa;sI0mQABTUzjMWEIjcO/UzP/+axd8y7laOBJYkSu+2roVM6BxnDwVdFJTvQ5F+UnIpoZhKP378K&#xa;dWAGiqrmCR0wfPnCyYt5MG/Px5b0oXOYWXEBtGCDRwj2byk4EAVi2EF2dmTN+RhUocMsJOAely&#xa;CfBiRjAw4ak9cF0noTMH9kLLNsHm/KBGE9MHCZKmBfxU3a4GJ/Bv7ozdEXX60+pEV2G/wQhBUr&#xa;kEvg6ogGdmWvqaAVXjoMypFj4DXJn3GcscL7VYXGrtAUATaAFuMoA4ONVVdnv/YkVzotpX3hm+&#xa;+Sv9INd8IUEuQa+qur074Il/y3CB6ELJzUvRqzC5gsuw3CMy5dub4fe9hKZra6CoOD9cwNREBJ&#xa;H6hfofblfY5EdL77zp3y21LwjwDZ+pIqxAG0brSZ/bdbQyttVUgwH1462pTypbgZ65Ki67kAJJ&#xa;G8ekvF0yQp+R9X4Iq/6FUQfNpF3tU1H/BLLrGRMvtha1/AxYcl8jmohgugiPulSe9BF+DUkLKi&#xa;iEGTdmnrt5Ezyx29GDNqRyH+RNcy2KQN0o9Fy+mgoBpPPASmecQ9VYKIuRdVq9+1EwE1mgmgFs&#xa;GH4+DmHM27phb2KdISHKn/8DPvlQa7Uwlz2DnrTZi5OWyd3hnKE6ki6/vZ73+k/SeT7S6AT+l9&#xa;taCS8y5Yo7obHO6dmUCJCfOCHnLYqnDiGPUaIRknFnfiPVIeZZSireo3pno3Tv4tttDjZPnKaE&#xa;3+R8GDBNGaUmtUzt3STs7RTBfjaE66jLMynXN+f/5ENsR6if/okL6093tKAIbrwvfHSz9NsEqm&#xa;rrWfvRbp6e/0/Wbt9DfTyBmTQpKozRtkUxd14ygUmDeunHLOqEwbnd374e/j4rQxSFi52rn4CR&#xa;67Zx47C8UTPvfquKE7Lcdwr2mMebfpZV+0IAPP37YHUtzyxazYOvLGbbvsMkTdOxyeGIPt14at&#xa;pFnNqpbXaNQSeGUcfa6bYm0q1P1okUaBgDxruOYXkkVwR4h89I+fEp0mDVVesD3GHRNNhXVc0v&#xa;XlzI46+tpK5R7THUoqiAB66dwq1fGkGsIGJNAypgJQNwATMAZ+g3BD6ozPS7VdRKVimU2/Kxk2&#xa;YnTpy9eV3Le9UwrEwA4rvzYOS5TonfDQlSEvfR+gZ+/vJiZv5jBXUN7gHeEwacwuw7pvKFDq2A&#xa;BMQT7kDLRwS0fG1EYEulrU9HEupFnlyLI6nkmSVW3ry07JY0JTnNFO4Jqnsidc5cp581LUtt5h&#xa;lTase0y4miKSBdhq+SDFYbV8Ko87K5D3yCWhOmyex31nPPc/PZX+W+UXpZSQEPXTuF684aSDRq&#xa;ODOq6czfuXCA9PG8fR+Mn36s7O6AvK9iRw2Ij8zRghbGICQN2IIjMEnyk/tdT5jWXbQAdoKzr/&#xa;ANbdt24AhXPv5/LN2627mHsVAq+nThT9+5gO7lZd5GId35PSzwG+rhL4/ZnGRcsp7kLATOkSsa&#xa;RhAs/Cuok6VbjmBxkcaEs1pBiwhUC7bQO7fCNFEWOLDHyn8QK1C6tTcmEjy8YA0/emUpdXF3z+&#xa;CiWJSfXTyKu84bTCwWyVK9n4+DHyIkNdi/6pm5j9kl9VXKHrTJVQ1Mu05mSpcC2DkMvfDvfNvN&#xa;VZRhOCXf4S1gxXDsK3hTb3L0c8Pew1zx5Bus3untXt+vU2v+fOs5DOja1mrCLfrZ7Xv80t/I1z&#xa;LwZavh1rWwbknmXm0cSp2i+tvAxFxlAAdJ7BwpUWg+LYFu+YNU5lbBPHpqEWwTHNpWVlsyQkQE&#xa;1sE90KodGFAXT3L/G6v45fw1NHrkcIkaBreddTozLhpOSUFU7ULmhwAG6kAXEbgGzqgnt+nAiM&#xa;KaJbb3tlDraRNzFQIdqVJ/0l0yowb1BtJ1CTMU1GJIZlFh4LYOc3KB6Nup1cD0c4vmwrlXs/XQ&#xa;US6atZDVuw96fnzHlsU8e+04JvXpjGGYluUvDaSI5nf5RTyLtn4VpauQoPI1W76D9dXKpYgHws&#xa;zAcknK/zXHEix/YJBpIEx6WGGAfrsT7t5mb+KT0dCtOGXFM+ClREeuW3KAox6qHQZM6d2RP11T&#xa;QbuyQvdvynUtQEf4kxElmYCFL9pM4oo1AAeKhkGAnwHTxYqVg1M6dpAcQGGmAb+lYA8WqVwVPA&#xa;tqTZi2GZ7YZU0NbiUWMbh3cj9+NLmfFc5thAR+rkjgVr/gJQu0KeB/exP85y6nloq0AVXODiFF&#xa;BtSNQ9+gEnQqCEL9HlSz8iiMsNtFuLojrK6GNdXeH9y+tIBnvzaMKb3au+c2dFtaMzQ4WhBDj6&#xa;quoR5Wvp6lfrX3szI9d1AEWCAKEADxcUKSIy8k8KIQIwfqDzB4pe84Q8H9yqiurXn5a0Pp0qoI&#xa;2/5Iuomu3HwDVNFNbsJh0gchlr9qu+6+BHY4M84Uo0gkFUQIbCkDf2gLiEbwjwzOBxLIQh8KwU&#xa;/+LQmPVWMhppkAMmIY3D6sO7+c3JuiqGElygb9GEg3MvPzADbxj3WQI56Fsr9BCfxZuGQRyymI&#xa;KZM/yCsqOJ/xAQGFP3mwDjVAz2VwyCc3d3E0wlNf6stlfdtnU7oYmsAPogYGQYKki9pXucBWF2&#xa;AntEAcoJdcMbO3D/CDIIHuYBkKVc/LHiC0vbEavrTaH/jlMZg3OMnonq3teyP4ZUMxNDmAjjCL&#xa;pul36yrb9V/2KT/pVh3zSjjqNwIigBGCUsLa0IXjjQNw8Rr7fj2q0rcEXh0MPUqA1uXQ6Qvq7C&#xa;eGi80jrFzjJQ+4cYFkEj5YZftOl91QC726oMMBZssV+8ZoAj9oalhDkwO4WP1Uf5u1E27ZCA0a&#xa;yRiWDoU2BWQDS9p3ywp+uunwdb5JRw7wYv0Am9fY6i5a5yq3kSsHsHW3bQwOjAuIAEEHMKj0r8&#xa;gCmjDhF1vg51v0t+O4oTP8oa/Qv2jEisDV5WAG+dkM04/1NzZaORtF72fn3F+L92ZTWgiwAThd&#xa;Np6EAn6u00CA9fF4Au7YAI99FHyrj0yWkHRfu/a0Nk4KkuksH9Oal5l4xxa7ertYqd5q9cBrCu&#xa;gqA//yDopX5BMJvAQmLx974eMbTLhlLTy1w/vDCwz4bW+43a5FMe49WDxYqNi5NSsL5FurCaPd&#xa;HD5gA/7ueiXwH9B9dbC9gyd5AD6Sw3Sg2xMfta8uDtdWwvM+2ycWRuCJvvD1jjC+EhZL2VCrKo&#xa;TYAQNo0coKd1PlQTTzpNrqaASGAft32QW/RTkJ964c4Dy54vn+Csk3LPCDJotWqX1SqU/CZSth&#xa;no93YlEEnh0IF7W3OMei4WC8JUlO74IpyjlHj0C0wH1vREOhGQTlAH5RQSZw5JCtbobazWtKkF&#xa;fr7x08UQJ0RBMJIi5qlI51UCdbeCr2/+rl8MJOf7b/zCC4tAO2VbN7tsCDUhzBxyOge5HQt4IC&#xa;KCoJt0NqEOrHRatJmlbQqyj4Oan/qI7k74cAy7CSCWSVyQnWjhlagI9ocgk/jUBT+GtMwA0r4O&#xa;mPvQW+mAF/PAOu7gyGIspIFT6VWeJO9624JJxJ2y8rmM4qZ12trX7Malh6NCfLrusUMFK2jMV0&#xa;pF+v1HA65lSvlGsu7D9uwh2rYPbHPh9pwCP94eouYMhrCanfqk0jb/oAnugjVNTVQjSmN33lM+&#xa;w9adoQoi6hBP72EOKno5t7sDYxzHKeCZbsocX+fbiBacD2WthZB91KoVMxFBf4UJAL5ZtJ+NUG&#xa;+Le1eHrqGsBP+sCPe6Wa9ogxdOUCZgBjVq4rLK5IIDT/bm6CnxsHOFMG/vRTUsD3wnLD3/5tGr&#xa;ChCu5eDa/tzm6V0jIG53aFB4dBj5bBPuFPn8B0H+AD3HgK/Kh36juSuPsWYmXVaCk5jpz+Hmwc&#xa;rOYarmedLOJmiGkA+OdRZWvfImTxnJ0cqeB0KF14xjRgzRG4czUs2Oe+U2ZJFB4ZDTf09ZCQhW&#xa;PJPpjyBtT4mPjO6wgvDYcSA/dIZCmy+Itr4HUp+3btSGtnL23DT1NwgDSXWpY/6hc5wE3yjbcH&#xa;uWC726uFgTGB9w7Cd1bBskPerlYAtQn45hJIGHBzXzy3kN9fB1cs9gd+z1KYPTSVxcz0VyPT5b&#xa;VBziCKkuVgjpKAJCeLMlHHLpAjBxDO125RttSPHIpyqEsjUF3hQfUuFJ80YOkhuG01VB7xZ88O&#xa;ThCDRV+BYeXu6t4lb8E8HytfWRQWToChLb2p3e333R9ajqTHq6TD56MI4e9AldPid5hUgEfYEg&#xa;Ecicarx2latqT7jUlLQr2gE0xqD8XRYJ2pjcPXF6SieST5wgRmboS/+QA/asBDZ8KQVuEZ44On&#xa;5jcBeBjLcMK0zNp1SahJKoFPrsBPI4CThSTDNVYUgcnt4RcD4M3xsOvL8LshUB5go/P1B+Hhda&#xa;ntVwUobKmC+yr9F3cu7gLX9UgJfTmU89pyopdX88VtirA2HsyUgSWwdpge29e5v68BrlkGr+7W&#xa;61SbQlh7qaUqkrRW977yOvzDhy13KYbKKdCxAL1UMm6/jabdQj6PM0XOJYblLLhcNACtq8W50O&#xa;HGqwyP+tS5QxHMmwDTKuHRD/w7dagB7l0BfxhvdePlj+C1Xf4f8t/DoGNReA6WLt2WKquvBApQ&#xa;ZKmRDkPjmaji+WiANmY1BRY5HT/GaFC+DkdIXSeAW1fCf2/x71hxDJZdAH1bw+i/wirvaC0u7Q&#xa;bPjUy5qOtSv6L+/WpL95fKQ8A0PoclKiHDpIzVMwlT20GXIg2zro6xKCXRntcVlh2ALUe9OxZP&#xa;WvN+p2J4aIP33N+qAF4cA+0K9YwpruoW0EFN/RV8Tou4wPlT+ebwSvxX5HR0WuG60IA5FdC7zL&#xa;9zr++CG95xNyCly7Q+cGoL3H3nwT/nHjBbvZR8Dp/jIocKOTYcfHw3etuaBMhyUV4AL42HVj4u&#xa;qUkTdtd6P9O5CKadllrk0QG2x3Nfd6ZYbwTeOJkQYBXSfoHf/EBzIHUDHVLHoNbwxGj7ZsphBJ&#xa;hbe1vyim8aNby51GlqE2shn/MS0fnofst9qCugn376uLQbfO/08PpM20L4Vk/0I2jdpoYIbHEG&#xa;Tm3jJChuqWLfFy821WK3o5vBga06IibcNxAu6x6u89eeAh0KNQDtE3XTSq3z9zyZEeB0h3FmkQ&#xa;uVBwW+mB/OtPT3J0fC2PKABowIXN8jNfebAbmA0O+3Dysjhm7jJCleyaLvEC8Ox2HFEfSjVr0S&#xa;REt1pRF4qQJ6tdDveP8y6FemiXRu/TVgYqWy+d83IwA8LFeM/KfHFIAGYnh443QshPkToUepP+&#xa;V3L4E7elnJKcJMPenj51uVrxjESVT85K8KpHzAj/aBb3clmFs4aAeGfFwD49+Gj2qydWUxuKgL&#xa;3NkbBrS0bAkRcpM/zKRyk8X9QIdmBLCXw0ArG4FPRM/1WyekWmFB/KgWzloI9Sbcdzpc0z3l2A&#xa;HBkyi5HN2WwM76UONx0iGAw9Y3rAxWDlMgAASPBHLxOahNWDaCggh6/nIBkMBMQsQp+WeSJzYj&#xa;gLNsAvrYMGIS9iDKiAcCgL5HLbi7bgVMDOV26Oym1SwE2ovDXbNgAerMljpqoHxO6msMWv/32I&#xa;rmub1K4E/mJC1B9gyyOY7GTXi/JgDAvYDoB0hd5PLbhwi4YqPy2+afrAiQ09axIO3Do8P6PYQ/&#xa;7Tfr5tORrq/cCM868+j0AD5q5gB6ZaRc8dPt3pY++84QLnU6h6ptU/86kVQCf+PJDPywgs+nQD&#xa;sbcY5XUHfQ/QPdehMmgkZx3fJdOJrMy/ef1BwAwGG1r6jUFPj85mo3yteRJzzec6hRCfwXaC6h&#xa;KeB9WTOoGZ0y1oTNChYmikZHLQSMd/L67Sc9BwBFLEHpUrR39XSl6GQALqD5nofVruQDmkGfGw&#xa;IAfFOu+KBGE6D5ONwETvEM3LFN2fcNzaDPDxt0bB2bHK1Q9Zpy1zCP85h1ykQKrYEjzaDPnQOA&#xa;nEMQuH1bHti/6TENJH2sgqmzaSqBv6AZ+PkXhOqwwssyJTEylbtOonzDQ/0zdDqpUAENl/rSFc&#xa;32/mNZzM/AMaMZTE1XFp3gwE80g6jppgA3Me1EKh2Bfc3gzr8QKJa7T+DvbAa+S/l/+QggD1sJ&#xa;pdgAAAAASUVORK5CYII=" ID="ID_392508747" CREATED="1495901105034" MODIFIED="1495901105034"/>
</node>
</node>
<node TEXT="lib" FOLDED="true" POSITION="right" ID="ID_1003498816" CREATED="1413287263211" MODIFIED="1456082250746"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing binary files (normally .jar files) to be added to the add-on's classpath.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="flying-saucer-core-9.0.8.jar" FOLDED="true" ID="ID_1163492533" CREATED="1446325995184" MODIFIED="1446325995186">
</node>
</node>
</node>
</map>