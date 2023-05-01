<map version="freeplane 1.9.13">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Freeplane|GTD+" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1682924837783" LINK="https://www.itworks.hu/freeplanegtd-release/" BACKGROUND_COLOR="#97c7dc">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_note_icons="true" fit_to_viewport="false;"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_1843665549" COLOR="#000000" STYLE="as_parent">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1843665549" STARTARROW="NONE" ENDARROW="DEFAULT"/>
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
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
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
<attribute_layout NAME_WIDTH="129.75 pt" VALUE_WIDTH="134.25 pt"/>
<attribute NAME="name" VALUE="freeplaneGTD"/>
<attribute NAME="version" VALUE="v3.7"/>
<attribute NAME="author" VALUE="Gergely Papp"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.9.0"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="downloadUrl" VALUE="https://www.itworks.hu/freeplanegtd-release/"/>
<attribute NAME="changelogUrl" VALUE="https://github.com/gpapp/FreePlaneGTD/releases/tag/${version}"/>
<attribute NAME="updateUrl" VALUE="https://www.itworks.hu/freeplanegtd-release/version.properties"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<edge COLOR="#999999"/>
<node TEXT="description" FOLDED="true" POSITION="left" ID="ID_1125389651" CREATED="1323057303632" MODIFIED="1541834957912">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
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
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>

  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_1073906233" CREATED="1323057303663" MODIFIED="1541834957912">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<node TEXT="This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 3 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;GNU General Public License for more details." ID="ID_1763974336" CREATED="1323057303679" MODIFIED="1323093766804">
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="preferences.xml" FOLDED="true" POSITION="left" ID="ID_456089147" CREATED="1323057303742" MODIFIED="1571863623275">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<node TEXT="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#xa;&lt;preferences_structure&gt;&#xa;         &lt;tabbed_pane&gt;&#xa;                  &lt;tab name=&quot;plugins&quot;&gt;&#xa;                           &lt;separator name=&quot;freeplaneGTD&quot;&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_filter_done&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;combo name=&quot;freeplaneGTD_default_view&quot;&gt;&#xa;                    &lt;choice value=&quot;PROJECT&quot; text=&quot;freeplaneGTD_view_project&quot; /&gt;&#xa;                    &lt;choice value=&quot;WHO&quot; text=&quot;freeplaneGTD_view_who&quot; /&gt;&#xa;                    &lt;choice value=&quot;CONTEXT&quot; text=&quot;freeplaneGTD_view_context&quot; /&gt;&#xa;                    &lt;choice value=&quot;WHEN&quot; text=&quot;freeplaneGTD_view_when&quot; /&gt;&#xa;                &lt;/combo&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_auto_fold_map&quot; min=&quot;0&quot; /&gt;             &#xa;                           &lt;/separator&gt;&#xa;                  &lt;/tab&gt;&#xa;         &lt;/tabbed_pane&gt;&#xa;&lt;/preferences_structure&gt;" ID="ID_1035150433" CREATED="1413235874574" MODIFIED="1571863623265"/>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_680880217" CREATED="1323057303742" MODIFIED="1541834957912">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>

  </head>
  <body>
    <p>
      These properties play together with the preferences: Each property defined in the preferences should have a default value in the attributes of this node.
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="151.5 pt" VALUE_WIDTH="72.75 pt"/>
<attribute NAME="freeplaneGTD_filter_done" VALUE="false"/>
<attribute NAME="freeplaneGTD_default_view" VALUE="PROJECT" OBJECT="org.freeplane.features.format.FormattedObject|java.lang.String&amp;#x7c;PROJECT|number:decimal:#0.####"/>
<attribute NAME="freeplaneGTD_auto_fold_map" VALUE="true"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="true"/>
</node>
<node TEXT="translations" POSITION="left" ID="ID_580707814" CREATED="1496660973904" MODIFIED="1541834957928"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<node TEXT="de" ID="ID_939822038" CREATED="1682925567246" MODIFIED="1682925567319">
<attribute_layout NAME_WIDTH="203.24999 pt" VALUE_WIDTH="254.99999 pt"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="projektorientiert"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Knoten in Map selektieren"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Abbruch"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Notizen darstellen"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Map falten, um OPL-Punkte hervorzuheben"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Auswahl wurde in den Zwischenspeicher abgelegt."/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Rückblick"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Informationen bzgl. Freeplane|GTD"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Erledigt"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Diese Woche"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Bearbeiter"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Aktivität bearbeiten"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Warten bis"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Drucken"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="verschiebe Aktivität ins Archiv"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="zeitorientiert"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Wann"/>
<attribute NAME="addons.${name}.listActions" VALUE="Offene-Punkte-Liste, OPL"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorität"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="kontextorientiert"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Aktualisieren"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Zeitorientierte (chronologische) Auflistung von Aktivitäten"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Über FreeplaneGTD"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontext"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="verschiebe Aktivität zum Review"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Warten auf"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Wann"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.editAction" VALUE="Aktivität bearbeiten"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Speichern"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Nicht zugewiesen"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="personenorientiert"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Personenorientierte Auflistung von Aktivitäten"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Projektorientierte Auflistung von Aktivitäten "/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Kopieren"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Bearbeiter"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Tätigkeit / Aktivität"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Kurzschreibweise für Aktivität verarbeiten"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontext für Aktivität"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Kontextorientierte Auflistung von Aktivitäten"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archiv"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Voreinstellung: Erledigte Punkte herausfiltern"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Erledigte Aktivitäten herausfiltern"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Heute"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Voreinstellung für OPL-Ansicht"/>
</node>
<node TEXT="en" ID="ID_467411368" CREATED="1682925567320" MODIFIED="1682925567388">
<attribute_layout NAME_WIDTH="203.24999 pt" VALUE_WIDTH="176.24999 pt"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="By Project"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Select nodes"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Close"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Display notes"/>
<attribute NAME="freeplaneGTD.doneTimeline.EARLIER" VALUE="Earlier"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Fold map to show only relevant tasks"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selection copied to clipboard."/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Review"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="About Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Remember last position"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Done"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="This week"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Who"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Edit action"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Wait until"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Print"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Move completed to archive"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Timeline"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="When"/>
<attribute NAME="addons.${name}.listActions" VALUE="Next action list"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priority"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="By Context"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Refresh"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.title" VALUE="Done timeline"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="List actions by time"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_WEEK" VALUE="Last week"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Today"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="About"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.tooltip" VALUE="Timeline of done tasks"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Context"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Move completed to review"/>
<attribute NAME="freeplaneGTD.actioneditor.cancelled" VALUE="Cancelled"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Wait for"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Timeline"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.editAction" VALUE="Edit action"/>
<attribute NAME="freeplaneGTD.doneTimeline.TODAY" VALUE="Today"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Done"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Unassigned"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="By Who"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="List action by delegates"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="List actions by project"/>
<attribute NAME="freeplaneGTD.view.when.unscheduled" VALUE="Unscheduled"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copy"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Who"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Action"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_MONTH" VALUE="Last month"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convert tasks from shorthand"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Context"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="List actions by context"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archives"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filter completed tasks by default"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filter done"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Today"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Project"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Default action view"/>
</node>
<node TEXT="es" ID="ID_1383144853" CREATED="1682925567388" MODIFIED="1682925567442">
<attribute_layout NAME_WIDTH="203.24999 pt" VALUE_WIDTH="229.49999 pt"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Por proyecto"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Seleccionar nodos"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Cerrar"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Mostrar notas"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Colapsar mapa para ver solo acciones relevantes"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selección copiada al portapapeles"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Revisar"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Sobre Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Hecho"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Esta semana"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Quien"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Editar acción"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Esperar hasta"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Imprimir"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Pasar completadas a Archivo"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Orden temporal"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Cuando"/>
<attribute NAME="addons.${name}.listActions" VALUE="Lista de acciones"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Prioridad"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="por Contexto"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Refrescar"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Listar acciones por orden temporal"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Hoy"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Sobre"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Contexto"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Pasar completadas a Revisar"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Esperar a"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Orden temporal"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.editAction" VALUE="Editar acción"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Hecho"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Sin asignar"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="por Quien"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Listar acciones por persona"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Listar acciones por proyecto"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copiar"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Quien"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Acción"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convertir acciones desde notación"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Contexto"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Lista acciones por contexto"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archivo"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filtrar completadas por defecto"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filtrar hechos"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Hoy"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Proyecto"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Vista por defecto"/>
</node>
<node TEXT="fr" ID="ID_1340088486" CREATED="1682925567443" MODIFIED="1682925567502">
<attribute_layout NAME_WIDTH="203.24999 pt" VALUE_WIDTH="272.24999 pt"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Par projet"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Sélectionner les noeuds"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Annuler"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Afficher les notes"/>
<attribute NAME="freeplaneGTD.doneTimeline.EARLIER" VALUE="Antérieur"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Réduire la carte pour n&apos;afficher que les actions personnelles"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Sélection copiée dans le presse-papiers"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Revue"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="À propos de Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Se souvenir de la dernière position"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Terminée"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Cette semaine"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Responsable"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Modifier action"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="En attente jusqu’au"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Imprimer"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Déplacement terminée pour archiver"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Par échéance"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Échéance"/>
<attribute NAME="addons.${name}.listActions" VALUE="Liste des prochaines actions"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Priorité"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Par contexte"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Actualiser"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.title" VALUE="Actions terminées"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Liste chronologique des actions"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_WEEK" VALUE="La semaine dernière"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="À propos"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.tooltip" VALUE="Liste chronologique des actions terminées"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Contexte"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Déplacement terminée à donner votre avis"/>
<attribute NAME="freeplaneGTD.actioneditor.cancelled" VALUE="Annulée"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="En attente de"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Échéance"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.editAction" VALUE="Modifier action"/>
<attribute NAME="freeplaneGTD.doneTimeline.TODAY" VALUE="Aujourd’hui"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Non assigné"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Par responsable"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Liste les actions par responsable"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Liste les actions par projet"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Copier"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Responsable"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Action"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_MONTH" VALUE="Le mois dernier"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Convertir action à partir du libellé"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Contexte"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Liste les actions par contexte"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archives"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Par défaut, masquer les actions terminées"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Masquer les actions terminées"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Aujourd&apos;hui"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projet"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Par défaut, lister les actions par"/>
</node>
<node TEXT="hu" ID="ID_414310356" CREATED="1682925567502" MODIFIED="1682925567563">
<attribute_layout NAME_WIDTH="206.24999 pt" VALUE_WIDTH="229.49999 pt"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Projektenként"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Elemek kiválasztása"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Bezárás"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Jegyzetek megjelenítése"/>
<attribute NAME="freeplaneGTD.doneTimeline.EARLIER" VALUE="Korábbi időszak"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Nem kiválasztott ágak automatikus összecsukása"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Választott elemek a vágólapra másolva."/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Átnézendő"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="A Freeplane|GTD+ névjegye"/>
<attribute NAME="freeplaneGTD_remember_last_position" VALUE="Utolsó ablakpozíció megjegyzése"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Kész"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Ezen a héten"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Felelős"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Feladat szerkesztése"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Meddig vár"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Nyomtatás"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Kész feladatok arcívumba"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Idővonal"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Időpont"/>
<attribute NAME="addons.${name}.listActions" VALUE="Teendők"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Prioritás"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Kontextusonként"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Frissítés"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD tulajdonságai"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.title" VALUE="Lezárt feladatok"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Feladatok listája időrendi sorrendben"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_WEEK" VALUE="Előző hét"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Névjegy"/>
<attribute NAME="freeplaneGTD.tab.done_timeline.tooltip" VALUE="Lezárt feladatok időrendes összesítése"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontextus"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Kész feladatok átnézésre"/>
<attribute NAME="freeplaneGTD.actioneditor.cancelled" VALUE="Mégsem"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Kire vár"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Idővonal"/>
<attribute NAME="addons.${name}.editAction" VALUE="Szerkesztés"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.doneTimeline.TODAY" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Ok"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Kontextus nélkül"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Személyenként"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Feladatok listája személyenként"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Feladatok listája projektenként"/>
<attribute NAME="freeplaneGTD.view.when.unscheduled" VALUE="Nincs ütemezve"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Vágólapra"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Végrehajtó"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Feladat"/>
<attribute NAME="OptionPanel.freeplaneGTD_last_position_w" VALUE="Szélesség"/>
<attribute NAME="OptionPanel.freeplaneGTD_last_position_x" VALUE="X pozíció"/>
<attribute NAME="OptionPanel.freeplaneGTD_last_position_y" VALUE="Y pozíció"/>
<attribute NAME="freeplaneGTD.doneTimeline.LAST_MONTH" VALUE="Előző hónap"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Feladatok létrehozása rövidítésből"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Kontextus"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archívum"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Kész elemek szűrése alapból"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Lezártak szűrése"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="OptionPanel.freeplaneGTD_last_position_h" VALUE="Magasság"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Kezdeti feladat nézet"/>
</node>
<node TEXT="nl" ID="ID_830590479" CREATED="1682925567563" MODIFIED="1682925567607">
<attribute_layout NAME_WIDTH="203.24999 pt" VALUE_WIDTH="287.99999 pt"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="Volgens Project"/>
<attribute NAME="addons.${name}.editAction" VALUE="Wijzig actie"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Selecteer nodes"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Sluit"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Klaar"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Niet toegekend"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Toon notities"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Volgens Wie"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Vouw de map dicht zodat alleen relevante taken getoond worden"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Lijst van gedelegeerde acties"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Selectie gekopieerd naar het clipboard"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Review"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="Over Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Klaar"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Deze week"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Wie"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Lijst van projectacties"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Pas actie aan"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Print"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Kopieer"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Verplaats afgeronden naar archief"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Tijdslijn"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Wanneer"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Wie"/>
<attribute NAME="addons.${name}.listActions" VALUE="Lijst met eerstvolgende acties"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Prioriteit"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="Volgens Context"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Ververs"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Actie"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Volgens Tijdslijn"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Converteer actie vanuit omschrijving"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Vandaag"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="Over"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Context"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Lijst van contextuele acties"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Archief"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filter de afgewerkte acties er standaard uit."/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Filter klaar"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Context"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Vandaag"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Verplaats afgeronden naar review"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Project"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Tijdslijn"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Standaard actie overzicht"/>
</node>
<node TEXT="ru" ID="ID_626493571" CREATED="1682925567607" MODIFIED="1682925567663">
<attribute_layout NAME_WIDTH="203.24999 pt" VALUE_WIDTH="247.49999 pt"/>
<attribute NAME="freeplaneGTD.tab.project.title" VALUE="По проекту"/>
<attribute NAME="freeplaneGTD.button.select" VALUE="Выбрать узлы"/>
<attribute NAME="freeplaneGTD.button.cancel" VALUE="Закрыть"/>
<attribute NAME="freeplaneGTD.button.show_notes" VALUE="Показать заметки"/>
<attribute NAME="OptionPanel.freeplaneGTD_auto_fold_map" VALUE="Свернуть карту и показать только значимые задачи"/>
<attribute NAME="freeplaneGTD.message.copy_ok" VALUE="Выбранное скопировано в буфер обмена"/>
<attribute NAME="freeplaneGTD.config.reviewDirName" VALUE="Пересмотр"/>
<attribute NAME="freeplaneGTD.tab.about.tooltip" VALUE="О Freeplane|GTD+"/>
<attribute NAME="freeplaneGTD.actioneditor.done" VALUE="Завершено"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="На этой неделе"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Кто"/>
<attribute NAME="freeplaneGTD.actioneditor.title" VALUE="Изменить действие"/>
<attribute NAME="freeplaneGTD.actioneditor.waitUntil" VALUE="Ждать пока"/>
<attribute NAME="freeplaneGTD.button.print" VALUE="Печать"/>
<attribute NAME="addons.${name}.archiveTask" VALUE="Переместить завершенное в архив"/>
<attribute NAME="freeplaneGTD.tab.when.title" VALUE="Сроки"/>
<attribute NAME="freeplaneGTD.actioneditor.when" VALUE="Когда"/>
<attribute NAME="addons.${name}.listActions" VALUE="Следующий список действий"/>
<attribute NAME="freeplaneGTD.actioneditor.priority" VALUE="Приоритет"/>
<attribute NAME="freeplaneGTD.tab.context.title" VALUE="По контексту"/>
<attribute NAME="freeplaneGTD.button.refresh" VALUE="Обновить"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="дополнение freeplaneGTD"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="freeplaneGTD.tab.when.tooltip" VALUE="Список действий по времени"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Сегодня"/>
<attribute NAME="freeplaneGTD.tab.about.title" VALUE="О программе"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Контекст"/>
<attribute NAME="addons.${name}.reviewTask" VALUE="Переместить завершенное в пересмотр"/>
<attribute NAME="freeplaneGTD.actioneditor.waitFor" VALUE="Ждать"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Когда"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.${name}.editAction" VALUE="Изменить действие"/>
<attribute NAME="freeplaneGTD.button.done" VALUE="Завершено"/>
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Неназначено"/>
<attribute NAME="freeplaneGTD.tab.who.title" VALUE="Исполнители"/>
<attribute NAME="freeplaneGTD.tab.who.tooltip" VALUE="Список действий по исполнителям"/>
<attribute NAME="freeplaneGTD.tab.project.tooltip" VALUE="Список действий по проекту"/>
<attribute NAME="freeplaneGTD.button.copy" VALUE="Копировать"/>
<attribute NAME="freeplaneGTD.actioneditor.delegate" VALUE="Исполнитель"/>
<attribute NAME="freeplaneGTD.actioneditor.action" VALUE="Действие"/>
<attribute NAME="addons.${name}.parseShorthand" VALUE="Конвертировать задачи из стенограммы"/>
<attribute NAME="freeplaneGTD.actioneditor.context" VALUE="Контекст"/>
<attribute NAME="freeplaneGTD.tab.context.tooltip" VALUE="Список действий по контексту"/>
<attribute NAME="freeplaneGTD.config.archiveDirName" VALUE="Архивы"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Фильтровать завершенные задачи по умолчанию"/>
<attribute NAME="freeplaneGTD.button.filter_done" VALUE="Фильтровать завершенные"/>
<attribute NAME="freeplaneGTD.actioneditor.today" VALUE="Сегодня"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Проект"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Обычный вид действий"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_1357879524" CREATED="1323057303788" MODIFIED="1570906419734">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>

  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="24.75 pt" VALUE_WIDTH="280.49999 pt"/>
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
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/JSHandler.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/ReportWindow.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/mover/DoneMover.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/editor/MultinodeActionEditor.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/scripts/init/AddGTDChangeListener.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/GTDMapChangeListener.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/GTDNodeChangeListener.groovy"/>
</node>
<node TEXT="scripts" POSITION="right" ID="ID_111817827" CREATED="1323057303804" MODIFIED="1541834957938">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<node TEXT="ParseShorthand.groovy" ID="ID_900035903" CREATED="1323057833226" MODIFIED="1495225330848">
<attribute_layout NAME_WIDTH="115.5 pt" VALUE_WIDTH="89.25 pt"/>
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
<node TEXT="EditTask.groovy" ID="ID_572939250" CREATED="1415043619831" MODIFIED="1497989300199">
<attribute_layout NAME_WIDTH="120.75 pt" VALUE_WIDTH="87 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.editAction"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/${name}"/>
<attribute NAME="executionMode" VALUE="on_selected_node"/>
<attribute NAME="keyboardShortcut" VALUE="F4" OBJECT="org.freeplane.features.format.FormattedObject|java.lang.String&amp;#x7c;F4|number:decimal:#0.####"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="ReviewTask.groovy" ID="ID_1165981840" CREATED="1453634472702" MODIFIED="1495225405523">
<attribute_layout NAME_WIDTH="122.25 pt" VALUE_WIDTH="84 pt"/>
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
<node TEXT="ArchiveTask.groovy" ID="ID_1222024407" CREATED="1453634472702" MODIFIED="1495225397428">
<attribute_layout NAME_WIDTH="122.25 pt" VALUE_WIDTH="84 pt"/>
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
<node TEXT="lib" POSITION="right" ID="ID_1003498816" CREATED="1413287263211" MODIFIED="1541834958038"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
</node>
<node TEXT="zips" POSITION="right" ID="ID_1927628745" CREATED="1323057303835" MODIFIED="1541834958043">
<edge COLOR="#999999" WIDTH="3"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<node TEXT="icons" ID="ID_1422580718" CREATED="1323094256288" MODIFIED="1497481475102" LINK="resources/zips/icons/"/>
<node TEXT="lib" ID="ID_1543761795" CREATED="1413298467588" MODIFIED="1497481062534" LINK="../out/lib/"/>
<node TEXT="templates" ID="ID_1096097283" CREATED="1446325478471" MODIFIED="1497481445935" LINK="resources/zips/templates"/>
<node TEXT="scripts" ID="ID_1422985646" CREATED="1525898306772" MODIFIED="1525898306773"/>
</node>
<node TEXT="images" FOLDED="true" POSITION="right" ID="ID_907142452" CREATED="1323172874273" MODIFIED="1541834958102" LINK="resources/images"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
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
</node>
</map>
