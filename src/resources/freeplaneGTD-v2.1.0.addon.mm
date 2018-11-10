<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Freeplane|GTD+" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1541834957842" LINK="http://www.itworks.hu/freeplanegtd-release/" BACKGROUND_COLOR="#97c7dc">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
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
<attribute_layout NAME_WIDTH="129.74999613314878 pt" VALUE_WIDTH="134.24999599903833 pt"/>
<attribute NAME="name" VALUE="freeplaneGTD"/>
<attribute NAME="version" VALUE="v2.1.0"/>
<attribute NAME="author" VALUE="Gergely Papp"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.6.0"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="downloadUrl" VALUE="http://www.itworks.hu/freeplanegtd-release/" OBJECT="java.net.URI|http://www.itworks.hu/freeplanegtd-release/"/>
<attribute NAME="changelogUrl" VALUE=""/>
<attribute NAME="updateUrl" VALUE="http://www.itworks.hu/freeplanegtd-release/version.properties" OBJECT="java.net.URI|http://www.itworks.hu/freeplanegtd-release/version.properties"/>
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
<node TEXT="description" FOLDED="true" POSITION="left" ID="ID_1125389651" CREATED="1323057303632" MODIFIED="1541834957912">
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
      <font size="2">Simple action freeplaneGTD.editor is provided.</font>
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="changes" POSITION="left" ID="ID_1824187995" CREATED="1323057303648" MODIFIED="1541834957912">
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
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_1073906233" CREATED="1323057303663" MODIFIED="1541834957912">
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
<node TEXT="preferences.xml" FOLDED="true" POSITION="left" ID="ID_456089147" CREATED="1323057303742" MODIFIED="1541834957912">
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
<node TEXT="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#xa;&lt;preferences_structure&gt;&#xa;         &lt;tabbed_pane&gt;&#xa;                  &lt;tab name=&quot;plugins&quot;&gt;&#xa;                           &lt;separator name=&quot;freeplaneGTD&quot;&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_filter_done&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;combo name=&quot;freeplaneGTD_default_view&quot;&gt;&#xa;                    &lt;choice value=&quot;PROJECT&quot; text=&quot;freeplaneGTD_view_project&quot; /&gt;&#xa;                    &lt;choice value=&quot;WHO&quot; text=&quot;freeplaneGTD_view_who&quot; /&gt;&#xa;                    &lt;choice value=&quot;CONTEXT&quot; text=&quot;freeplaneGTD_view_context&quot; /&gt;&#xa;                    &lt;choice value=&quot;WHEN&quot; text=&quot;freeplaneGTD_view_when&quot; /&gt;&#xa;                &lt;/combo&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_auto_fold_map&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_remember_last_position&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;number name=&quot;freeplaneGTD_last_position_x&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;number name=&quot;freeplaneGTD_last_position_y&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;number name=&quot;freeplaneGTD_last_position_w&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;number name=&quot;freeplaneGTD_last_position_h&quot; min=&quot;0&quot; /&gt;&#xa;                           &lt;/separator&gt;&#xa;                  &lt;/tab&gt;&#xa;         &lt;/tabbed_pane&gt;&#xa;&lt;/preferences_structure&gt;" ID="ID_1035150433" CREATED="1413235874574" MODIFIED="1497987250288"/>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_680880217" CREATED="1323057303742" MODIFIED="1541834957912">
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
<attribute_layout NAME_WIDTH="151.4999954849483 pt" VALUE_WIDTH="72.74999783188112 pt"/>
<attribute NAME="freeplaneGTD_filter_done" VALUE="false"/>
<attribute NAME="freeplaneGTD_default_view" VALUE="PROJECT" OBJECT="org.freeplane.features.format.FormattedObject|PROJECT|number:decimal:#0.####"/>
<attribute NAME="freeplaneGTD_auto_fold_map" VALUE="true"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="true"/>
</node>
<node TEXT="translations" POSITION="left" ID="ID_580707814" CREATED="1496660973904" MODIFIED="1541834957928"><richcontent TYPE="NOTE">

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
<node TEXT="de" ID="ID_1064950432" CREATED="1541845202102" MODIFIED="1541845202102">
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Erledigt"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Kontextorientierte Auflistung von Aktivit&#xe4;ten"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Wann"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Map falten, um OPL-Punkte hervorzuheben"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Drucken"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Knoten in Map selektieren"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="T&#xe4;tigkeit / Aktivit&#xe4;t"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Bearbeiter"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Projektorientierte Auflistung von Aktivit&#xe4;ten "/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Warten auf"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="personenorientiert"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Speichern"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Bearbeiter"/>
<attribute NAME="addons.${name}.listActions" VALUE="Offene-Punkte-Liste, OPL"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="verschiebe Aktivit&#xe4;t zum Review"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit&#xe4;t"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="&#xdc;ber FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="projektorientiert"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontext f&#xfc;r Aktivit&#xe4;t"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Voreinstellung: Erledigte Punkte herausfiltern"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Abbruch"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Wann"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Diese Woche"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Warten bis"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Aktivit&#xe4;t bearbeiten"/>
<attribute NAME="addons.${name}.editAction" VALUE="Aktivit&#xe4;t bearbeiten"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Zeitorientierte (chronologische) Auflistung von Aktivit&#xe4;ten"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Personenorientierte Auflistung von Aktivit&#xe4;ten"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archiv"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="R&#xfc;ckblick"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Kurzschreibweise f&#xfc;r Aktivit&#xe4;t verarbeiten"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Informationen bzgl. Freeplane|GTD"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Voreinstellung f&#xfc;r OPL-Ansicht"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Erledigte Aktivit&#xe4;ten herausfiltern"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Auswahl wurde in den Zwischenspeicher abgelegt."/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Notizen darstellen"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Nicht zugewiesen"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="zeitorientiert"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="kontextorientiert"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Kopieren"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontext"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Aktualisieren"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="verschiebe Aktivit&#xe4;t ins Archiv"/>
</node>
<node TEXT="en" ID="ID_1241226335" CREATED="1541845202105" MODIFIED="1541845202105">
<attribute NAME="freeplaneGTD_view_project" VALUE="Project"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Done"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Remember last position"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="List actions by context"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Timeline"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Fold map to show only relevant tasks"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Print"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Select nodes"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Action"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Who"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="List actions by project"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Wait for"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="By Who"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Done"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Today"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Who"/>
<attribute NAME="freeplaneGTD.doneTimeline.TODAY" VALUE="Today"/>
<attribute NAME="addons.${name}.listActions" VALUE="Next action list"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Move completed to review"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priority"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="About"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Today"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="By Project"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Context"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filter completed tasks by default"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_WEEK" VALUE="Last week"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Close"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.tooltip" VALUE="Timeline of done tasks"/>
<attribute NAME="freeplaneGTD.doneTimeline.EARLIER" VALUE="Earlier"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="When"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="This week"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_MONTH" VALUE="Last month"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Wait until"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Edit action"/>
<attribute NAME="addons.${name}.editAction" VALUE="Edit action"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="List actions by time"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="List action by delegates"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archives"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Review"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convert tasks from shorthand"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="About Freeplane|GTD+"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Default action view"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filter done"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.title" VALUE="Done timeline"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selection copied to clipboard."/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Display notes"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Unassigned"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Timeline"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="By Context"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copy"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Context"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Refresh"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Move completed to archive"/>
</node>
<node TEXT="es" ID="ID_1148925828" CREATED="1541845202107" MODIFIED="1541845202107">
<attribute NAME="freeplaneGTD_view_project" VALUE="Proyecto"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Hecho"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Lista acciones por contexto"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Orden temporal"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Colapsar mapa para ver solo acciones relevantes"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Imprimir"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Seleccionar nodos"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Acci&#xf3;n"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Quien"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Listar acciones por proyecto"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Esperar a"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="por Quien"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Hecho"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Hoy"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Quien"/>
<attribute NAME="addons.${name}.listActions" VALUE="Lista de acciones"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Pasar completadas a Revisar"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Prioridad"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Sobre"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Hoy"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Por proyecto"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Contexto"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filtrar completadas por defecto"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Cerrar"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Cuando"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Esta semana"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Esperar hasta"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Editar acci&#xf3;n"/>
<attribute NAME="addons.${name}.editAction" VALUE="Editar acci&#xf3;n"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Listar acciones por orden temporal"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Listar acciones por persona"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archivo"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Revisar"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convertir acciones desde notaci&#xf3;n"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Sobre Freeplane|GTD+"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Vista por defecto"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filtrar hechos"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selecci&#xf3;n copiada al portapapeles"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Mostrar notas"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Sin asignar"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Orden temporal"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="por Contexto"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copiar"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Contexto"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Refrescar"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Pasar completadas a Archivo"/>
</node>
<node TEXT="fr" ID="ID_1725500258" CREATED="1541845202110" MODIFIED="1541845202110">
<attribute NAME="freeplaneGTD_view_project" VALUE="Projet"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Termin&#xe9;e"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Liste les actions par contexte"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="&#xc9;ch&#xe9;ance"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="R&#xe9;duire la carte pour n&apos;afficher que les actions personnelles"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Imprimer"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="S&#xe9;lectionner les noeuds"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Action"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Responsable"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Liste les actions par projet"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Par responsable"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Responsable"/>
<attribute NAME="addons.${name}.listActions" VALUE="Liste des prochaines actions"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="D&#xe9;placement termin&#xe9;e &#xe0; donner votre avis"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit&#xe9;"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="&#xc0; propos"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Par projet"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Contexte"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Par d&#xe9;faut, masquer les actions termin&#xe9;es"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Annuler"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="&#xc9;ch&#xe9;ance"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Cette semaine"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Modifier action"/>
<attribute NAME="addons.${name}.editAction" VALUE="Modifier action"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Liste chronologique des actions"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Liste les actions par responsable"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archives"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Revue"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convertir action &#xe0; partir du libell&#xe9;"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="&#xc0; propos de Freeplane|GTD+"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Par d&#xe9;faut, lister les actions par"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Masquer les actions termin&#xe9;es"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="S&#xe9;lection copi&#xe9;e dans le presse-papiers"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Afficher les notes"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Non assign&#xe9;"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Par &#xe9;ch&#xe9;ance"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Par contexte"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copier"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Contexte"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Rafra&amp;#xee;chir"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="D&#xe9;placement termin&#xe9;e pour archiver"/>
</node>
<node TEXT="hu" ID="ID_855484955" CREATED="1541845202112" MODIFIED="1541845202112">
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="K&#xe9;sz"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Utols&#xf3; ablakpoz&#xed;ci&#xf3; megjegyz&#xe9;se"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Id&#x151;vonal"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Nem kiv&#xe1;lasztott &#xe1;gak automatikus &#xf6;sszecsuk&#xe1;sa"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Nyomtat&#xe1;s"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Elemek kiv&#xe1;laszt&#xe1;sa"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Feladat"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Felel&#x151;s"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Feladatok list&#xe1;ja projektenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Kire v&#xe1;r"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Szem&#xe9;lyenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="V&#xe9;grehajt&#xf3;"/>
<attribute NAME="freeplaneGTD.doneTimeline.TODAY" VALUE="Ma"/>
<attribute NAME="addons.${name}.listActions" VALUE="Teend&#x151;k"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="K&#xe9;sz feladatok &#xe1;tn&#xe9;z&#xe9;sre"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorit&#xe1;s"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD tulajdons&#xe1;gai"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="N&#xe9;vjegy"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Projektenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontextus"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="K&#xe9;sz elemek sz&#x171;r&#xe9;se alapb&#xf3;l"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_WEEK" VALUE="El&#x151;z&#x151; h&#xe9;t"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Bez&#xe1;r&#xe1;s"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.tooltip" VALUE="Lez&#xe1;rt feladatok id&#x151;rendes &#xf6;sszes&#xed;t&#xe9;se"/>
<attribute NAME="freeplaneGTD.doneTimeline.EARLIER" VALUE="Kor&#xe1;bbi id&#x151;szak"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Id&#x151;pont"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Ezen a h&#xe9;ten"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_MONTH" VALUE="El&#x151;z&#x151; h&#xf3;nap"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Meddig v&#xe1;r"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Feladat szerkeszt&#xe9;se"/>
<attribute NAME="addons.${name}.editAction" VALUE="Szerkeszt&#xe9;s"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Feladatok list&#xe1;ja id&#x151;rendi sorrendben"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Feladatok list&#xe1;ja szem&#xe9;lyenk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Arch&#xed;vum"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="&#xc1;tn&#xe9;zend&#x151;"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Feladatok l&#xe9;trehoz&#xe1;sa r&#xf6;vid&#xed;t&#xe9;sb&#x151;l"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="A Freeplane|GTD+ n&#xe9;vjegye"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Kezdeti feladat n&#xe9;zet"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Lez&#xe1;rtak sz&#x171;r&#xe9;se"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.title" VALUE="Lez&#xe1;rt feladatok"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="V&#xe1;lasztott elemek a v&#xe1;g&#xf3;lapra m&#xe1;solva."/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Jegyzetek megjelen&#xed;t&#xe9;se"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Kontextus n&#xe9;lk&#xfc;l"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Id&#x151;vonal"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Kontextusonk&#xe9;nt"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="V&#xe1;g&#xf3;lapra"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontextus"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Friss&#xed;t&#xe9;s"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="K&#xe9;sz feladatok arc&#xed;vumba"/>
</node>
<node TEXT="nl" ID="ID_1616798903" CREATED="1541845202114" MODIFIED="1541845202114">
<attribute NAME="freeplaneGTD_view_project" VALUE="Project"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Klaar"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Lijst van contextuele acties"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Tijdslijn"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Vouw de map dicht zodat alleen relevante taken getoond worden"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Print"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Selecteer nodes"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Actie"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Wie"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Lijst van projectacties"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Volgens Wie"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Klaar"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Vandaag"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Wie"/>
<attribute NAME="addons.${name}.listActions" VALUE="Lijst met eerstvolgende acties"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Verplaats afgeronden naar review"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Prioriteit"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Over"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Vandaag"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Volgens Project"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Context"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filter de afgewerkte acties er standaard uit."/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Sluit"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Wanneer"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Deze week"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Pas actie aan"/>
<attribute NAME="addons.${name}.editAction" VALUE="Wijzig actie"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Volgens Tijdslijn"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Lijst van gedelegeerde acties"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archief"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Review"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Converteer actie vanuit omschrijving"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Over Freeplane|GTD+"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Standaard actie overzicht"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filter klaar"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selectie gekopieerd naar het clipboard"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Toon notities"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Niet toegekend"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Tijdslijn"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Volgens Context"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Kopieer"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Context"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Ververs"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Verplaats afgeronden naar archief"/>
</node>
<node TEXT="ru" ID="ID_668539480" CREATED="1541845202116" MODIFIED="1541845202117">
<attribute NAME="freeplaneGTD_view_project" VALUE="&#x41f;&#x440;&#x43e;&#x435;&#x43a;&#x442;"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="&#x417;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43e;"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x43a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="&#x41a;&#x43e;&#x433;&#x434;&#x430;"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="&#x421;&#x432;&#x435;&#x440;&#x43d;&#x443;&#x442;&#x44c; &#x43a;&#x430;&#x440;&#x442;&#x443; &#x438; &#x43f;&#x43e;&#x43a;&#x430;&#x437;&#x430;&#x442;&#x44c; &#x442;&#x43e;&#x43b;&#x44c;&#x43a;&#x43e; &#x437;&#x43d;&#x430;&#x447;&#x438;&#x43c;&#x44b;&#x435; &#x437;&#x430;&#x434;&#x430;&#x447;&#x438;"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="&#x41f;&#x435;&#x447;&#x430;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="&#x412;&#x44b;&#x431;&#x440;&#x430;&#x442;&#x44c; &#x443;&#x437;&#x43b;&#x44b;"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="&#x414;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x435;"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="&#x41a;&#x442;&#x43e;"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x43f;&#x440;&#x43e;&#x435;&#x43a;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="&#x416;&#x434;&#x430;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="&#x418;&#x441;&#x43f;&#x43e;&#x43b;&#x43d;&#x438;&#x442;&#x435;&#x43b;&#x438;"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="&#x417;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43e;"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="&#x421;&#x435;&#x433;&#x43e;&#x434;&#x43d;&#x44f;"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="&#x418;&#x441;&#x43f;&#x43e;&#x43b;&#x43d;&#x438;&#x442;&#x435;&#x43b;&#x44c;"/>
<attribute NAME="addons.${name}.listActions" VALUE="&#x421;&#x43b;&#x435;&#x434;&#x443;&#x44e;&#x449;&#x438;&#x439; &#x441;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439;"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="&#x41f;&#x435;&#x440;&#x435;&#x43c;&#x435;&#x441;&#x442;&#x438;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x43e;&#x435; &#x432; &#x43f;&#x435;&#x440;&#x435;&#x441;&#x43c;&#x43e;&#x442;&#x440;"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="&#x41f;&#x440;&#x438;&#x43e;&#x440;&#x438;&#x442;&#x435;&#x442;"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="&#x434;&#x43e;&#x43f;&#x43e;&#x43b;&#x43d;&#x435;&#x43d;&#x438;&#x435; freeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="&#x41e; &#x43f;&#x440;&#x43e;&#x433;&#x440;&#x430;&#x43c;&#x43c;&#x435;"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="&#x421;&#x435;&#x433;&#x43e;&#x434;&#x43d;&#x44f;"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="&#x41f;&#x43e; &#x43f;&#x440;&#x43e;&#x435;&#x43a;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="&#x41a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="&#x424;&#x438;&#x43b;&#x44c;&#x442;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x44b;&#x435; &#x437;&#x430;&#x434;&#x430;&#x447;&#x438; &#x43f;&#x43e; &#x443;&#x43c;&#x43e;&#x43b;&#x447;&#x430;&#x43d;&#x438;&#x44e;"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="&#x417;&#x430;&#x43a;&#x440;&#x44b;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="&#x41a;&#x43e;&#x433;&#x434;&#x430;"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="&#x41d;&#x430; &#x44d;&#x442;&#x43e;&#x439; &#x43d;&#x435;&#x434;&#x435;&#x43b;&#x435;"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="&#x416;&#x434;&#x430;&#x442;&#x44c; &#x43f;&#x43e;&#x43a;&#x430;"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="&#x418;&#x437;&#x43c;&#x435;&#x43d;&#x438;&#x442;&#x44c; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x435;"/>
<attribute NAME="addons.${name}.editAction" VALUE="&#x418;&#x437;&#x43c;&#x435;&#x43d;&#x438;&#x442;&#x44c; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x435;"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x432;&#x440;&#x435;&#x43c;&#x435;&#x43d;&#x438;"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="&#x421;&#x43f;&#x438;&#x441;&#x43e;&#x43a; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439; &#x43f;&#x43e; &#x438;&#x441;&#x43f;&#x43e;&#x43b;&#x43d;&#x438;&#x442;&#x435;&#x43b;&#x44f;&#x43c;"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="&#x410;&#x440;&#x445;&#x438;&#x432;&#x44b;"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="&#x41f;&#x435;&#x440;&#x435;&#x441;&#x43c;&#x43e;&#x442;&#x440;"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="&#x41a;&#x43e;&#x43d;&#x432;&#x435;&#x440;&#x442;&#x438;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x434;&#x430;&#x447;&#x438; &#x438;&#x437; &#x441;&#x442;&#x435;&#x43d;&#x43e;&#x433;&#x440;&#x430;&#x43c;&#x43c;&#x44b;"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="&#x41e; Freeplane|GTD+"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="&#x41e;&#x431;&#x44b;&#x447;&#x43d;&#x44b;&#x439; &#x432;&#x438;&#x434; &#x434;&#x435;&#x439;&#x441;&#x442;&#x432;&#x438;&#x439;"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="&#x424;&#x438;&#x43b;&#x44c;&#x442;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x44b;&#x435;"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="&#x412;&#x44b;&#x431;&#x440;&#x430;&#x43d;&#x43d;&#x43e;&#x435; &#x441;&#x43a;&#x43e;&#x43f;&#x438;&#x440;&#x43e;&#x432;&#x430;&#x43d;&#x43e; &#x432; &#x431;&#x443;&#x444;&#x435;&#x440; &#x43e;&#x431;&#x43c;&#x435;&#x43d;&#x430;"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="&#x41f;&#x43e;&#x43a;&#x430;&#x437;&#x430;&#x442;&#x44c; &#x437;&#x430;&#x43c;&#x435;&#x442;&#x43a;&#x438;"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="&#x41d;&#x435;&#x43d;&#x430;&#x437;&#x43d;&#x430;&#x447;&#x435;&#x43d;&#x43e;"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="&#x421;&#x440;&#x43e;&#x43a;&#x438;"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="&#x41f;&#x43e; &#x43a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;&#x443;"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="&#x41a;&#x43e;&#x43f;&#x438;&#x440;&#x43e;&#x432;&#x430;&#x442;&#x44c;"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="&#x41a;&#x43e;&#x43d;&#x442;&#x435;&#x43a;&#x441;&#x442;"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="&#x41e;&#x431;&#x43d;&#x43e;&#x432;&#x438;&#x442;&#x44c;"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="&#x41f;&#x435;&#x440;&#x435;&#x43c;&#x435;&#x441;&#x442;&#x438;&#x442;&#x44c; &#x437;&#x430;&#x432;&#x435;&#x440;&#x448;&#x435;&#x43d;&#x43d;&#x43e;&#x435; &#x432; &#x430;&#x440;&#x445;&#x438;&#x432;"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_1357879524" CREATED="1323057303788" MODIFIED="1541834984017">
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
<attribute_layout NAME_WIDTH="24.749999262392542 pt" VALUE_WIDTH="280.4999916404488 pt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/FreeplaneGTD.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/FreeplaneShorthand.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/GTDActionEditor.groovy"/>
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
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/freeplane.gdsl"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/report/freeplaneGTD.ReportWindow.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/report/NodeLink.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/mover/ReviewTask.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/mover/ArchiveTask.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/editor/ActionEditor.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/freeplaneGTD.ReportWindow.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/NodeLink.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ParseShorthand.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/EditTask.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ShowTasks.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ReviewTask.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ArchiveTask.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/translations/freeplaneGTD_nl.properties"/>
<attribute NAME="delete" VALUE="${installationbase}/translations/freeplaneGTD_ru.properties"/>
<attribute NAME="delete" VALUE="${installationbase}/translations/freeplaneGTD_de.properties"/>
<attribute NAME="delete" VALUE="${installationbase}/translations/freeplaneGTD_hu.properties"/>
<attribute NAME="delete" VALUE="${installationbase}/translations/freeplaneGTD_es.properties"/>
<attribute NAME="delete" VALUE="${installationbase}/translations/freeplaneGTD_en.properties"/>
<attribute NAME="delete" VALUE="${installationbase}/translations/freeplaneGTD_fr.properties"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/JSHandler.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/ReportWindow.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/mover/DoneMover.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/editor/MultinodeActionEditor.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/scripts/init/AddGTDChangeListener.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/GTDMapChangeListener.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/GTDNodeChangeListener.groovy"/>
</node>
<node TEXT="scripts" FOLDED="true" POSITION="right" ID="ID_111817827" CREATED="1323057303804" MODIFIED="1541834957938">
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
<node TEXT="ShowTasks.groovy" FOLDED="true" ID="ID_875504923" CREATED="1323057833226" MODIFIED="1495225348698">
<attribute_layout NAME_WIDTH="115.49999655783186 pt" VALUE_WIDTH="89.24999734014281 pt"/>
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
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.listNextActions]&quot;})&#xa;//=========================================================&#xa;// Freeplane GTD+&#xa;//&#xa;// Copyright (c)2014 Gergely Papp&#xa;//&#xa;// This program is free software: you can redistribute it and/or modify&#xa;// it under the terms of the GNU General Public License as published by&#xa;// the Free Software Foundation, either version 3 of the License, or&#xa;// any later version.&#xa;//&#xa;// This program is distributed in the hope that it will be useful,&#xa;// but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;// GNU General Public License for more details.&#xa;//&#xa;// You should have received a copy of the GNU General Public License&#xa;// along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xa;//&#xa;//=========================================================&#xa;import freeplaneGTD.ReportWindow&#xa;&#xa;def reportWindow = ReportWindow.instance;&#xa;reportWindow.show(config)&#xa;reportWindow.refresh()&#xa;" ID="ID_1652206464" CREATED="1541845202035" MODIFIED="1541845202039"/>
</node>
<node TEXT="ParseShorthand.groovy" FOLDED="true" ID="ID_900035903" CREATED="1323057833226" MODIFIED="1495225330848">
<attribute_layout NAME_WIDTH="115.49999655783186 pt" VALUE_WIDTH="89.24999734014281 pt"/>
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
<node TEXT="&#xa;// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.parseShorthand]&quot;})&#xa;//=========================================================&#xa;// Freeplane GTD+&#xa;//&#xa;// Copyright (c)2016 Gergely Papp&#xa;//&#xa;// This program is free software: you can redistribute it and/or modify&#xa;// it under the terms of the GNU General Public License as published by&#xa;// the Free Software Foundation, either version 3 of the License, or&#xa;// any later version.&#xa;//&#xa;// This program is distributed in the hope that it will be useful,&#xa;// but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;// GNU General Public License for more details.&#xa;//&#xa;// You should have received a copy of the GNU General Public License&#xa;// along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xa;//&#xa;//=========================================================&#xa;import freeplaneGTD.ReportWindow&#xa;ReportWindow.instance.refresh()&#xa;" ID="ID_1441861786" CREATED="1541845202040" MODIFIED="1541845202041"/>
</node>
<node TEXT="EditTask.groovy" FOLDED="true" ID="ID_572939250" CREATED="1415043619831" MODIFIED="1497989300199">
<attribute_layout NAME_WIDTH="120.74999640136969 pt" VALUE_WIDTH="86.99999740719802 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.editAction"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_selected_node"/>
<attribute NAME="keyboardShortcut" VALUE="F4" OBJECT="org.freeplane.features.format.FormattedObject|F4|number:decimal:#0.####"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.editAction]&quot;})&#xa;//=========================================================&#xa;// Freeplane GTD+&#xa;//&#xa;// Copyright (c)2014 Gergely Papp&#xa;//&#xa;// This program is free software: you can redistribute it and/or modify&#xa;// it under the terms of the GNU General Public License as published by&#xa;// the Free Software Foundation, either version 3 of the License, or&#xa;// any later version.&#xa;//&#xa;// This program is distributed in the hope that it will be useful,&#xa;// but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;// GNU General Public License for more details.&#xa;//&#xa;// You should have received a copy of the GNU General Public License&#xa;// along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xa;//&#xa;//=========================================================&#xa;import freeplaneGTD.editor.ActionEditor&#xa;import freeplaneGTD.editor.MultinodeActionEditor&#xa;import org.freeplane.core.ui.components.UITools&#xa;&#xa;import org.freeplane.plugin.script.proxy.Proxy&#xa;&#xa;List&lt;Proxy.Node&gt; selecteds = c.getSelecteds()&#xa;if (selecteds.size()==1) {&#xa;    ActionEditor editor = new ActionEditor()&#xa;    editor.editNode(node)&#xa;} else if(selecteds.size()&gt;1) {&#xa;    MultinodeActionEditor editor = new MultinodeActionEditor()&#xa;    editor.editNodes(selecteds)&#xa;} else {&#xa;    UITools.informationMessage(&quot;Nothing selected&quot;)&#xa;}&#xa;" ID="ID_153250261" CREATED="1541845202042" MODIFIED="1541845202043"/>
</node>
<node TEXT="ReviewTask.groovy" FOLDED="true" ID="ID_1165981840" CREATED="1453634472702" MODIFIED="1495225405523">
<attribute_layout NAME_WIDTH="122.2499963566662 pt" VALUE_WIDTH="83.99999749660499 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.reviewTask"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F5"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.archiveTask]&quot;})&#xa;/*&#xa;=========================================================&#xa; Freeplane GTD+&#xa;&#xa; Copyright (c)2016 Gergely Papp&#xa;&#xa; This program is free software: you can redistribute it and/or modify&#xa; it under the terms of the GNU General Public License as published by&#xa; the Free Software Foundation, either version 3 of the License, or&#xa; any later version.&#xa;&#xa; This program is distributed in the hope that it will be useful,&#xa; but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa; GNU General Public License for more details.&#xa;&#xa; You should have received a copy of the GNU General Public License&#xa; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xa;&#xa;=========================================================&#xa;*/&#xa;freeplaneGTD.mover.ReviewTask reviewTask = new freeplaneGTD.mover.ReviewTask()&#xa;reviewTask.execute(freeplaneGTD.mover.ReviewTask.findOrCreateReviewDir(node), node)&#xa;&#xa;" ID="ID_1577177974" CREATED="1541845202043" MODIFIED="1541845202044"/>
</node>
<node TEXT="ArchiveTask.groovy" FOLDED="true" ID="ID_1222024407" CREATED="1453634472702" MODIFIED="1495225397428">
<attribute_layout NAME_WIDTH="122.2499963566662 pt" VALUE_WIDTH="83.99999749660499 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.archiveTask"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F6"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.archiveTask]&quot;})&#xa;/*&#xa;=========================================================&#xa; Freeplane GTD+&#xa;&#xa; Copyright (c)2016 Gergely Papp&#xa;&#xa; This program is free software: you can redistribute it and/or modify&#xa; it under the terms of the GNU General Public License as published by&#xa; the Free Software Foundation, either version 3 of the License, or&#xa; any later version.&#xa;&#xa; This program is distributed in the hope that it will be useful,&#xa; but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa; GNU General Public License for more details.&#xa;&#xa; You should have received a copy of the GNU General Public License&#xa; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xa;&#xa;=========================================================&#xa;*/&#xa;freeplaneGTD.mover.ArchiveTask archiveTask = new freeplaneGTD.mover.ArchiveTask()&#xa;archiveTask.execute(freeplaneGTD.mover.ArchiveTask.findOrCreateArchiveDir(node), node)&#xa;&#xa;" ID="ID_1858664170" CREATED="1541845202044" MODIFIED="1541845202045"/>
</node>
</node>
<node TEXT="lib" POSITION="right" ID="ID_1003498816" CREATED="1413287263211" MODIFIED="1541834958038"><richcontent TYPE="NOTE">

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
</node>
<node TEXT="zips" POSITION="right" ID="ID_1927628745" CREATED="1323057303835" MODIFIED="1541834958043">
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
<node TEXT="icons" FOLDED="true" ID="ID_1422580718" CREATED="1323094256288" MODIFIED="1497481475102" LINK="resources/zips/icons/">
<node TEXT="UEsDBBQACAgIADS7aU0AAAAAAAAAAAAAAAATAAAAaWNvbnMvZnBndGRJY29uLnBuZ+1bB1xURx&#xa;r/HtthaSsgImXpoNJ7UBCXKtKWjR0UaUHpHUMUjQWIRIWoiJyKYEHvJBqxEsUIcmqikajYUFE0&#xa;EhVBCaDI7s28XcB4JrHc7+682z/8d+Z902e++aa83bxAfy95WQ1ZAJD38XbnI1cdcTiTjj6VdV&#xa;eaIYdI4XtNgN1nNdvQAzXazc8NYM9KuRdhNPTMDffm+wHMNwLIWQLwHIly7gOkWQL8Mhvgo2KU&#xa;WWLp4aCxKICV6D0tBeWnhkksadBPB5DJ83F3E3j7bl0TkusXpNJwTtfUKO922JOKTP6WmTd17t&#xa;wYEXWyofhkQdQclQSVZxr5wxVzTYyyihmKB4p3hGUbztFjWdymZUVsrNH/tUf0+NsvnVOu9mi3&#xa;X39e3TRtXnN1d+i8v3x2+5Muxcqfu8JLw6rizf2/yJnluph9tmBvYfQ9esl2uHk0c1lBa9Ye38&#xa;AUzmzVDFE8MzPApWKVv/3zCyXUTL7MxkLdJ6U1lga+xte+GWlnCJOTe/qjF82IyGEX9i2LaIso&#xa;UvzskcrFS0H9Haz5PcQUH51DnhNJ+UrDWo4wesS0eO9tu/msRfvbaivTb7GdvMzVC7cWmekcAf&#xa;P7PS2W+5YW9ho9/oHoO+WWXOdY9yusjktbcnZ9V1+vWq+7y/ZVX+6npbXEPPXJ/7U2vTHGe+1Z&#xa;I6Z8V5YT1OhVnRrJ25u692+sTVvaH0xwPspJOqBwKj32r5uzjww/6KVd6NW6R/cZcci3lXdzdu&#xa;VOv9yRy45qK7gpmj8yOQjH+lbKOFQe8Z9441726Z8mb9zxrGjUpvHD+MUT+9p2H7uTdyakVpX3&#xa;xCN544/b1zT5P2/vuDvVV+PUR+V5826sG+XU/Bezpzl35GtZyY2rsldoGi3S7r1Fa5xkX/hDRU&#xa;Gsnpmy0ZejjccnqX09T+HrDQ+tDHybgmaFTbLTemA2m9EUd/ISM+nh5w8M4i/6XrRdL6yoX3Xd&#xa;+xNfh6a062vK7L7LlNum2qwc1beebn+ZVeTg1PBza1zoXOu0lnVjfGr5mz9zN02f7+R6wjjDkO&#xa;3ndW/deOdJaz5pPXh4wQ4HzZzpVQ8K5+09XeEytShkvcHog+muyx4vUmhLuNhVPDdi68jwxCn1&#xa;rKt7jNzzCndNsK7K3/TFzKxkUWD7TvNpOkWiL0WMs7XW2QVX7+kjTYXwuAB3/1zWcYDxEJ7ok/&#xa;jjOeVbZXs0WuAVuAAFhCIW0F+SERKSUEIqLnkWikSiAbFIig8K/YhUyRhis4cNJh5zBiITmzZE&#xa;OUk4GxtTRAVERYlMig8bfEhAf6nABQ+IR24yZL1qCv4QakAbnPPYFixY6Fq9tXsZr6ysXMagMf&#xa;fx69JQxAlJuEMYKjUMgtFnAio98q1KB1ABgmBJ7A7ld+J0HHfnFe/7nriV7UO6L4dZvmV5r4IK&#xa;MsTL/fmm6RZJXKt/QfnYDuO5+6blU8h0YuDOwOnxXH6ZL89/bBOwDXh1/qMlAJQROYjDAI8FgC&#xa;qIh3Y4iDdcIxA1EEciaiJqIWoj6kjK1EWuHiJenAwQDRHRlguMEU0QTRFHIY6WxDeTuBYgHjvc&#xa;f9aINoi2iHaI9ogOiI6ITogfIToj4q3aOMBrG4Ar4BUQAG35YAIiD7AuApoFAJ6IXojeiD6IEx&#xa;F9ESchoi0h+CMGIAYiBiHizWUwogDxY0n9psCHYR/Fk8HEkhsomBbIdZCXteQGfCyYzHXEvkA3&#xa;TwHXGvsE3n7B8rLysiPhCVWiMZpiL0EOJhVLuEBtTbo9XheoBDmqSH9qUf8edNMHThQkQjSa4x&#xa;GoR8PRTI9HI42SK7m9gb7+Eah/HuUPgeutAUxtq1ReNHUuT9I+vAJqkvr9G2gDkfuKiPae5UOO&#xa;uAs1oCOOLq7OwNTBfYk5GpUhuiy6BUoTPX08kb0j0OqM5qfoGtJaGYLA/xJQaBQMOpVKoTHoDA&#xa;YmkyXHYjJlmQwGGj9ZOTYCg6WgKM9WwH7r96z+u9g/3MMDds/m/csn88P26k3Lp8GQ3tj+C8p/&#xa;2/Zj7cqWbKzt3r98AmeFbfWbls9F7JAR+7ESYfXBWoP+2UwGk/3WENWCMhPprTqF0AMZZYKiTI&#xa;jqsIknaASJgZIJGQqVRkcqKSuHIlQrocpTKDJIWWlUNCDEZygcqMo0jq6VG31YUBhDL0nFetHq&#xa;Mqb+hD3HVfnnOwxs5iQvZsmqDVcfoWFoZGxiOsrWzt7B0ekjnruHp5e3z8RgwceTp0ydNj08Ij&#xa;Iq+pOYuSmpaekZmVnzP1+ydNny3Lz8wqKv1qxdV7y+ZEt5xdZt23dU7tz7zb7q/QcOHjr83Ym6&#xa;+pMNfz91uvGnCxcvNV2+crXl9p3Wu/d+vt/2S+eTp12/dvf0PnuO20UAhRjAa9uljBdlNAepDN&#xa;wuQiYDR1Cm0nSt6By3IEZY0jA960VMlQmry/YcZ+nb8DtU5ySfl1UzsG0x7MRNI1v2Zg1b/E4t&#xa;G2zYULuuAptCoMGjKKO1cZcI6P3CelcYq9unfLn3SEOoUm9cZ3j9LKVZj5r8bmupNcw48GOh8V&#xa;rHR3Eveovr+vyjKNRTT0pzLzSdW9gR8rjXyGV5p033to5xPQ+v3frBQcix0Joxc0Zoptx3h+Oq&#xa;SxPlHIOWPqr+KzN/tYqCYVTt07E1nIjaJ1W9hiFVJ/2cu9Mzfnzhu+X+jRE1F4w2+K4M/HoTf3&#xa;WOs6FJZRrnhE5JwdLjY26EKxG0o6v6C0QQ91gt26J/59joirbDy5e/mNFp1H3etqsz5MXwyRt1&#xa;OuqXWHv0l0Vq7Z10716b4aemoYYlNvqTOD4tSnqb6nTU7phG232dXxOpYV20ru5h9TH7843d8z&#xa;Z4bbkY0++lqPDk+QtnntVa7aS1RkorwttNfa7Yndm1seYAv/WiS4z9hmN3Vz5y6iNeRPevSG3W&#xa;67m96cRClUy9cyFrvWONLzxK90gxCPPdPNv7OoXy+WLPpFJN1b5xIqC19u9/odhpI2Q9230/1O&#xa;SbkPR2YXdztrN2j3xMZUv3TPqsI3dP/Fx0ZNkIXs+OqsbeWS7T9qve5px3DhltfH9Dgv+3Lhm+&#xa;ndqOLV6rwnWXrvnpq6zSGTXlu6ZXq+8ad2ld+9+iRGB9lCW8pKMg5ArPCrU7btaZTV8o29vU8n&#xa;2nX0sCx2vbhqbqzGK7mtzVJ90Eyg2aq07b/31PebzFU69TCy5tqrZfur13Vu0CZu+43XP3CzU6&#xa;Ui2y+rerFM0IDcgyLllRX+LYOuWawff1TK++YPnNXJWgmY4L6Gd23FlwsLQ0a6ud3762Sh/bqy&#xa;vNhBdK/A7Wn/YzTLlY31u5oenMgs0t/jaJSx2mj5q4r4wxXOXuuTML02X5QfzCJYKKh9kiuGOR&#xa;t9Gg94vuhF7vbLfd846FN3cvfDSyLb6m4HLzgU+1Dl091BBS3phvUrV760SVLWX+pobnR+s/rf&#xa;E02q9Xvis0nv/p/msJ2x6HrBRdyftP3/zBcvHNX/NXxxVyuGze3XZRR/2C7VEMhZzGdEuFkkTu&#xa;g1CvvIpyYXvUzfhhO07sHbFCjbqCygz9xXyYWrs9yy6wZcXR/NUxgXbN4yrBU3QiuPSWcficrJ&#xa;8eFpx2vjvl5tG2KQE3vj1dRi9LPEKtWtQVu8uIc71uXSbnyvi80zQLP5OdYz2M5xQ+U9RSjVhz&#xa;pqA0E1soHw9/990TZi/GZl/2lxv+g4tBzuD+o2VgSfjtXsMb74NFLTDVIzMmCmXkM4pcbKhghQ&#xa;4eePuPt9NKQYT4eujEBVAOopL+cnQu4Lzkx8jIyDCPiZ+XEh6WGGmekBwt2cUw6XQGnYa2KAwW&#xa;iynLVpFny8mxR3CGKapoaehoa2loanINzI25emP0NTVNHEzHWFrZ2trqGDuNc7Qea25ja02uYi&#xa;wWiy3HVpeXV7fW1dS1fmuIVzHUDukq9r+xij0T5ptsVhRdobyq8y9BRgmfD8lNP6az2EsjZwQy&#xa;GzmuQ1GH/JJTAs5XE6g5v7vRegPwvP19ffx9uVS0g2XjLMkJCtBLsMn9nDoIPKYKxHOU9MmIDw&#xa;nq4OkeGCiWkz7JsYyU8wblPHKzScqDBcHeYjnpY4rP4fbvU3l4t/3vGBCfrzEEEAmZ6Fz4rpBF&#xa;LRooW/Z34gzc+9RemPJP9z88dJL3R7XwID+D37p8Dpok+G7kbdpvLq44CQLVIAHi0Ok4AObA3H&#xa;cp/637f7KEGGK9IAb1Qpspvv9A8mk+7hJ9Qb4Ipvj+B8m9ArkSOfIlMsUTRx2wFovl2Jc6KJ8g&#xa;8JDoaeAkHjeTKV6OSTlvSL5qUO4Z4C/Rd+zbwRTf2+B68oOH4rdK9PdDB75Pw20az4iTGTiTil&#xa;08mvh0LiMJHUiBF198I6ZEtp+t1/GMDqYaDBiFaI6v0sBSb/369YCNCZWMMfCeRkaSdzr6I+C3&#xa;dycyksDXyuniu7jX1VMRzZoYpL+RkILOlf7IzUAun9TpMIjHqWQISa1FMPT+iFR/vfe+PfngQU&#xa;h6BPfzC+JPIkvxPwXx9enQ+HdLx///BNj6cfRYVLEPD/s+RtYf2H8cOpD2P2v/X62n1P6/HwgQ&#xa;iiiyr7+7xe/NgtJiYmOd7LnBqQnJWVyv5IS0RC4vNiwlBYbe3gB0Oe1N+vfWWwoppJBCCimkkE&#xa;IKKaSQQgoppJBCCimkkEIKKaSQQgoppJBCiv8uKFzZeRc5w2IEU1MFMamx4t/fRiVGp0b4hCfE&#xa;BzRq4y8AKKZ6DAQPBjnsVMcvqB/GRQrCRMKx4AqZEAexwIV0iIRkSIEY8nd+40APrMAcLJHLRS&#xa;Hx5O//IlBoPESToR+DADzBDMWyR0+u4ALyIAtjyW8V4N8GuyB/OPmNgjgyR/wchiSpkIbcWJhF&#xa;fgMhDOUWify43PnI5wLWYAsW6NMGxbd4oxQ43qslWbxUD1yv3Oc2jbiPBr5R/w9QSwcI/gXnk0&#xa;0OAABqRAAAUEsBAhQAFAAICAgANLtpTf4F55NNDgAAakQAABMAAAAAAAAAAAAAAAAAAAAAAGlj&#xa;b25zL2ZwZ3RkSWNvbi5wbmdQSwUGAAAAAAEAAQBBAAAAjg4AAAAA" ID="ID_1993434356" CREATED="1541845202046" MODIFIED="1541845202050"/>
</node>
<node TEXT="lib" FOLDED="true" ID="ID_1543761795" CREATED="1413298467588" MODIFIED="1497481062534" LINK="../out/lib/">
<node TEXT="UEsDBBQACAgIAG1Dak0AAAAAAAAAAAAAAAARAAAAbGliL2ZyZWVwbGFuZUdURC8DAFBLBwgAAA&#xa;AAAgAAAAAAAABQSwMEFAAICAgANLtpTQAAAAAAAAAAAAAAACUAAABsaWIvZnJlZXBsYW5lR1RE&#xa;L0NsaXBCb2FyZFV0aWwuZ3Jvb3Z57VhZb9tGEH7Xr1ikQEjWEusYyYscI3ViuXXhC7XcA7IQrM&#xa;iVtA7FZZcrK2rs/94ZnstTkt2+dQHD5nL2+2Zm56ID6nyhM0amkrHAoz77aXjS6fBFIKQiQs7s&#xa;7IXtCMnspeKePWRf1S38EdYLThlVS8lCeyrkgir7NPqlmHtCFdvxyOVyMWEy0+iePlCbrpTtUk&#xa;WVpH44ZdIGXHrq0Qch2+WGyR904rF2yVs/XAb4nrkx8OCrwwLFhd/pOB4NQ/LJ48FHQaWLjiDf&#xa;Oh0CKwQI7pBY4mKt8xHg89iC+Sokhf3kKK5A8gdwUQoz5T71SG7caExKWoXkiIyy4+ny2Uo7Zb&#xa;5ScF0/ZL7u+cJl4WGs5FFkPmzP7BsluT97ZXU34RkR3lwtvCYQY1sQUIj726CMq06KvROL5uGL&#xa;FIftshHpFnJoYSyWyy0nHlxM8WbNOh26FbZuGdeCq9c9pOY8tAsgcLsNhmXyGTzI1hiWyaWkIJ&#xa;bblUo8VSwsBN2MqdTefD80y/pLBinsV0K0jWYihMeoT3iYA9+k5818j0yjX2VGKBZElypRk35F&#xa;mTICLj4lZvnk0VEDZclYJZfssCLw1Gl+Sg5OqReyNtdcTe6Zo8q+r/OJmkuxCklzyeqSs6vsoW&#xa;QPGh8D2eyvJShVdkU42h9bdV5IDWkO0Kddmd60MqVx+zKOg1aOLIVaSCJ/R/Ws2eWJFpZ+w9o9&#xa;JwW+0AccCT2QFQrLBQ2II3wFTaNLoDHD86+MukyCuvirmyVQOBerS6FYIcATm1DTUsWqmA/FWF&#xa;JHnaaXaWa0MVNNQU+O4CyQSjdL/Qx3l2Hmyib+KXolKZOR9FcVDsU5D5VZ3NXNjN9AnfJADupb&#xa;ImKHgceVaXQNq+wRg/xokL1I3r4X3Ddxw2pWpeKdTRejqzekM7gmdw2a4U3Ao2lgCza6ZDQc/D&#xa;Hsk2ycsjHb0Z+GPo59fuBs9RkVTihHhloHzBhb49yy7NVMimUQGmObUWdeCnRUxVnKM8UWoA0q&#xa;ZVPX/TTnnlvWiSMLVx7QaCy48A0HhAaOlAfh8DJiulYecC2kTIUIFwprZzmYiWc/3p6dD88u+4&#xa;m7bdy/BMcdR0g1OEjjCh+sIR92AT2BM2MLGklUr2thk3CrQ4YJVvLJUkX2Xh5fDPrE+H3OJD7/&#xa;dnx+O+gXEdqYoLKh7GrOwFNNXQkdj6QYay2q1J5NF+pJYkXBLa2img2xXjWerypPuA/p5TtMTE&#xa;nh06DJKlyoP5pzLUXApFqbxtXHXwafhmCOscPXxyOmkabKHjEe17B6Fxc91zXq1X+q7FZ3Ykyx&#xa;fRSIYgxEZ7e4f5hUheRq/eIYSK/5OgVsv+oNS7Mk17AWcEOI5KdrwyT+HPyPAyUmyUJFc/mLws&#xa;NlikKRrwsRyZ15UsGj0vjnNQbJyWB4fHZ+A7yxQWyaamgm7dAqArcXKh9b7vbsl1fDwUbqBLOe&#xa;OHfDU7kDR71HiRjK3Nx6o66odV09Alw2TVv/KI+5aOf9++c3191aa0pn3Kk0bpL2uWvz1JDu1P&#xa;cIVk6MDzDAfFeNTsxmw8KSRtKXaWcle435YuqVyyCjvECKuD6OjRR4E0ZUURHkW7XKPm2JEkiB&#xa;3z0JEH7g5Yamb7YC0ttyaZQsRHAmZ8W420awNjze+UbbIKuPwIXBsXV4rxsb8VnTMBvgYkDTmL&#xa;+B/H12wO8Y8VX2A2DXAr/oytbZc+kZzxoyVxL8WTdkeryml6c9Jh4Erei0HVBJF9H/0UK19hjE&#xa;AIZDz2WOkBSzpw9X7bMefvUtZ/OarrZ9a07UjXh1z4UB9RPfaekcJXI318sRnpB9ydy6RlRtOW&#xa;WW/+vBy+sBrvq4ynKYvH6dRFnW7h8fC72ybXBT8KMlvMsfjG77wKQ1/+ahCGC15IhQ87iaUOcL&#xa;Jrrv9uIQI3I2MQ/e7ncP3sHP233rcApO6YX8b9Z/sx+oHQaSLQcm3aBspPh3zXn3fHNSjXYwpp&#xa;x8oPGmnN15WoJm8w9QSwcImhdNVdIFAAC+GQAAUEsDBBQACAgIADS7aU0AAAAAAAAAAAAAAAAg&#xa;AAAAbGliL2ZyZWVwbGFuZUdURC9EYXRlVXRpbC5ncm9vdnmtWG1v2kgQ/nz8iql0EtASO0mj0y&#xa;lpTscl5EUKCQJyvVzoVQ5ew7bGtrxLCK3y329mbWODsVlo90s23tl55uWZwR7TPN11VUwTLkLG&#xa;AtfyGFz2z/EBPbuX3OVyDkPXEoIJcPwQAisU3BuBbUkmGsDk0Iil/2Z44ntwYOzvPTFpxY/P/G&#xa;Ae8tFYQm1YP9w/OIJLFo6YO4eOFQSxUH/MBQShPwqtCeDWQWtA+I6cWSE7hrk/haHlQchsLmTI&#xa;n6aSAZdgebaJNk18mztz0oPPpp7NQpBjBpKFEwG+o/65vL1HYI+Flgud6ZPLh3DDh8wTDCyEpi&#xa;dizGx4UnroBkUEerENcOGjYkuig+g0x/MQnmOH3ycYscIG+CEpsbw5uBimhaRR4G3qlA3cU6rG&#xa;foAOjC1JLs2468ITg6lgztRtkAoUho/X/au7+z40bx/gY7Pbbd72H05QWI59PGXPLFLFJ4HLUT&#xa;O6EVoeptN3SEO71T27wivNv65vrvsPaDNcXPdvW70eXNx1oQmdZrd/fXZ/0+xC577bueu1DIAe&#xa;I7MYKSiJqKOSglGzkQfcFYnjD5hHgda5NoytZ4b5HDL+jLZZMESabM6VCqvrI//ITRROA4nGXT&#xa;vg+bIBAo38MJYyODbN2WxmjLyp4Ycj042UCPOP2KDdKyawhl+tEVNEVWVDVVPBUPuhxFCOjMWB&#xa;4TBLTkMmDIzKxJLGhfqDuT5Hbqy/ErjTEfcMMQx5IA108GVunPke0kjyJ3e3SwotufnFerYMyV&#xa;6k0SN6qMPIroWIkMj2YSQ5xUZgnFkuwxIIjYdWs1upqKYAdJHaBHyvAK4gylZ81+EeZnAVAU/t&#xa;eHcKHpvlBGrVOa69dnvPtqv1SqQ45M8osKzZZg6cN/utz0jYdrP/udu6bP3T6aHaR3UpWUia3l&#xa;xINlFdK2lhSyLV/wYD+/vR6x79OWgcphuZbI5pc/g6GLyLRH+txnePN3oxqPYH1aur48nk32q9&#xa;sSNwHn8b4GMhCrB/Tz3ZYpVht9uUuEYuB2Pi1YYUkMODASRbTdOKrGm3IW9KFsj8aUBmOZDx04&#xa;AMTSDc6mCVAhlr0tjGH+HpxlJaovKervPFrEraQbHjsCV9irFAnzaaDCqljTmf6yb0x/wytiKP&#xa;Do82Ya3jz/m2xDnSqJkiQ2ybiENNSb/xUmNd/EYVxcpc2vyIiQkHik00c6C7oxGOWdKtjnZgXD&#xa;laGeuK0Mp712a0HO+yJBeP1t63T9/f01YnecXcwkbRhuLMLcEdNTTxyuHW49FHBZ8wfDuaBGW1&#xa;pf3zo2NQ8lN/dTWZFL1aaIZ4KzwoBlzXPGITMm9Sq7Zsbh6g3qH0W8jumOm7Wxnmug60O2bagc&#xa;r9zPehH/Mz6kOb/FxXsOW4GgWrDZot21JUnbItRd2qRnTCm9SmEBuq87efXp1FkHr1uRpc3fo8&#xa;LoLVK1Fd2NUSLYTVq1Jd2NUqLfFWp1C38TZbqKXe6tVqFlq7VvVwy8s1A6xfrhngTyfRNMJ8+z&#xa;Yy5C2cMxozco/l5xwBTXlCD3A/HPN0ZsVgxGk4Z0cDjRCPDOgyOQ09Ad7UdYE7ifpoZkRDwqn3&#xa;1fNnnqGGaDQMFYQ3B/YimWengxgFooZv0V2B2tBXZjPbSLT+ia8IVvQJ11P40EerMvaA9Gl2F3&#xa;tGJhd6hyip3lB5obQtvC66SWPSxN01fi500jQvN6WKDs01Q6cc3MKPTJpjr9MA1OMBFi2aXta+&#xa;sjnNYteMlww86jFZq2fv0EI3aqlGQ/o3/oyFZ5ZgtbqhwsEE6c1dpBVHbg3eI15B4mWFXyv5Xa&#xa;yAAnpC74P3URzjyEbhfK1E/I1Ddff0hQ0leCTh8m8qQDX1eUZuZK2MldPjRNEmPaUhjg8dzlwb&#xa;TiEbtZBPavXU3Vw6nQnNDdclVWnLXKV8kPSbUxWV1agvHEV1KGbQazPLJLB+kssuiUm/E/EXk8&#xa;o9m73cOdgkq3X4APvrEqtgMBPxsFPFZkU1LcJ9pMnqJxL0Z9G+KO2JQZlbH+Bgf60BGZl3p3C4&#xa;v79fpjWhEZq6NKhWUMaISfrOqNUb6RdyPSUjMFewFRNihSo5K7TVYNHKADtHTGXVNrTMKMwpW5&#xa;ZUqmlGXq+kJmf1L8UHMDTLAUs0/5KPZUqEkoi+Vl7/B1BLBwhGNUszRwYAANQbAABQSwMEFAAI&#xa;CAgAbUNqTQAAAAAAAAAAAAAAABgAAABsaWIvZnJlZXBsYW5lR1REL2VkaXRvci8DAFBLBwgAAA&#xa;AAAgAAAAAAAABQSwMEFAAICAgA6FVqTQAAAAAAAAAAAAAAACsAAABsaWIvZnJlZXBsYW5lR1RE&#xa;L2VkaXRvci9BY3Rpb25FZGl0b3IuZ3Jvb3Z5zVrrU9s4EP/c/BUqx0ycNhWFln5Ij/aAhCstBY&#xa;bQ0rtOh1FsJVFxLJ+sALlO/vdbSbYjvyAPpj0PJI60u1r9tA+9QuJekQFFfUFp6JOA/nnextRj&#xa;kotajY1CLmS2rk0k/SSZX1oJ/x9JeEaJR0UpwRlVZRcs8PhNQjAQnF9PcHTDggHuqs+9MfMtCV&#xa;wMcCoFu1xQPGbwDbUBDWSEPx2ec+5Hd9GDxvic3kqlegVh6I8HLMCRK1gocSj47QSfqs8UiO/k&#xa;mtzGij6xCzG5kSUl9BrUw7uuZDzoqPcKig90Yqprrk+iCMUcehTQjxqCp1jxkXvUj2vV05UC9E&#xa;JEk+RLgZQOYOTy5S4PJKCSFvcAR0oCJLlHJnnimyEtCA4F44LJIi1h8gBsqKT4U6DMJ9+iB2NZ&#xa;S0s17vgYuoiUMVJPvUa1AldEpapxLPoAPhoWLuqRQxZhSxDa0WQZGtt20Sh928lUYBZEkgRulj&#xa;Wlxn2w7EMANXIaFRQMABcB8fd5cE2F7A7BHoYk8HIMrI+cx0pHzJQ4rAaKQOOOJQnKjmHwjFE0&#xa;8n1WT+wYmAoBBkOjCFzdqXfBGFyAQmOAWATfEhEkSXRVbxRkCCrHIkB94kfZXk8zv4zdxcDijF&#xa;GpJzHAhIBIMIjeWNLoa/1iyOvf3mKh/NClu77v1Jv1JlJ/WXViay2XQQWdT4q27URGDt3SsdZE&#xa;54orK0j5Q4UuQf1bhjRxkzLy07guxxJ7UGkDpmq+7qYuVyVJV+YaV964MERtYMq2HduOFOOZ6U&#xa;xnXnzNmYfGoQd2ob04b8Jx0PC5q/0lHvs6+qOOniIntgYchT6TqveNJxgYRk6jgb9zFjiKMKuP&#xa;FQJwLG3tCVqPbXcNPS1Yv3qSlt7G4tFbtLZuK7WGWqheb1SxJ7Zv839dT0q/3cOtrMzm/LGuSq&#xa;b3cCUGZ3P+tp6Uxsy1DO/j1EffZoCa2QtY24hfG2NTTtsAMcW48Dhx0/nEKL+tEKQdbE4pQZWQ&#xa;1PXmEZT6YrkwFZVjvywLtxXyIUk5qc82E8cusVs8Dtg/Y+r8QKSJeujZG0Sw5Ef8hop9Ein/+H&#xa;3nDerlyqaJuYOkrLlPEc334A41bTxjZXMWknRfR4wyADzan8Wbtgn3yYQRB1yMiM/+parEkrMw&#xa;jCZgNbMtPWDPjfxc31eYHijY7JbvzOgmz6DHOyZPlaGs5waVtfl+mtZMF0vbKkgw4M0tmnjenH&#xa;LvmD4shJFONAoiT79UIFRVuQBAxYz2IPhUiL0Dno0NdABTS6QlIgYpdQgzY7BTQZUxzjEbffTo&#xa;UV7iGX0WEhEZCVBvM95qPogBOjFbnaqa12pJXUjXPj2HiWSRLcNnrwNnkwhBYTUWDa2psEHBfB&#xa;YXPyP9CdMUelOsdRqvTZvv24z4fAC6suBAkBF9bYrVcvCAUd+L5676PV+V5MTSyjjRWXX7Q+pe&#xa;7fFb47ylTCqplVYkiapMnLLlcmkmUlfW6Vhm1e6NpeRmtWVeawVsM9Mwez0OKygZv+aMP4UWBs&#xa;PTaDulziGZ9GkLpQtxPKBS/XDWMrsEZjzMLgTWPGuNZqlASDhk7Mt9n0f0JKSCKMYWeq+Vwe3D&#xa;7ulJt3N5cny5fwQv5TKiIb+Jk305AZgZ8Vt6FlsWT3r89ohM+Fg65JZFLbSX/MZ/Xe5+OewWPT&#xa;2EfvpOjwtAUtGr7wPoNBcT7AoK5tYZhXJiKpzN5000+y9d56lnIJi3RwaxKjl/Sx6f9KBlZbQL&#xa;joL5UTUMyaNihhRgDBJwGPRcRyl120KguXqb6DcWElW23UR95gOu707ODv8+OT7fPWoUoVKP5Z&#xa;5gX6nHwRyX9mFlS70uTCpaOgq02YgGEVA7L59DU1vbSyq8aSus3m6YJ4ctdNb5uHt43O6clSr/&#xa;sJAnoWd10DeXAD0T+OaH/cUDwb75y2CPg/rqqG8tgbqdUX4+6Fu/DHSVFFdH/MUSiM8SNeDtxv&#xa;l2mS5oQff14c5h3H6YUbRQqOhzOgWZ38S2VlJuy1Zu3gCUTHlWHBclZ1nTenGP3g/sBGYut7of&#xa;vFzCD+yJ5M8yi01b418VeZJJ8uqwby8J+2yO/vOB3/5lwKd7kSvj/moJ3DOLrQVgfxjUX62C+r&#xa;RYZBYUVSuD6gXKl4oFiubSy8M5R9YQY1ct4+/1JGMGp1T0uRhRr1Whtv2kC0y1C/iZRaznU0cv&#xa;2cqVL+f1WBRytWd6J8+0Oh/Fq+edBBwGytdnFfUmWgiueVLTMmCp7Q+cHshZy6fiuVw1v3Vil1&#xa;kLLCJjdmBnT2wXkZAc1s2maWAB5vhyTgnxKV0651mkdevYLhMwFpExO8ezU+yiEpITvGy+WGg8&#xa;zZFeOq1aFEf7nO7/7q93baXOxINvnnEuT8EpnYZStG12k4wzOzO/zu9HqmdjA4F3dbr76IpOkK&#xa;s2oFBfia3d1xD8OgzCsfxIQuf9fnKLBV+86xxfHh5fHpzsf+p22pcXkBJOLhoYKIubaR/opCsF&#xa;v9Ky0x9OcpEEf/5wCartnnaa6HmjuWj4bryepxNmz1D1wii5co7Q27g9lTrdWHhlStMnx7nQ6F&#xa;gXbVDlzn+2UwXrfD0HU2qW5cTTojnGlHHm1sqrWdB9V1f0MYbxvuSiiybJ980cs5cYaT70g//b&#xa;ySGlKwb4lLJwc6gQyVPS/GWikpid0mYvGGWDc0qUuXBUDMApXeESUiHSzkTm7iWVxNMMbfayUj&#xa;F4znBS95eKthIS98qKXxnLO+Ku3q8+oz58X9Nz7iQXdnQkqWBLDFbvR8d2Nf0PUEsHCF2BYYMZ&#xa;CAAAyCcAAFBLAwQUAAgICAA0u2lNAAAAAAAAAAAAAAAANAAAAGxpYi9mcmVlcGxhbmVHVEQvZW&#xa;RpdG9yL011bHRpbm9kZUFjdGlvbkVkaXRvci5ncm9vdnnNWutTG7cW/+6/QqHMeJ06IpDSD05J&#xa;LmDTkvAaTEJ721xG3pVtlfVqq5UBN0P/9h5J+9C+wA+G3B2w19LR0dFP56VHSNxrMqJoKCgNfR&#xa;LQny+6mHpMctFosEnIhczXdYmknyTzKyvh/5iE55R4VFQSnFNVdskCj98mBCPB+c0MR7csGOG+&#xa;+tybMt/iwMUIp1ywywXFUwbfUBvQQEb40+EF5370ED1IjC/onVSi1xCG/nTEAhy5goUSh4Lfzf&#xa;CZ+kyB+JPckLtY0Jd2ISa3sqKE3oB4eNeVjAc99V5D8ZHOytVa5CMWyUbD9UkUoeOpL1nAPRoz&#xa;1JOEvjYQPIbCrjgGQj+uVU9fChAbEU1SLAVSOoKJLZa7PJAAWlo8AJgpCZDkHpkViW/HtMQ4FI&#xa;wLJsu0hMkDULGK4k+B0q5ijx5MdSMpVaj8hPTc4BMY5zukNJZ66j1qlNpGVKoaJ2uAFIwtCx31&#xa;yDGLsMUI7WiyHI2t4GiSvu3kKjALIkkCN980pcZDUP9DgDZyFH8MFRhMQLZqyBnMgQiIv8+DGy&#xa;pkfwwqMiaBp1vnG7Ehcl5opkzxx2r+CEjjWNyg7ATm1OhKqwiCemJzwlQI0CMaReAgnGYfdMQF&#xa;bDQoiEXwLRFBkkTXzVaJh6ByKgI0JH6Uh+E+98uoY4w0zumaehK9TAiIBD0ZTCWNfm9ejnnzy3&#xa;sslPW6dNf3nWa72UbqLy9OrMTVPKig83HRKp/wKKBbOfma6EK1yjNSZlIjS9D8kiNNrKeK/Cyu&#xa;KzSJDauyA1M133BTS6zjpCsLnSsjXRiiLjTK9x3rjhTTTHXuM7O+4cxD09ADvdBmXVTh2Jf43N&#xa;U2E899E/2nib5HTqwNOAp9JtXoWy8xNJg4rRb+k7PAUYR5eSyfgGNuay/Reqy7a+j7kvarJ+np&#xa;fcwevUdr67ZQa6iDms1WXfNE9+32v68npV8eaa20zG75dV2V3D/SKlE4u+V360lp3LiRa/sitd&#xa;H3OaAyfQFtm/Abo2zKaFvApuwXXiRmOh8bZbc1jLSBzcklqGOSmt48jFJbrGamvHJsl1XutoY/&#xa;RC0ntdl2YtgVeounAftrSp2viLTRAL16hwiW/IjfUrFPImUfP+28Q4NC2X2i7sApr+73iBZH8I&#xa;CYNp6xsAUNSYavPUYVAB4dZv6ma9x9kmbigIsJ8dnfVJVYfBaG0Tisdr6nJxy54V8Y+wr5goLN&#xa;7vnBiG7iDHqxY+JUFco6N6itLY7T9GaGWNlXiYMBb27WxPPm5PtA+rAQRjrQKIg8/VKDUF3lAg&#xa;CVI9qT4FPD9gF4NjbQAeSaSHNEDELqmCJYZzBBlTI+mp7aUlVnqdDDuYYgy1VMZ5ChQnYI/UiO&#xa;BhRC+isYECSPg5kWIkqSWJWdQVYb2YuSakAoccc1k8YgJO/8gzb+N5z6/h+v/vDWNxaeQiYXxj&#xa;YeOfF9RO9gSWKtmAwK7eeFIZvCWIrDnDl8Jv5Uj/M5sDkN/JkabkgEKL0aqzsVAnSvvKaaY6Vj&#xa;SVZwsPaGQpZXCgrL+mj8iAIboc1neek80Z+QzdLbcq3Temvk+NBlxOcjGAQLDgSZ0LemWO01HD&#xa;Dqe/ESR78Xq5LUqbIynkOrbn9M3es9fmd8fGUjlftUViTmWcVOubxqbiag19bpkGfV7k2l5Gat&#xa;bl4NRpUbF7m03d71gSW4jF8LeppiDLPiadidSj2WTPq0g9LtHjyiUv1w1nJ7UWZizF4X1m3WWu&#xa;1KhpCgEBjDvs8jehpSQVTDDvqghcHdw/7Zab93dXpytX8EL9U8wNRv4+SwmgD0jfgdveqpMtAB&#xa;vzsiMz6VDgFf00F7yW/829Xur4f9soWGME7fGXABSCp69X0Ag+Zihl1BQe96k1DOTIWz+bqNsv&#xa;9aHzESzNsjo1iUgjEmj08G0LPS3gVnwfyom4bkUa5JClAGCTiMBq6jhLrrIJBcvc30GwuJKttu&#xa;oyHzAddfTs8P/3t6crF71CpDpR7LTkG/UtODNREdUnBdXh+S0I52B102oYHy1c4Pr6Grre0lBd&#xa;60BVZvt8yT4w467x3vHp50e+eVwj8t5IkPWh30zSVAz3nA+WF/80Swb34z2GPvvjrqW0ugboeW&#xa;5wd965uBrqLj6oi/WQLxLGID3m4ceJcZgmb02BgenMbtp5lFC4WaMae5yPwqtrWScFu2cPM6oC&#xa;T3WXFeFJ9lVevNI3I/sRGYpG51O/hhCTuwM8rnUotNW+Jv5XmSbHl12LeXhD1L1p8f+O1vBny6&#xa;d70y7j8ugXtu1bUA7E+D+o+roH5fLjILirqVQf0C5deaBYpupdeJc86sIcauWuM/aklGDc6oGH&#xa;IxoV6nRmz7SReYatf4M4vYwKeOXrJVC1/d1mNRyNUe+4Nt7uvjUbyM3knAYSB8M6tottFCcM0T&#xa;mpYBS+2D4PQA11o+lc9x69tbJ7y5tcAiPLIDXjuxXYRDcribpWmgAea4e04O8alumvMs0rt1zJ&#xa;tzGIvwyM597RC7KIfkxDcfLxaaT3MEnKZVi+Jon+v+v9vrQ1ugGXuwzXPO5RkYpdNSgnbNbpIx&#xa;Ziez6+LGpHo2NhBYV6+/j67pDLlqAwoNFdvGYx3Br8MgnMpjEjof9pO7Uvjyl97J1eHJ1cHp/q&#xa;d+r3t1CSHh9LKFgbK8mfaRzvpS8GvNO/3hJNeV8OePVyDa7lmvjV632ou679bbeQZh9gzVKIyQ&#xa;K8cIvZ87UKHTjZnXhjR906DgGh3rOheqPSnKD6qknW/naJSqZTXxfVkdY8o4cmvhVRakt78dfW&#xa;fKvjIV6N10S359/GWsEATuZVvnjiEtjtVc06hQ2mIoAH9gB4uUruzwU8rShbSSZ09Ji3fUKnx4&#xa;Spu/t5Z31ilR7h5b2SGndKW7bSXPm7EsXHer8K852vwduLIzzXBS1+LKuhMS99ryZzlNPOKu3r&#xa;8+pz5839AL7iQXvrRnqWmWKLDen0707P5fUEsHCBcxLvykCAAAPyoAAFBLAwQUAAgICAA0u2lN&#xa;AAAAAAAAAAAAAAAALAAAAGxpYi9mcmVlcGxhbmVHVEQvR1RETWFwQ2hhbmdlTGlzdGVuZXIuZ3&#xa;Jvb3Z5nZDBasMwDIbvfgod04tfYYN2jMG6wijsLOI/qVkiG9lLD6PvPicZoSyXMF2MpV/6pD9y&#xa;/cktqFEgdix4Ph+M8X0Mmiloa5eCbcD5S5Fsz9G+HDnuLywtXn3KEOiGprfgcECH7IM8DZC8se&#xa;cYBsx6U3ecEpUlV3wqszr0RZVovR19Gyrh0FCL/I4R++HFhWu1+62NoShkofu69ZIyS41JdDPT&#xa;83gaoOrdnByCdxRkOQ+uWp1K8jdzz13t9GAVxZF02QcpB+Rqtwk/OjXDF88m8PL7H/T2A1BLBw&#xa;hnq1oY1gAAACcCAABQSwMEFAAICAgAcllqTQAAAAAAAAAAAAAAACQAAABsaWIvZnJlZXBsYW5l&#xa;R1REL0dURE1hcFJlYWRlci5ncm9vdnntPGtT20i2n+FXdJjU2iYeeTL37hcWE9iQB1UJsOBUas&#xa;o4KcVq2xpkySO1eVyW/e33nH6pu9WyjcnMzt6LP4At9Xn2eba61emQ/Tc3dDhncZZ+zCJaNO+y&#xa;9GsRp+OEfk3hQndrGsbp1ylN51+LYR7PGNzrjHJKZ0mY0ne9w34YRVlaBLMwL+j5JMvZJEyjwd&#xa;Z9a7PT6a77AVjyVlEhQOYFXMGLr7PZbR6PJ4w0h62ff3r53+Qdzcc0uSWn4WwmB/UmcUFmeTbO&#xa;wymBr8gvKbIRuw5zukNuszkZhinJaRQXLI+/zRklMSPAdyfLyTSL4tEt4oFr8zSiOWETShjNpw&#xa;XJRvzHu+NPQDileZiQ0/m3JB6SD/GQpgUlIZDGK8WERuQbx4MQKA05lzyQtxkgDlHtbUJjuJ+T&#xa;K5oX8Jv8l6IhEbZJliOSML0lScjKkUGNtKVQEYlTjmqSzUCASchQpOs4Scg3SuYFHc2TNqKAwe&#xa;TzUe/9yaceOTj+hXw+ODs7OO798jcYzCYZ3KVXVKCKp7MkBswgRh6m7Ba4RQwf35y9fg8gB38/&#xa;+nDU+wV4Jm+Pesdvzs/J25MzckBOD856R68/fTg4I6efzk5Pzt8EhJxTZIsiggUaHfFJAa1FlI&#xa;VxUijBf4F5LIC7JCKT8IrCfA5pfAW8hWQIZrJ8rrhakywdczFhcKlIYO5oRNKMtUkBTO5OGJvt&#xa;dDrX19fBOJ0HWT7uJAJJ0dmTDK1v7bNweBmOKTEda3MTVA3uBKocB/pGMARFBOCwSfCeTZNP8K&#xa;VYNrBHb9iCgbNkPo7TQLh3APLf3Aan+Hf14ef8xwIaIxqyeU6LIB6C4X6M0+gIvmgRfw2vQsFr&#xa;Tsf0JvgYsiH4xCYo9cd1P9yoeocfw9kZDcGJd8A+wqhALyc8WBV4m0zDGTewFJREwiG6ZPEoss&#xa;MkLAqLMrnbJPCZ5fEV+C8pGDj+0B4Rp3A1HVLSBUaurXvNlg9aaggMPWXAufrZJc1Gg3T/RTrN&#xa;Vzv7zYvzF62LYrvVWYgjogkdw3Uvkot+s/9lMHjRGkhEHNM5RBhwG5zNYyB/wPXm3gEj+pUOmX&#xa;u5l0XhrXvxM6WX7rXDLKXutdeopYRfPURRmEYGCtsVA9sSYE9pB22tWDboIIlDMIraYUpLahwf&#xa;6JvLMWVHcjqbLTn3+FFzHHCe5UyjEM1WMExomPfiKZWzjZ+cgsukGoxfv9+0JtK2E0lLjnmEDQ&#xa;tDFkgg46aQcJjpIBh1RZ7HCMnT2I4arm/tkO1dA2aP7O++FpreI/3d60m2NyB38J+me/fkh10Q&#xa;KctjdrunEH2jw2xKC40Yy5EAwblyusRCbg7qNz6DFdPGAAdd49fK7QxuEnE7q8KmeFfAuphPJZ&#xa;dyhMs0/3eVxREaFWpNF0SWJYwg/kkzMuZ7JKOieS0GheVpmLyuoDPAbny4bkxU95a1fssyMDew&#xa;rELj64XFZZMH/eAYBIUywbJcFjBI9gXEySmNMJ0EgCpnxWdIm83GdmNFKv+Y0wKna21Kr5ZQAj&#xa;WN4jFXx9o0OPQOWYkS6nhtQgjs0ikJuDOC9mchH5HmMzv+mrfrDKre/O71N+5piLoIMDZCA1A0&#xa;HUp+njFg/5t4juiI54cC42rJf6wjP35URK2Khpy3yD//6bsnUo4l8neKre8o4wTJJb0laQjRDi&#xa;rAbAplMcM+q+hwTXB5ijK0WKow1IcqCMV13l6AJoy6LBhCmkFQckcsiyU/7jmeg1ZcatZOj4C0&#xa;vzMwaFpJUd7Vt012AhoOJ85su4xYN5XFVN2I1yZfhKM2oSzZxzrn7uf2fcc1J0cIWeFAlVlQ5k&#xa;Hc8gKjYnMunINmmCUJFDig0Zj1Xw4MpZkfWb3gHHcRT/+ngXdc82WAjAVF/D9YOPxIXrZ8OvOg&#xa;vgqTOZXIY+bHbmhBTlafg2GWBNa8MFV57glNoCNbPi0wK027dFw4P04JuvYEuXj+02bI8adHTJ&#xa;GfJTbJs2teeL65GdIZT8YN5bzTecEICy95T45N0TRk5CJtkBe1/OKncaFy5v7n9we9r72Trwcf&#xa;jg7OyT7/91L+//mi8RBc/c/vTzSqAekLXOrLz4OVsL3L2A65gGbmhScZw8UGx1I1qlKr93+qsC&#xa;8zozG52OQa6IpKLyv6XdGJlZnQTsJgX1u3tNiybsvuDe8lccHsmz3ZwmxB8r+chvmlfRu7Obwb&#xa;RzS072Ci5XBzxrL0a+YAilxrDBjyC+Ugs6Nzs42uAdZNf7ycE9nP4uoRCUz6/yjOC840cAWWKK&#xa;oMfrEOAmdfBFVfHQljps3WZgUYA7NBiwfk0TxJfryIntcGX29Q6OW3yAbLIGbNIZ6oVocrZAc9&#xa;qqQDjkTgH7JM8I7ifZFjmRyXsnaJLIuPSxNu1PFdMWLN0aK85SEmTX0hodId1qXCfWYhDeVV61&#xa;JAt1tIQPrluvjReRfil969Ln7h/Qsp6ADxQBr/Io0vgsh+LX7peTLEyEaCu1uOy5hDyMpJs6PQ&#xa;NC/Ot1udNmk8f+nJIPgxY1Vf/hgsZt3IO1bX1G9MaDJrtE1TbJc209babxtaaus5Hyxu5MwP9E&#xa;Am3wGvQApcoqrB4GpzpWiig4jjwxhJwgJStuH/kL99HV9FLSWa9TUjVbuuWhT443Wiwo1WiLyw&#xa;rjIsm1lZHVyF6ypDAD9eFSIqakXwn99FDYaBLNEDXx5YUw0c9vFa4KFVKwF//T46cCRHZfybJe&#xa;dJS0uOv7635J4ZNxd9Hi65hP7esgu0NdJbbIlSVV0TUrrl6drqWjl8VBSwnhJKBezjJZWfefvm&#xa;pF5P42Z2UDe+dbOaLkGX6YtXQoHExsaGUnhJ4m2WY1tgLKbde1lR44xOAp9DHztLp9DnvYdOLq&#xa;F6iUAtrgH5D9CfoUYP5a2CrzTwkgWXmjkl0lRo5QOQtrPW0LL8yMT2Si54VM3ZQiieaGmoYJ7G&#xa;v83x4davWQxT3LasdmPDI5qa2apkr8Wd5YLxBz/tobXQVZFMYVtFMPUkyQBbLJmUb5PzvqueHl&#xa;a5hm5qHKdhcsBY3lYiIyel1Pw/NLkDtH4TnSWQiciVxLwXsEyAA+PFLIkZ51xZrip+5/kRo1OM&#xa;FWDWG3pNmS+oAS+Sz1fBJb09p6zZemX4C/1tHibF0TjNcvoahjUlNukkG8htiU3ICh9FU2Pvl4&#xa;MGfIgAVxrZ3VVsbvJ7plXJJX45dHPDcbrqAsp39n5OYKnvW6Nqnx95QgJfDdhc4Dr2Aw+cPuUL&#xa;YAEAXTFtPZardlj62RKrM9C6RqeQBGEUYctkDPXboOk+yvx5elnIzcaGEkZOkm3JMuURnCAT2e&#xa;6ulSnL+ZZrtF0Bec9NHKGtYOUJSAsUpTVRcTIJ7+ZkmNCDKJJPsvi+J76QLVbxZAzBh5FpFOaR&#xa;WFUucDrC9HZTuuswyQqq3NUSVbmsktlY9gY9wT+vA0tOpanzqdcUlAubCkHv1AP4XTADZOBodJ&#xa;yxNzegp0KH7LbTJGvAQYv7tlrL9hHRrImR5ae+OCrsQI4Tu7EBOs/pNLuiUu1pRnBPGM1xTQtX&#xa;wpVvJTyiWMakJta4JkMnf9ap519oPGbdrjHyXqnPsWPBTdPSjAEmVeNapuGUD0psw5Wymhlyzo&#xa;S2rBVBJE/53G66xCzvrFSgMVtlmdKvoZgtrv4Mj6owGzK189NhG31Ija4EzXL/h6V3c7zLvvQy&#xa;NUQuAje4uFjOmrDeyZIygxc1TSTVmqNMMROeFHAUyO4rLdtmlPTXmf9nMopjCdh5KCMA44sLtU&#xa;l2WEYFeyWwlwFcd3HWMJPGpgyTBnSdQDyQGeO4U/8xLq2+iCDIXRHgRIDiiw1yN4QMWaKjFQGr&#xa;3CnFV4SRJO5jwyIqGFP2lj85ZDQSm9tEoPKbpwglTxaqRXuLhqUE4+0wKshjkkJzj7BKgUDO6G&#xa;plDdbqduLTZX3MnnX9qCuJO2ZlTa9ripquzMyOD+jG3NLBiwICsFE5CM97vCNItNziRXI2jJtv&#xa;3cmHk/iK8tK/ptrPs4zJat9sT1IOEkzDWYAjyhZGmEYoEB/G+XE4RVi97xudEn80t8wN5tjUjO&#xa;JxYMNtGU8VDZbCkmvswSWDAVxMopym0vTs7O7ZINJ1uPQ4gezgDIJmeuOGCuKgvvG7+zC8d3J4&#xa;oss56BDlo3W+tR/rN3EKAo9ghAnuB79VhKLlUldmz4o5LCwu8XLxkAfPK3aZf/kLNM4GL6/IMw&#xa;QtDmkxpNALpOxkZA5okR3C8jm1nmTLXTLzRKwpmFqL02EyR8MTt0VmnID7m5t+eSzBPiRmWCQz&#xa;cRwELxZi44J4AFzZTK/oaAUteZBu97rmIHOTn1Md2TlADU5DHHJ0aI2PrGEgPV9wTCN6Q6aUTb&#xa;II4y6YWFki2ojVA/pQFfyeDGPEfD/s50nmwGX1UCff+LMghKKpSy5tDGoGhzGmYnu8uLYI5FMK&#xa;ZlsB4lcdMC2MqoprSuWVxJKPjm3RRFTddCeM71EaohNnIzKNi4KHPz1bAQ/CeASJTmfAVSH4pJ&#xa;gU+eooGLbatDqCfpfaYQsbN8GTrxPRk7Asul7F9DrALeQByvT1mtLLLaddqduppWnoqirFkiqB&#xa;tMhLKsldbZekd7F3JaqaLkmJKxGSZyJ9iXgjr6njB6BppO1d0kcc8lCDomieaKh73r6OKpHKVl&#xa;Xye0fCioiGbdfMqmH69WrXOBbpvnQXMQHq9yIetS/pzSw6YDlJtGqszRIKGmksBXc6XqVrIofi&#xa;IB1QQd+Yve99/NALx+WyTCBP2vk38Wg0x5l41lCDBHJEzTYgI3KUu2rSqEx58rqxTrTw6bwq2o&#xa;pVnkAbc15nfo1F5rdwv6D6qPgSibAm98a7CxaK94hvP/ezKXMyFM59nl/xs1O2SV4Y4yOTN8Io&#xa;M1kKI7cLChj1FHAZkGpaOJBMjUuBriENSol4TlwBgKYGAF1FGJmcdoxMtRQqFXWDoCOKiKUw0m&#xa;kEjHSxFQihD2lC8GO5DmRiFzoQP1YC4lFoxwxJK+mbp+YdI08v1wRCCKHwa3W/sxuvy29uHyDM&#xa;39cCCGPmTYDO5nHCaH7oeNN/WlvgdlG/b4vg0/1Tq/DUKjy1Ck+twlOr8NQqPLUKf6pW4VmzLH&#xa;LQ+SLfJkv1eeodbICn3uH/ee/wx74UQ7xWKKfDeV5A2Q16TC7/qBdlOE9e8PNnf2dG/csunFPu&#xa;v8n3SDz4cYvnVRTOcT8Lta/7EO85429I+4cx1orXTic1TzlQ9Ah2+dsgHFYttEtY7cmGysem+W&#xa;S+TrraPYoPOa2oYIzB+oRVMf8mau/my5Y7HjHaw81b5e4YsZe9tUgorYcl262rYtXVWJWjmB/x&#xa;hVIxTSKcavutePo8WilbiVaQEZD9hjz66JxuRXi5qaG/w5/Pm28qEk3SXhW30e/w48bcWHAr8h&#xa;FvZe/4IWSom9DoFIk+XhuYghtYxng43z4myw+eCt5lNm8MWiU2I75UhnmRqN3pLpbMwlGO8iK5&#xa;5oHJYSO1MFzbbbEJPdOBy8RghLMSSzl0s6r+77D/rYZ8zPp/tROkNx0u3IDpLCRZO/0KyneFGA&#xa;0zX7PB1ZxUPZivsTTprXpXm/PmKvlCHe6fHvacl8jUbgYSHbiztrPkEIoxHKNG7N1LJxTwfYoF&#xa;Ht8hEtCUleorE7F+A2QU51g5N3H1q4VrEgAnL83MdsbRoT5i7uuKlu2sUn2SfyOKYFqusOlJBu&#xa;8/5TeMGC1RQuF1FWJf3GhYc2QgkisH2LuUHmIvU5ajK5NnMIfVFH9bXTncGno9iRNKmmJY3VqE&#xa;uOuzm7qznOqjRZUoqm+XaMohr0ijgzs95c8d4p5aKk3O4l/JJwkIMWu93eBL1L6StqZaqsm7Tu&#xa;B30BGeHlGzazfvxsV07DqlXEjrqmUiW4fqlAbulapKYNmShVW/8hIsBr/zVC4Z8NAQ8yPuqzPc&#xa;b/HwdbPTfFW0vgTbu9+y6HYPX1YTbOObEncvOvxKsH3xHM92X1iHu72rcJpOyRzLUElvimE4Ew&#xa;pWPC6brt+jVTnFEmRJo+KbeaxjnPLFqYpMjVtVz4LaxJ1klgn+PLUdFjyRcaLNeA4hXVsCB/KQ&#xa;RLMDMypfOrTdGgTbz6trWxqh2qipcNjm0f9y0R9YuNRJf/9uzm1ZBtp+XQrnpwIGd9HnFPANSU&#xa;iBNCrVr32+VfNffXGaWxGRriHt0iNrioDilD/lgFjcuGu0yF6X/FRH8FpVVDVLoY7o4h0KME93&#xa;6HL3OElasw9RIceDCrwLtu9X1Z7GBgXXDxdRpdSqlnM1hEGAH5oXUavK/gO4Rw6WcW3sZl7oA+&#xa;LdW/0v+4PtfTDafdDI4AWwVxHR3ajst0wfpu/vAM9xAvcVDZzE56vMohKhbvZ0Y7Hy6RYXg+q+&#xa;6mYf7W5bGl2VWxnSBTIV0u83/xdQSwcI/0nF4qISAABuXQAAUEsDBBQACAgIAOVUak0AAAAAAA&#xa;AAAAAAAAAtAAAAbGliL2ZyZWVwbGFuZUdURC9HVEROb2RlQ2hhbmdlTGlzdGVuZXIuZ3Jvb3Z5&#xa;1Vfdb9MwEH9u/4pbH1grhveONNA0CkJiCNZpPCCEvOSamjl2ZDtdK9T/nbOdNOnHSgbjAavKh3&#xa;13v5/vzpdrwZM7niFMDWIhucJ312/6fZEX2jjQJmPrBTZF7kqDlnHnjLgtHbKPOsXz+u2a30q8&#xa;pBn5G/2cF+y9V72YcZXhB2EdKjQdtBql8RyV66hxgFMhy0woZhMjCscKoxdL9slfHyn+lidOm+&#xa;Xacz/4nLPSCcmkzkglYx9w3pDYs0x3ckE/kdxaoCDs+gdIWWJO+7awx33wsw80brWWyBXkFJFF&#xa;mCFjl7y4Qp6SkAm3fr2wa2Y4qgz5EaXhbMMGE8o6rhLs93pRgE2FSt8nWtnhKOiuIkCKU8jQXa&#xa;Hf9BeS0fdb5ilQCtrrjfGWnbkWKag11XS4lQdfvwH6u/XGe734zJAnM/gZV+DFqw0DYXK06vfo&#xa;1wkimmmTPz1tDg2kGq06dlAYnAtdWqBNOAQ9BR6strWshnshJeT8DuklR6CQl3nhBDlwLSimMA&#xa;wxHFVuWq+EWYqJM2Vj15lli5sf68wPBOLTWdwGo6D45Spa9ahTJ4ku2IaoWUUTlPwFGreEszM4&#xa;9gjfiZU7Hm2x8COckHASAxWy2z4zLKEkchj4rJmegCqlHO2Y8vibuWgvtJqK7FwKboP+aB+FJp&#xa;lDrgZptMNdgBWgtPgwjs/yzjDtI9ENZDKjk0DuTz+XaH1CdMIquLE4oTIisdZbu/OP0K+5vXss&#xa;stc5gLrhmkUVgLfadFYJzjys0NqZqff0f29lP+PmgE45Se0qb8y0vLLn6Ari8tSntkcjXPacBT&#xa;9NRdDgC78IHt6CpqKjlS8g1d6CmGd8FClrmd5wWSI8e1aVMIX3YSaW/AbLp69Ej3aepoHayaYC&#xa;UzzHyGPHM22Yo644V5jrObahajNdoZ4U6S8c8c+z7YF+kYWuZ18SHvgUPcj5EN/Vzteskt4Hvt&#xa;O6vGYG6ZtvZ1s1vWpTIquEO+o7huNFguGTDrhtm9If61VLTYTOqUuI4TLADXUTVMNNmTgxp8Zc&#xa;m6bP2DZDrUTQo6rlk8gs3cw/ztBsisbuknGl1TKn9qR6p+ZzGPpSNhnfjK/GJzAYG0OACS+zmX&#xa;s5gOeALEdr6S/CCWyVqcmSOsacoaHaaYRyw0FUA6Hq3XgDRMkypycUdZVR+/ccBi8hWm5mG8tN&#xa;hOo+p4niqr/6BVBLBwgoCVzVggMAALAMAABQSwMEFAAICAgANLtpTQAAAAAAAAAAAAAAACEAAA&#xa;BsaWIvZnJlZXBsYW5lR1REL0pTSGFuZGxlci5ncm9vdnndWNtu2zgQfc9XsHmxvBuwfc4ii21T&#xa;Z5sisYvETRYwggUrjW02NCmQlJ208L/vDCU5ki1fajRou3qwJV7mxjmHQ6YivhcjYEMLkCqh4e&#xa;/+24MDOUmN9czYEV908NhY4JnEf+zVoL3jH8/7xii3abyXivfhwX/ElzUDhyB8ZsHxWMn0kxE2&#xa;4afl26nR3hqlwG6ZOzEJ8G2jU5WNpOYutjL1PLXm4ZF/oN/dh1+Hj9ybctZnMRUP3M2kHvHfqo&#xa;1czPxSSwjIhXR+tVWZ0YhEXMAU1IZu/EcHD2IlnGPvr98JnaDH7OsBwye1cio8LqjUQrErICGX&#xa;GBvFbHhfO+hW6sTMmBd2BP4gDFvIjlblHDVNaxdG0OPH0vG8mZ2UYmuduSDsrFg2zzVPjUyYR0&#xa;cVvMVci669RdeZkvq+i0acv61pso+VL3quaSlojaSXmBtST809XKDHNtIwY1eZ1uKTgqi9NI+e&#xa;v3pTsFYmsNITjLKZbpxGTwJDptE8d2YynaBjlWThcdTmGO+EfWXSc5R0clLxp3R8+ZFDFj2JHL&#xa;y6Yy9OmM6UWmdD1Q60oDZ37YRSC5ex0WgqwkhI7aJ8YfhEpFcgErChnxakvUk9PRVpFiZmChtk&#xa;rRU0Z6Ac7K5JJMleatb25FmLHiAnuDGxC9Je1Cxpq7E5bjkKfK2NfpyYzOVNmBiI7SjAnl93bj&#xa;pXnSN2eCq0Np6FlAmL6Q2bCHvPhGMJ+nO43qGCljHvh8ZOhJdGX4JzyPPRvmJXY1RvmT9Nm7NY&#xa;+HjMos5DDCkpZ7CcLt8Yi461xjKpc0ogJiitPWKVhZ2vUMgQNwMzu0CY/SIUgpsIxq5vLhF/Ob&#xa;WuSbefhWtoUgETkXlzZlRyKdJt9IDrkvRN36R1hftgNNMk7I0VOh7vKm05VjHCGmxPU3z2leFA&#xa;Qex3mb0rU4g6NJqA0cXKir2OA8gCrEMyIFAmtPpIghy36UBerDpUYf2xJ398f43PQy3bgwd8kj&#xa;u1hUNikz72zaIijaT2LDVuM30gBtgQADegWnNDXcuo6kX8NnSFjbioZ6tScpJY4C7PPEhuJMya&#xa;gBcLzLZqtcZvzju3/MNV733ntH9c2IkmDPxjCseshZXuZ5TYOmIja7LUHbNBsa0WPVS/Ru1BK+&#xa;9u3Q0wHnd3d3+wTxbE/a4G3L7rNSifjU2DYiw8YYTs+300n/a6/c4/Ta5TxDFtGywoer6X651u&#xa;o++gG1R7OQGk7291HrcIkSl/jNW2xRKdtq2P2mUpyYSkl4IN0F5gKTo811OhMOXzjCJ4pXgOOm&#xa;aH7HfWlGx1nNa+KKufDnRF6eSKPH9DbUSdPEbLPfSRvd0Q7aEdNY/KEVuu5I4WJozNrGs8uLr+&#xa;Day1OIBSxUEfUat64C2JgBPU/zX3rfYPppw8yD2NLLIb3VBmBI59Tp4g+biAESlrsx0YYdCSHi&#xa;b4tQ8xNGrbSAP7qluwQaPKTbjf30GCf6O6jVjfqu+HQj4koUwI5OQaRk7RxFCEDlo61J6tu6VJ&#xa;/5s6O6mcm0PR3V5TtNbLbO7kF/LuT/bqpy6zKxaDQFLZrLhWlEu/j8Lnq9EvESEyVUCSXEXUnt&#xa;X6pmo5P7hSitDZc4GxX68SLm8MnUcH42KXasBQxYT3Z1ZMAOnE4srl77j7V4rbzFJPpWWKBFP5&#xa;nIDOTsvLZjrx5xIXCjDcLCruH2f53zEraDb/dsshIRjVDDopZjYhKe/hiDZrVq595qtxevkSSR&#xa;y9cnIKBQJo1c0QyZqAsDaQNbSE+2jeDVczY+nopWpcpdsa47v5NV85kuobKhra9HKF/RWrA4UU&#xa;4+hkX05vitFCHhkGSGWLBgf+LLRFQ4G4qAel5kjVpg8h5lG7IbswajSJ7qGG0lIZE66/18Xqid&#xa;KeLVBE+YEb1rD9a6Uqo8PIJk6kOL7AnaAMofSV4HmbrUCNntLU5jhjuOYH/wFQSwcIwhnOBa8F&#xa;AACzGQAAUEsDBBQACAgIAG1Dak0AAAAAAAAAAAAAAAAXAAAAbGliL2ZyZWVwbGFuZUdURC9tb3&#xa;Zlci8DAFBLBwgAAAAAAgAAAAAAAABQSwMEFAAICAgANLtpTQAAAAAAAAAAAAAAACkAAABsaWIv&#xa;ZnJlZXBsYW5lR1REL21vdmVyL0FyY2hpdmVUYXNrLmdyb292eYVQwW7DIAy98xWsp+TiP8hhaq&#xa;Sd1lVa9gGMOBkqAWScqtPUfx9kWZRGq+aDMea952eC0ifVo+wIMVjl8KmpYfBnJCHMEDyx9NTD&#xa;8gzaE8LIxkKDF35LRfwbGOzYGwdRkwkMgfzlE445C6GtilE+kv4wZ2xUPMkkha6NsvYOn/N0+S&#xa;WETBHGd2u0jKw4HRMfDr5Nho1rX2hPqBhnpdpQsUK4lMqkI+dIDGXXEuQ9T0U1YWFQAXJvw3hl&#xa;Mq6XahlyUEPmLPtDj5wvxe7mF7V3nenhlrcrxSK/sjKDZje/xiA1bUvoIG+7WiWHYWBSLnaeBm&#xa;zzfFlVG5cL4bpUppPFw2pcuZG952T66H32U5T3CMCTi/9NEPJIbk0VP4DrN1BLBwjoJoE/HQEA&#xa;AJACAABQSwMEFAAICAgANLtpTQAAAAAAAAAAAAAAACcAAABsaWIvZnJlZXBsYW5lR1REL21vdm&#xa;VyL0RvbmVNb3Zlci5ncm9vdnmVVUtP20AQvvtXDBxQHLUbQFVvqYqIVPUAiigS52U9ibc4u+56&#xa;DESQ/97ZdWKv40DpSvFrZr755plSqge5RFg4xLKQBn/czsTKPqJLEr0qraO+iH9XsrxBmbHGVs&#xa;G6pWiVRFnUS21EpZwuSZTOPq/F3F+TZDIeJzCGS4eSMIP7NSxLWZZgDZyfnn0Vp2fi/IsQrDNJ&#xa;5H1FTioCVciqgpk1eOVpwUsCfBiXUHmUhTaygJgXrNqnaU8gtKlIGoVJwAh0/BnDnSweoC6Bcg&#xa;RjMwR2XiuqHQJZ7yILIvb6m71CKSkXO9vvpXRyBSTdEmmmHTzl2NipEGgDik+QacfG1q33LLeo&#xa;jalWecPgCUHVzqGhYg3k1h6wsPYBJLX2Dpmi2b5Owj2kWlx7BE973mDfWEujJlORQkv5EwxkHa&#xa;l0m3J/9AJGEd3ptMMQnHXh2E+s709DslNshZv2acBpLn3gwcUgjIh1R0WUwSJ9g6nQyppK8IUk&#xa;N8Fo1bUEf9uip/vMh7Si0PeZCpXrIuMXEdrlBTQJwmfySYqIhE+bnhtP9WjfwT4Xfz5AgscJTX&#xa;bpqUThpz2ozdvl6bAPVKmvuXOZNErh9mh1BviMqib8v3bzLR+HPJnAVV0R++QZyjiXgDz8PAR6&#xa;haANKFk1g8XlW+hl7SRpXiMepuLR4flTuTRLzFrEruS+Pj99P4zSA1JtCB2zu7SGPdKvnFccQ2&#xa;Wjfm95T6GYAv/UsqhGxxeOO+ARq+NBH8Vj2iWrLX2AerdBr9nPhfIRpvD6CkeRtPKbMbAZuA24&#xa;bVei5M0y7KmoBpzkz98GCp6ipum0rV46BDkQ5LB9dodyXYldk0Q9oenfbXooh4MOC4/v7o2Qmf&#xa;2NEeHYImv6e05+yCL1Vjt883+Ut3bUuU378gIXNO2k4b0jzsu+QK5/7K2tF5yc9Gh8bIMNrLZB&#xa;vrPY7AwLJJ+w2LCnvpeOAw566jtIkYVbNDib7bLYJH8BUEsHCLiwFu3gAgAAeAgAAFBLAwQUAA&#xa;gICAA0u2lNAAAAAAAAAAAAAAAAKAAAAGxpYi9mcmVlcGxhbmVHVEQvbW92ZXIvUmV2aWV3VGFz&#xa;ay5ncm9vdnmFUM1OwzAMvucpwk7txW+w0yZxYiAYDxBSt1ikSeS4Y2jau5N0rHQTEz4kTvL9Od&#xa;HYD9OhbhkxOuPxfruGPuyQlaI+BhYduIPpGWxghEHIwRb38pqb9DcwuqEjD8kyRYHIYf8FT2VV&#xa;yjqTkn7GHeHn1qQPnZXQN0mvg8eHYq4PSulccXhzZHUSI3kb6bAJTc5LvnnkFaMRPAmtiasZwO&#xa;elPowipTLeuLkAhyBjsxyh0JsI5e6K8SJMvtN8ttiYvlCm2aFDKYdqcfGDNviWOrigLWo1ic+C&#xa;GLbvtMOfLOdYkC9dw+ihTKp/BylFAsLGpzZwj02xXy4vrCb0ceqore5mVvWV5K0U4wevSpaqvk&#xa;UAKQn+C8AoA/s5T50A6vgNUEsHCAyonRIeAQAAhQIAAFBLAwQUAAgICAA0u2lNAAAAAAAAAAAA&#xa;AAAAIwAAAGxpYi9mcmVlcGxhbmVHVEQvUmVwb3J0TW9kZWwuZ3Jvb3Z57Vptb9s4Ev7uX8EExV&#xa;puUya9RbFALkmRbdxucGkLNC6KQxAUlEXb2siSVqLj+Lr57zfDF4nUSyMre8Xhrvxik5oZDocz&#xa;zwwlpmx6w+aczDLO04jF/O3kbDAIl2mSCZJkc1o8oNMk43QlwohO+J34BH/yZsI0Ws3DmObTLE&#xa;wFTbPkbkNfJ/Etz0ToR/yMCV5M8Tu7ZVSAPIrDb5JsyUT92SWMKMYminDJgQxHWERfL7IkTj7F&#xa;oRgM9p8+HZCn5F0S8IjMkoyIhbtSmnEpJ0W1gRSpX2cc5gmIvyHzlKUpSWLyt4MXL+nBz/TgJU&#xa;Wy/cFgGrE8Jx8lu5L/dUCgXYS5IGwqwiTGv+VYkMS8GIGp37H0I2cBz8jS/BvIZ5ciC+M5EUnA&#xa;NmhockwKe9M5F9jxdp1V3IZ8TdcLHlPJtTtyBC3C/DPnN9vLAsYva+AEeVKgNCc2MBKLpqsI7C&#xa;RNGqNo3AbZU6sn+SJZRWBGGGQ3PCZTlnGSzIwEj4dAnJE1C8WnGBQiAYjbI3qXghXXA+tFOF1w&#xa;cB4yTZY8J7Mwy8VIi9mXvwGfwST5DToILPGr7JDnJ4pIE+Ca4CE+uhpiZ3jtPi8UKYjMiEUpp5&#xa;BWBrKYr+WAN6LTiLNsAibwRi4tzqT1ildRVHloZmiiCGfEU0ofl94wsgXK0YKeRzkvmcI4Fyye&#xa;8mQmp3L48O/DbJWQrUmgUxbxOGCZjMCBq3dhzLoelTUX/QaNmqTU1WoT+C0Fd4rF/PQT2XFEjH&#xa;Qom5Zxscpiyz9eHWpjwR87usqdv3e3GSTcsvrGtk2vyLWVJVrWLOOo38puj7syalOQo4odX5WP&#xa;DlskacMoWZT/sWJR7kmfHAF7CWCHtgHu61iSLFPEBgy6nPgsB/AF/EAUkHGMMADooQEnIMxPbn&#xa;lr/CtpTACOIBKwPeJXkYCt4RFrBAEfH/m1R2hybwf4cLf89Yj8+SdIMUuGgRafOWjzCBY04oHf&#xa;PNwRb1BL0LEWcXIytq57ERrCwRZJ2YIqmtj2d4uePCO/OIr4DYrI5fkNivhVRfxvKOI3KOK3K4&#xa;I6KqPi7vlFr2XLYJlHxye2lvdVcdIJgpHheP7CRRZFYRG8qEYMUMg5gpaIuMSaRIUDm0LZFaiC&#xa;gKRZmGSh2BAWByrp6lwr8U0xuxGBkrpERKoiwkwwvEZsG74cusGRquBop9JxkioTpSpO0iJO0r&#xa;Y4qQevh2o2AaoxYapMmNomtMoxz54JfYUWZRYswq6/qHFTZzP2nz+qaSFQWGa5qopgSrIMYd9A&#xa;D/n0NgkD9RxU8fwkgYiOobqJBM/OoFi0FwCSxncp7jqLNySGBeZkDfWT4wRQcGViAUQFW7FkqN&#xa;1l0rw0JN7o7wNb+lsuHFkRVKp5QVDWs2C7UigUkKfFE8/SvPQaXfRW2c70uDdytHgTQpBak1WX&#xa;yCDnW77uaEY5my7AvUNxNUQScM7jwq+8EDDi3t5g9Gc4mfzOp0IpYlkb9qNMkFdik3Lwck08JC&#xa;wnH3z8W6YHlHAEXCdkniWrNEe2a1vckeLYk5QnJGa/bt4iJUZduQLJ/OtGL8JMeG05v81Y/Kc5&#xa;wgUyQfmvin5IECK5SNY8ew3p1Bs1idAGc8Lxhm/2CKwbim8LIerLDOG4VVllseVg2Okqq2l5Bb&#xa;KvjaoagxogSsW9pa9pRmaT2qYptY6OyBU6nhw6lLbE7vB6r5GpbLLgQUbFZLoPM8qjTzmbcr+H&#xa;mAowP9TbbUD1IUYdomY21X2YDVHj/KxgU90uRkmItTbodjOkw8M76AcQhWd9w6S7HSaD2vQN5D&#xa;Yzmep245M1bcmnD3sPcQZcMDhAF86lul12QABuk3IHoDusRxC2+mg9IjTWoLuLUEQAUjJ8ZRAc&#xa;qp9SjJNAIcKvhopdwqT621zXV0ETciufA6R2Q010lzbEbANLiRmfF8kbLNmaANL7WroiuR/VeZ&#xa;ULPMhvPKVJxpleJmp3eO2gp1Zte/zE6ggoqjWQaWhdeKzzJfyjeRqFwhvuDUdPKeD60qr1K7Na&#xa;GbDVCe1l0XQlICnuOYNXoYCKjni1sWdqTSO6isM/VphPDvVI42R1V71v8MPKTv0wZz9zOva0vN&#xa;ZRb+sKoeD8bkVCYaHvUCfg9HCWPgcFUb9exYJsvSsG2XqVDbL1rh1k61lAyNazipCtV1kgW9/a&#xa;QDZdSJPCWLqu7qZz7ypBtr6lgmyPqhewIUKWmRLO5EVH4x/ZkcjYBqFSCRUnRshxKaMjWDmKFC&#xa;nXKGMG+ihUCDt2ZW2jmDkxaKn/tWWXdvluVZeJj16Vl0TP1tpJH06LCLRW6AhoqJsKwf1S/c43&#xa;/KI81GIiLmXVE+q9eo/YsWR4ZdUMj60VSv1MoaDOxapKcPu6Qviryqwfrwx+vDL4rq8MeuT5Pu&#xa;8Z+mb2H68M7NyFL/E73QrQoA/HFpbn4Tzmwe7oP574MDKiMO78vgF8bau0h3MgxPBAw76V8xqg&#xa;p+krhbVYebKwELeUXEmg+hX1/wfItpy3eh+3HnXa6n3YetRZ6xFHrV4nLQWmW2CpbAZQ+5yUzB&#xa;mtzxHNAPKWeCybgdbHnLAef8DCFFeesGRvq7OV5Di22HuernQ+ss9XZmjLo5VhO64K+l87Xqmv&#xa;xp/DOEjW9OzD+/GXyfm78cX5+7H8fjnRCchTKUXiiG1EeTZRg3qKdoF0fPrx4nz8sWCW1zsC9c&#xa;YO/2MOpjHecYzCf8n7TZ4SDSlN3Zs0nPv7+r6DSPBinLxBg99LXdHm5kj59VVdqrDFQKjmIX4X&#xa;V8QwE78DoIo28rs5se9gONT4cAlhvkAWc/dCDfh8lmTlV1r53YBtMDOV1zPp2ek/L6nPxZrz2E&#xa;MbgG7n8ls8JPo9JdEeKk9BgMGxiGKyG4QzLfmJJH9+8kQb8wmO7jqbJOmOyEE1AgSotJZ3a84j&#xa;fAcZnWbz1ZLHYnw35SkCtrcrpc6yZElmK9hjDvPBtuw2XVCwpnrRxSUmH8AQTdy/dOG+OL2cfP&#xa;k8Hv+jScLPB51FvPvwfvJbNVY6OrL9dcgOmE7Vmszg276oOGrXzHxj9zdnli4gwdxFsL4CYU7F&#xa;csfRGgft4gKKnlG1PmIUvyfosJsknk8lspZO4M6+fUlXR8GHKnR7DXT3GepToKac5q9DzfvBvw&#xa;FQSwcI6RQv4SkJAAA2LgAAUEsDBBQACAgIADS7aU0AAAAAAAAAAAAAAAAkAAAAbGliL2ZyZWVw&#xa;bGFuZUdURC9SZXBvcnRXaW5kb3cuZ3Jvb3Z55Tz9c9rIkj/bf8WEV/cQCRa2k9y7xZvkYSAJWW&#xa;xcBsdJ5VKUkAbQs5BU0mDM8/p/v+6ZkTRCEh+xXXd1q62skdTT3dPT018zI98wb4wJJeOAUt8x&#xa;XPpp0Nrft2e+FzAyCTzvdqmHC9ud6H38/+ncdiwaRAD/Mm6N8Z1u+L5jmwazPVe/cAw29oLZCs&#xa;iIGm6o3xrOnOrNqeFOaNcOGXUzuFTA3iikwa0xcuhXvF+BND3XnAcBdZl+7QU3GUx0NqKWZP7L&#xa;x28X0DlnBSQ0gQO9j//PfbOgI/2ajtruxF4P8dWmi+i9S1loGj7VETA0A9tn+pd+b/QvarIIxg&#xa;smeixy6ElA9bkNf+GtCx0K9avOwPOccB08sx19QO/YFfwoABxTg80DGuo4IgbTP/I/jFotg9EN&#xa;TWaeBUPluSzwHCcRbhrad+YgGl328mP0vM/vT42QNh0jLGAu3dYPvLulLhqKHqnyvpPj+FJ9qB&#xa;sLlvPEMpjBAtCiMQ30pmP7I88IrAwYvUXNaZiotW38XQDxB12ue31tu5a3aFiGz9IamIHJYnFt&#xa;Tx/bDtU/wv/C/Fd9ZrgW8N/0/GXPR2ZTcFwLHG8yQel0gZyz5jX8BR73TRwTckkRTLBG7vcJXC&#xa;EIzjYJdecz8rXTvpaP8bq47H1pNwdVcv25VyXN3vmg/Y3ftc+rpNU7bw86Z+1u57xdJY3T3tWA&#xa;N3zY5384PoQZRkAK4kGv1fhejW+7jf5geN1u/7Hy6Awofk6etRuX3U77cl8l4wf2Lah11Iszw/&#xa;+9zwLoeJVcXXbfExsMRtMwp5S8gzm6IJ+NcIpA77WK2vux7RoOES0Js5mD8GUwi+QcJhsRChOW&#xa;C5t8Hpx1h5/bjVb7Ehv+/qLVaw6+X7TJlM0ccnF12u00SemgVrt+3azVWoD3GzYhR/ohR2GyWq&#xa;19XiJl8iruLl7l0pQxv16rLRYLffFah8lUG1zW7hDtEeKRPw9CjkS3mFV6/99uMaPsjn2lAfJ4&#xa;rB/qR2sBry47CKhwYLMFGN1Qn85roEL0Tvenfi2e3AcTZr0SGP35CJxDLuKPl+32RbcBigHiHb&#xa;baHxtX3cGQax4QU13S0KJjY+6w4S0Y2h3xXrbP2men7cshV6SLXr8z6PTOMxQCOkOPEQxhdrCh&#xa;74U2DvRGWqeNfnvY7PcRX+3l7y9+NFuNQePHyxqOX3oAR561JPeZcYV/pud4Qf1vh/w6yYMYgy&#xa;E+GBsz21nWycCYejOj2ghsw6mWPlPnlgJfBijonJaq8X01BCN4AC7UHhfjDO1/0zo5OvJZFuYh&#xa;82R6RO6TZkdvD//jRKBZUHsyZfWR51gnOc2OU82O327XzCD3DObcgUXB4/Hwok5ccJAnqsD+8Y&#xa;+clnNHN/hEdSDKIPcE/8DEWDo0wpBto1vwogNGAuB9w7JgdA8Czh45orO8BmBxvMBmS9nIoWOA&#xa;PaazExKpT90YhZ4zZ/kEoRn2b4WmRAMDssIGPFqDZYCmagdUJ2RhW2xaP37j3+VIUF8YNlNH7T&#xa;cc65kRgCsReF8fQ8PoCfP8OiDKkyplBrhzcq+2PfovbCt5qr/FmxFEohBwzl3rQIxuMBlpx28O&#xa;q8dv4d+bw8pJmpccUq4H5h+uXyP1dhdS3i0NrDkl9xlcJEJ2hP8AWU7r0ZwxcCLk3rJDMEDLug&#xa;2KClZz5HjmzcnY8QxW5wO1wkgBsUPgWvyrnEQdxcFRYA6r8F8lpye1lz9/vgdrlXKhRYEcxoNj&#xa;e3IReD4NmE1DmIj4INVYBBZnED46JOC/U6+/fAyMGQW9sV3+a+WliNPhgYfxMt6kAGSsTRYy5l&#xa;bfnXKpfgL5+IRPCpcNlj7lD9JUmlNq3px6d8QcQegFgVsLpn4URYASmRAikxEE4JCMkHDqLc7h&#xa;YbjynvupkDr8jjOjelBwWGRCWceFe9ekWkWJeZKomsgMRnnyTnmtZ17HOBB/oIRw8QsWLBVSeK&#xa;lggD6DUwc+PzFLDQhlSITXA4HMzpwSrX1nUh6AElpZTwGjqwJseGUZmIGNEAqWZQXw3acJPCS8&#xa;7SccQNbiZiWyEhtK5QMqZ5H+absqO9dsVQLiMUo2eR+/jLQoCi+6EF1cSO8QA9ljor2IZ8SqdG&#xa;WkIUOgWO2LB1zqRwQNnKGuiqS6N9YEmyhq2belVhyJVSo68wQHK8O4jWIUcCKziSLMeIlkBZls&#xa;gMNezrx5KB5pFUxoNJ7r6NeNy/PO+acqKTUNF8w/2PkgpBFJgtEizljeyXqJvCK79b0KPUr3OR&#xa;3StewZdUPsOWSxlLp9MNTQR0zdb2wIwQUb0W0Ck0Jiu4ygSnyDlhrcVIiWQOrcSZMaOfpP8pK8&#xa;ruS2/J7bcspjq3VNEWw91TdrWm6gKpuu2InsJIjnDQ7KqZgtBWOTH8ln2fOFMHOpfVCoddxEC9&#xa;LJQCoHGN6Vq2KEKqQufuSR/P6UJJeS5PeI5PcMyVCO3pPRXCBNrhOcKP+VS/VJezqNqH6PqX5P&#xa;a41aedSpxeTPHFMjLeUccp4LAxT4HVEKSroJpgNftewAfLYXLNfZH/SvWDEQDuMdsWfGhIfXWo&#xa;z9FSnVAhp688CkYY0DhDW1pweIQPfdSami89f7GTKx0QcSY+6OeMmhLioP1Qx8PBSAuYMo6wmX&#xa;xdDSEDUdL6Q9GBKZSwlvqLc6fZhL7WHvfNjswo9iPBgK1cnYcMJcS4/XyAss1IqlN2c5YsXLxw&#xa;gPvVDIAug+C+vkVGmln/cuB5+L8OM1CWxLUoAQdz5zAcNRlQTeAn/kE8VrNSgEmY+SmLGAW7wC&#xa;w7I9EV5qhUCxBBKU9QzJYtlGl8hbm95sZrhWPe0vXVSQymYcmA/WSemIHBB0enGVGOcl3mglVU&#xa;11Zox0GXDrXO9K29AAUz2w/QEntRMFaMhsfxsaM5fOPNc260Qzp0ZQIeWj8uZWUUxeT4ce70hJ&#xa;yrG07Shc0AAr54gKY1DoUjhtihGFgP6hEMv/XU26/tzbVYuOd9CixdR7Rg3i2B+jPceP0h6Q3V&#xa;9Yc2TNf1fteb2D9shK1jNqUEzhMVr0+lFaJOX4F9YkXDTaVY3e7GSEqPusVgjRP0aB3jzSDLXP&#xa;/8Laoy427qpFb3fQIlwNGDJI8LEy+4zqtELnMXr1dgu9+v+qFnzVeVd9+LCDPhgjzE2eTw8k/s&#xa;eM/4f/pfHPh9+U5jXb4AgvnyPPUxYPZDU6WldYk+NFG5f0kLLODDc02ax9ZzNNpLvZ1D26xHJw&#xa;qmQtK9xxAZtN7XAz4WDudg1GA61YInjJpQ/ZM7kgsqZjKxLB/vEdTxo2F78kysp6JPFOKELFn3&#xa;cRL6jW4tUGPkRDBO96hiW2bWkVHddMaFwtquiGZUXbwziX6R1jv4t2uDWG0ffaOg2Krn/2bmkA&#xa;2kQ3Qt56tkVMTs/SVjag/f6BwNylrhWSFAvEi+GqqTfEcyzecuUx9Ik/3oZ1vHB9IGqDMYCKTO&#xa;9fNZvtdqvd2hYbXtGGNLKwsQIrx4XeUXPO5EKIVlpw/S1ViBHGDbamsMC9XZSd8SqhVjJ8v1QV&#xa;c7H/Gcy2Aw/Fak01PV04NUFrvS5FV7G12g7iYSuVdUBfIwtZGvRaPdxIEPmuUjGKhwLL8YBKrv&#xa;1a3USdzgXoNxnfPnjLtTW2kXcnTa9xZ/PW8l7/Nmx86/SLeyycu8a28nwCWJcuaBu3l3VgW2nJ&#xa;qpPbrDRP20PT85fP2L14nyMx4RfMaNXiI2NiDQpsK9z0l2BIZ3GTLYSBFxohjvwFeJ654+xibs&#xa;KFzZcKV2M9zg3PdKDTaPjVyG4XAniZRkjz6qV1NDBy4PnKBVqdaFqhU9EqJ2QUUOPmF8klRbV8&#xa;Uhb0cAKm+ilopcsw+fRkleNpuhbn6vm0oszlKYjlpHYFAoWcaSAJ/xpRmVQ/g2psdkdxx2EyoY&#xa;uU9EMNZ+Qpzki0J7oJZBkdyJ3MGFxoCbPViNeZ4V9SAwx7NdmoAh6CT9CtOZG7zXXbFRvFYQ6e&#xa;0TA0JjTHQ6UW8/SZgOP2bejdlDfEkLtJKV4dA+f3MfCeyG5vRIGqB9mhAB+auH/H2aLisps/EF&#xa;ifzyMkssNNZrhTg29A5/G0siFdi+Gq6mP9unPe6l3zBcHO+actRnWN3NVdVrjcL3df7eZAxxzF&#xa;EKf+NlJL6mfFuwvSy9IKgfLzDYvkxo93Ff0o5uInCEvynCxV40YSvuSsR13cbsY9ZQD0ayOI9m&#xa;mIezTD3QYwtmvPNigxBVzoz8j35Mlkl7V66Sfpu1qNeC5p95vkhi7BW3ghFXsEUlDJPAfhX3oe&#xa;D/lEnNdx/Tk7M3ztSzM6WcQd+rBzPvzYa171262hmOcVHSDzDeMfdAma591w/PGNFh2L0b/+MQ&#xa;QWGxftKjkEx7Oj+ats2xdx7gI7I3h9EjOLtrAxwhTJlATWVhM2VxF49WBFCTXljFH+Drl8ETyv&#xa;2c53wA9F4wHJqiCTqsukDj/lio4LRNQRcPcJGjCF3WJx8GTjcdvC1kl6dVtQYo65cm3aDNYBO4&#xa;C7E2OjnAjqbo3MH0F1uZ7q8nmoLtZT5bsEn4fydD1lscuwgHS+aieNb+3QHvFjXby0u8kmr1RY&#xa;EjwhVjHFsVcNtxxW+S7AohmEZVf731Tj2/aqYh+dsss6/iV3Mqf3xz/sCyb4dMrU65WtyEqkFf&#xa;uvtTss18RACksiLcK9tWiBc6mAmPb25AY8mebDA3V/fM4+5HQxIIwqAR9WCgGISFYQVITY8729&#xa;vVQiHq8n4fDyZIancbmZeDaJUo/khGpGhXT2RCKYoijT8fVUU/n4ExBFH76eYjorfwKSamq+Qc&#xa;Sp3PwJSPOVvfo+fz0wJuIcpVj8gFutjPflis7f7+2Bo2pObceC50CuzNcSoplS5ifAwLJEh/aq&#xa;5AcD7auTMnJUM8Ow/FPwgUj1BBce3YN2P+QRsnLqgNXxW/8uare3pxJMeDyC1uX4pMGfq3z5ho&#xa;sAMAVVKvKU23j8+vXhIVDII1GeHmPLrzTg+9DL5JU82JkP/AaBR0vyiQYT6izJheH75XzQtxwU&#xa;hsHCMJRNKfECe8IXu0zPogSwNOZ3tjMPiSgohqTbbRYg43S7tkldxDd3cf/up/Mr8umiSyLeX+&#xa;e3NXCDMD+CCqKZgvGry1sp8kQZ1aO3r7ieqDt8C9RL1grr+DSqCq3gzSp5qkK0m44/wL+8JT+g&#xa;GK2m5Sw5SGYqOWABRUDeQRm+5R+Ivrrs8hNJeAza85dwq0lzjTuIz1cOniA0uCKw1ZgTRUen0Y&#xa;NoMXgMjNFaBJxfHN71OAcuD0asEeYRUC+fmMgCP8aRZQGv/JMwPAuCnlJjRmzltzAhKIbSaI4L&#xa;UvVa7ah+FG3kRhJhLUVMB5/pitY5OSAe4ud8tmiIWoP3UREPnuJtLDroYc6aUdSYuylGey5ff8&#xa;6nFPKKm6Z0qJq0Zx5uUEfNzH4+QL/E0LnZHra/dfoDTBIy+BWkOk87c3iIdUMhCnNSq/C/3ZwW&#xa;iRJh8JdIQmD6tbNFv3hKCCeMUC2YhUQd45wTP9lf8WEzZHzNjJPTSzEfED3xs8jV1OcJxN/3JG&#xa;01MucPVQEUOkKwkXczB3dKlLPfCzj67bffxGcC0F+lcIHdAlwrbk+40BgQb3/Bn2bbC+x8L005&#xa;zQc/I6/0iTveBKTFV8/jQ4Z4CyNtgpwCjDkUrUMp/yjjYVkfmNApKN61zaYd/FYBuSc2DAH/bg&#xa;E5eJ8abySo8GjZtyhS/skM6JY8uAu90nOTjFW/tdviYOTeyn+Dpp5rOrZ5A3fgojnEwEuW7NDP&#xa;C/5fkXJlK34w6HhKpkUkvp5tAdPjdZsMyylmcPCjr22sjAFEOCtnvMZyJVHOFf2GLvsUFzfxKS&#xa;ROoWbD4Av9+skLAVlbiy8VIvZsogx0afVQfQm8eGDWVx1oigvuGxW6eEBInP4ByyM2jtWJAvCz&#xa;yNKk+ZNDozTEHRLCZmRlaM6DDpjkrBTn3DaUeQfLODzx9xFWhwIp2RjPyXmTY3eR0iIwfHGcGA&#xa;kqlBy7nGP9YcwQcfTNBJRPfn0G8RYPjPrNhYJBKY0hADngVj1FMBmPn1n+skWDFT4a5XWKzsDr&#xa;OBQTYq1UlpRdiJI7LU63XOJztLBX0acnCnrEJSeXBD5A6ECgydwtcQ3jtXhqldb2LpI+5oWAw5&#xa;an0r0xSX0Sivz970TTUo8qJGlX0UcUnBnVwALDrIoElNQShHJBpC8/j5CjB5wNOW1SmvwBZHhD&#xa;XSyRlKtluBWqx2vfKzZa7dUGOwBP1hYC1yubgnxbA4AEcyc+vMgZmHzVe6Qyjj3HwUqte7NBGS&#xa;8COo4Gmw+MMAppC5M7+SP7aExUb83z2JwWTznoCeVUKPLPHF0rBsdR2kLqL5DvxdTDaVdPxiCi&#xa;CeZUSlfAgGh/5rAhsVC3CM19goYDvcJP7xTgSaSYgyrpbEFrmbcWMYLRcDm2mxK02JrgJ2LAWA&#xa;C2P/8k0YMrF0KHLax7RFREWLwpkl5B/IGkuUregK6XK2oDSZg3mePvVKPoLW+mRHSc7lb+AHud&#xa;G4vniUZ+9aZYDilZ5MaaCYrMVJWJu7DNCdwO1fCIT74c+xguEcFGFiMqj1wUTX7FeYrUIox1FL&#xa;sjE7T19SCBMSmr49ju/DEQVXDy4yJ8iTbysGAdUx8bka3iNilgZWWCBXOa4VAW/lMVf1F6Sn10&#xa;hX+AREmFcKzj5YQPERFZPM8sbe/tPRDqhDR6nS79y83wWMZSuItSVczD58z76DkWX6lN8cmHZN&#xa;uFCAPQDMGPWcOZ4ZfjwXrY/x9QSwcIZvDSyLITAACxVAAAUEsDBBQACAgIADS7aU0AAAAAAAAA&#xa;AAAAAAAbAAAAbGliL2ZyZWVwbGFuZUdURC9UYWcuZ3Jvb3Z5vVbbbts4EH33V8y+1BZqSNtun9&#xa;IkgJvNxUDiGLbSItjtAy2NJG5pSiApG0LRf++QkmLZcZwiaJYwDGk4c3jOXGgHwclLVy8I4EIh&#xa;FoJJhMvw77dkscazvKgUTzMDg8h7/+e7D3CJKkVRwZQVReMUZlxDofJUsSXQY0JIoPPErJnCI6&#xa;jyEiImQWHMtVF8URoEboDJOMgVLPOYJ5XFIVspY1RgMgSDaqkhT9zL5eSODpaomIBpuRA8gmse&#xa;odQIjI62Fp1hDAuHYyOsGpg3HOAiJ2BmeC6HgJz2FaxQaXqHv9ozGsAh5MqCMFmBYGbj6T+hdi&#xa;MqBi4dVJYXJCBjxkpacyFggVBqTEoxtBDkDF/G4dXtXQijyT18Gc1mo0l4/5GcTZbTLq6whuLL&#xa;QnBCJhmKSVMRW4twcz47u6KQ0afx9Ti8J85wMQ4n5/M5XNzOYATT0Swcn91dj2YwvZtNb+fnPs&#xa;AcLS20AAcymriiUNZiNIwL3Qq/pzpqYidiyNgKqZ4R8hVxYxBRmzxfK5dWkcvUySTnTSKJ3DgB&#xa;mZshaCJ5nBlTHAXBer32U1n6uUoDUYPo4LQh9PJuL1j0jaXoGtW1PHV8rxcJpjWELIXvPaA1p7&#xa;ISV8PSCVuiM8WYkFZpUBo4gX++OuMNK6BgJEJb29HXnrMSzqAJHW67yFIIrznDLpsHv3Gl7e55&#xa;dvEEBnVsN+gh8AG2fnhw+NGrvx+TuV38h5FpdQwPE2vDvC0+TewuIRbHZ/VO6+GbvE7jwPN2qL&#xa;2KNlu9/0XYK6rpnrZbq4ONROP1GVUF2l4adAMzyY279NxIX4U310Ag3HDUcHwKdAviH9td2FaN&#xa;GOypoK/stEQ4EmLQf9MfQv8NWxYf+9sbx25DmF37qbOn1u79npTZpdCUSjrvPWmcKiTpS2boch&#xa;5s5vnR9HV12/1fhG+rZF9fAfbJiT3YBQ0Zu4Pr7enYmQzv97DNuIh/8ao7wO1llFi6t+r0+6tM&#xa;1Vb8G1bD9jZfMVFil1J9rl+UZuD8aocuats3D3PQia5Nn0pKAf1TIFYU3qjb2hpsUScnn/4+oY&#xa;ztuHjt86MbqeGGLMp2pmMHBPregW1ufJJ2yKN/8m//OYhOYp4A2cL48ZTg045TW99nFfK9F+5u&#xa;KoPHudx7bNM9TfimsG3V6fMTUEsHCOS0k+5mAwAATQsAAFBLAQIUABQACAgIAG1Dak0AAAAAAg&#xa;AAAAAAAAARAAAAAAAAAAAAAAAAAAAAAABsaWIvZnJlZXBsYW5lR1REL1BLAQIUABQACAgIADS7&#xa;aU2aF01V0gUAAL4ZAAAlAAAAAAAAAAAAAAAAAEEAAABsaWIvZnJlZXBsYW5lR1REL0NsaXBCb2&#xa;FyZFV0aWwuZ3Jvb3Z5UEsBAhQAFAAICAgANLtpTUY1SzNHBgAA1BsAACAAAAAAAAAAAAAAAAAA&#xa;ZgYAAGxpYi9mcmVlcGxhbmVHVEQvRGF0ZVV0aWwuZ3Jvb3Z5UEsBAhQAFAAICAgAbUNqTQAAAA&#xa;ACAAAAAAAAABgAAAAAAAAAAAAAAAAA+wwAAGxpYi9mcmVlcGxhbmVHVEQvZWRpdG9yL1BLAQIU&#xa;ABQACAgIAOhVak1dgWGDGQgAAMgnAAArAAAAAAAAAAAAAAAAAEMNAABsaWIvZnJlZXBsYW5lR1&#xa;REL2VkaXRvci9BY3Rpb25FZGl0b3IuZ3Jvb3Z5UEsBAhQAFAAICAgANLtpTRcxLvykCAAAPyoA&#xa;ADQAAAAAAAAAAAAAAAAAtRUAAGxpYi9mcmVlcGxhbmVHVEQvZWRpdG9yL011bHRpbm9kZUFjdG&#xa;lvbkVkaXRvci5ncm9vdnlQSwECFAAUAAgICAA0u2lNZ6taGNYAAAAnAgAALAAAAAAAAAAAAAAA&#xa;AAC7HgAAbGliL2ZyZWVwbGFuZUdURC9HVERNYXBDaGFuZ2VMaXN0ZW5lci5ncm9vdnlQSwECFA&#xa;AUAAgICAByWWpN/0nF4qISAABuXQAAJAAAAAAAAAAAAAAAAADrHwAAbGliL2ZyZWVwbGFuZUdU&#xa;RC9HVERNYXBSZWFkZXIuZ3Jvb3Z5UEsBAhQAFAAICAgA5VRqTSgJXNWCAwAAsAwAAC0AAAAAAA&#xa;AAAAAAAAAA3zIAAGxpYi9mcmVlcGxhbmVHVEQvR1RETm9kZUNoYW5nZUxpc3RlbmVyLmdyb292&#xa;eVBLAQIUABQACAgIADS7aU3CGc4FrwUAALMZAAAhAAAAAAAAAAAAAAAAALw2AABsaWIvZnJlZX&#xa;BsYW5lR1REL0pTSGFuZGxlci5ncm9vdnlQSwECFAAUAAgICABtQ2pNAAAAAAIAAAAAAAAAFwAA&#xa;AAAAAAAAAAAAAAC6PAAAbGliL2ZyZWVwbGFuZUdURC9tb3Zlci9QSwECFAAUAAgICAA0u2lN6C&#xa;aBPx0BAACQAgAAKQAAAAAAAAAAAAAAAAABPQAAbGliL2ZyZWVwbGFuZUdURC9tb3Zlci9BcmNo&#xa;aXZlVGFzay5ncm9vdnlQSwECFAAUAAgICAA0u2lNuLAW7eACAAB4CAAAJwAAAAAAAAAAAAAAAA&#xa;B1PgAAbGliL2ZyZWVwbGFuZUdURC9tb3Zlci9Eb25lTW92ZXIuZ3Jvb3Z5UEsBAhQAFAAICAgA&#xa;NLtpTQyonRIeAQAAhQIAACgAAAAAAAAAAAAAAAAAqkEAAGxpYi9mcmVlcGxhbmVHVEQvbW92ZX&#xa;IvUmV2aWV3VGFzay5ncm9vdnlQSwECFAAUAAgICAA0u2lN6RQv4SkJAAA2LgAAIwAAAAAAAAAA&#xa;AAAAAAAeQwAAbGliL2ZyZWVwbGFuZUdURC9SZXBvcnRNb2RlbC5ncm9vdnlQSwECFAAUAAgICA&#xa;A0u2lNZvDSyLITAACxVAAAJAAAAAAAAAAAAAAAAACYTAAAbGliL2ZyZWVwbGFuZUdURC9SZXBv&#xa;cnRXaW5kb3cuZ3Jvb3Z5UEsBAhQAFAAICAgANLtpTeS0k+5mAwAATQsAABsAAAAAAAAAAAAAAA&#xa;AAnGAAAGxpYi9mcmVlcGxhbmVHVEQvVGFnLmdyb292eVBLBQYAAAAAEQARAGoFAABLZAAAAAA=&#xa;" ID="ID_1808370953" CREATED="1541845202051" MODIFIED="1541845202082"/>
</node>
<node TEXT="templates" FOLDED="true" ID="ID_1096097283" CREATED="1446325478471" MODIFIED="1497481445935" LINK="resources/zips/templates">
<node TEXT="UEsDBBQACAgIADS7aU0AAAAAAAAAAAAAAAAZAAAAdGVtcGxhdGVzL0dURF90ZW1wbGF0ZS5tbb&#xa;1ZbW/bOBL+3l/B0wLXO1xi68V68V4SXGo7jbFJXCQubnuHQ0BLlMWNLBokFa/319+QkmXZUr1x&#xa;UiQpWssi+QyHz8w8w54t8BI9Ey4oy86NmBOyTHFGkNVxOqZx8eHsL6enU4aeKVkhmVCBYpqSEx&#xa;SxVZYyHCE1Ay1oFiFYaEmzORIslivMCbqqFos5W6BEyuXP3W4F0REs5yGJGZ+TTkYkOj0FuIxF&#xa;BE1Hv07Pjds1klg8CQPdTAaXN+P/jIaPD9NvN6PH+9HVuXGZS7bAkoY3eM1y2UnJM0k7nDFpoP&#xa;Hw3BgPHy3fdmzX9VzLQIP70eV0BN9bduCYfccJTNd1DHQ7GY6vxvpFz3W8Xt/3XL/nqa3TkGXo&#xa;09fxzXR8d26oTcIejS68SRh7QneXtyOwEi8f5DolMOHDGbx/FOpJwCD9Qe9na3+xs2KItvVRDT&#xa;BeMnrJSURimpHIQF8mD+PpeAJWcTpP5OH5MAvnKXjl9vLXx3+Ph9Prc8MzTXDJ5GZyf278ZOof&#xa;A2nnnhtYPC7h/DK9bMwyWe50gFM64xTGweLgLpjxaXIDjotxKgg4fQqwg82jchOJ5mSz6oz8QQ&#xa;k3UGkAcCnTY7qV4S/ZhB7QiYjENBV6/gunZEySY8bHwG4JdDb2tpHQiDyqL/RiYcryqPJjbKpf&#xa;8M/15RcYej/5ejcErg6mzY2+cNfl0eeC8NPXHX65gmRLGm5P3AqCfjCrThxi8GnvsG/ojHDwAE&#xa;TAA85E89Alz8kxB1gaIvLZni1h6Dg19r2vLU1zPK/fN813soAuloxLXITabrpZE/FW2uxlyCOZ&#xa;cyi/7meOT5eDXz4XfK+CgcSh36v8WDosOMZJrRacWHV4x4njfQzv7Rh2HWPWc/r7GL23YzhbDM&#xa;W4GudKDPvtGL1ayOuffQzzTzi2+7BT3rqqCO7WwsqIESTIAUsZV/hf76YjsMDXUJyGCfBcQnlB&#xa;028qTQ5H08vxzYOun4lcpBcfEDpLCI7UB4TUU3fzeDZj0br4/mxZ/IvQNQP9AuIEdAiDTImqRy&#xa;rJAgQL4ygh6bJTTOvqeWfdYiVYWkPCh5pluzrkgS1IhNent3g9I8eIEUXVbcilJK4pE8vxfcvy&#xa;fbeuTHq2b9tu3w7swGxTJqbn2lYzVYQYjijCfFtzqyCMTRMC5LDj0fV4OBzdlUns1ccwVeoQ/m&#xa;DEScgWCzCJgD5kaQTHQTN9Ip+nQ7QgMmHRCTxjCUNB1giwSRRaD4H30JIJuWSgG0Fx6aIn0/XO&#xa;6dVhv/f9N1goxBlw4plobL3+CVpy9hsJAS8hoFFzoSSr5k4h75BIICOHuYShQJwVlQmKOJ4jDB&#xa;I34uxIGnXL0KnR6VyS3+VXCfqlMydyCg9/+1iJYnBQB2bHdN7BPEzoMxlSfocX5OPffxTzTC/o&#xa;+X0vaGOeAz/tzDP7dr/JvOJ0m7xTrHtX3pU0U0CYZqIW/opQK6iwSDKUqlQFrEuxJPxoRk1hTS&#xa;D2MiUSiF3QVTEsFzlO0zWaEaCzolvUQeN4B/gJjhdJjsMnxOLCsDIAVoqF21Xh8DKEYzBPz8cp&#xa;h62vYV3VgCnUhCxO9CuFDJQJNbkXms2vjhGVNZXHNtxHV56yuggdvU/FfhhBOZgilhA/wMzdUH&#xa;pzXAw07b/D8l0Z+x1qB57fs4HKToPZQOGiC9xjtmtCEwgdn7FPYD/UFfl9E2eG2FJpTJxu+AyH&#xa;ICQDhig/CbRKwBZU5ESUsJU+tG2bDcnjH8CJfA7ZNoETA48hFa/iaGKMYdbP6Etxvn/9yfLMf7&#xa;7971O9rNpTlfWhWJQkOmzJFEj4o8w4zjxF/8O2DaFSvbdVu2nosH13UGEQDhWxXgEFyYHP1adD&#xa;QIcN+NcZvfjvYHKnwvx/Z1168fJdZqpWvla3legD8FUu1dXDpgIGtmVbZuDYzTzhWpbr7VVA/c&#xa;Izfctv0V4L0F5WIaKbKa20gCwwTSt4xwscxwoUSgPdsW2lCJvolmP6LfX3Vi18GPyWEH2PUVOe&#xa;Xr8HjVOvBd/zPSdowwfLLL+JP+csX/6JAdcgnyt0z3EdM7BNvwnuQToO2sH7pttrAWeJWrqO3m&#xa;ZFNmO/v147FY1yzXlO3/EDx2uKp8B2e722C0UPfntu034SUdku2d+r8mjfqNKz0mIYfABKPSK4&#xa;qPfqykygOevUI/W7kgHaLHClCuGyPhXCgRXCH1Y5Onlo4xRWqepQRlYnKM/CFHMa040GK4WU0k&#xa;QSPxF9NY1gC4Ix/S/ArxELw5x3qlKrTIopF7KQUEmjSYGqFBJxfOHcd0+jq9jqqm2Dqm/H1QHA&#xa;Oyo/irrGKoTAm8VVWcqPuks/GAg2pEnX8s2m1nL7Vq/f77UGgmu19a8gbZ5A2T3C+bbFg4qI94&#xa;yHqonQ8fAMZGM5xIFKdULJd1VLn6mkoEc3EqloBKAByIiAqnyi40eAMaHMueoHrmoNngIQEGZc&#xa;hdlaXYTPtzqoIHNS8LZOhKIrzMtbSCwECylWCkC3qFQeTdVJFpKik9DxtFa1XhFShUGRCZQ3im&#xa;YD6JunUdlvUKmG4I1GzbOovG/Z9ANv69UxOBq8p00ockh7k66i6d2a8aIB+wG9+H498QNoQPot&#xa;5aQPr4Jmx6KiyGktJ8pE9b947d34uzYzJTNK1mzS925PvpWwKlY2jXLh51c26Pd6MkQVpFJI3r&#xa;BHqlspjj4TqUSQsi6bCygRGTmpaoPupDl7hpAEfMlZFXNgkGw2/T+wzXb32+yUgZU6ootue5MV&#xa;qlxSFAq1p8JVr4uAbu1G9+LD/wFQSwcIXMIu2BoIAAAEHgAAUEsBAhQAFAAICAgANLtpTVzCLt&#xa;gaCAAABB4AABkAAAAAAAAAAAAAAAAAAAAAAHRlbXBsYXRlcy9HVERfdGVtcGxhdGUubW1QSwUG&#xa;AAAAAAEAAQBHAAAAYQgAAAAA" ID="ID_914496448" CREATED="1541845202083" MODIFIED="1541845202086"/>
</node>
<node TEXT="scripts" FOLDED="true" ID="ID_1422985646" CREATED="1525898306772" MODIFIED="1525898306773">
<node TEXT="UEsDBBQACAgIAG1Dak0AAAAAAAAAAAAAAAANAAAAc2NyaXB0cy9pbml0LwMAUEsHCAAAAAACAA&#xa;AAAAAAAFBLAwQUAAgICAA0u2lNAAAAAAAAAAAAAAAAKAAAAHNjcmlwdHMvaW5pdC9BZGRHVERD&#xa;aGFuZ2VMaXN0ZW5lci5ncm9vdnmdkU1OBCEQhfecgsyq2dQNXJgxcaOz8gKV6dc9JPy0Ba0L49&#xa;2lk4k2gtFIwuLB96rqgfVLlKwnARbHAfdPd1T2KY44XjjMeLApI0CU7ZOPvPTBKDN9wjSB8ypI&#xa;5HmhzRNDlujc73yZhHa0qszaV+pGfwk6ryIIeXey1drLagxVSZqRm2hpMDTZMN46p9+ULsvmDT&#xa;w6TttdKlEcTuxBeF7ZpeHQe6GDUe8EPl+uRerGAh9f0JgGm4vt25A8ji0Y8Kp7bQdjOiHbn/5f&#xa;yrbOX2K2rp9ydshr0M6NMR9QSwcIheCtI9sAAADYAgAAUEsBAhQAFAAICAgAbUNqTQAAAAACAA&#xa;AAAAAAAA0AAAAAAAAAAAAAAAAAAAAAAHNjcmlwdHMvaW5pdC9QSwECFAAUAAgICAA0u2lNheCt&#xa;I9sAAADYAgAAKAAAAAAAAAAAAAAAAAA9AAAAc2NyaXB0cy9pbml0L0FkZEdURENoYW5nZUxpc3&#xa;RlbmVyLmdyb292eVBLBQYAAAAAAgACAJEAAABuAQAAAAA=" ID="ID_1123761669" CREATED="1541845202087" MODIFIED="1541845202093"/>
</node>
</node>
<node TEXT="images" FOLDED="true" POSITION="right" ID="ID_907142452" CREATED="1323172874273" MODIFIED="1541834958102" LINK="resources/images"><richcontent TYPE="NOTE">

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
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAAIAAAAB9CAYAAABqMmsMAAAABmJLR0QAAAAAAAD5Q7t/AAAACX&#xa;BIWXMAAAXNAAAFzQFttF+BAAAAB3RJTUUH3woJEAw0iSNLuAAAH7FJREFUeNrtnXm4FcWVwH99&#xa;730rj/Wxg0FAQEBkXx6bIEajSXCN4xaNa2KMBpdJMokkMYkjWUxG1IzjmIkyiBqNSwiZxBUQlN&#xa;U8dkQQUNmR7fH2e2/PH32X6urq7uq+9wHKq+/rr29X962urrPUOafOOQX5K4cA8wQ8ZtJcXIuR&#xa;p3aKgdqT4DvzUS4GLgfaAO8BjwC7PuuI1HiCUn/62HOCjNPjir7tBwZ/loF/+QkO/PRRdJzH6a&#xa;J0X9rFMAeW2Pr2z88yazTlitrh2ZZNQ/EmQ/iT4dKY1Kppqt9qIgxj6nfMgNKVjn4mgNhxRIA5&#xa;wJXtYrBhCHQsgHs/gvt3ZO6fDrx/rDuV64A8JVccHQHFEQGwbmcv9DNUaKVADNP9/IeecONW2z&#xa;+jwFeBuccJAboCDCq1gA9wdmsbAnQ6HggQyfG/14oV7aPQIioANhaFaFR9Tv/O1EeyRyRiv07X&#xa;RSIQNSCSOqKKs2G9/4aOyj7/5ThygBhAoYD0CdPBofgscYC4XLFvVIoKDeDXc6Hi/GP/RRUxi9&#xa;ZN2D0cOjungt8A9xyvsY4JCBA3vcfzREaADjIDv72zwL7rgZHnQGPDsf+iV7bCpT0tnloApRGo&#xa;SdqeuBv4V49JpknHOupO8p8pDuBQq2b2EhDglU3uwM+nRq4CYct2WXHPhOoxYLzjeKoaKG3mAO&#xa;EQ4McyGJcOIjP30rkHtCqHRPzYmWFkRPjrDri4W+byK23hrwdtT5Qch7GOfl4Q4D5ZEhzVSgDy&#xa;7A1QffjY2OPcmHgkAqPPg6X/AGDuADAWO56qw7JgHjcOkDgBECCoFvCGg5dWCNQ/9nw4vB/ije&#xa;qjUTjiORw6bUyfDcls317u7/iWIuBfjrkM4M4BEic6ApQBZ4sV/UugOCq08t1HINGod4jAaorn&#xa;a47AtT/IIMCF5cpvevZknwKCIECVXLF+ZKoFA5gx1wmoMMB1O8K0ccE3UvYDq587Rym/63cnsx&#xa;CoiwBfkCt+1kOY1xuALqeqgRUPiRRBAe52//EVGS7QpQi6FTq+bRrHZrXwM60GbpcrpvcQ5v5H&#xa;34R4g1rYO5YLsabL70gEkkkw4JNxYLzl+Od+oLxZDVSXJ+WKHWME4HfvByUt7Gofwn0ZGPKaQB&#xa;BzjOEBZLE9uc2HF8NtFdYzCTi/LfyfXS1slyJOPyo8MyUH6awsVklALfVBgK+optkUf612eUcC&#xa;a/1gZ1MiwHU2BToCXYsEYNz7v9BY763uGT5AzVXtMzXqRn8Zls4D4G+DwFjo+Eejx5RoAA8Dt+&#xa;VMce5q4B9y4HsvAbcAn+YbAdbJFTXjBeoecz7UHtUHupEDEuQCfBO46nvwzrzMJLxoMIxf5ejF&#xa;ZcALihZvzwfwfdTAsMUALsEyz58VkKd6Dn1nJFelC8vh5TMEBPj1a9b7vIBv5Ej1hAS8CgmW/g&#xa;1e+I/MNGEs0B6TjUC/04rh1f7QUzIf1Scd6w1OXm3CkQS0iUK71HLwoTgckGbOgxqSQFXCQp4E&#xa;8NhueDk7nZ0HvJovBHAMsTkZy7gSAe56DDp0z04Fbuv9pgdCGDkA3tSQC0zFcz+cCmYSkrC9Dk&#xa;5d6njDU8A3FFbDonu6wK9P5YQqB+PQbnnm8gfAL/OhBk6RK/7Yj6xlLQG07eRUwZLSdVxDlQuq&#xa;+onvEuviPu9O37/36QxC9CiGPiXeMk+qbAOL0rbWnVgIsPKo7fJQmPlDj/rPElj/vU9DrMBdsi&#xa;cA1eciBJo+v93q7r8K4vEMQhvzHW/aRcqDJ1XuAB5y61aRYS07+wl/LaNwV1e4LbV0/tud8Ohu&#xa;+3NtNcTyVlFLlqhKQGU11FvfVgucFlQjUL3OsXjaMEG4OOX0lATTqAZ+LsiQi67vxvpVCPGDWf&#xa;CLqzLTwhfbwmt2tbAL0BpIr2o9DPR1EwTrTajXMOPsi1tAy1w3wof1cmOhGEEcuDWMOqhCgArx&#xa;oiwKBYYwh1433QK+4aLzNwUymCGo3u88ZBJUzgcTXlWrhYck68J3sNy6z04JyL6EKhj+CoDrPe&#xa;wA8ZQqp2QwePsubAH+i5CexTEF67OVwxXCMIz/KtTXOAFvStKEDkKYLhKI4SPlmz5CoanJBc69&#xa;BlbMz7iPzR8Ek9Y43ng28KZwvTp1BC2tMwggWXFSpRrLvf64WgIHypj9/e6WFTVrTLnAWoZVAT&#xa;jpggBeXMBUaAm60r8fy3e7Fs+XfRte+j0YcFYb5VvfyJPSGvOxAxwXM7CMAGvlmzN6Chff+Knl&#xa;5mX4zPs692T1zcgT8L24gKquez8wDCvowIA9o6GTUy18BbgwX+PsMgUkjjcCyHovrw6UBrmkzF&#xa;KnVIDWRYSgAmMQwOvcU9Xd8gA89gMAOhbCacWw2a7qTSWPDqQuCNAx4DsayFOkUxoB/ihWlkQs&#xa;yTgDkFsesAPfDwkMD+AaGtzBj/rDAN6LU7RoDUctgf+DkWC83XQUF3VfCwhSChXySWgEcAg1NW&#xa;NFg3BPa6nXi5IjPkghP6tCjogkG4hTRNIFIZIKzpAMwQWu+j48/sPM//+lHJ77tGlZbh4m/rzI&#xa;JzFgkFgxoEQw9wIc3GPX+VWUngzAFZI+9YaCok1NCvejdrf2Cuzj+Gx/eG5REyFAfheDfgV8L1&#xa;8ICcB6Ocq/via71u/FvoNMCX7ThaEB6GRAqjcVU0b6f8/9xvbJ7ZY4B6pxRFZSMw2hqZQMmQ6C&#xa;NVP3MbPPvF8LY9Y4ESA9BfQphkVnpNohFQhrZgNf03Wj1sOuRlu3/jUfCNAKOGKTejbAX0QhcM&#xa;4MuPwuf3avA2gd4ONBvTrA1bmfRoCqA1CflfqWH3WuyH2/C8QiAvCCBLwaUNqolgHSHKA4Ygmg&#xa;fnLPzuFgOJFzO9AjFwSoShkiWqQr5x5MAVrU07eth1P6uLNwFeAjmtzCSxAMwur9uIXjvgHznr&#xa;S9d9QqZxdm9FAYq7yQQGGn9ZoCooYw3m4lxVXOLIXVNbY7X0hpBPW5TAEtJaZK/+WwYYRQsezv&#xa;0K2X5VsX0USCpIQI6XuRgKZgcqB4t2eSwPZ1toF/RGFJXzxAmpbeDT5xx5cvh1GjXKeAWP8R8P&#xa;Zy9wamdoP9VudWnankAnVhBcKYMCSzEMK9N9Za802XQoELLPs7DJ2szwXk64jQlp+2oKP3616n&#xa;uYBcX/m2rfnbt0i6lgFjWwv9+uVL0KBJaCKg67OCVVTBGWKRiHe7f/4QJhZnxu/5vvC1TY6nxq&#xa;JYyAsiBF6HFO/fdQmYE4WKnR/CoPFOAEfywP5VXMBvWddrbvfjBu/+LUvVJnRTCH71ovPrUWDE&#xa;OVl7SBAOIMgYyikgEvFv95p74BlLWL1M7b+8OAwXkJdjHM4QS45IFW8+oxfE0ejipKF6VhU61u&#xa;jyjNf/020kXP6fOSfgyP4sMkRglxTMPLSFYJswgD+vCh3KlmzMAjcigKgxPQVEI/7tfGO6xTJS&#xa;QS4fDFPC839yRYBZsl26olKinngj1Bx1AtstfCvXGD/5+XiASCI3pHh9ju2jS51Lwbw3RJi2On&#xa;SFdp1DB7V0Km+bpZ+Uh8HeRliTEua6du7k7wnVUAczns8g5GklUO5czL8+ZzsAmcj6bLlqA8wZ&#xa;IMzfi+fCxAu92TsSBXmZhsE9hsBrlS8pPJP0MA2L4m11lU1Jn7sfaiWHzif7SH17ag3U17oLpj&#xa;5CbL+ePRhyxgAq167n/h3w8gFLvko7hF4+9ctZY5vXAtnAMRArgrglL+yvUJqtK4Ehugjg1u0q&#xa;rGDQ7LeKDqEGcNoQizJUQp+brSDiw390SlLTUphUyQUGvDvP9qzCHQxTdH0f+UW45/HwI5kqq9&#xa;atZ8plV/PpQbvb3s1XX8HjDz7gRChXki2ES7tl+n/OWnjD6QlYDhzIBQFiWIESWYGwEHZUSBL9&#xa;iHOzI234GH/8KF+nmB6cQEcb+GQz7NqWqfvuZpj5if0Vm0dA71Khj3M2WzJDSMCLZdeevTzy5G&#xa;zeW7OeNq1acvlXL+Di87/ozVlU5a5zYO/HmecU3kzaPfN6aCZWQESmHKiAtoUCFyhrDX2GegPd&#xa;azVQxxZgugxKYFXQgPfeytQlkhCTBq5zIewaLSD4D2dBn2HhAJ5LsIvfc6YJ1w/K3HtuL1yx0f&#xa;GvM4E1uXbT2zvYAM6cYJGglx3AD/hBemEGXCxKH5srobY6c124ICuFZ5qbJExzCeCPlXoj1dR5&#xa;j1T333zWMtGnp7KQXMDvgetl1eLlgXBhewGYsRj0HeotDOoC39AEvqmQC1S2gPTvRBI2rcwMVk&#xa;0cWkirfVNaw+uDBep/aBEUFnqPkm696XHfDIgIGSExCjcOz4jsB+PQzpkGZw5wda6Mqh7LASHb&#xa;h4kSUHv0h6Ii/9VCfLQBMyAXMD2QQDw2VdqMPpEFCq4qflOn7jD9Oe+RauqAV7d7Yt329fCbmz&#xa;PfVf4OHGgM1hud6OCW8kLD9e+nIoXSZdsG6DVQfxk4CPsPKwukf9fW2oA/c4eziUVDpP79aI7d&#xa;MpdL4Guu7N8rGKZ7HyhpCTVVYFhqYcQ5FawFzsgVV+OSGRtzggTkdp2hrFUwyT+XuAA/t7D08f&#xa;Em26qmUu0T5ZqxX4VL7vAHfL6RIEywK0BBEXx3YuYbv7YOXtjvaKkTsDcsB1AahwoXQcN4UUXY&#xa;DcUl/tRv5HGw/DSAg3tt96YqZOLdY6Qp6KLb7IEvxwIJwgLfTFlmyzvDp1aM2fNnKJF8j1vPgn&#xa;T3P4FviRU1Y6EkKgmE5Z3tLUdcpoB8aQEqO0C67P0kU9eQgCJJSDqjBawZIfTtpvuh50DniqUX&#xa;sI0mQABTUzjMWEIjcO/UzP/+axd8y7laOBJYkSu+2roVM6BxnDwVdFJTvQ5F+UnIpoZhKP378K&#xa;dWAGiqrmCR0wfPnCyYt5MG/Px5b0oXOYWXEBtGCDRwj2byk4EAVi2EF2dmTN+RhUocMsJOAely&#xa;CfBiRjAw4ak9cF0noTMH9kLLNsHm/KBGE9MHCZKmBfxU3a4GJ/Bv7ozdEXX60+pEV2G/wQhBUr&#xa;kEvg6ogGdmWvqaAVXjoMypFj4DXJn3GcscL7VYXGrtAUATaAFuMoA4ONVVdnv/YkVzotpX3hm+&#xa;+Sv9INd8IUEuQa+qur074Il/y3CB6ELJzUvRqzC5gsuw3CMy5dub4fe9hKZra6CoOD9cwNREBJ&#xa;H6hfofblfY5EdL77zp3y21LwjwDZ+pIqxAG0brSZ/bdbQyttVUgwH1462pTypbgZ65Ki67kAJJ&#xa;G8ekvF0yQp+R9X4Iq/6FUQfNpF3tU1H/BLLrGRMvtha1/AxYcl8jmohgugiPulSe9BF+DUkLKi&#xa;iEGTdmnrt5Ezyx29GDNqRyH+RNcy2KQN0o9Fy+mgoBpPPASmecQ9VYKIuRdVq9+1EwE1mgmgFs&#xa;GH4+DmHM27phb2KdISHKn/8DPvlQa7Uwlz2DnrTZi5OWyd3hnKE6ki6/vZ73+k/SeT7S6AT+l9&#xa;taCS8y5Yo7obHO6dmUCJCfOCHnLYqnDiGPUaIRknFnfiPVIeZZSireo3pno3Tv4tttDjZPnKaE&#xa;3+R8GDBNGaUmtUzt3STs7RTBfjaE66jLMynXN+f/5ENsR6if/okL6093tKAIbrwvfHSz9NsEqm&#xa;rrWfvRbp6e/0/Wbt9DfTyBmTQpKozRtkUxd14ygUmDeunHLOqEwbnd374e/j4rQxSFi52rn4CR&#xa;67Zx47C8UTPvfquKE7Lcdwr2mMebfpZV+0IAPP37YHUtzyxazYOvLGbbvsMkTdOxyeGIPt14at&#xa;pFnNqpbXaNQSeGUcfa6bYm0q1P1okUaBgDxruOYXkkVwR4h89I+fEp0mDVVesD3GHRNNhXVc0v&#xa;XlzI46+tpK5R7THUoqiAB66dwq1fGkGsIGJNAypgJQNwATMAZ+g3BD6ozPS7VdRKVimU2/Kxk2&#xa;YnTpy9eV3Le9UwrEwA4rvzYOS5TonfDQlSEvfR+gZ+/vJiZv5jBXUN7gHeEwacwuw7pvKFDq2A&#xa;BMQT7kDLRwS0fG1EYEulrU9HEupFnlyLI6nkmSVW3ry07JY0JTnNFO4Jqnsidc5cp581LUtt5h&#xa;lTase0y4miKSBdhq+SDFYbV8Ko87K5D3yCWhOmyex31nPPc/PZX+W+UXpZSQEPXTuF684aSDRq&#xa;ODOq6czfuXCA9PG8fR+Mn36s7O6AvK9iRw2Ij8zRghbGICQN2IIjMEnyk/tdT5jWXbQAdoKzr/&#xa;ANbdt24AhXPv5/LN2627mHsVAq+nThT9+5gO7lZd5GId35PSzwG+rhL4/ZnGRcsp7kLATOkSsa&#xa;RhAs/Cuok6VbjmBxkcaEs1pBiwhUC7bQO7fCNFEWOLDHyn8QK1C6tTcmEjy8YA0/emUpdXF3z+&#xa;CiWJSfXTyKu84bTCwWyVK9n4+DHyIkNdi/6pm5j9kl9VXKHrTJVQ1Mu05mSpcC2DkMvfDvfNvN&#xa;VZRhOCXf4S1gxXDsK3hTb3L0c8Pew1zx5Bus3untXt+vU2v+fOs5DOja1mrCLfrZ7Xv80t/I1z&#xa;LwZavh1rWwbknmXm0cSp2i+tvAxFxlAAdJ7BwpUWg+LYFu+YNU5lbBPHpqEWwTHNpWVlsyQkQE&#xa;1sE90KodGFAXT3L/G6v45fw1NHrkcIkaBreddTozLhpOSUFU7ULmhwAG6kAXEbgGzqgnt+nAiM&#xa;KaJbb3tlDraRNzFQIdqVJ/0l0yowb1BtJ1CTMU1GJIZlFh4LYOc3KB6Nup1cD0c4vmwrlXs/XQ&#xa;US6atZDVuw96fnzHlsU8e+04JvXpjGGYluUvDaSI5nf5RTyLtn4VpauQoPI1W76D9dXKpYgHws&#xa;zAcknK/zXHEix/YJBpIEx6WGGAfrsT7t5mb+KT0dCtOGXFM+ClREeuW3KAox6qHQZM6d2RP11T&#xa;QbuyQvdvynUtQEf4kxElmYCFL9pM4oo1AAeKhkGAnwHTxYqVg1M6dpAcQGGmAb+lYA8WqVwVPA&#xa;tqTZi2GZ7YZU0NbiUWMbh3cj9+NLmfFc5thAR+rkjgVr/gJQu0KeB/exP85y6nloq0AVXODiFF&#xa;BtSNQ9+gEnQqCEL9HlSz8iiMsNtFuLojrK6GNdXeH9y+tIBnvzaMKb3au+c2dFtaMzQ4WhBDj6&#xa;quoR5Wvp6lfrX3szI9d1AEWCAKEADxcUKSIy8k8KIQIwfqDzB4pe84Q8H9yqiurXn5a0Pp0qoI&#xa;2/5Iuomu3HwDVNFNbsJh0gchlr9qu+6+BHY4M84Uo0gkFUQIbCkDf2gLiEbwjwzOBxLIQh8KwU&#xa;/+LQmPVWMhppkAMmIY3D6sO7+c3JuiqGElygb9GEg3MvPzADbxj3WQI56Fsr9BCfxZuGQRyymI&#xa;KZM/yCsqOJ/xAQGFP3mwDjVAz2VwyCc3d3E0wlNf6stlfdtnU7oYmsAPogYGQYKki9pXucBWF2&#xa;AntEAcoJdcMbO3D/CDIIHuYBkKVc/LHiC0vbEavrTaH/jlMZg3OMnonq3teyP4ZUMxNDmAjjCL&#xa;pul36yrb9V/2KT/pVh3zSjjqNwIigBGCUsLa0IXjjQNw8Rr7fj2q0rcEXh0MPUqA1uXQ6Qvq7C&#xa;eGi80jrFzjJQ+4cYFkEj5YZftOl91QC726oMMBZssV+8ZoAj9oalhDkwO4WP1Uf5u1E27ZCA0a&#xa;yRiWDoU2BWQDS9p3ywp+uunwdb5JRw7wYv0Am9fY6i5a5yq3kSsHsHW3bQwOjAuIAEEHMKj0r8&#xa;gCmjDhF1vg51v0t+O4oTP8oa/Qv2jEisDV5WAG+dkM04/1NzZaORtF72fn3F+L92ZTWgiwAThd&#xa;Np6EAn6u00CA9fF4Au7YAI99FHyrj0yWkHRfu/a0Nk4KkuksH9Oal5l4xxa7ertYqd5q9cBrCu&#xa;gqA//yDopX5BMJvAQmLx974eMbTLhlLTy1w/vDCwz4bW+43a5FMe49WDxYqNi5NSsL5FurCaPd&#xa;HD5gA/7ueiXwH9B9dbC9gyd5AD6Sw3Sg2xMfta8uDtdWwvM+2ycWRuCJvvD1jjC+EhZL2VCrKo&#xa;TYAQNo0coKd1PlQTTzpNrqaASGAft32QW/RTkJ964c4Dy54vn+Csk3LPCDJotWqX1SqU/CZSth&#xa;no93YlEEnh0IF7W3OMei4WC8JUlO74IpyjlHj0C0wH1vREOhGQTlAH5RQSZw5JCtbobazWtKkF&#xa;fr7x08UQJ0RBMJIi5qlI51UCdbeCr2/+rl8MJOf7b/zCC4tAO2VbN7tsCDUhzBxyOge5HQt4IC&#xa;KCoJt0NqEOrHRatJmlbQqyj4Oan/qI7k74cAy7CSCWSVyQnWjhlagI9ocgk/jUBT+GtMwA0r4O&#xa;mPvQW+mAF/PAOu7gyGIspIFT6VWeJO9624JJxJ2y8rmM4qZ12trX7Malh6NCfLrusUMFK2jMV0&#xa;pF+v1HA65lSvlGsu7D9uwh2rYPbHPh9pwCP94eouYMhrCanfqk0jb/oAnugjVNTVQjSmN33lM+&#xa;w9adoQoi6hBP72EOKno5t7sDYxzHKeCZbsocX+fbiBacD2WthZB91KoVMxFBf4UJAL5ZtJ+NUG&#xa;+Le1eHrqGsBP+sCPe6Wa9ogxdOUCZgBjVq4rLK5IIDT/bm6CnxsHOFMG/vRTUsD3wnLD3/5tGr&#xa;ChCu5eDa/tzm6V0jIG53aFB4dBj5bBPuFPn8B0H+AD3HgK/Kh36juSuPsWYmXVaCk5jpz+Hmwc&#xa;rOYarmedLOJmiGkA+OdRZWvfImTxnJ0cqeB0KF14xjRgzRG4czUs2Oe+U2ZJFB4ZDTf09ZCQhW&#xa;PJPpjyBtT4mPjO6wgvDYcSA/dIZCmy+Itr4HUp+3btSGtnL23DT1NwgDSXWpY/6hc5wE3yjbcH&#xa;uWC726uFgTGB9w7Cd1bBskPerlYAtQn45hJIGHBzXzy3kN9fB1cs9gd+z1KYPTSVxcz0VyPT5b&#xa;VBziCKkuVgjpKAJCeLMlHHLpAjBxDO125RttSPHIpyqEsjUF3hQfUuFJ80YOkhuG01VB7xZ88O&#xa;ThCDRV+BYeXu6t4lb8E8HytfWRQWToChLb2p3e333R9ajqTHq6TD56MI4e9AldPid5hUgEfYEg&#xa;Ecicarx2latqT7jUlLQr2gE0xqD8XRYJ2pjcPXF6SieST5wgRmboS/+QA/asBDZ8KQVuEZ44On&#xa;5jcBeBjLcMK0zNp1SahJKoFPrsBPI4CThSTDNVYUgcnt4RcD4M3xsOvL8LshUB5go/P1B+Hhda&#xa;ntVwUobKmC+yr9F3cu7gLX9UgJfTmU89pyopdX88VtirA2HsyUgSWwdpge29e5v68BrlkGr+7W&#xa;61SbQlh7qaUqkrRW977yOvzDhy13KYbKKdCxAL1UMm6/jabdQj6PM0XOJYblLLhcNACtq8W50O&#xa;HGqwyP+tS5QxHMmwDTKuHRD/w7dagB7l0BfxhvdePlj+C1Xf4f8t/DoGNReA6WLt2WKquvBApQ&#xa;ZKmRDkPjmaji+WiANmY1BRY5HT/GaFC+DkdIXSeAW1fCf2/x71hxDJZdAH1bw+i/wirvaC0u7Q&#xa;bPjUy5qOtSv6L+/WpL95fKQ8A0PoclKiHDpIzVMwlT20GXIg2zro6xKCXRntcVlh2ALUe9OxZP&#xa;WvN+p2J4aIP33N+qAF4cA+0K9YwpruoW0EFN/RV8Tou4wPlT+ebwSvxX5HR0WuG60IA5FdC7zL&#xa;9zr++CG95xNyCly7Q+cGoL3H3nwT/nHjBbvZR8Dp/jIocKOTYcfHw3etuaBMhyUV4AL42HVj4u&#xa;qUkTdtd6P9O5CKadllrk0QG2x3Nfd6ZYbwTeOJkQYBXSfoHf/EBzIHUDHVLHoNbwxGj7ZsphBJ&#xa;hbe1vyim8aNby51GlqE2shn/MS0fnofst9qCugn376uLQbfO/08PpM20L4Vk/0I2jdpoYIbHEG&#xa;Tm3jJChuqWLfFy821WK3o5vBga06IibcNxAu6x6u89eeAh0KNQDtE3XTSq3z9zyZEeB0h3FmkQ&#xa;uVBwW+mB/OtPT3J0fC2PKABowIXN8jNfebAbmA0O+3Dysjhm7jJCleyaLvEC8Ox2HFEfSjVr0S&#xa;REt1pRF4qQJ6tdDveP8y6FemiXRu/TVgYqWy+d83IwA8LFeM/KfHFIAGYnh443QshPkToUepP+&#xa;V3L4E7elnJKcJMPenj51uVrxjESVT85K8KpHzAj/aBb3clmFs4aAeGfFwD49+Gj2qydWUxuKgL&#xa;3NkbBrS0bAkRcpM/zKRyk8X9QIdmBLCXw0ArG4FPRM/1WyekWmFB/KgWzloI9Sbcdzpc0z3l2A&#xa;HBkyi5HN2WwM76UONx0iGAw9Y3rAxWDlMgAASPBHLxOahNWDaCggh6/nIBkMBMQsQp+WeSJzYj&#xa;gLNsAvrYMGIS9iDKiAcCgL5HLbi7bgVMDOV26Oym1SwE2ovDXbNgAerMljpqoHxO6msMWv/32I&#xa;rmub1K4E/mJC1B9gyyOY7GTXi/JgDAvYDoB0hd5PLbhwi4YqPy2+afrAiQ09axIO3Do8P6PYQ/&#xa;7Tfr5tORrq/cCM868+j0AD5q5gB6ZaRc8dPt3pY++84QLnU6h6ptU/86kVQCf+PJDPywgs+nQD&#xa;sbcY5XUHfQ/QPdehMmgkZx3fJdOJrMy/ef1BwAwGG1r6jUFPj85mo3yteRJzzec6hRCfwXaC6h&#xa;KeB9WTOoGZ0y1oTNChYmikZHLQSMd/L67Sc9BwBFLEHpUrR39XSl6GQALqD5nofVruQDmkGfGw&#xa;IAfFOu+KBGE6D5ONwETvEM3LFN2fcNzaDPDxt0bB2bHK1Q9Zpy1zCP85h1ykQKrYEjzaDPnQOA&#xa;nEMQuH1bHti/6TENJH2sgqmzaSqBv6AZ+PkXhOqwwssyJTEylbtOonzDQ/0zdDqpUAENl/rSFc&#xa;32/mNZzM/AMaMZTE1XFp3gwE80g6jppgA3Me1EKh2Bfc3gzr8QKJa7T+DvbAa+S/l/+QggD1sJ&#xa;pdgAAAAASUVORK5CYII=" ID="ID_1169852618" CREATED="1541845202095" MODIFIED="1541845202096"/>
</node>
<node TEXT="${name}-icon.png" FOLDED="true" ID="ID_1819207796" CREATED="1323059863835" MODIFIED="1323063753585">
<edge COLOR="#999999"/>
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAADAAAAAvCAYAAAClgknJAAAABmJLR0QA/wD/AP+gvaeTAAAACX&#xa;BIWXMAAALjAAAC4wGb/RrgAAAAB3RJTUUH3woJEBAFPooW3wAADO5JREFUaN7FmnlwFNedxz89&#xa;PZdGx4xGEujgMkJggQTCoIDNYWwDgQ1eQcBJBYIJhsQY23tU7ZZTzq43hZ04yXpTcW1sk6Tiiw&#xa;V7s+tkbadsbAM25lhiMGBuGQECHSNpRkJzHz3TvX90j6en1SKkCryv6qf3uqdfv9/3vff7/b6/&#xa;1wLzIgDfARKAoomsk4wmaU0knUSAv+MvLyJwaN4Yt1LhsmWAVdfTSRjm/mjg9clO7lhQAjaLel&#xa;PR9VJ0NxQNogLsCcHZBIeBtUDrXwBgZsOIwsMnH57FW+f8tLx28n3gq3+uk9XkngVYUyzS/GgV&#xa;PNiyBCZMRflCfUX7q2msZFEIcPpPvL57P5sucVtEZg3wpLYq11MKSp2qOqUFNoCC6+lkBmAGsO&#xa;7OImz3zaxHWP84jG9AkGUM65DXxGKB03/iXv/DvDVwSfzdVVYD7wL/y00sFsN1EbCuwsqtj95i&#xa;p2zRCqgcB8k4SElNUjlJ6ySVgPENlCxYxoNjRGrs1AIbgcIvE8BcYNWqMpg/oxGaF0IqDrHQ9U&#xa;kyBnPu5faGOu4rB2A5cNeXBcALbJ5cwMjvTnDhXNACBUUQHYR4OCcJg+h/i4WgyE3BXStYN8ZO&#xa;gwsv8DAw4mYB0NvA1x0CC9dWwtQZM6G2CeKhfF9l5rMUY1uACdOZNuM27u85xD9dZm5KYSWwVX&#xa;uiBdhgYqQew/V04IjJiBLwKvCCHkAdsKG5mILVdV7EmXer7j4WBkFRFReu4XQVnSCA3Y4w7U5W&#xa;t57lf/qDRQfDrAN2AdYKl+33L9w7yeJ2DPUfHs0LTa8s4siDM4s0h5JXoqkM6/5wdnb7YOJT4B&#xa;MrYAPWlIg0b66BMU3NUDFK3Q5G5c1AKGYiwOg6aqZM45GujznRSnNE5tvA8caRRZaVk6+9o4oc&#xa;VmZUlwz7+y0eJ+2DiersCtwOrFnqQVw2sQrqpmveJg4WQbWS4UAYFZfJxQZFgCmzWdx6imX+Ac&#xa;vrAR4Anthz6erF2b8+Mr7YIQ5RrHFkET9fUscxX5jvvnnOVPlgMk3bQPwgsDML4NFRdiY8OEqk&#xa;uK4RXMUQC6pKWsgB0NcWE8VlHYBs7SqhrL6JdZ172BdiVFeKZywQOtwV8mlv0wd0ezItlwFEUh&#xa;k+9YWTAvgV9W3bgDe1N8e0CC9nAcwabYcxDkX15/FwTkmj0nrBoLhe+Yy2jTIyZCRKRHAI0ODE&#xa;u6oUr6Azl6wPuJyEC7qZHmPDsdrLqPfDcDRGC/Ay0GbmhX51NMo/vxeQHZsunMRSXgmeMnX/i8&#xa;OAEHTzJw8nAlwNEG39jG29EJDgxToLy+fNgtrG7AR+sR33XerhiXf35QDUjOTpJZNo2vUxj7RT&#xa;H0jzPeAHRmpiBXYkFe7a2sM9i8v7mXDxJNQ1gU0EizJ05s1swEx5KQ1txzjgC/HfAVjmgcWTxy&#xa;I+9BQ0zgU5kzeT4v4DoAMg1EyA721had8GFg1cEF8bYBXwNrDPCOAS8OLZGNN/68P7pOci1hIv&#xa;eMvNV+F6ACgC+H1c7bjCzzugUISHxlopvmc5jK6DUGCodcbD+deZNIwaT8nCFTxy6Rd8FE7f4p&#xa;N4ADgJDBoj8R/T8MF/+uFgXxw6P4fgAETDEAmpEjXUeonqJBaGwQB0tfFGZ4IDQVhdAc2Nk+CO&#xa;ZZCIDaUg8RAko/kA5LTKwZoXM7OpgftHgKBSk7vNInEIeP5Sgjtf8VE5rcSPu6AI3N7ht48+Ds&#xa;iGlRgM0OYb4IVuqHXC2rFOHAtWqNQkG93Jj+5lLhsdoSQJKcP5/hje4hGqNyz2YJ+3jG+3nuW9&#xa;waTneJTNwH6gD9QNki09wIj2JLObChThVlsSRJu6lHoGKqUgZSJJTWJRMn3d/LJd4u1+eGw0LJ&#xa;0/C2He18EqQjoB6SRkknl1RYmLM1d62PjqR3zYnWTr439DjbdYHc9dRkXgIglfJx8HqU4rdAOH&#xa;zdhNA7B9oYep2+thhLcEXEX5NsC1ApkC0QiHfGG+dQbqnPDa7aWUfWMz3NoMipz/DhNq0h8MU1&#xa;zgxG616fiVBT4/Svf2Z7n/kyC7g3wGrAbOGMNhP+DqTjJ/lA3rV5ySbgWSkEpCUldn2wmtHU8Q&#xa;i8R5sl3hZAyeqhWYPns2TJ2n7umMljtkDCLn7rtEEOW0eq3POxwuimNXcfVe4r0BKpIKIeCgaL&#xa;Kjr6RhVk+KcbMLFdykkVISUlIaWicl0kmJdEKrkxIfDCj8uBNWlsOmyeU45rdAQaE6AXqFFYl0&#xa;KkEiHiUejyLKEhZZyimuByAlVXpiL2B04AKtgajlVIzRwBGzlLITeOFElKaHLuCeVKBmw4KgW3&#xa;nBnB4pCnwQhAobbKyEkvrbVOX11MQqEJckznT2se/sZT7vCjB5bDn3zWlkpKdIi+Im0V0GijwU&#xa;T5jCQ1f8HAjJ466k+AfrMIRvdxo6TsRwxzLgsOjYMiZtJdceSEOlXe2DnFHdqmgBCyQyaQ5e6O&#xa;atY+f547HzDEbifGtOPYvqKxlZoKixIKt0hvx21sbkDJV2dYwrKRqGAzAFqGgphe9Xg1NUY5Oe&#xa;u+hzGUVnyG8PwA87YUcfTGk9ir28EsVdSm8kxr/vPcmrh87RNRCmcZSXLWvm0jKzlkKXTY0H16&#xa;ImikpNMhdP8V6/zIkoKWCrGQAP8MgtDkZuqoTGEoZSarOMTJutEXbYFYJtffBXnYPMO3eE/c4x&#xa;PL33NHvO+yi0W1k/azyPLW6gttKNmIlDKKYLYIbtkyWGUgYufEZbTz/P+yChsBvYYQagxQoLv1&#xa;EOt3sYSiWGc6OCOmiZEzZXwcY2+EWHwsHYBV7su8zFYIKaEif/OG8C65vHUuKyaBmfYXR5GHoy&#xa;4CfZ2c7WLvg8TgB4EegwAhgHfKfehWdjNVitw9BowWRA3aALvLCkFLb7YefVNJKSZkqZix/dWc&#xa;uSiRU4MgmIJMxX1QyAlIbONvb3xnmjHzLwjj6h0dOKbzoF5m2ugfGFutm/HgCyZiMWaI9AZ0r9&#xa;OaXAAg/86+xyZtQ4EeIRSCjXpiZGAMEB+vv8/MYHHUk6gOdQz2DzAEwGNi4sRWypAEtWeZFr8y&#xa;HDjB3qh8faYF8w98gCN8xMB2DQBjbrn7epL0AIIEkofh87/TLvDCADLwHHjWTOCWwaYaN2fRVU&#xa;OXXK64HoKXV2MIuquCLAh/3w/VY4HAS7AN8cAZ+E4A0/rCyP0WALqHHhep2CDMSidA/G+WUXhD&#xa;McAXYAKSOAewRY/jUvwtIykwxM1J4UyT8j0mZeluGdLnjsFJyJgFWAtdXw1Dh4sw/+tg1e9sGP&#xa;XGEcKUmNC9ezAhmZTDzBy90KRyNENMNtNdLpSmDDWAdVm2ugwGrwOiIE0nCgT926TeUwyaObJQ&#xa;t82A1/fwLaomqXlZXwRC1U2uDeMngrAC/1wXKvzFw5BqKQr7gwDABF4WhQdckphY+AP5jlxCtF&#xa;WLR+JEwrymeK4Qy82wvbOuBAPyRk+Eo5bLkN5lepPvpUP/zwtKo8wKIK2DIRxjiBNFQ7Yf1IOB&#xa;yGn3aCC7CK6nlTHi0R1AQQ1NqiQEqGX/VAa4IB4PlsDmAE8MB4J0V/7c19yMiC8MXheBDORWBQ&#xa;Uidlby88cxomloID+NkZ2O9Xu8z0wNOTYWJxfuq9pBSai2DnIByL5pQ2liEhQYF+NXX+HbDXjD&#xa;JYgd2+FFNPx7BOc+e/ZEIhbKmH1ePgB6fgHR+kFXi/E/7rIpTb4c0O9dlSGzxaC9M96szrS3sS&#xa;OlKQhuNdErtyTjfPoozX2ZQ3qXme2HAAXo7IzH/Ox6y7vFDtyhmnxaIezjWUwL81QTwDH/RCUo&#xa;ZnToLHDiFtpr9WBS1VhsCG2ueVXjgdYxB4QjtZuGFFBPyA2CexoMyG/Q43CJahLtPrgEluOBgA&#xa;fxKCEvQmcrP/kwa4tZDcwZbmBg8MwpbLEMqwHfVEWbqRALK7/vcphb2v9MDxMMN+k2x2w8+mQq&#xa;3hm8vcMphRknsu2y+Ygue6oCtFG/BrIMoNLtmMLAYE+9MsLbBQMN+tnmsZrUsAxrug0gnHBqGu&#xa;CFZWw6axMN4JgoGAvdEHz3aRTik8pxmifKMB6G22EHi2ys6G/6iHu8swPxMVIKnA+Yh6YFXpgA&#xa;LBsFoytEdh7VnYH+ITYA0m55o3cgXQ9mZPJMPdkQzer7rBKTA0DVPAqvH+UlH9uPDF1tGUT2dg&#xa;azfs6COWgS3AHm5SMSb1fsDTmWDOJCeWRpdZdDSxD8PWOR6Cf7kMvRI7gZ8C8S8LQAboTinM8a&#xa;eovscNbtFkFYZL+zIQl+AnnbBzkF7gceAUN7GIJvcGAKVXYmG5iG2W5hoVRT2XygrZdiZXI8Ou&#xa;QXiyE+IyL2kBSLqZAIb7bFcObKt1sGRBCbgsuQ8SgsErZVdG0Op9YTgW46yi/q/Ep/w/lhXaam&#xa;T/CyWtE4PHz7MQCdVwxS9Dyf8DhKYmLeIPjq0AAAAASUVORK5CYII=" ID="ID_187608812" CREATED="1541845202097" MODIFIED="1541845202097"/>
</node>
<node TEXT="fpgtdLogo.png" FOLDED="true" ID="ID_1897993304" CREATED="1323059879726" MODIFIED="1444407674459">
<edge COLOR="#999999"/>
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAAIAAAAB9CAYAAABqMmsMAAAABmJLR0QAAAAAAAD5Q7t/AAAACX&#xa;BIWXMAAAXNAAAFzQFttF+BAAAAB3RJTUUH3woJEAw0iSNLuAAAH7FJREFUeNrtnXm4FcWVwH99&#xa;730rj/Wxg0FAQEBkXx6bIEajSXCN4xaNa2KMBpdJMokkMYkjWUxG1IzjmIkyiBqNSwiZxBUQlN&#xa;U8dkQQUNmR7fH2e2/PH32X6urq7uq+9wHKq+/rr29X962urrPUOafOOQX5K4cA8wQ8ZtJcXIuR&#xa;p3aKgdqT4DvzUS4GLgfaAO8BjwC7PuuI1HiCUn/62HOCjNPjir7tBwZ/loF/+QkO/PRRdJzH6a&#xa;J0X9rFMAeW2Pr2z88yazTlitrh2ZZNQ/EmQ/iT4dKY1Kppqt9qIgxj6nfMgNKVjn4mgNhxRIA5&#xa;wJXtYrBhCHQsgHs/gvt3ZO6fDrx/rDuV64A8JVccHQHFEQGwbmcv9DNUaKVADNP9/IeecONW2z&#xa;+jwFeBuccJAboCDCq1gA9wdmsbAnQ6HggQyfG/14oV7aPQIioANhaFaFR9Tv/O1EeyRyRiv07X&#xa;RSIQNSCSOqKKs2G9/4aOyj7/5ThygBhAoYD0CdPBofgscYC4XLFvVIoKDeDXc6Hi/GP/RRUxi9&#xa;ZN2D0cOjungt8A9xyvsY4JCBA3vcfzREaADjIDv72zwL7rgZHnQGPDsf+iV7bCpT0tnloApRGo&#xa;SdqeuBv4V49JpknHOupO8p8pDuBQq2b2EhDglU3uwM+nRq4CYct2WXHPhOoxYLzjeKoaKG3mAO&#xa;EQ4McyGJcOIjP30rkHtCqHRPzYmWFkRPjrDri4W+byK23hrwdtT5Qch7GOfl4Q4D5ZEhzVSgDy&#xa;7A1QffjY2OPcmHgkAqPPg6X/AGDuADAWO56qw7JgHjcOkDgBECCoFvCGg5dWCNQ/9nw4vB/ije&#xa;qjUTjiORw6bUyfDcls317u7/iWIuBfjrkM4M4BEic6ApQBZ4sV/UugOCq08t1HINGod4jAaorn&#xa;a47AtT/IIMCF5cpvevZknwKCIECVXLF+ZKoFA5gx1wmoMMB1O8K0ccE3UvYDq587Rym/63cnsx&#xa;CoiwBfkCt+1kOY1xuALqeqgRUPiRRBAe52//EVGS7QpQi6FTq+bRrHZrXwM60GbpcrpvcQ5v5H&#xa;34R4g1rYO5YLsabL70gEkkkw4JNxYLzl+Od+oLxZDVSXJ+WKHWME4HfvByUt7Gofwn0ZGPKaQB&#xa;BzjOEBZLE9uc2HF8NtFdYzCTi/LfyfXS1slyJOPyo8MyUH6awsVklALfVBgK+optkUf612eUcC&#xa;a/1gZ1MiwHU2BToCXYsEYNz7v9BY763uGT5AzVXtMzXqRn8Zls4D4G+DwFjo+Eejx5RoAA8Dt+&#xa;VMce5q4B9y4HsvAbcAn+YbAdbJFTXjBeoecz7UHtUHupEDEuQCfBO46nvwzrzMJLxoMIxf5ejF&#xa;ZcALihZvzwfwfdTAsMUALsEyz58VkKd6Dn1nJFelC8vh5TMEBPj1a9b7vIBv5Ej1hAS8CgmW/g&#xa;1e+I/MNGEs0B6TjUC/04rh1f7QUzIf1Scd6w1OXm3CkQS0iUK71HLwoTgckGbOgxqSQFXCQp4E&#xa;8NhueDk7nZ0HvJovBHAMsTkZy7gSAe56DDp0z04Fbuv9pgdCGDkA3tSQC0zFcz+cCmYSkrC9Dk&#xa;5d6njDU8A3FFbDonu6wK9P5YQqB+PQbnnm8gfAL/OhBk6RK/7Yj6xlLQG07eRUwZLSdVxDlQuq&#xa;+onvEuviPu9O37/36QxC9CiGPiXeMk+qbAOL0rbWnVgIsPKo7fJQmPlDj/rPElj/vU9DrMBdsi&#xa;cA1eciBJo+v93q7r8K4vEMQhvzHW/aRcqDJ1XuAB5y61aRYS07+wl/LaNwV1e4LbV0/tud8Ohu&#xa;+3NtNcTyVlFLlqhKQGU11FvfVgucFlQjUL3OsXjaMEG4OOX0lATTqAZ+LsiQi67vxvpVCPGDWf&#xa;CLqzLTwhfbwmt2tbAL0BpIr2o9DPR1EwTrTajXMOPsi1tAy1w3wof1cmOhGEEcuDWMOqhCgArx&#xa;oiwKBYYwh1433QK+4aLzNwUymCGo3u88ZBJUzgcTXlWrhYck68J3sNy6z04JyL6EKhj+CoDrPe&#xa;wA8ZQqp2QwePsubAH+i5CexTEF67OVwxXCMIz/KtTXOAFvStKEDkKYLhKI4SPlmz5CoanJBc69&#xa;BlbMz7iPzR8Ek9Y43ng28KZwvTp1BC2tMwggWXFSpRrLvf64WgIHypj9/e6WFTVrTLnAWoZVAT&#xa;jpggBeXMBUaAm60r8fy3e7Fs+XfRte+j0YcFYb5VvfyJPSGvOxAxwXM7CMAGvlmzN6Chff+Knl&#xa;5mX4zPs692T1zcgT8L24gKquez8wDCvowIA9o6GTUy18BbgwX+PsMgUkjjcCyHovrw6UBrmkzF&#xa;KnVIDWRYSgAmMQwOvcU9Xd8gA89gMAOhbCacWw2a7qTSWPDqQuCNAx4DsayFOkUxoB/ihWlkQs&#xa;yTgDkFsesAPfDwkMD+AaGtzBj/rDAN6LU7RoDUctgf+DkWC83XQUF3VfCwhSChXySWgEcAg1NW&#xa;NFg3BPa6nXi5IjPkghP6tCjogkG4hTRNIFIZIKzpAMwQWu+j48/sPM//+lHJ77tGlZbh4m/rzI&#xa;JzFgkFgxoEQw9wIc3GPX+VWUngzAFZI+9YaCok1NCvejdrf2Cuzj+Gx/eG5REyFAfheDfgV8L1&#xa;8ICcB6Ocq/via71u/FvoNMCX7ThaEB6GRAqjcVU0b6f8/9xvbJ7ZY4B6pxRFZSMw2hqZQMmQ6C&#xa;NVP3MbPPvF8LY9Y4ESA9BfQphkVnpNohFQhrZgNf03Wj1sOuRlu3/jUfCNAKOGKTejbAX0QhcM&#xa;4MuPwuf3avA2gd4ONBvTrA1bmfRoCqA1CflfqWH3WuyH2/C8QiAvCCBLwaUNqolgHSHKA4Ygmg&#xa;fnLPzuFgOJFzO9AjFwSoShkiWqQr5x5MAVrU07eth1P6uLNwFeAjmtzCSxAMwur9uIXjvgHznr&#xa;S9d9QqZxdm9FAYq7yQQGGn9ZoCooYw3m4lxVXOLIXVNbY7X0hpBPW5TAEtJaZK/+WwYYRQsezv&#xa;0K2X5VsX0USCpIQI6XuRgKZgcqB4t2eSwPZ1toF/RGFJXzxAmpbeDT5xx5cvh1GjXKeAWP8R8P&#xa;Zy9wamdoP9VudWnankAnVhBcKYMCSzEMK9N9Za802XQoELLPs7DJ2szwXk64jQlp+2oKP3616n&#xa;uYBcX/m2rfnbt0i6lgFjWwv9+uVL0KBJaCKg67OCVVTBGWKRiHe7f/4QJhZnxu/5vvC1TY6nxq&#xa;JYyAsiBF6HFO/fdQmYE4WKnR/CoPFOAEfywP5VXMBvWddrbvfjBu/+LUvVJnRTCH71ovPrUWDE&#xa;OVl7SBAOIMgYyikgEvFv95p74BlLWL1M7b+8OAwXkJdjHM4QS45IFW8+oxfE0ejipKF6VhU61u&#xa;jyjNf/020kXP6fOSfgyP4sMkRglxTMPLSFYJswgD+vCh3KlmzMAjcigKgxPQVEI/7tfGO6xTJS&#xa;QS4fDFPC839yRYBZsl26olKinngj1Bx1AtstfCvXGD/5+XiASCI3pHh9ju2jS51Lwbw3RJi2On&#xa;SFdp1DB7V0Km+bpZ+Uh8HeRliTEua6du7k7wnVUAczns8g5GklUO5czL8+ZzsAmcj6bLlqA8wZ&#xa;IMzfi+fCxAu92TsSBXmZhsE9hsBrlS8pPJP0MA2L4m11lU1Jn7sfaiWHzif7SH17ag3U17oLpj&#xa;5CbL+ePRhyxgAq167n/h3w8gFLvko7hF4+9ctZY5vXAtnAMRArgrglL+yvUJqtK4Ehugjg1u0q&#xa;rGDQ7LeKDqEGcNoQizJUQp+brSDiw390SlLTUphUyQUGvDvP9qzCHQxTdH0f+UW45/HwI5kqq9&#xa;atZ8plV/PpQbvb3s1XX8HjDz7gRChXki2ES7tl+n/OWnjD6QlYDhzIBQFiWIESWYGwEHZUSBL9&#xa;iHOzI234GH/8KF+nmB6cQEcb+GQz7NqWqfvuZpj5if0Vm0dA71Khj3M2WzJDSMCLZdeevTzy5G&#xa;zeW7OeNq1acvlXL+Di87/ozVlU5a5zYO/HmecU3kzaPfN6aCZWQESmHKiAtoUCFyhrDX2GegPd&#xa;azVQxxZgugxKYFXQgPfeytQlkhCTBq5zIewaLSD4D2dBn2HhAJ5LsIvfc6YJ1w/K3HtuL1yx0f&#xa;GvM4E1uXbT2zvYAM6cYJGglx3AD/hBemEGXCxKH5srobY6c124ICuFZ5qbJExzCeCPlXoj1dR5&#xa;j1T333zWMtGnp7KQXMDvgetl1eLlgXBhewGYsRj0HeotDOoC39AEvqmQC1S2gPTvRBI2rcwMVk&#xa;0cWkirfVNaw+uDBep/aBEUFnqPkm696XHfDIgIGSExCjcOz4jsB+PQzpkGZw5wda6Mqh7LASHb&#xa;h4kSUHv0h6Ii/9VCfLQBMyAXMD2QQDw2VdqMPpEFCq4qflOn7jD9Oe+RauqAV7d7Yt329fCbmz&#xa;PfVf4OHGgM1hud6OCW8kLD9e+nIoXSZdsG6DVQfxk4CPsPKwukf9fW2oA/c4eziUVDpP79aI7d&#xa;MpdL4Guu7N8rGKZ7HyhpCTVVYFhqYcQ5FawFzsgVV+OSGRtzggTkdp2hrFUwyT+XuAA/t7D08f&#xa;Em26qmUu0T5ZqxX4VL7vAHfL6RIEywK0BBEXx3YuYbv7YOXtjvaKkTsDcsB1AahwoXQcN4UUXY&#xa;DcUl/tRv5HGw/DSAg3tt96YqZOLdY6Qp6KLb7IEvxwIJwgLfTFlmyzvDp1aM2fNnKJF8j1vPgn&#xa;T3P4FviRU1Y6EkKgmE5Z3tLUdcpoB8aQEqO0C67P0kU9eQgCJJSDqjBawZIfTtpvuh50DniqUX&#xa;sI0mQABTUzjMWEIjcO/UzP/+axd8y7laOBJYkSu+2roVM6BxnDwVdFJTvQ5F+UnIpoZhKP378K&#xa;dWAGiqrmCR0wfPnCyYt5MG/Px5b0oXOYWXEBtGCDRwj2byk4EAVi2EF2dmTN+RhUocMsJOAely&#xa;CfBiRjAw4ak9cF0noTMH9kLLNsHm/KBGE9MHCZKmBfxU3a4GJ/Bv7ozdEXX60+pEV2G/wQhBUr&#xa;kEvg6ogGdmWvqaAVXjoMypFj4DXJn3GcscL7VYXGrtAUATaAFuMoA4ONVVdnv/YkVzotpX3hm+&#xa;+Sv9INd8IUEuQa+qur074Il/y3CB6ELJzUvRqzC5gsuw3CMy5dub4fe9hKZra6CoOD9cwNREBJ&#xa;H6hfofblfY5EdL77zp3y21LwjwDZ+pIqxAG0brSZ/bdbQyttVUgwH1462pTypbgZ65Ki67kAJJ&#xa;G8ekvF0yQp+R9X4Iq/6FUQfNpF3tU1H/BLLrGRMvtha1/AxYcl8jmohgugiPulSe9BF+DUkLKi&#xa;iEGTdmnrt5Ezyx29GDNqRyH+RNcy2KQN0o9Fy+mgoBpPPASmecQ9VYKIuRdVq9+1EwE1mgmgFs&#xa;GH4+DmHM27phb2KdISHKn/8DPvlQa7Uwlz2DnrTZi5OWyd3hnKE6ki6/vZ73+k/SeT7S6AT+l9&#xa;taCS8y5Yo7obHO6dmUCJCfOCHnLYqnDiGPUaIRknFnfiPVIeZZSireo3pno3Tv4tttDjZPnKaE&#xa;3+R8GDBNGaUmtUzt3STs7RTBfjaE66jLMynXN+f/5ENsR6if/okL6093tKAIbrwvfHSz9NsEqm&#xa;rrWfvRbp6e/0/Wbt9DfTyBmTQpKozRtkUxd14ygUmDeunHLOqEwbnd374e/j4rQxSFi52rn4CR&#xa;67Zx47C8UTPvfquKE7Lcdwr2mMebfpZV+0IAPP37YHUtzyxazYOvLGbbvsMkTdOxyeGIPt14at&#xa;pFnNqpbXaNQSeGUcfa6bYm0q1P1okUaBgDxruOYXkkVwR4h89I+fEp0mDVVesD3GHRNNhXVc0v&#xa;XlzI46+tpK5R7THUoqiAB66dwq1fGkGsIGJNAypgJQNwATMAZ+g3BD6ozPS7VdRKVimU2/Kxk2&#xa;YnTpy9eV3Le9UwrEwA4rvzYOS5TonfDQlSEvfR+gZ+/vJiZv5jBXUN7gHeEwacwuw7pvKFDq2A&#xa;BMQT7kDLRwS0fG1EYEulrU9HEupFnlyLI6nkmSVW3ry07JY0JTnNFO4Jqnsidc5cp581LUtt5h&#xa;lTase0y4miKSBdhq+SDFYbV8Ko87K5D3yCWhOmyex31nPPc/PZX+W+UXpZSQEPXTuF684aSDRq&#xa;ODOq6czfuXCA9PG8fR+Mn36s7O6AvK9iRw2Ij8zRghbGICQN2IIjMEnyk/tdT5jWXbQAdoKzr/&#xa;ANbdt24AhXPv5/LN2627mHsVAq+nThT9+5gO7lZd5GId35PSzwG+rhL4/ZnGRcsp7kLATOkSsa&#xa;RhAs/Cuok6VbjmBxkcaEs1pBiwhUC7bQO7fCNFEWOLDHyn8QK1C6tTcmEjy8YA0/emUpdXF3z+&#xa;CiWJSfXTyKu84bTCwWyVK9n4+DHyIkNdi/6pm5j9kl9VXKHrTJVQ1Mu05mSpcC2DkMvfDvfNvN&#xa;VZRhOCXf4S1gxXDsK3hTb3L0c8Pew1zx5Bus3untXt+vU2v+fOs5DOja1mrCLfrZ7Xv80t/I1z&#xa;LwZavh1rWwbknmXm0cSp2i+tvAxFxlAAdJ7BwpUWg+LYFu+YNU5lbBPHpqEWwTHNpWVlsyQkQE&#xa;1sE90KodGFAXT3L/G6v45fw1NHrkcIkaBreddTozLhpOSUFU7ULmhwAG6kAXEbgGzqgnt+nAiM&#xa;KaJbb3tlDraRNzFQIdqVJ/0l0yowb1BtJ1CTMU1GJIZlFh4LYOc3KB6Nup1cD0c4vmwrlXs/XQ&#xa;US6atZDVuw96fnzHlsU8e+04JvXpjGGYluUvDaSI5nf5RTyLtn4VpauQoPI1W76D9dXKpYgHws&#xa;zAcknK/zXHEix/YJBpIEx6WGGAfrsT7t5mb+KT0dCtOGXFM+ClREeuW3KAox6qHQZM6d2RP11T&#xa;QbuyQvdvynUtQEf4kxElmYCFL9pM4oo1AAeKhkGAnwHTxYqVg1M6dpAcQGGmAb+lYA8WqVwVPA&#xa;tqTZi2GZ7YZU0NbiUWMbh3cj9+NLmfFc5thAR+rkjgVr/gJQu0KeB/exP85y6nloq0AVXODiFF&#xa;BtSNQ9+gEnQqCEL9HlSz8iiMsNtFuLojrK6GNdXeH9y+tIBnvzaMKb3au+c2dFtaMzQ4WhBDj6&#xa;quoR5Wvp6lfrX3szI9d1AEWCAKEADxcUKSIy8k8KIQIwfqDzB4pe84Q8H9yqiurXn5a0Pp0qoI&#xa;2/5Iuomu3HwDVNFNbsJh0gchlr9qu+6+BHY4M84Uo0gkFUQIbCkDf2gLiEbwjwzOBxLIQh8KwU&#xa;/+LQmPVWMhppkAMmIY3D6sO7+c3JuiqGElygb9GEg3MvPzADbxj3WQI56Fsr9BCfxZuGQRyymI&#xa;KZM/yCsqOJ/xAQGFP3mwDjVAz2VwyCc3d3E0wlNf6stlfdtnU7oYmsAPogYGQYKki9pXucBWF2&#xa;AntEAcoJdcMbO3D/CDIIHuYBkKVc/LHiC0vbEavrTaH/jlMZg3OMnonq3teyP4ZUMxNDmAjjCL&#xa;pul36yrb9V/2KT/pVh3zSjjqNwIigBGCUsLa0IXjjQNw8Rr7fj2q0rcEXh0MPUqA1uXQ6Qvq7C&#xa;eGi80jrFzjJQ+4cYFkEj5YZftOl91QC726oMMBZssV+8ZoAj9oalhDkwO4WP1Uf5u1E27ZCA0a&#xa;yRiWDoU2BWQDS9p3ywp+uunwdb5JRw7wYv0Am9fY6i5a5yq3kSsHsHW3bQwOjAuIAEEHMKj0r8&#xa;gCmjDhF1vg51v0t+O4oTP8oa/Qv2jEisDV5WAG+dkM04/1NzZaORtF72fn3F+L92ZTWgiwAThd&#xa;Np6EAn6u00CA9fF4Au7YAI99FHyrj0yWkHRfu/a0Nk4KkuksH9Oal5l4xxa7ertYqd5q9cBrCu&#xa;gqA//yDopX5BMJvAQmLx974eMbTLhlLTy1w/vDCwz4bW+43a5FMe49WDxYqNi5NSsL5FurCaPd&#xa;HD5gA/7ueiXwH9B9dbC9gyd5AD6Sw3Sg2xMfta8uDtdWwvM+2ycWRuCJvvD1jjC+EhZL2VCrKo&#xa;TYAQNo0coKd1PlQTTzpNrqaASGAft32QW/RTkJ964c4Dy54vn+Csk3LPCDJotWqX1SqU/CZSth&#xa;no93YlEEnh0IF7W3OMei4WC8JUlO74IpyjlHj0C0wH1vREOhGQTlAH5RQSZw5JCtbobazWtKkF&#xa;fr7x08UQJ0RBMJIi5qlI51UCdbeCr2/+rl8MJOf7b/zCC4tAO2VbN7tsCDUhzBxyOge5HQt4IC&#xa;KCoJt0NqEOrHRatJmlbQqyj4Oan/qI7k74cAy7CSCWSVyQnWjhlagI9ocgk/jUBT+GtMwA0r4O&#xa;mPvQW+mAF/PAOu7gyGIspIFT6VWeJO9624JJxJ2y8rmM4qZ12trX7Malh6NCfLrusUMFK2jMV0&#xa;pF+v1HA65lSvlGsu7D9uwh2rYPbHPh9pwCP94eouYMhrCanfqk0jb/oAnugjVNTVQjSmN33lM+&#xa;w9adoQoi6hBP72EOKno5t7sDYxzHKeCZbsocX+fbiBacD2WthZB91KoVMxFBf4UJAL5ZtJ+NUG&#xa;+Le1eHrqGsBP+sCPe6Wa9ogxdOUCZgBjVq4rLK5IIDT/bm6CnxsHOFMG/vRTUsD3wnLD3/5tGr&#xa;ChCu5eDa/tzm6V0jIG53aFB4dBj5bBPuFPn8B0H+AD3HgK/Kh36juSuPsWYmXVaCk5jpz+Hmwc&#xa;rOYarmedLOJmiGkA+OdRZWvfImTxnJ0cqeB0KF14xjRgzRG4czUs2Oe+U2ZJFB4ZDTf09ZCQhW&#xa;PJPpjyBtT4mPjO6wgvDYcSA/dIZCmy+Itr4HUp+3btSGtnL23DT1NwgDSXWpY/6hc5wE3yjbcH&#xa;uWC726uFgTGB9w7Cd1bBskPerlYAtQn45hJIGHBzXzy3kN9fB1cs9gd+z1KYPTSVxcz0VyPT5b&#xa;VBziCKkuVgjpKAJCeLMlHHLpAjBxDO125RttSPHIpyqEsjUF3hQfUuFJ80YOkhuG01VB7xZ88O&#xa;ThCDRV+BYeXu6t4lb8E8HytfWRQWToChLb2p3e333R9ajqTHq6TD56MI4e9AldPid5hUgEfYEg&#xa;Ecicarx2latqT7jUlLQr2gE0xqD8XRYJ2pjcPXF6SieST5wgRmboS/+QA/asBDZ8KQVuEZ44On&#xa;5jcBeBjLcMK0zNp1SahJKoFPrsBPI4CThSTDNVYUgcnt4RcD4M3xsOvL8LshUB5go/P1B+Hhda&#xa;ntVwUobKmC+yr9F3cu7gLX9UgJfTmU89pyopdX88VtirA2HsyUgSWwdpge29e5v68BrlkGr+7W&#xa;61SbQlh7qaUqkrRW977yOvzDhy13KYbKKdCxAL1UMm6/jabdQj6PM0XOJYblLLhcNACtq8W50O&#xa;HGqwyP+tS5QxHMmwDTKuHRD/w7dagB7l0BfxhvdePlj+C1Xf4f8t/DoGNReA6WLt2WKquvBApQ&#xa;ZKmRDkPjmaji+WiANmY1BRY5HT/GaFC+DkdIXSeAW1fCf2/x71hxDJZdAH1bw+i/wirvaC0u7Q&#xa;bPjUy5qOtSv6L+/WpL95fKQ8A0PoclKiHDpIzVMwlT20GXIg2zro6xKCXRntcVlh2ALUe9OxZP&#xa;WvN+p2J4aIP33N+qAF4cA+0K9YwpruoW0EFN/RV8Tou4wPlT+ebwSvxX5HR0WuG60IA5FdC7zL&#xa;9zr++CG95xNyCly7Q+cGoL3H3nwT/nHjBbvZR8Dp/jIocKOTYcfHw3etuaBMhyUV4AL42HVj4u&#xa;qUkTdtd6P9O5CKadllrk0QG2x3Nfd6ZYbwTeOJkQYBXSfoHf/EBzIHUDHVLHoNbwxGj7ZsphBJ&#xa;hbe1vyim8aNby51GlqE2shn/MS0fnofst9qCugn376uLQbfO/08PpM20L4Vk/0I2jdpoYIbHEG&#xa;Tm3jJChuqWLfFy821WK3o5vBga06IibcNxAu6x6u89eeAh0KNQDtE3XTSq3z9zyZEeB0h3FmkQ&#xa;uVBwW+mB/OtPT3J0fC2PKABowIXN8jNfebAbmA0O+3Dysjhm7jJCleyaLvEC8Ox2HFEfSjVr0S&#xa;REt1pRF4qQJ6tdDveP8y6FemiXRu/TVgYqWy+d83IwA8LFeM/KfHFIAGYnh443QshPkToUepP+&#xa;V3L4E7elnJKcJMPenj51uVrxjESVT85K8KpHzAj/aBb3clmFs4aAeGfFwD49+Gj2qydWUxuKgL&#xa;3NkbBrS0bAkRcpM/zKRyk8X9QIdmBLCXw0ArG4FPRM/1WyekWmFB/KgWzloI9Sbcdzpc0z3l2A&#xa;HBkyi5HN2WwM76UONx0iGAw9Y3rAxWDlMgAASPBHLxOahNWDaCggh6/nIBkMBMQsQp+WeSJzYj&#xa;gLNsAvrYMGIS9iDKiAcCgL5HLbi7bgVMDOV26Oym1SwE2ovDXbNgAerMljpqoHxO6msMWv/32I&#xa;rmub1K4E/mJC1B9gyyOY7GTXi/JgDAvYDoB0hd5PLbhwi4YqPy2+afrAiQ09axIO3Do8P6PYQ/&#xa;7Tfr5tORrq/cCM868+j0AD5q5gB6ZaRc8dPt3pY++84QLnU6h6ptU/86kVQCf+PJDPywgs+nQD&#xa;sbcY5XUHfQ/QPdehMmgkZx3fJdOJrMy/ef1BwAwGG1r6jUFPj85mo3yteRJzzec6hRCfwXaC6h&#xa;KeB9WTOoGZ0y1oTNChYmikZHLQSMd/L67Sc9BwBFLEHpUrR39XSl6GQALqD5nofVruQDmkGfGw&#xa;IAfFOu+KBGE6D5ONwETvEM3LFN2fcNzaDPDxt0bB2bHK1Q9Zpy1zCP85h1ykQKrYEjzaDPnQOA&#xa;nEMQuH1bHti/6TENJH2sgqmzaSqBv6AZ+PkXhOqwwssyJTEylbtOonzDQ/0zdDqpUAENl/rSFc&#xa;32/mNZzM/AMaMZTE1XFp3gwE80g6jppgA3Me1EKh2Bfc3gzr8QKJa7T+DvbAa+S/l/+QggD1sJ&#xa;pdgAAAAASUVORK5CYII=" ID="ID_657290221" CREATED="1541845202098" MODIFIED="1541845202099"/>
</node>
</node>
</node>
</map>
