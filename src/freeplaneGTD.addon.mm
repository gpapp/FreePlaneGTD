<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Freeplane|GTD+" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1480964887657" LINK="http://www.itworks.hu/freeplanegtd-release/" BACKGROUND_COLOR="#97c7dc">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000" STYLE="as_parent" MAX_WIDTH="600.0 px" MIN_WIDTH="1.0 px">
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
<attribute_layout NAME_WIDTH="99.74999702721843 pt" VALUE_WIDTH="239.24999286979457 pt"/>
<attribute NAME="name" VALUE="freeplaneGTD"/>
<attribute NAME="version" VALUE="v1.9.0"/>
<attribute NAME="author" VALUE="Gergely Papp"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.3.10"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="downloadUrl" VALUE="http://www.itworks.hu/freeplanegtd-release/" OBJECT="java.net.URI|http://www.itworks.hu/freeplanegtd-release/"/>
<attribute NAME="changelogUrl" VALUE=""/>
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
<node ID="ID_833172562" CREATED="1323057648210" MODIFIED="1453650197342" HGAP_QUANTITY="-170.0 px" VSHIFT_QUANTITY="-100.0 px" BACKGROUND_COLOR="#ffff99"><richcontent TYPE="NODE">

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
<node TEXT="This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 3 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;GNU General Public License for more details." ID="ID_1763974336" CREATED="1323057303679" MODIFIED="1323093766804" HGAP_QUANTITY="90.0 px">
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
<node TEXT="default.properties" POSITION="left" ID="ID_680880217" CREATED="1323057303742" MODIFIED="1480965690350">
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
<attribute_layout NAME_WIDTH="127.49999620020401 pt" VALUE_WIDTH="129.74999613314878 pt"/>
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
<node TEXT="en" ID="ID_590286510" CREATED="1323057303773" MODIFIED="1480975130265" HGAP_QUANTITY="50.0 px" VSHIFT_QUANTITY="10.0 px">
<attribute_layout NAME_WIDTH="207.7499938085677 pt" VALUE_WIDTH="220.4999934285881 pt"/>
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
<node TEXT="hu" ID="ID_1234559081" CREATED="1323057303773" MODIFIED="1480975171871" HGAP_QUANTITY="50.0 px" VSHIFT_QUANTITY="10.0 px">
<attribute_layout NAME_WIDTH="207.7499938085677 pt" VALUE_WIDTH="220.4999934285881 pt"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Teend&#x151;k"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Feladatok l&#xe9;trehoz&#xe1;sa r&#xf6;vid&#xed;t&#xe9;sb&#x151;l"/>
<attribute NAME="addons.${name}.editAction" VALUE="Szerkeszt&#xe9;s"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="K&#xe9;sz feladatok arc&#xed;vumba"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="K&#xe9;sz feladatok &#xe1;tn&#xe9;z&#xe9;sre"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD tulajdons&#xe1;gai"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="K&#xe9;sz elemek sz&#x171;r&#xe9;se alapb&#xf3;l"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Kezdeti feladat n&#xe9;zet"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Nem kiv&#xe1;lasztott &#xe1;gak automatikus &#xf6;sszecsuk&#xe1;sa"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Felel&#x151;s"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontextus"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Id&#x151;vonal"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Projektenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Feladatok list&#xe1;ja projektenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Szem&#xe9;lyenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Feladatok list&#xe1;ja szem&#xe9;lyenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Kontextusonk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Id&#x151;vonal"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Feladatok list&#xe1;ja id&#x151;rendi sorrendben"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="N&#xe9;vjegy"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="A Freeplane|GTD+ n&#xe9;vjegye"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Friss&#xed;t&#xe9;s"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Nyomtat&#xe1;s"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="V&#xe1;g&#xf3;lapra"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Bez&#xe1;r&#xe1;s"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Lez&#xe1;rtak sz&#x171;r&#xe9;se"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Jegyzetek megjelen&#xed;t&#xe9;se"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Elemek kiv&#xe1;laszt&#xe1;sa"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Kontextus n&#xe9;lk&#xfc;l"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Ezen a h&#xe9;ten"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Feladat szerkeszt&#xe9;se"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Feladat"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="V&#xe9;grehajt&#xf3;"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontextus"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Id&#x151;pont"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit&#xe1;s"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="K&#xe9;sz"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Kire v&#xe1;r"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Meddig v&#xe1;r"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="V&#xe1;lasztott elemek a v&#xe1;g&#xf3;lapra m&#xe1;solva."/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Arch&#xed;vum"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="&#xc1;tn&#xe9;zend&#x151;"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Utols&#xf3; ablakpoz&#xed;ci&#xf3; megjegyz&#xe9;se"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="de" ID="ID_630670890" CREATED="1323057303773" MODIFIED="1480975727437" HGAP_QUANTITY="50.0 px" VSHIFT_QUANTITY="10.0 px">
<attribute_layout NAME_WIDTH="207.7499938085677 pt" VALUE_WIDTH="220.4999934285881 pt"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Offene-Punkte-Liste, OPL"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="OPL-Punkt Kurzschreibweise verarbeiten"/>
<attribute NAME="addons.${name}.editAction" VALUE="OPL-Punkt bearbeiten"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Bewegung abgeschlossen zu archivieren"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Bewegung abgeschlossen Meinung"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Voreinstellung: Erledigte Punkte herausfiltern"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Voreinstellung f&#xfc;r OPL-Ansicht"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Map falten, um OPL-Punkte hervorzuheben"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Wer"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontext"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Wann"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="projektorientiert"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Projektorientierte Auflistung von Aktivit&#xe4;ten "/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="personenorientiert"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Personenorientierte Auflistung von Aktivit&#xe4;ten"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="kontextorientiert"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Kontextorientierte Auflistung von Aktivit&#xe4;ten"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="zeitorientiert"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Zeitorientierte (chronologische) Auflistung von Aktivit&#xe4;ten"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="&#xdc;ber FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Informationen bzgl. Freeplane|GTD"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Aktualisieren"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Drucken"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Kopieren"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Abbruch"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Erledigte herausfiltern"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Notizen darstellen"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Speichern"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Knoten in Map ausw&#xe4;hlen"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Nicht zugewiesen"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Diese Woche"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="OPL-Punkt bearbeiten"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="T&#xe4;tigkeit / Aktivit&#xe4;t"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Wer"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontext f&#xfc;r Aktivit&#xe4;t"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Wann"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit&#xe4;t"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Erledigt"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Warten auf"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Warten bis"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Auswahl wurde in den Zwischenspeicher abgelegt."/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archiv"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="R&#xfc;ckblick"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="fr" ID="ID_148000654" CREATED="1323057303773" MODIFIED="1456080252314" HGAP_QUANTITY="50.0 px" VSHIFT_QUANTITY="10.0 px">
<attribute_layout NAME_WIDTH="207.7499938085677 pt" VALUE_WIDTH="220.4999934285881 pt"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="Liste des prochaines actions"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convertir action &#xe0; partir du libell&#xe9;"/>
<attribute NAME="addons.${name}.editAction" VALUE="Modifier action"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="D&#xe9;placement termin&#xe9;e pour archiver"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="D&#xe9;placement termin&#xe9;e &#xe0; donner votre avis"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Par d&#xe9;faut, masquer les actions termin&#xe9;es"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Par d&#xe9;faut, lister les actions par"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="R&#xe9;duire la carte pour n&apos;afficher que les actions personnelles"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projet"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Responsable"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Contexte"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="&#xc9;ch&#xe9;ance"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Par projet"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Liste les actions par projet"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Par responsable"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Liste les actions par responsable"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Par contexte"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Liste les actions par contexte"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Par &#xe9;ch&#xe9;ance"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Liste chronologique des actions"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="&#xc0; propos"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="&#xc0; propos de Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Rafra&#xee;chir"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Imprimer"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copier"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Annuler"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Masquer les actions termin&#xe9;es"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Afficher les notes"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="S&#xe9;lectionner les noeuds"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Non assign&#xe9;"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Cette semaine"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Modifier action"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Action"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Responsable"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Contexte"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="&#xc9;ch&#xe9;ance"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit&#xe9;"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Termin&#xe9;e"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="S&#xe9;lection copi&#xe9;e dans le presse-papiers"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archives"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Revue"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="es" ID="ID_1393937145" CREATED="1323057303773" MODIFIED="1480975410029" HGAP_QUANTITY="50.0 px" VSHIFT_QUANTITY="10.0 px">
<attribute_layout NAME_WIDTH="198.7499940767886 pt" VALUE_WIDTH="234.74999300390502 pt"/>
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
<node TEXT="nl" ID="ID_1763629932" CREATED="1323057303773" MODIFIED="1456080263018" HGAP_QUANTITY="50.0 px" VSHIFT_QUANTITY="10.0 px">
<attribute_layout NAME_WIDTH="207.7499938085677 pt" VALUE_WIDTH="220.4999934285881 pt"/>
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
<node TEXT="ru" ID="ID_1596016669" CREATED="1323057303773" MODIFIED="1459603928376" HGAP_QUANTITY="50.0 px" VSHIFT_QUANTITY="10.0 px">
<attribute_layout NAME_WIDTH="207.7499938085677 pt" VALUE_WIDTH="220.4999934285881 pt"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.listActions" VALUE="&#x421;&#x43b;&#x435;&#x434;&#x443;&#x44e;&#x449;&#x438;&#x439; &#x441;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439;"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="&#x41a;&#x43e;&#x43d;&#x432;&#x435;&#x440;&#x442;&#x438;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x434;&#x430;&#x447;&#x438; &#x438;&#x437; &#x441;&#x442;&#x435;&#x43d;&#x43e;&#x433;&#x440;&#x430;&#x43c;&#x43c;&#x44b;"/>
<attribute NAME="addons.${name}.editAction" VALUE="&#x418;&#x437;&#x43c;&#x435;&#x43d;&#x438;&#x442;&#x44c; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x435;"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="&#x41f;&#x435;&#x440;&#x435;&#x43c;&#x435;&#x441;&#x442;&#x438;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x43e;&#x435; &#x432; &#x430;&#x440;&#x445;&#x438;&#x432;"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="&#x41f;&#x435;&#x440;&#x435;&#x43c;&#x435;&#x441;&#x442;&#x438;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x43e;&#x435; &#x432; &#x43f;&#x435;&#x440;&#x435;&#x441;&#x43c;&#x43e;&#x442;&#x440;"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="&#x434;&#x43e;&#x43f;&#x43e;&#x43b;&#x43d;&#x435;&#x43d;&#x438;&#x435; freeplaneGTD"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="&#x424;&#x438;&#x43b;&#x44c;&#x442;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x44b;&#x435; &#x437;&#x430;&#x434;&#x430;&#x447;&#x438; &#x43f;&#x43e; &#x443;&#x43c;&#x43e;&#x43b;&#x447;&#x430;&#x43d;&#x438;&#x44e;"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="&#x41e;&#x431;&#x44b;&#x447;&#x43d;&#x44b;&#x439; &#x432;&#x438;&#x434; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439;"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="&#x421;&#x432;&#x435;&#x440;&#x43d;&#x443;&#x442;&#x44c; &#x43a;&#x430;&#x440;&#x442;&#x443; &#x438; &#x43f;&#x43e;&#x43a;&#x430;&#x437;&#x430;&#x442;&#x44c; &#x442;&#x43e;&#x43b;&#x44c;&#x43a;&#x43e; &#x437;&#x43d;&#x430;&#x447;&#x438;&#x43c;&#x44b;&#x435; &#x437;&#x430;&#x434;&#x430;&#x447;&#x438;"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="&#x41f;&#x440;&#x43e;&#x435;&#x43a;&#x442;"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="&#x41a;&#x442;&#x43e;"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="&#x41a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="&#x41a;&#x43e;&#x433;&#x434;&#x430;"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="&#x41f;&#x43e; &#x43f;&#x440;&#x43e;&#x435;&#x43a;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x43f;&#x440;&#x43e;&#x435;&#x43a;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="&#x418;&#x441;&#x43f;&#x43e;&#x43b;&#x43d;&#x438;&#x442;&#x435;&#x43b;&#x438;"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x438;&#x441;&#x43f;&#x43e;&#x43b;&#x43d;&#x438;&#x442;&#x435;&#x43b;&#x44f;&#x43c;"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="&#x41f;&#x43e; &#x43a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x43a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="&#x421;&#x440;&#x43e;&#x43a;&#x438;"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x432;&#x440;&#x435;&#x43c;&#x435;&#x43d;&#x438;"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="&#x41e; &#x43f;&#x440;&#x43e;&#x433;&#x440;&#x430;&#x43c;&#x43c;&#x435;"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="&#x41e; Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="&#x41e;&#x431;&#x43d;&#x43e;&#x432;&#x438;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="&#x41f;&#x435;&#x447;&#x430;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="&#x41a;&#x43e;&#x43f;&#x438;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="&#x417;&#x430;&#x43a;&#x440;&#x44b;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="&#x424;&#x438;&#x43b;&#x44c;&#x442;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x44b;&#x435;"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="&#x41f;&#x43e;&#x43a;&#x430;&#x437;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x43c;&#x435;&#x442;&#x43a;&#x438;"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="&#x417;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43e;"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="&#x412;&#x44b;&#x431;&#x440;&#x430;&#x442;&#x44c; &#x443;&#x437;&#x43b;&#x44b;"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="&#x41d;&#x435;&#x43d;&#x430;&#x437;&#x43d;&#x430;&#x447;&#x435;&#x43d;&#x43e;"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="&#x421;&#x435;&#x433;&#x43e;&#x434;&#x43d;&#x44f;"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="&#x41d;&#x430; &#x44d;&#x442;&#x43e;&#x439; &#x43d;&#x435;&#x434;&#x435;&#x43b;&#x435;"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="&#x418;&#x437;&#x43c;&#x435;&#x43d;&#x438;&#x442;&#x44c; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x435;"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="&#x414;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x435;"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="&#x418;&#x441;&#x43f;&#x43e;&#x43b;&#x43d;&#x438;&#x442;&#x435;&#x43b;&#x44c;"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="&#x41a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="&#x41a;&#x43e;&#x433;&#x434;&#x430;"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="&#x421;&#x435;&#x433;&#x43e;&#x434;&#x43d;&#x44f;"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="&#x41f;&#x440;&#x438;&#x43e;&#x440;&#x438;&#x442;&#x435;&#x442;"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="&#x417;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43e;"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="&#x416;&#x434;&#x430;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="&#x416;&#x434;&#x430;&#x442;&#x44c; &#x43f;&#x43e;&#x43a;&#x430; "/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="&#x412;&#x44b;&#x431;&#x440;&#x430;&#x43d;&#x43d;&#x43e;&#x435; &#x441;&#x43a;&#x43e;&#x43f;&#x438;&#x440;&#x43e;&#x432;&#x430;&#x43d;&#x43e; &#x432; &#x431;&#x443;&#x444;&#x435;&#x440; &#x43e;&#x431;&#x43c;&#x435;&#x43d;&#x430;"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="&#x410;&#x440;&#x445;&#x438;&#x432;&#x44b;"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="&#x41f;&#x435;&#x440;&#x435;&#x441;&#x43c;&#x43e;&#x442;&#x440;"/>
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
<attribute_layout NAME_WIDTH="44.999998658895535 pt" VALUE_WIDTH="362.24998920410906 pt"/>
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
<node TEXT="" POSITION="left" ID="ID_756567769" CREATED="1480969324113" MODIFIED="1480969324113"/>
<node TEXT="" POSITION="left" ID="ID_1232397104" CREATED="1480969373734" MODIFIED="1480969373734"/>
<node TEXT="" POSITION="left" ID="ID_1661609774" CREATED="1480973011759" MODIFIED="1480973011759"/>
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
<node TEXT="FreeplaneGTD.groovy" ID="ID_875504923" CREATED="1323057833226" MODIFIED="1447782976148" HGAP_QUANTITY="30.0 px">
<attribute_layout NAME_WIDTH="206.24999385327118 pt" VALUE_WIDTH="158.99999526143088 pt"/>
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
</node>
<node TEXT="FreeplaneShorthand.groovy" ID="ID_900035903" CREATED="1323057833226" MODIFIED="1447782976146" HGAP_QUANTITY="30.0 px">
<attribute_layout NAME_WIDTH="206.24999385327118 pt" VALUE_WIDTH="158.99999526143088 pt"/>
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
</node>
<node TEXT="GTDActionEditor.groovy" ID="ID_572939250" CREATED="1415043619831" MODIFIED="1447782976145">
<attribute_layout NAME_WIDTH="215.2499935850503 pt" VALUE_WIDTH="155.99999535083785 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.editAction"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F4" OBJECT="org.freeplane.features.format.FormattedObject|F4|number:decimal:#0.####"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="GTDReviewTask.groovy" ID="ID_1165981840" CREATED="1453634472702" MODIFIED="1453635023181">
<attribute_layout NAME_WIDTH="218.24999349564334 pt" VALUE_WIDTH="149.99999552965178 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.reviewTask"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F5"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="GTDArchiveTask.groovy" ID="ID_1222024407" CREATED="1453634472702" MODIFIED="1453635033484">
<attribute_layout NAME_WIDTH="218.24999349564334 pt" VALUE_WIDTH="149.99999552965178 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.archiveTask"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F6"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
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
<node TEXT="icons" ID="ID_1422580718" CREATED="1323094256288" MODIFIED="1413298793053" LINK="zips/icons/" VSHIFT_QUANTITY="-20.0 px"/>
<node TEXT="lib" ID="ID_1543761795" CREATED="1413298467588" MODIFIED="1413298787850" LINK="zips/lib/"/>
<node TEXT="templates" ID="ID_1096097283" CREATED="1446325478471" MODIFIED="1446325502332" LINK="zips/templates"/>
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
<node TEXT="${name}.png" ID="ID_1928924406" CREATED="1323059848070" MODIFIED="1323063753585">
<edge COLOR="#999999"/>
</node>
<node TEXT="${name}-icon.png" ID="ID_1819207796" CREATED="1323059863835" MODIFIED="1323063753585">
<edge COLOR="#999999"/>
</node>
<node TEXT="fpgtdLogo.png" ID="ID_1897993304" CREATED="1323059879726" MODIFIED="1444407674459">
<edge COLOR="#999999"/>
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
<node TEXT="flying-saucer-core-9.0.8.jar" ID="ID_1163492533" CREATED="1446325995184" MODIFIED="1446325995186"/>
</node>
<node TEXT="" POSITION="right" ID="ID_1633812013" CREATED="1458164291728" MODIFIED="1458164291728"/>
</node>
</map>
