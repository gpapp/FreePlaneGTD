<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Freeplane|GTD+" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1414520219504" BACKGROUND_COLOR="#97c7dc" LINK="http://www.itworks.hu/index.php/freeplane-gtd/">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000" STYLE="as_parent" MAX_WIDTH="600" MIN_WIDTH="1">
<font NAME="SansSerif" SIZE="12" BOLD="false" ITALIC="false"/>
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
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
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
<attribute_layout NAME_WIDTH="133" VALUE_WIDTH="161"/>
<attribute NAME="name" VALUE="freeplaneGTD"/>
<attribute NAME="version" VALUE="v1.0-beta"/>
<attribute NAME="author" VALUE="Gergely Papp"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.2.10"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
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
<node TEXT="description" POSITION="left" ID="ID_1125389651" CREATED="1323057303632" MODIFIED="1414520219527">
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
<node ID="ID_833172562" CREATED="1323057648210" MODIFIED="1412235539130" HGAP="-170" VSHIFT="-100" BACKGROUND_COLOR="#ffff99"><richcontent TYPE="NODE">

<html>
            <head>
    
  </head>
            <body>
              <p>
      Freeplane|GTD creates views of GTD-style Next Action lists extracted from a mind map, providing views:
    </p>
              <ul>
                <li>
        By Project
      </li>
                <li>
        By Context (where the next action gets done)
      </li>
                <li>
        By Owner (who owns it, if not you)
      </li>
                <li>
        By Due Date (when)
      </li>
              </ul>
              <p>
      The completed tasks can be filtered.
    </p>
            </body>
          </html>
</richcontent>
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="changes" POSITION="left" ID="ID_1824187995" CREATED="1323057303648" MODIFIED="1414520219530">
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
<node TEXT="v0.6" ID="ID_47409214" CREATED="1323059645367" MODIFIED="1324325847122" VSHIFT="-10">
<edge COLOR="#999999"/>
<node TEXT="First add-on release" ID="ID_1768457101" CREATED="1323059651882" MODIFIED="1323063753570">
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="v0.7" ID="ID_996008688" CREATED="1324325692137" MODIFIED="1324325839809" VSHIFT="-20">
<node TEXT="Shorthand markup parsing, code refactored" ID="ID_1258100495" CREATED="1324325700575" MODIFIED="1324325734325"/>
</node>
<node TEXT="v0.8" ID="ID_776957693" CREATED="1324325737356" MODIFIED="1324325841294">
<node TEXT="Hyperlinking to nodes from next action lists, default When = This Week, Today icon marking" ID="ID_1912232580" CREATED="1324325742669" MODIFIED="1324325832544"/>
</node>
<node TEXT="v0.8.1" ID="ID_1198786223" CREATED="1330899459648" MODIFIED="1330899464242">
<node TEXT="Fixed bug in ConvertShorthand parsing (wasn&apos;t checking if node was empty before parsing)" ID="ID_1164324645" CREATED="1330899465976" MODIFIED="1330899506757"/>
</node>
<node TEXT="v0.9" ID="ID_1278634052" CREATED="0" MODIFIED="0">
<node TEXT="Added support to close the GTD window with ESC key" ID="ID_1417161116" CREATED="0" MODIFIED="0"/>
<node TEXT="Added Done icon marking" ID="ID_438867624" CREATED="0" MODIFIED="0"/>
<node TEXT="Showing done items crossed out in project view" ID="ID_815314175" CREATED="0" MODIFIED="0"/>
<node TEXT="Added support to filter done items" ID="ID_1079470452" CREATED="0" MODIFIED="0"/>
<node TEXT="Parsed and reformatted set dates to use uniform, locale specific date format (NB. truncates time from items)" ID="ID_875471127" CREATED="0" MODIFIED="0"/>
</node>
<node TEXT="v1.0" ID="ID_550285274" CREATED="0" MODIFIED="0">
<node TEXT="Added global preference to filter completed tasks" ID="ID_272767125" CREATED="0" MODIFIED="1414531756261">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="Added Hungarian translation" ID="ID_921527886" CREATED="0" MODIFIED="1414531756259">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="in the front" ID="ID_512682227" CREATED="1413477280860" MODIFIED="1414531756258">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="Don&apos;t allow multiple instances of decoration icons to come from shorthand" ID="ID_334479175" CREATED="1413475260651" MODIFIED="1414544620706">
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
<node TEXT="Add preference to select default view" ID="ID_992161123" CREATED="1413201081977" MODIFIED="1414544620777">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Packaging"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Add preference to show/hide done items per default" ID="ID_831003287" CREATED="1413201048622" MODIFIED="1414544620837">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Packaging"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Multi-level projects" ID="ID_684898285" CREATED="1412322165283" MODIFIED="1414544620944">
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
<node TEXT="Close window when selecting an item from the list" ID="ID_1447284219" CREATED="1413617558996" MODIFIED="1414544621028">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Re-parse shorthand for items with task icon (to update the attributes)" ID="ID_412919850" CREATED="1413617759413" MODIFIED="1414544621105">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
<attribute NAME="Who" VALUE="Kup&#xe1;s Tibor"/>
</node>
<node TEXT="Add shortcut parser option to convert ? to marker" ID="ID_657496091" CREATED="1413794950783" MODIFIED="1414544621131">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Rework ui to use groovy&apos;s SwingBuilder" ID="ID_1662989174" CREATED="1413475441440" MODIFIED="1414544621170">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Update copy to clipboard to support TXT/HTML exports" ID="ID_1773054557" CREATED="1414520129893" MODIFIED="1414544621212">
<icon BUILTIN="yes"/>
<icon BUILTIN="button_ok"/>
<attribute NAME="Where" VALUE="Coding"/>
<attribute NAME="When" VALUE="v1.0"/>
</node>
<node TEXT="Scroll open panes up on the overview" ID="ID_138027227" CREATED="1412588960016" MODIFIED="1414544621265">
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
<node TEXT="Marker to scope configuration" ID="ID_1024363427" CREATED="1412322213819" MODIFIED="1414544621339">
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
<node TEXT="Marker to scope map parsing" ID="ID_1856466294" CREATED="1412322213819" MODIFIED="1414544621383">
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
</node>
</node>
<node TEXT="license" POSITION="left" ID="ID_1073906233" CREATED="1323057303663" MODIFIED="1414520219534">
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
<node TEXT="This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 3 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;GNU General Public License for more details." ID="ID_1763974336" CREATED="1323057303679" MODIFIED="1323093766804" HGAP="90">
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="preferences.xml" POSITION="left" ID="ID_800601165" CREATED="1323057303742" MODIFIED="1414520219540">
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
<node TEXT="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#xa;&lt;preferences_structure&gt;&#xa;         &lt;tabbed_pane&gt;&#xa;                  &lt;tab name=&quot;plugins&quot;&gt;&#xa;                           &lt;separator name=&quot;freeplaneGTD&quot;&gt;&#xa;                &lt;boolean name=&quot;freeplaneGTD_filter_done&quot; min=&quot;0&quot; /&gt;&#xa;                &lt;combo name=&quot;freeplaneGTD_default_view&quot;&gt;&#xa;                    &lt;choice value=&quot;0&quot; text=&quot;freeplaneGTD_view_project&quot; /&gt;&#xa;                    &lt;choice value=&quot;1&quot; text=&quot;freeplaneGTD_view_who&quot; /&gt;&#xa;                    &lt;choice value=&quot;2&quot; text=&quot;freeplaneGTD_view_context&quot; /&gt;&#xa;                    &lt;choice value=&quot;3&quot; text=&quot;freeplaneGTD_view_when&quot; /&gt;&#xa;                &lt;/combo&gt;&#xa;                           &lt;/separator&gt;&#xa;                  &lt;/tab&gt;&#xa;         &lt;/tabbed_pane&gt;&#xa;&lt;/preferences_structure&gt;" ID="ID_561768128" CREATED="1413235874574" MODIFIED="1413659673642"/>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_680880217" CREATED="1323057303742" MODIFIED="1414520219543">
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
<attribute_layout NAME_WIDTH="170" VALUE_WIDTH="173"/>
<attribute NAME="freeplaneGTD_filter_done" VALUE="false"/>
<attribute NAME="freeplaneGTD_default_view" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2|#0.####"/>
</node>
<node TEXT="translations" POSITION="left" ID="ID_170932006" CREATED="1323057303757" MODIFIED="1414520219548">
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
<node TEXT="en" ID="ID_590286510" CREATED="1323057303773" MODIFIED="1414459287843" HGAP="50" VSHIFT="10">
<attribute_layout NAME_WIDTH="277" VALUE_WIDTH="294"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.listNextActions" VALUE="Next action list"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD addon"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="Filter completed tasks by default"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Default action view"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Project"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Who"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Context"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Timeline"/>
<attribute NAME="addons.parseShorthand" VALUE="Convert tasks from shorthand"/>
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
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Unassigned"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Today"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="This week"/>
<edge COLOR="#999999"/>
</node>
<node TEXT="hu" ID="ID_1234559081" CREATED="1323057303773" MODIFIED="1414460165850" HGAP="50" VSHIFT="10">
<attribute_layout NAME_WIDTH="277" VALUE_WIDTH="294"/>
<attribute NAME="addons.${name}" VALUE="FreeplaneGTD"/>
<attribute NAME="main_menu_scripting/freeplaneGTD" VALUE="FreeplaneGTD"/>
<attribute NAME="addons.listNextActions" VALUE="Teend\u0151k"/>
<attribute NAME="OptionPanel.separator.freeplaneGTD" VALUE="freeplaneGTD tulajdons\u00E1gai"/>
<attribute NAME="OptionPanel.freeplaneGTD_filter_done" VALUE="K\u00E9sz elemek sz\u0171r\u00E9se alapb\u00F3l"/>
<attribute NAME="OptionPanel.freeplaneGTD_default_view" VALUE="Kezdeti feladat n\u00E9zet"/>
<attribute NAME="freeplaneGTD_view_project" VALUE="Projekt"/>
<attribute NAME="freeplaneGTD_view_who" VALUE="Who"/>
<attribute NAME="freeplaneGTD_view_context" VALUE="Kontextus"/>
<attribute NAME="freeplaneGTD_view_when" VALUE="Id\u0151vonal"/>
<attribute NAME="addons.parseShorthand" VALUE="Feladatok l\u00E9trehoz\u00E1sa r\u00F6vid\u00EDt\u00E9sb\u0151l"/>
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
<attribute NAME="freeplaneGTD.view.context.unassigned" VALUE="Kontextus n\u00E9lk\u00FCl"/>
<attribute NAME="freeplaneGTD.view.when.today" VALUE="Ma"/>
<attribute NAME="freeplaneGTD.view.when.this_week" VALUE="Ezen a h\u00E9ten"/>
<edge COLOR="#999999"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_1357879524" CREATED="1323057303788" MODIFIED="1414520466435">
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
<attribute_layout NAME_WIDTH="60" VALUE_WIDTH="483"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/freeplaneGTD.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/freeplaneShorthand.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/icons/fpgtdIcon.png"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/DateUtil.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/lib/freeplaneGTD/GTDMapReader.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/freeplaneGTD.png"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/freeplaneGTD-icon.png"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/fpgtdLogo.png"/>
</node>
<node TEXT="scripts" POSITION="right" ID="ID_111817827" CREATED="1323057303804" MODIFIED="1414520219567">
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
<node TEXT="freeplaneGTD.groovy" ID="ID_875504923" CREATED="1323057833226" MODIFIED="1412441574918" HGAP="30">
<attribute_layout NAME_WIDTH="275" VALUE_WIDTH="212"/>
<attribute NAME="menuTitleKey" VALUE="addons.listNextActions"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/freeplaneGTD"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="control H"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<edge COLOR="#999999"/>
<node TEXT="import java.awt.*&#xa;import java.awt.BorderLayout as BL&#xa;import java.awt.event.ActionEvent&#xa;import java.awt.event.KeyEvent&#xa;import java.awt.event.MouseAdapter&#xa;import java.awt.event.MouseEvent&#xa;import java.awt.datatransfer.StringSelection&#xa;import javax.swing.*&#xa;import javax.swing.event.ChangeEvent&#xa;import javax.swing.event.ChangeListener&#xa;import javax.swing.event.HyperlinkEvent&#xa;import javax.swing.event.HyperlinkListener&#xa;import javax.swing.text.html.HTMLEditorKit&#xa;import javax.swing.text.html.StyleSheet&#xa;&#xa;    &#xa;import groovy.swing.SwingBuilder&#xa;&#xa;import org.freeplane.core.ui.components.UITools&#xa;import org.freeplane.core.util.TextUtils&#xa;import org.freeplane.plugin.script.proxy.Proxy&#xa;&#xa;import freeplaneGTD.DateUtil&#xa;import freeplaneGTD.GTDMapReader&#xa;import freeplaneGTD.MyTransferHandler&#xa;&#xa;String title = &quot;GTD Next Actions&quot;&#xa;String userPath=c.userDirectory.toString()&#xa;String txtVer = &quot;1.0-beta&quot;;&#xa;String txtURI = &quot;http://www.itworks.hu/index.php/freeplane-gtd+&quot;;&#xa;&#xa;&#xa;def panelTitle = { panelT, count=null -&gt; new Tag(&apos;html&apos;, new Tag (&apos;body&apos;, &#xa;                                                                  new Tag (&apos;div&apos;, panelT, [style:&apos;font-weight:bold;font-style:italic&apos;] ),[height:&apos;50&apos;]).addContent(count!=null?new Tag (&apos;div&apos;, count, [style:&apos;font-size:24pt;color:#666666;text-align:center&apos;] ): &apos;&apos;)) }&#xa;&#xa;class Tag {&#xa;    String tagName&#xa;    def content = []&#xa;    def params = []&#xa;    &#xa;    Tag (tagName) {&#xa;        this.tagName=tagName&#xa;    }&#xa;    &#xa;    Tag (tagName, content, params=null) {&#xa;        this(tagName)&#xa;        if (content) { this.content=[content] }&#xa;        if (params) { this.params=params }&#xa;    }&#xa;    &#xa;    Tag addContent (String content){&#xa;        this.content.push(content)&#xa;        return this&#xa;    }&#xa;    Tag addContent (Tag tag){&#xa;        this.content.push(tag)&#xa;        return this&#xa;    }    &#xa;    Tag addContent (tagName, content, params=null) {&#xa;        Tag tag = new Tag(tagName,content,params)&#xa;        this.content.push(tag)&#xa;        return this&#xa;    }&#xa;    Tag addChild (tagName, params=null) {&#xa;        Tag tag = new Tag(tagName)&#xa;        this.content.push(tag)&#xa;        return tag&#xa;    }&#xa;    &#xa;        &#xa;    String toString () {&#xa;        String retval = &apos;&lt;&apos; + tagName&#xa;        params.each {&#xa;          retval += &apos; &apos; + it.key + &apos;=\&apos;&apos; + it.value + &apos;\&apos;&apos;&#xa;        }&#xa;        retval += &apos;&gt;&apos;&#xa;        content.each {&#xa;            retval+=it&#xa;        }&#xa;        retval += &apos;&lt;/&apos; + tagName + &apos;&gt;&apos; &#xa;        return retval&#xa;    }&#xa;}&#xa;&#xa;class Report {&#xa;    boolean filterDone&#xa;    int selPane&#xa;&#x9;Proxy.Node rootNode;&#xa;&#x9;def NAList;&#xa;&#x9;GTDMapReader mapreader;&#xa;&#xa;    Report (Proxy.Node rootNode) {&#xa;        this.rootNode = rootNode&#xa;&#x9;&#x9;this.mapreader = new GTDMapReader(rootNode)&#xa;    }&#xa;&#xa;&#x9;public def getNAList(){&#xa;&#x9;&#x9;NAList = findNextActions(rootNode, mapreader.iconProject, mapreader.iconNextAction, mapreader.iconToday, mapreader.iconDone);&#xa;&#x9;&#x9;return NAList;&#xa;&#x9;}&#xa;&#xa;&#xa;&#x9;//--------------------------------------------------------------&#xa;&#x9;// find parent for the next action, either direct (task) or indirect (project)&#xa;&#x9;private def findNextActionProject(Proxy.Node thisNode, String iconProject){&#xa;&#x9;&#x9;Proxy.Node parentNode = thisNode.getParent();&#xa;&#x9;&#x9;def retval;&#xa;&#x9;&#x9;if (parentNode!=null &amp;&amp; thisNode.isDescendantOf(parentNode)){&#xa;&#x9;&#x9;&#x9;Proxy.Node walker = parentNode;&#xa;&#x9;&#x9;&#x9;while (walker) {&#xa;&#x9;&#x9;&#x9;&#x9;if(walker.icons.contains(iconProject)) {&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;retval=walker.text+(retval?&apos;/&apos;+retval:&apos;&apos;);&#xa;&#x9;&#x9;&#x9;&#x9;}&#xa;&#x9;&#x9;&#x9;&#x9;walker = walker.parent;&#xa;&#x9;&#x9;&#x9;}&#xa;&#x9;&#x9;}&#x9;&#x9;&#xa;&#x9;&#x9;return retval?retval:parentNode.text;&#xa;&#x9;}&#xa;&#xa;&#x9;//--------------------------------------------------------------&#xa;&#x9;// recursive walk through nodes to find Next Actions&#xa;&#x9;def findNextActions(Proxy.Node thisNode, String iconProject, String iconNextAction, String iconToday, String iconDone){&#xa;&#x9;&#x9;def icons = thisNode.icons.icons;&#xa;&#x9;&#x9;def naAction = thisNode.text;&#xa;&#x9;&#x9;def naNodeID = thisNode.nodeID;&#xa;&#xa;&#x9;&#x9;// use index method to get attributes&#xa;&#x9;&#x9;String naContext = thisNode[&apos;Where&apos;].toString();&#xa;&#x9;&#x9;String naWho = thisNode[&apos;Who&apos;].toString();&#xa;&#x9;&#x9;String naWhen = thisNode[&apos;When&apos;].toString();&#xa;&#xa;&#x9;&#x9;// take care of missing attributes. null or empty string evaluates as boolean false&#xa;&#x9;&#x9;if (!naWhen) {&#xa;&#x9;&#x9;&#x9;naWhen = TextUtils.getText(&quot;freeplaneGTD.view.when.this_week&quot;);&#xa;&#x9;&#x9;} else {&#xa;&#x9;&#x9;&#x9;&#x9;naWhen = DateUtil.normalizeDate(naWhen);&#xa;&#x9;&#x9;&#x9;&#x9;//TODO: write back value&#xa;&#x9;&#x9;&#x9;&#x9;thisNode[&apos;When&apos;] = naWhen;&#xa;&#x9;&#x9;}&#xa;&#x9;&#x9;&#xa;&#x9;&#x9;def result = [];&#xa;&#x9;&#x9;// include result if it has next action icon and its not the icon setting node for next actions&#xa;&#x9;&#x9;if (icons.contains(iconNextAction)){&#xa;&#x9;&#x9;&#x9;if (!(naAction =~ /Icon:/)){&#xa;&#x9;&#x9;&#x9;&#x9;def naProject = findNextActionProject(thisNode, iconProject);&#xa;&#x9;&#x9;&#x9;&#x9;if (icons.contains(iconToday)) {&#xa;&#x9;&#x9;&#x9;&#x9;    naWhen = TextUtils.getText(&apos;freeplaneGTD.view.when.today&apos;);&#xa;                }&#xa;&#x9;&#x9;&#x9;&#x9;boolean done = icons.contains(iconDone)&#xa;&#x9;&#x9;&#x9;&#x9;if (!(filterDone &amp;&amp; done)) {&#xa;&#x9;&#x9;&#x9;&#x9;&#x9;result = [action:naAction, project:naProject, context:naContext, who:naWho, when:naWhen, nodeID:naNodeID, done:done];&#xa;&#x9;&#x9;&#x9;&#x9;}&#xa;&#x9;&#x9;&#x9;}&#xa;&#x9;&#x9;}&#xa;&#xa;&#x9;&#x9;thisNode.children.each {&#xa;&#x9;&#x9;&#x9;result += findNextActions(it, iconProject, iconNextAction, iconToday, iconDone);&#xa;&#x9;&#x9;}&#xa;&#x9;&#x9;return result;&#xa;&#x9;}&#xa;&#xa;&#x9;//--------------------------------------------------------------&#xa;&#x9;// parse the GTD mind map&#xa;&#x9;void parseMap(){&#xa;&#x9;&#x9;// Expand any nodes with next action shorthand&#xa;&#x9;&#x9;mapreader.convertShorthand(rootNode);&#xa;&#xa;&#x9;&#x9;// Get next action lists&#xa;&#x9;&#x9;NAList = getNAList();&#xa;&#x9;}&#xa;&#xa;    int projectCount () {&#xa;        return NAList.size()&#xa;    }&#xa;    &#xa;    int delegateCount () {&#xa;        //Filter the missing delegates&#xa;        return NAList.groupBy({it[&apos;who&apos;]}).keySet().findAll{it}.size()&#xa;    }&#xa;&#xa;    String projectText() {&#xa;        Tag retval = new Tag (&apos;body&apos;).&#xa;            addContent(&apos;h1&apos;, TextUtils.getText(&quot;freeplaneGTD_view_project&quot;), [height:&apos;50px&apos;, width:&apos;100%&apos;] ) &#xa;        def naByGroup = NAList.groupBy{it[&apos;project&apos;]}&#xa;&#x9;&#x9;naByGroup = naByGroup.sort{it.toString().toLowerCase()}&#xa;        naByGroup.each {&#xa;            key, value -&gt; &#xa;            Tag curItem = retval.addChild(&apos;h2&apos;).addContent(key).addChild(&apos;ul&apos;)&#xa;            naByGroup[key].each {&#xa;                Tag wrap = curItem.addChild(&apos;li&apos;)&#xa;                if (it[&apos;done&apos;]) wrap=wrap.addChild(&apos;strike&apos;)&#xa;                wrap.addContent(&apos;a&apos;,it[&apos;action&apos;],[href:it[&apos;nodeID&apos;]]).addContent( &#xa;                                                   (it[&apos;who&apos;]?&apos; [&apos;+it[&apos;who&apos;]+&apos;]&apos;:&apos;&apos;) +&#xa;                                                   (it[&apos;when&apos;]?&apos; {&apos;+it[&apos;when&apos;]+&apos;}&apos;:&apos;&apos;) +&#xa;                                                   (it[&apos;context&apos;]?&apos; @&apos;+it[&apos;context&apos;]:&apos;&apos;))&#xa;            }&#xa;        }&#xa;&#x9;&#x9;return retval.toString()&#xa;    }&#xa;    &#xa;    String delegateText() {&#xa;        Tag retval = new Tag (&apos;body&apos;).&#xa;            addContent(&apos;h1&apos;, TextUtils.getText(&quot;freeplaneGTD_view_who&quot;), [height:&apos;50px&apos;, width:&apos;100%&apos;] ) &#xa;        def naByGroup = NAList.groupBy{it[&apos;who&apos;]}&#xa;&#x9;&#x9;naByGroup = naByGroup.sort{it.toString().toLowerCase()}&#xa;        naByGroup.each {&#xa;            key, value -&gt; &#xa;            if(key){&#xa;                Tag curItem = retval.addChild(&apos;h2&apos;).addContent(key).addChild(&apos;ul&apos;)&#xa;                naByGroup[key].each {&#xa;                    Tag wrap = curItem.addChild(&apos;li&apos;)&#xa;                    if (it[&apos;done&apos;]) wrap=wrap.addChild(&apos;strike&apos;)&#xa;                    wrap.addContent(&apos;a&apos;,it[&apos;action&apos;],[href:it[&apos;nodeID&apos;]]).addContent( &#xa;                                                           (it[&apos;when&apos;]?&apos; {&apos;+it[&apos;when&apos;]+&apos;}&apos;:&apos;&apos;) +&#xa;                                                           (it[&apos;context&apos;]?&apos; @&apos;+it[&apos;context&apos;]:&apos;&apos;) +&#xa;                                                            &apos; for &apos;+it[&apos;project&apos;])&#xa;                }&#xa;            }&#xa;        }&#xa;&#x9;&#x9;return retval.toString()&#xa;    }&#xa;    &#xa;    String contextText() {&#xa;        Tag retval = new Tag (&apos;body&apos;).&#xa;            addContent(&apos;h1&apos;, TextUtils.getText(&quot;freeplaneGTD_view_context&quot;), [height:&apos;50px&apos;, width:&apos;100%&apos;] ) &#xa;        def naByGroup = NAList.groupBy{it[&apos;context&apos;]}&#xa;&#x9;&#x9;naByGroup = naByGroup.sort{it.toString().toLowerCase()}&#xa;        naByGroup.each {&#xa;            key, value -&gt; &#xa;            Tag curItem = retval.addChild(&apos;h2&apos;).&#xa;                addContent(key?key:TextUtils.getText(&quot;freeplaneGTD.view.context.unassigned&quot;)).addChild(&apos;ul&apos;)&#xa;            naByGroup[key].each {&#xa;                Tag wrap = curItem.addChild(&apos;li&apos;)&#xa;                if (it[&apos;done&apos;]) wrap=wrap.addChild(&apos;strike&apos;)&#xa;                wrap.addContent(&apos;a&apos;,it[&apos;action&apos;],[href:it[&apos;nodeID&apos;]]).addContent( &#xa;                                               (it[&apos;who&apos;]?&apos; [&apos;+it[&apos;who&apos;]+&apos;]&apos;:&apos;&apos;) +&#xa;                                               (it[&apos;when&apos;]?&apos; {&apos;+it[&apos;when&apos;]+&apos;}&apos;:&apos;&apos;) +&#xa;                                                &apos; for &apos;+it[&apos;project&apos;])&#xa;            }&#xa;        }&#xa;&#x9;&#x9;return retval.toString()&#xa;    }&#xa;    &#xa;    String timelineText() {&#xa;        Tag retval = new Tag (&apos;body&apos;).&#xa;            addContent(&apos;h1&apos;, TextUtils.getText(&quot;freeplaneGTD_view_when&quot;), [height:&apos;50px&apos;, width:&apos;100%&apos;] ) &#xa;        def naByGroup = NAList.groupBy{it[&apos;when&apos;]}&#xa;&#x9;&#x9;naByGroup = naByGroup.sort{it.toString().toLowerCase()}&#xa;        naByGroup.each {&#xa;            key, value -&gt; &#xa;            Tag curItem = retval.addChild(&apos;h2&apos;).addContent(key).addChild(&apos;ul&apos;)&#xa;            naByGroup[key].each {&#xa;                Tag wrap = curItem.addChild(&apos;li&apos;)&#xa;                if (it[&apos;done&apos;]) wrap=wrap.addChild(&apos;strike&apos;)&#xa;                wrap.addContent(&apos;a&apos;,it[&apos;action&apos;],[href:it[&apos;nodeID&apos;]]).addContent( &#xa;                                               (it[&apos;who&apos;]?&apos; [&apos;+it[&apos;who&apos;]+&apos;]&apos;:&apos;&apos;) +&#xa;                                               (it[&apos;context&apos;]?&apos; @&apos;+it[&apos;context&apos;]:&apos;&apos;) +&#xa;                                                &apos; for &apos;+it[&apos;project&apos;])&#xa;            }&#xa;        }&#xa;&#x9;&#x9;return retval.toString()&#xa;    }&#xa;}&#xa;&#xa;Report report = new Report(node.map.root)&#xa;&#xa;def refresh = {&#xa;    report.parseMap()&#xa;    projectPane.text = report.projectText()&#xa;    delegatePane.text = report.delegateText()&#xa;    contextPane.text = report.contextText()&#xa;    timelinePane.text = report.timelineText()&#xa;    tabbedPane.setTitleAt (0, panelTitle(TextUtils.getText(&quot;freeplaneGTD.tab.project.title&quot;), report.projectCount()).toString())&#xa;    tabbedPane.setTitleAt (1, panelTitle(TextUtils.getText(&quot;freeplaneGTD.tab.who.title&quot;), report.delegateCount()).toString())&#xa;&#xa;    tabbedPane.selectedIndex=report.selPane;&#xa;    cbFilterDone.selected=report.filterDone&#xa;}&#xa;&#xa;def swing = new SwingBuilder().edt {&#xa;    // make the frame half the height and width&#xa;    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize()&#xa;    int frHeight = (screenSize.height)/4*3&#xa;    int frWidth = (screenSize.width)/4*3&#xa;&#xa;    iconFrame = imageIcon(userPath + &quot;/icons/fpgtdIcon.png&quot;).image&#xa;    iconLogo = imageIcon(userPath + &quot;/resources/images/fpgtdLogo.png&quot;)&#xa;    mainFrame = frame(title:title, &#xa;                      iconImage: iconFrame,&#xa;                      size:[frWidth,frHeight], &#xa;                      defaultCloseOperation:JFrame.DISPOSE_ON_CLOSE, &#xa;                      show:false) {        &#xa;        borderLayout()&#xa;        reportPanel = panel (constraints:BL.CENTER) {&#xa;            gridLayout(cols:1, rows:1)&#xa;            tabbedPane = tabbedPane(tabPlacement:JTabbedPane.RIGHT, selectedIndex:report.selPane) {&#xa;                MyTransferHandler myTransferHandler = new MyTransferHandler();&#xa;                projectPanel = panel (toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.project.tooltip&quot;) ) {&#xa;                    gridLayout(cols:1, rows:1)&#xa;                    projectScroll = scrollPane () {&#xa;                        projectPane = editorPane(contentType:&apos;text/html&apos;, editable: false, transferHandler:myTransferHandler)&#xa;                    }&#xa;                }&#xa;                delegatePanel = panel (toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.who.tooltip&quot;)) {&#xa;                    gridLayout(cols:1, rows:1)&#xa;                    delegateScroll = scrollPane () {&#xa;                        delegatePane = editorPane(contentType:&apos;text/html&apos;, editable: false)&#xa;                    }&#xa;                }&#xa;                contextPanel = panel (name: panelTitle(TextUtils.getText(&quot;freeplaneGTD.tab.context.title&quot;)),&#xa;                                     toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.context.tooltip&quot;)) {&#xa;                    gridLayout(cols:1, rows:1)&#xa;                    contextScroll = scrollPane () {&#xa;                        contextPane = editorPane(contentType:&apos;text/html&apos;, editable: false)&#xa;                    }&#xa;                }&#xa;                timelinePanel = panel (name: panelTitle(TextUtils.getText(&quot;freeplaneGTD.tab.when.title&quot;)),&#xa;                                     toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.when.tooltip&quot;)) {&#xa;                    gridLayout(cols:1, rows:1)&#xa;                    timelineScroll = scrollPane() {&#xa;                        timelinePane = editorPane(contentType:&apos;text/html&apos;, editable: false)&#xa;                    }&#xa;                }&#xa;                panel (name: panelTitle(TextUtils.getText(&quot;freeplaneGTD.tab.about.title&quot;)),&#xa;                                     toolTipText: TextUtils.getText(&quot;freeplaneGTD.tab.about.tooltip&quot;)) {&#xa;                    panel (){&#xa;                        gridLayout(cols:2, rows:1)  &#xa;                        label(text: new Tag(&apos;html&apos;, &#xa;                                            new Tag(&apos;body&apos;, &#xa;                                                    new Tag (&apos;h1&apos;, &apos;Freeplane|&apos;)&#xa;                                                    .addContent(&apos;span&apos;, &apos;GTD&apos;, [style:&apos;color:#ff3300&apos;])&#xa;                                            .addContent(&apos;h2&apos;, &apos;Version &apos;+txtVer),[style:&apos;padding-left:25px&apos;])),&#xa;                              icon: iconLogo,&#xa;                              horizontalAlignment:JLabel.CENTER);&#xa;                    }&#xa;&#x9;&#x9;&#xa;                    linkURL = label(text:&quot;&lt;html&gt;&lt;h4&gt;by Gergely Papp&lt;br/&gt;&lt;h5&gt;based on the original code by Auxilus Systems LLC&lt;/h5&gt;&lt;h4&gt;Licensed under GNU GPL Version 3&lt;/h4&gt;&lt;a href=&apos;&quot;+txtURI+&quot;&apos;&gt;&quot;+txtURI+&quot;&lt;/a&gt;&lt;/html&gt;&quot;, horizontalAlignment:JLabel.CENTER, &#xa;                                        cursor:new Cursor(Cursor.HAND_CURSOR));&#xa;                }&#xa;            }&#xa;        }&#xa;        panel(constraints:BL.SOUTH) {&#xa;            boxLayout(axis:BoxLayout.X_AXIS)&#xa;            button(text:TextUtils.getText(&quot;freeplaneGTD.button.refresh&quot;),&#xa;                   actionPerformed: {&#xa;                       refresh(mainFrame)&#xa;                   })&#xa;            button(text:TextUtils.getText(&quot;freeplaneGTD.button.print&quot;),&#xa;                   actionPerformed: {&#xa;                       // get report                       &#xa;                       switch (report.selPane) {&#xa;                           case 0: strReport = report.projectText(); break;&#xa;                           case 1: strReport = report.delegateText(); break;&#xa;                           case 2: strReport = report.contextText(); break;&#xa;                           case 3: strReport = report.timeLineText(); break;&#xa;                           default: strReport = &quot;(no report)&quot;; break;&#xa;                       }&#xa;                   })&#xa;            button(text:TextUtils.getText(&quot;freeplaneGTD.button.copy&quot;),&#xa;                   actionPerformed: {                       &#xa;                       JEditorPane curPane;&#xa;                       // get report                       &#xa;                       switch (report.selPane) {&#xa;                           case 0: curPane = projectPane; break;&#xa;                           case 1: curPane = delegatePane; break;&#xa;                           case 2: curPane = contextPane; break;&#xa;                           case 3: curPane = timelinePane; break;&#xa;                           default: curPane = projectPane; break;&#xa;                       }&#xa;                       int caretPos = curPane.getCaretPosition()&#xa;                       curPane.selectAll();&#xa;                       curPane.copy();&#xa;                       curPane.select(0,0);&#xa;                       curPane.setCaretPosition(caretPos)&#xa;                   })&#xa;            button(text:TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;),&#xa;                   actionPerformed: {&#xa;                       mainFrame.hide()&#xa;                       mainFrame.dispose()&#xa;                   })&#xa;            cbFilterDone = checkBox(text:TextUtils.getText(&quot;freeplaneGTD.button.filter_done&quot;),&#xa;                                    selected:report.filterDone, &#xa;                                    actionPerformed: { report.filterDone = it.source.selected; refresh(mainFrame) } )&#xa;        }&#xa;    }&#xa;}&#xa;&#xa;&#xa;// Register a change listener to track selected tab&#xa;tabbedPane.addChangeListener(new ChangeListener() {&#xa;    public void stateChanged(ChangeEvent evt) {&#xa;        JTabbedPane pane = (JTabbedPane)evt.getSource();&#xa;        // Get current tab index&#xa;        report.selPane = pane.getSelectedIndex();&#xa;    }&#xa;});&#xa;&#xa;// Add hyperlink listener to about dialog&#xa;linkURL.addMouseListener(&#xa;    new MouseAdapter() {&#xa;        public void mouseClicked(MouseEvent event) {&#xa;                URI uriLink = new URI(txtURI);&#xa;                if (Desktop.isDesktopSupported()) {&#xa;                    try {&#xa;                        Desktop.getDesktop().browse(uriLink);&#xa;                    } catch (IOException e) { /* TODO: error handling */ }&#xa;                } else { /* TODO: error handling */ }&#xa;            }&#xa;        }) &#xa;&#xa;&#xa;//---------------------------------------------------------&#xa;// Process hyperlink to map node&#xa;//---------------------------------------------------------&#xa;class NodeLink implements HyperlinkListener {    &#xa;&#x9;Proxy.Controller ctrl&#xa;    JFrame frame&#xa;    NodeLink (Proxy.Controller ctrl, JFrame frame){&#xa;        this.ctrl = ctrl&#xa;        this.frame = frame&#xa;        &#xa;    }&#xa;&#x9;public void hyperlinkUpdate(HyperlinkEvent e){&#xa;&#x9;&#x9;if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED){&#xa;&#x9;&#x9;&#x9;String linkNodeID = e.getDescription();&#xa;&#x9;&#x9;&#x9;def nodesFound = ctrl.find{ it.nodeID == linkNodeID};&#xa;&#xa;&#x9;&#x9;&#x9;if (nodesFound[0] != null){&#xa;&#x9;&#x9;&#x9;&#x9;FoldToTop(nodesFound[0]);&#xa;&#x9;&#x9;&#x9;&#x9;UnfoldBranch(nodesFound[0]);&#xa;&#x9;&#x9;&#x9;&#x9;ctrl.select(nodesFound[0]);&#xa;&#x9;&#x9;&#x9;&#x9;ctrl.centerOnNode(nodesFound[0]);&#xa;&#x9;&#x9;&#x9;&#x9;frame.dispose()&#xa;                frame.hide()&#xa;&#x9;&#x9;&#x9;}&#xa;&#x9;&#x9;&#x9;else {&#xa;&#x9;&#x9;&#x9;&#x9;UITools.informationMessage(&quot;Next Action not found in mind map. Refresh Next Action list&quot;);&#xa;&#x9;&#x9;&#x9;}&#xa;&#x9;&#x9;}&#xa;&#x9;}&#xa;&#xa;&#x9;// recursive unfolding of branch&#xa;&#x9;private void UnfoldBranch(Proxy.Node thisNode){&#xa;&#x9;&#x9;Proxy.Node rootNode = thisNode.getMap().getRoot();&#xa;&#x9;&#x9;if (thisNode != rootNode){&#xa;&#x9;&#x9;&#x9;thisNode.setFolded(false);&#xa;&#x9;&#x9;&#x9;UnfoldBranch(thisNode.getParent());&#xa;&#x9;&#x9;}&#xa;&#x9;}&#xa;&#xa;&#x9;// fold to first level&#xa;&#x9;private void FoldToTop(Proxy.Node thisNode){&#xa;        Proxy.Node rootNode = thisNode.getMap().getRoot();&#xa;&#x9;&#x9;def Nodes = ctrl.findAll();&#xa;&#x9;&#x9;Nodes.each {&#xa;&#x9;&#x9;&#x9;it.setFolded(true);&#xa;&#x9;&#x9;}&#xa;&#x9;&#x9;rootNode.setFolded(false);&#xa;&#x9;}&#xa;}&#xa;NodeLink nl = new NodeLink(c,mainFrame)&#xa;projectPane.addHyperlinkListener(nl);&#xa;delegatePane.addHyperlinkListener(nl);&#xa;contextPane.addHyperlinkListener(nl);&#xa;timelinePane.addHyperlinkListener(nl);&#xa;&#xa;// on ESC key close frame&#xa;mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(&#xa;KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;));&#xa;mainFrame.getRootPane().getActionMap().put(TextUtils.getText(&quot;freeplaneGTD.button.cancel&quot;), &#xa;                                                 new CloseAction(mainFrame));&#xa;&#xa;class CloseAction extends AbstractAction {&#xa;    JFrame frame&#xa;    CloseAction (frame){&#xa;        this.frame=frame&#xa;    }&#xa;    public void actionPerformed(ActionEvent e) {&#xa;        this.frame.setVisible(false);&#xa;        this.frame.dispose();&#xa;    }&#xa;}&#xa;&#xa;// set up the default stylesheet for all HTMLEditorKit instances&#xa;HTMLEditorKit kit = (HTMLEditorKit)projectPane.getEditorKit();&#xa;StyleSheet styleSheet = kit.getStyleSheet();&#xa;styleSheet.addRule(&quot;body {color:#000000; font-family:Verdana, Arial; font-size:12pt; padding: 10px 25px 0px 25px; }&quot;);&#xa;styleSheet.addRule(&quot;h1 {font-size:20pt; font-weight:bold}&quot;);&#xa;styleSheet.addRule(&quot;a {text-decoration: none; color:#990000;}&quot;);&#xa;&#xa;report.selPane=config.getIntProperty(&apos;freeplaneGTD_default_view&apos;)&#xa;report.filterDone=config.getBooleanProperty(&apos;freeplaneGTD_filter_done&apos;)&#xa;refresh()&#xa;projectPane.setCaretPosition(0)&#xa;delegatePane.setCaretPosition(0)&#xa;contextPane.setCaretPosition(0)&#xa;timelinePane.setCaretPosition(0)&#xa;mainFrame.setLocationRelativeTo(UITools.frame)&#xa;mainFrame.show()" ID="ID_401462463" CREATED="1414544707249" MODIFIED="1414544707278"/>
</node>
<node TEXT="freeplaneShorthand.groovy" ID="ID_900035903" CREATED="1323057833226" MODIFIED="1413251082066" HGAP="30">
<attribute_layout NAME_WIDTH="275" VALUE_WIDTH="212"/>
<attribute NAME="menuTitleKey" VALUE="addons.parseShorthand"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/freeplaneGTD"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="alt H"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<edge COLOR="#999999"/>
<node TEXT="// @ExecutionModes({on_single_node=&quot;main_menu_scripting/freeplaneGTD[addons.parseShorthand]&quot;})&#xa;//=========================================================&#xa;// Freeplane GTD&#xa;//&#xa;// Groovy script to process shorthand notation fo GTD&#xa;// from a Freeplane mind map&#xa;//&#xa;// Version 1.0-beta&#xa;//&#xa;// Copyright (c)2014 Gergely Papp&#xa;//&#xa;// This program is free software: you can redistribute it and/or modify&#xa;// it under the terms of the GNU General Public License as published by&#xa;// the Free Software Foundation, either version 3 of the License, or&#xa;// any later version.&#xa;//&#xa;// This program is distributed in the hope that it will be useful,&#xa;// but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;// GNU General Public License for more details.&#xa;//&#xa;// You should have received a copy of the GNU General Public License&#xa;// along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.&#xa;//&#xa;//=========================================================&#xa;&#xa;//=========================================================&#xa;// references&#xa;//=========================================================&#xa;import org.freeplane.plugin.script.proxy.Proxy;&#xa;import freeplaneGTD.GTDMapReader;&#xa;&#xa;//=========================================================&#xa;// script&#xa;//=========================================================&#xa;// Get icon keys for next actions and projects&#xa;def mapreader = new GTDMapReader(node.map.root);&#xa;&#xa;// Expand any nodes with next action shorthand&#xa;mapreader.convertShorthand(node.map.root);&#xa;" ID="ID_229386231" CREATED="1414544707280" MODIFIED="1414544707290"/>
</node>
</node>
<node TEXT="zips" POSITION="right" ID="ID_1927628745" CREATED="1323057303835" MODIFIED="1413673313408">
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
<node TEXT="icons" ID="ID_1422580718" CREATED="1323094256288" MODIFIED="1413298793053" VSHIFT="-20" LINK="zips/icons/">
<node TEXT="UEsDBBQACAgIAEacUkUAAAAAAAAAAAAAAAATAAAAaWNvbnMvZnBndGRJY29uLnBuZ+1bB1xURx&#xa;r/HtthaSsgImXpoNJ7UBCXKtKWjR0UaUHpHUMUjQWIRIWoiJyKYEHvJBqxEsUIcmqikajYUFE0&#xa;EhVBCaDI7s28XcB4JrHc7+682z/8d+Z902e++aa83bxAfy95WQ1ZAJD38XbnI1cdcTiTjj6VdV&#xa;eaIYdI4XtNgN1nNdvQAzXazc8NYM9KuRdhNPTMDffm+wHMNwLIWQLwHIly7gOkWQL8Mhvgo2KU&#xa;WWLp4aCxKICV6D0tBeWnhkksadBPB5DJ83F3E3j7bl0TkusXpNJwTtfUKO922JOKTP6WmTd17t&#xa;wYEXWyofhkQdQclQSVZxr5wxVzTYyyihmKB4p3hGUbztFjWdymZUVsrNH/tUf0+NsvnVOu9mi3&#xa;X39e3TRtXnN1d+i8v3x2+5Muxcqfu8JLw6rizf2/yJnluph9tmBvYfQ9esl2uHk0c1lBa9Ye38&#xa;AUzmzVDFE8MzPApWKVv/3zCyXUTL7MxkLdJ6U1lga+xte+GWlnCJOTe/qjF82IyGEX9i2LaIso&#xa;UvzskcrFS0H9Haz5PcQUH51DnhNJ+UrDWo4wesS0eO9tu/msRfvbaivTb7GdvMzVC7cWmekcAf&#xa;P7PS2W+5YW9ho9/oHoO+WWXOdY9yusjktbcnZ9V1+vWq+7y/ZVX+6npbXEPPXJ/7U2vTHGe+1Z&#xa;I6Z8V5YT1OhVnRrJ25u692+sTVvaH0xwPspJOqBwKj32r5uzjww/6KVd6NW6R/cZcci3lXdzdu&#xa;VOv9yRy45qK7gpmj8yOQjH+lbKOFQe8Z9441726Z8mb9zxrGjUpvHD+MUT+9p2H7uTdyakVpX3&#xa;xCN544/b1zT5P2/vuDvVV+PUR+V5826sG+XU/Bezpzl35GtZyY2rsldoGi3S7r1Fa5xkX/hDRU&#xa;Gsnpmy0ZejjccnqX09T+HrDQ+tDHybgmaFTbLTemA2m9EUd/ISM+nh5w8M4i/6XrRdL6yoX3Xd&#xa;+xNfh6a062vK7L7LlNum2qwc1beebn+ZVeTg1PBza1zoXOu0lnVjfGr5mz9zN02f7+R6wjjDkO&#xa;3ndW/deOdJaz5pPXh4wQ4HzZzpVQ8K5+09XeEytShkvcHog+muyx4vUmhLuNhVPDdi68jwxCn1&#xa;rKt7jNzzCndNsK7K3/TFzKxkUWD7TvNpOkWiL0WMs7XW2QVX7+kjTYXwuAB3/1zWcYDxEJ7ok/&#xa;jjOeVbZXs0WuAVuAAFhCIW0F+SERKSUEIqLnkWikSiAbFIig8K/YhUyRhis4cNJh5zBiITmzZE&#xa;OUk4GxtTRAVERYlMig8bfEhAf6nABQ+IR24yZL1qCv4QakAbnPPYFixY6Fq9tXsZr6ysXMagMf&#xa;fx69JQxAlJuEMYKjUMgtFnAio98q1KB1ABgmBJ7A7ld+J0HHfnFe/7nriV7UO6L4dZvmV5r4IK&#xa;MsTL/fmm6RZJXKt/QfnYDuO5+6blU8h0YuDOwOnxXH6ZL89/bBOwDXh1/qMlAJQROYjDAI8FgC&#xa;qIh3Y4iDdcIxA1EEciaiJqIWoj6kjK1EWuHiJenAwQDRHRlguMEU0QTRFHIY6WxDeTuBYgHjvc&#xa;f9aINoi2iHaI9ogOiI6ITogfIToj4q3aOMBrG4Ar4BUQAG35YAIiD7AuApoFAJ6IXojeiD6IEx&#xa;F9ESchoi0h+CMGIAYiBiHizWUwogDxY0n9psCHYR/Fk8HEkhsomBbIdZCXteQGfCyYzHXEvkA3&#xa;TwHXGvsE3n7B8rLysiPhCVWiMZpiL0EOJhVLuEBtTbo9XheoBDmqSH9qUf8edNMHThQkQjSa4x&#xa;GoR8PRTI9HI42SK7m9gb7+Eah/HuUPgeutAUxtq1ReNHUuT9I+vAJqkvr9G2gDkfuKiPae5UOO&#xa;uAs1oCOOLq7OwNTBfYk5GpUhuiy6BUoTPX08kb0j0OqM5qfoGtJaGYLA/xJQaBQMOpVKoTHoDA&#xa;YmkyXHYjJlmQwGGj9ZOTYCg6WgKM9WwH7r96z+u9g/3MMDds/m/csn88P26k3Lp8GQ3tj+C8p/&#xa;2/Zj7cqWbKzt3r98AmeFbfWbls9F7JAR+7ESYfXBWoP+2UwGk/3WENWCMhPprTqF0AMZZYKiTI&#xa;jqsIknaASJgZIJGQqVRkcqKSuHIlQrocpTKDJIWWlUNCDEZygcqMo0jq6VG31YUBhDL0nFetHq&#xa;Mqb+hD3HVfnnOwxs5iQvZsmqDVcfoWFoZGxiOsrWzt7B0ekjnruHp5e3z8RgwceTp0ydNj08Ij&#xa;Iq+pOYuSmpaekZmVnzP1+ydNny3Lz8wqKv1qxdV7y+ZEt5xdZt23dU7tz7zb7q/QcOHjr83Ym6&#xa;+pMNfz91uvGnCxcvNV2+crXl9p3Wu/d+vt/2S+eTp12/dvf0PnuO20UAhRjAa9uljBdlNAepDN&#xa;wuQiYDR1Cm0nSt6By3IEZY0jA960VMlQmry/YcZ+nb8DtU5ySfl1UzsG0x7MRNI1v2Zg1b/E4t&#xa;G2zYULuuAptCoMGjKKO1cZcI6P3CelcYq9unfLn3SEOoUm9cZ3j9LKVZj5r8bmupNcw48GOh8V&#xa;rHR3Eveovr+vyjKNRTT0pzLzSdW9gR8rjXyGV5p033to5xPQ+v3frBQcix0Joxc0Zoptx3h+Oq&#xa;SxPlHIOWPqr+KzN/tYqCYVTt07E1nIjaJ1W9hiFVJ/2cu9Mzfnzhu+X+jRE1F4w2+K4M/HoTf3&#xa;WOs6FJZRrnhE5JwdLjY26EKxG0o6v6C0QQ91gt26J/59joirbDy5e/mNFp1H3etqsz5MXwyRt1&#xa;OuqXWHv0l0Vq7Z10716b4aemoYYlNvqTOD4tSnqb6nTU7phG232dXxOpYV20ru5h9TH7843d8z&#xa;Z4bbkY0++lqPDk+QtnntVa7aS1RkorwttNfa7Yndm1seYAv/WiS4z9hmN3Vz5y6iNeRPevSG3W&#xa;67m96cRClUy9cyFrvWONLzxK90gxCPPdPNv7OoXy+WLPpFJN1b5xIqC19u9/odhpI2Q9230/1O&#xa;SbkPR2YXdztrN2j3xMZUv3TPqsI3dP/Fx0ZNkIXs+OqsbeWS7T9qve5px3DhltfH9Dgv+3Lhm+&#xa;ndqOLV6rwnWXrvnpq6zSGTXlu6ZXq+8ad2ld+9+iRGB9lCW8pKMg5ArPCrU7btaZTV8o29vU8n&#xa;2nX0sCx2vbhqbqzGK7mtzVJ90Eyg2aq07b/31PebzFU69TCy5tqrZfur13Vu0CZu+43XP3CzU6&#xa;Ui2y+rerFM0IDcgyLllRX+LYOuWawff1TK++YPnNXJWgmY4L6Gd23FlwsLQ0a6ud3762Sh/bqy&#xa;vNhBdK/A7Wn/YzTLlY31u5oenMgs0t/jaJSx2mj5q4r4wxXOXuuTML02X5QfzCJYKKh9kiuGOR&#xa;t9Gg94vuhF7vbLfd846FN3cvfDSyLb6m4HLzgU+1Dl091BBS3phvUrV760SVLWX+pobnR+s/rf&#xa;E02q9Xvis0nv/p/msJ2x6HrBRdyftP3/zBcvHNX/NXxxVyuGze3XZRR/2C7VEMhZzGdEuFkkTu&#xa;g1CvvIpyYXvUzfhhO07sHbFCjbqCygz9xXyYWrs9yy6wZcXR/NUxgXbN4yrBU3QiuPSWcficrJ&#xa;8eFpx2vjvl5tG2KQE3vj1dRi9LPEKtWtQVu8uIc71uXSbnyvi80zQLP5OdYz2M5xQ+U9RSjVhz&#xa;pqA0E1soHw9/990TZi/GZl/2lxv+g4tBzuD+o2VgSfjtXsMb74NFLTDVIzMmCmXkM4pcbKhghQ&#xa;4eePuPt9NKQYT4eujEBVAOopL+cnQu4Lzkx8jIyDCPiZ+XEh6WGGmekBwt2cUw6XQGnYa2KAwW&#xa;iynLVpFny8mxR3CGKapoaehoa2loanINzI25emP0NTVNHEzHWFrZ2trqGDuNc7Qea25ja02uYi&#xa;wWiy3HVpeXV7fW1dS1fmuIVzHUDukq9r+xij0T5ptsVhRdobyq8y9BRgmfD8lNP6az2EsjZwQy&#xa;GzmuQ1GH/JJTAs5XE6g5v7vRegPwvP19ffx9uVS0g2XjLMkJCtBLsMn9nDoIPKYKxHOU9MmIDw&#xa;nq4OkeGCiWkz7JsYyU8wblPHKzScqDBcHeYjnpY4rP4fbvU3l4t/3vGBCfrzEEEAmZ6Fz4rpBF&#xa;LRooW/Z34gzc+9RemPJP9z88dJL3R7XwID+D37p8Dpok+G7kbdpvLq44CQLVIAHi0Ok4AObA3H&#xa;cp/637f7KEGGK9IAb1Qpspvv9A8mk+7hJ9Qb4Ipvj+B8m9ArkSOfIlMsUTRx2wFovl2Jc6KJ8g&#xa;8JDoaeAkHjeTKV6OSTlvSL5qUO4Z4C/Rd+zbwRTf2+B68oOH4rdK9PdDB75Pw20az4iTGTiTil&#xa;08mvh0LiMJHUiBF198I6ZEtp+t1/GMDqYaDBiFaI6v0sBSb/369YCNCZWMMfCeRkaSdzr6I+C3&#xa;dycyksDXyuniu7jX1VMRzZoYpL+RkILOlf7IzUAun9TpMIjHqWQISa1FMPT+iFR/vfe+PfngQU&#xa;h6BPfzC+JPIkvxPwXx9enQ+HdLx///BNj6cfRYVLEPD/s+RtYf2H8cOpD2P2v/X62n1P6/HwgQ&#xa;iiiyr7+7xe/NgtJiYmOd7LnBqQnJWVyv5IS0RC4vNiwlBYbe3gB0Oe1N+vfWWwoppJBCCimkkE&#xa;IKKaSQQgoppJBCCimkkEIKKaSQQgoppJBCiv8uKFzZeRc5w2IEU1MFMamx4t/fRiVGp0b4hCfE&#xa;BzRq4y8AKKZ6DAQPBjnsVMcvqB/GRQrCRMKx4AqZEAexwIV0iIRkSIEY8nd+40APrMAcLJHLRS&#xa;Hx5O//IlBoPESToR+DADzBDMWyR0+u4ALyIAtjyW8V4N8GuyB/OPmNgjgyR/wchiSpkIbcWJhF&#xa;fgMhDOUWify43PnI5wLWYAsW6NMGxbd4oxQ43qslWbxUD1yv3Oc2jbiPBr5R/w9QSwcI/gXnk0&#xa;0OAABqRAAAUEsBAhQAFAAICAgARpxSRf4F55NNDgAAakQAABMAAAAAAAAAAAAAAAAAAAAAAGlj&#xa;b25zL2ZwZ3RkSWNvbi5wbmdQSwUGAAAAAAEAAQBBAAAAjg4AAAAA" ID="ID_1183770871" CREATED="1414544707302" MODIFIED="1414544707414"/>
</node>
<node TEXT="lib" ID="ID_1543761795" CREATED="1413298467588" MODIFIED="1413298787850" LINK="zips/lib/">
<node TEXT="UEsDBBQACAgIANWZXEUAAAAAAAAAAAAAAAARAAAAbGliL2ZyZWVwbGFuZUdURC8DAFBLBwgAAA&#xa;AAAgAAAAAAAABQSwMEFAAICAgAmptcRQAAAAAAAAAAAAAAACkAAABsaWIvZnJlZXBsYW5lR1RE&#xa;L015VHJhbnNmZXJIYW5kbGVyLmdyb292ea1X32/bNhB+919B5KXSZijrHud5WOakS7pkDmpvwJ&#xa;DlgZbONhua0kjKSdbmf9+R1E9KstOhMmBJ5N3xu++Ox1NG4we6AbKWABmnAn5dno9GbJelUpOP&#xa;dE+fIvXIxCb6pm9Qw5OObnJNVxzOtJZslWtYgJ4MCm/1jkeXy5vrV4hcJEyn8jd2zFxGpQIZ3d&#xa;rbOXDYUNRrKUX0UUcJ1VRLKtQapWecZauUyuSI3Dm+vON0f9TgsngwXBwR/UOoPDPzkDjTF08x&#xa;ZJqlYjIieI1iTpUiN8+lzUsqEg6SoMsgEkX88U8jq+erGSgEkXDYgdC1mh0vdMyVSbanGohCjC&#xa;wmayYoJ7Xjd/fEw6smtXKh9KkaMJeWz96IFfWskCm56wiVl4DHBobgjYn3qYn3xLo5tdRixm6i&#xa;BSae2LwJx19mC9OdiUFjHVv3k9bQC4mpjrckmBkDv6f6XZqLpAokgbCHAL2V6aNFUwle4Y9pRj&#xa;n7F+SFlAgPQm+pUf3UiZkLlkNNrEvG0clhOUOjE6vl8hXHMLaTJ/Dtjn0Lvpd6y1RUiWOAeyBV&#xa;cqURFKsR9fnqsLUycgO6RFqPq8DHI0HnUvTk7/AyqzTlQAVhqja8KPWDeoys7c1fcY0zTSlvaf&#xa;JDB0xfprA1CXzN6XRgSc9ZLXOYdAReBnKqobimXMEhauarjxBrn/s+TmymKzJc6cbkal7vlrY/&#xa;xnlnKIJ/cgTlU6HuvrsP+1goHOlmU9fnVyzy9uAiA5n94uV5ueOHqShghE3mG/xnMtXIOiTt+h&#xa;1LwH3d2q3vZykeOwJrPYmbwN3ef+/O01s85Elm/qYkaIyFJK4BnJ6S5fx8jq7u0j2QHc0IZ+JB&#xa;YZ+Q7iy9nvFGWVhicTUbH21GJlPwNWj41i1YhQL+Sxo7eUOYE/kANAEZlIbDhqUiDkbWK1uV2X&#xa;GFqNArOXX5XKBoruzWQ9vm1iXxTEr6fM2U/tHp/oS8KIPeoOhMGr8rA62WpuhWZpTzFbZgJGu/&#xa;OnuHNDqVrnBpn7KEbG1fYP1xsOMtNUUzsSXcDTHMkiztLT7GpYgmSSMMgVENOwfTEQQLTaVe0k&#xa;1gPInwgWBEevpFQsuX8SFcZsvqcreWJqPrq95d2nLk5G99Eh6viUfcuRCJ78xRLvsxn1/9GZLP&#xa;n0l35vLt0MT3AxPoP3kFAeIrELCwzeSrAvq/qfnlw2vC+TW8wWpp+uIv3iLH88S2ca1CB1LeqM&#xa;1Rw9VT7Vy3lTa70vvYCUL3FRS4ujX26snY9gTNA6bsXpuHcKdlhQi7R6FxF8cPWF9jCDpnlLkK&#xa;FyWonJtSeHLSqPamGyoEFPY+JoTdHs0qfjslqs98UeadVFXF7f3n+R6JZQk0i7oNBDyZo3aZVp&#xa;95rcMRn8akmsLvJpa5woOnADJRtS9X3PDLkQANfc2KyWCnYpqz2fz2L983YzpSoGep0OYbLLCN&#xa;b8/ZbTCFYyJyzocagV5vDWo8ZRdpLmM4s1jUYCNQUGmAlkS+jP4DUEsHCGGy6m5kBAAAAxAAAF&#xa;BLAwQUAAgICACYqVRFAAAAAAAAAAAAAAAAIAAAAGxpYi9mcmVlcGxhbmVHVEQvRGF0ZVV0aWwu&#xa;Z3Jvb3Z5pVj7b+JGEP4Z/orpqVLgSux7RFVFLlVpQh5SSBCQXtPkWm3wGLbnB9pdwnFR/vfOrO&#xa;3wMmBSpCSLd+abmW++hZ247tFrX2XXhVOFOApEhHDWO6EH/OzGyECaKfQDoTVq8GMFI6G0jAbg&#xa;CYO6Bmj6Tmr9B9JOHMF7593+AxqRPj6OR1MlB0MDlX71w7v3B3CGaoDBFNpiNEqNekOpYaTigR&#xa;Ih0NKnbEDHvpkIhXWYxmPoiwgUelIbJR/GBkEaEJHnUk5h7El/yjj0bBx5qMAMEQyqUEPs2zdn&#xa;VzcUOEIlAmiPHwLZh0vZx0gjCArNT/QQPXiwOOzBjEA3zQFOYwIWhgqkoiXtK3hMC/6YxUgBax&#xa;ArBhHRFAKi6cXSWVPtrCgPZGShhvGIChgKwyVNZBDAA8JYoz8OagxBxvD5ond+fdODxtUtfG50&#xa;Oo2r3u0hGZthTLv4iAmUDEeBJGQqQ4mI2hn7jNBqdo7PyaXx+8XlRe+WcobTi95Vs9uF0+sONK&#xa;Dd6PQujm8uGx1o33Ta192mA9BFTgsZYAOjvm0KseaRDmSgs8JvqY+asgs8GIpHpH72UT5SbgL6&#xa;JJPtvbK0BjHpj8sk4xmRlNyFD1FsaqApyU9DY0Z1151MJs4gGjuxGrhBAqLdX9OEXn9iRqL/VQ&#xa;zQCtUeGzo1UCaqY2VAGxJKH/4Vj8IZ0xlyjkWApB7l3DYbncPMzO4b/GacLvcIT0grp7EKhTks&#xa;l+2ZA37EpxCeSuXSSMlHep/B+zIifjz04aTRa/5DTWs1ev90mmfNP9tdOIK7cqlEdHWn2mBoz2&#xa;t2eGlj7+/7e+/p4Hmf/7yvfZgtTLao8+LD8/39T4npj3t1gAgnsJxt5c2UXvut1r7n7fX2zs/r&#xa;YfjXm2ptpzD/K1pd64WAv1j39d6tlucl9kzQkJuRyw/nd38P2XJDTq0WZJDzrm4hVzfP1Snk6m&#xa;x0peU2b+eFh5N1DCw2b2NrPI8bwxRv63+h/i6X5i4sNmZiWXVXM3FXsLZk4q7052CJ4oJAzkq3&#xa;1gFtbtsMy1ltvb4T+9+/PH3kZYFuQYuEu0zSAtJBbQeoeSz+npMh0odVOFqV1Va2+Iien4fh4r&#xa;EukkrmDcvueVpOAec+iAqpG+zHzjaN7wQ+U/0qeJ72dwKfnYa8zFfPxM6ZJ6ckP/M8Ve7I+4tO&#xa;t0SYV+srQqyNUUhwrDetcwX7c2HBLgIUk+zuyq0vhikm3t01XF+tZruMd1fzSjVFBL27rnOqKS&#xa;btVyh8U6zNIn+N1rNoX+jiWXLfvi2X3sIJ8vwkaSBcRqBPc0N7EdC6P5SzyzjCQPLU4SW3VEVb&#xa;DnTQjFWkIRrTECN9hvYTGLq7j6OvUTyJHDsZ8ISnOdYU6FJMF+bZ9dcGsBNF4qsJiapDDz2HEX&#xa;+jLxiRXHK7Ni7NWDifB5iYh5G0Ik51bVUUIcFUNnOL9FLpOi+e+bISc+qzeDyWLPvThks3+2TI&#xa;SS/2KzFeEp/rYlrmrOIqPJFcePKqfMUpz5E5Y4FDW100lWpiXaJkKzMIx8SX8QTVsdBYqTq2aN&#xa;QMl9mnlOQg35EVyYdsnsvJT2rLpBwC/zch4SJlhygho5XSk6oiNgnkd1swrKu1lD73JdJAeQTz&#xa;hSgZVqo2nRU2/dCQcSYtJ49ci5i4M0Pk8cMR15HGLdm0rLqOGM7h6w3Oe2VuxGg7EQjxKSMPv1&#xa;37lb3pXvXTuwwrASNmCIvPK79NUy+VOMYdD41feDeeJOtk89n+TllmQ8fPuUAnLQEMaCx/mvew&#xa;2ab9ei4//wdQSwcI8Gii5TYFAAA/EgAAUEsDBBQACAgIAAoQXUUAAAAAAAAAAAAAAAAkAAAAbG&#xa;liL2ZyZWVwbGFuZUdURC9HVERNYXBSZWFkZXIuZ3Jvb3Z55VhtUxpJEP4Mv6IvlQq7xiya5JOK&#xa;J2diYlViLMGzUkiuxt2B3bjsUDMDhDPcb7/u2XdYQ5T7dNkqFbdfpvvp16HZbD32qTebcCI5H4&#xa;cs4vCu+wZf0Lt3UojpHJQrg7EGLWAshcuVAuULqX0WeRAJzXQgIhiIRBAGUoyAFRSOAmQcsXGi&#xa;9U8uFUnsOjsvbrhmyetjMZ7LYOhrsFz75c7ua3jH5ZCHczhn41S26weKrBhKNgL8OMBDQImBnj&#xa;HJ92AuJuCyCCT3AqVlcDPRHAINaGlTSBgJLxjMSQ++m0Qel6B9DprLkQIxMP+8O7vEgyMuWQjn&#xa;k5swcOFD4PJIcWB4NL1RPvfgxughCXIUOokNcCJQsYFkG3iAdAnTxOFX6RmJwm0QkpSwaA4h0z&#xa;mnc4+3uVMeBJFR5YsxOuAzTS7NgjCEGw4TxQeTcJtUIDNcnXbff7rsQvvsM1y1Ly7aZ93P+8is&#xa;fYFUPuWxqmA0DgPUjG5IFuk5WksaPr69OH6PIu0/Tj+cdj+jzXBy2j172+nAyacLaMN5+6J7en&#xa;z5oX0B55cX5586bx2ADiezuMmi+xEdmKAgah7mQRCq1PHPGEfMsUnogc+mHOPp8mCKtjFwMU3W&#xa;x8rAGopoaNxE5hxINO50QHm7DQqNPPC1Hu81m7PZzBlGE0fIYTOMlajmYWLQ4ytrzNxbNuQmUU&#xa;01YJFAfSOV6JrkAy55hLW4kSaMONYxfGVT5mj+TTsdygH+BnPxRMgR0/v1Es9EB6FD1Pw9wuVk&#xa;vjnjcDIMIiduGA4C/m3unNPv/ZS/iINRdYk69zfFww2ZUhuCgcIvHvuYNO+++cjGF5xhW9nDCD&#xa;FPUd+BMZNoGpGpB5qUjxBrYC41CbXRscbv0slwV6/XxjKYIrTQwW6BJRC4IjrDI9vmxEoyBukr&#xa;d3UlrSs8Nq+kvBERrwM+KQ3NwAKNKJdO8a/CTK+VrLNMNjhnwsOiFkLTBxttrtUIQa6NWrjlc7&#xa;UCVAxmbKcyp9JT9g1a8GTO1ZMSOfGNaNi7dZlonCPSjRC3IyZvy2Ty0FAnWovoL1Egl/xsQW+v&#xa;n5HQnQHOPEOyMjfrtUW9Zng2CHkcd0SrCBZEbMRVPHg7XGuMj2rGhkV4sirFaCoCD3LzCgGhLm&#xa;kspXgkYR4EUhkf0cWU7tC5qrfT38/56JwuRavAZloKkkeWvZ9jk8E7ACuVav3T+EKH7DUoGaDw&#xa;lLhaDcMEZ3larAikQr2Gz8NxY7uYAttZxLfT4PYdiiMLEInMVRtWNNLz/Xsp5s6UhROuLLtKQ5&#xa;VV9Ghfihmm9QzefnP5mDywGl05Jwhxv5IcR7exeK/xPIf+OTQA/xAO+Ol5Bra9csZiFYvlAsnU&#xa;llgXwEM6ugruBL2fgzo/61dFO+83D4fawPUooIsp/stAnXbvhwNNEG2Mszn+/wd0bRnmZAr+PM&#xa;ppO4ejSoyTmZFggZpTQUfScujydhhamQqr9+X6WvW37MZ24+luozBLHh2zX6dKiib3kn/698ey&#xa;nn/C2Z5NctcPQg8vHA5nrm/WtcKCE2ibFoEF7TckStvJ5vsNHIsIr8O6uANWfe9g7nd4P5zgzR&#xa;lvijMW3u4Z+Yx3D7YOCkoO4ejgOAbiEHoHM18c9uEO//LocGEkb7grcJ+K1UTpJmNgaUFJVcbR&#xa;a1zhTZ83CFpSJXmZJpACMU0sSUVEiqVihbhqx3dZs6m5MQyd1Jt1C9vaRSzl7PUxCXjo7VOki9&#xa;XrhDwaat+yD3fg2bO8Nl2fyba2dmxo4Ub8+5PlJM+qP5NQkxtlzrJ27ZVFMK6HgoWZ3D08Zut0&#xa;mOdZcakXdOV5S4480JMt9ASL21o6KP6dFXe5rdi2nVQBIohQm0teHqOsQgnuWslLU3solKzPNf&#xa;rx+MAY19ZaxleJshzTydc+yjGbvinDK0z808jj3+DO7P/Y+eDFYaanR+/6rSodQ66twF4kh9MP&#xa;oRZbtdu37zIVaVK3Utr+osz9colbZLwvV3hfLWuOMuZXxFwKeqnTJk3nntYWd3x0vXIsrA/qvc&#xa;16FYbkxNUBtFjqotXBSwYd6SyrIH68f4acReAzVbyrxwj+9rDcjDt0raJyljhNmpWNp+NK6OP9&#xa;Eu+UxTm3AkwlhOUhn1whS+NoRU+/erSv8b6g8weDdwWKotjPRHTtRFzp1MXB+B8NxXPqM2tGom&#xa;FMe0zlxErLeWlYpZVbmlNphS6PqOTbBEVnupCNlKVGuDSUCoMqHT9UFLgPJS9fYwpkyCfCWsRe&#xa;52tiqdsnZCegXvgJXzR6DfuwtbOcCql3rVSgtGs6W9fXPcvZsq+v+87W02TVTIZWeR7F4pVqcE&#xa;8lPaSsT59RDaxqWayx/y6zP50wMf7p16VORF/OhsHf5pta615/7mJ/Fiv+LE/htR7dkbrF4z06&#xa;+kFEdu+NSLL5X19v9Z/bmwXlKNf0M16k1VNtWYzJVqIo11OrSa4nMkr3Kiz7Rf1fUEsHCOSMSl&#xa;c1BwAAlxsAAFBLAQIUABQACAgIANWZXEUAAAAAAgAAAAAAAAARAAAAAAAAAAAAAAAAAAAAAABs&#xa;aWIvZnJlZXBsYW5lR1REL1BLAQIUABQACAgIAJqbXEVhsupuZAQAAAMQAAApAAAAAAAAAAAAAA&#xa;AAAEEAAABsaWIvZnJlZXBsYW5lR1REL015VHJhbnNmZXJIYW5kbGVyLmdyb292eVBLAQIUABQA&#xa;CAgIAJipVEXwaKLlNgUAAD8SAAAgAAAAAAAAAAAAAAAAAPwEAABsaWIvZnJlZXBsYW5lR1REL0&#xa;RhdGVVdGlsLmdyb292eVBLAQIUABQACAgIAAoQXUXkjEpXNQcAAJcbAAAkAAAAAAAAAAAAAAAA&#xa;AIAKAABsaWIvZnJlZXBsYW5lR1REL0dURE1hcFJlYWRlci5ncm9vdnlQSwUGAAAAAAQABAA2AQ&#xa;AABxIAAAAA" ID="ID_283332831" CREATED="1414544707415" MODIFIED="1414544707442"/>
</node>
</node>
<node TEXT="images" POSITION="right" ID="ID_907142452" CREATED="1323172874273" MODIFIED="1413673313413"><richcontent TYPE="NOTE">

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
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAAIAAAAB9CAYAAABqMmsMAAAAAXNSR0IArs4c6QAAAARnQU1BAA&#xa;Cxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlw&#xa;SFlzAAAFzQAABc0BbbRfgQAAKQxJREFUeF7tnQe4VNXV9xFBUVFsUTSxJ7ZYY141GhsooIhGBR&#xa;sqKE1EEARpIlWaVOm9995VQEQEO0aNJsb4qomJRn3VGBFQ4O7v/59Za+46e/aUe+8MwnfvPM/v&#xa;WXvOnLP3Omet3fc+U65c7j7/QVRuD2RY7m6xLKZUT6DSHmh464xllsvzE9ixhzvA53m+/1Id/a&#xa;17uPG1JNi/VFspjzefVO9vu6Cc2/bbOFv/R7gQUrmonPteuRhhwxaEY+B3y3e4NgLi/Q78lyCd&#xa;/yLNGL9BOpABp9yZx2dQaqOe6j/oLTCGg7EcDBgDxozxO+ESSOVShEP8PsVxnmuv1zg1DU0T6U&#xa;88KegEdUqtpfJw4+V94x+5rzE8jXHpvnF+L1wGSS73uILfy6fnMvweYx/EZ7gUYXKJQGcQR0hR&#xa;NeXhUZTOKAv8BxzL5ZrbNy53btfO3Q9LH9Hj3+GqYGDpNFdu7/pnvvFbVjXFPOph98M257Zv3f&#xa;189lG8mhAnOLB8sCrYJ7ePo/TFlpz7bb3+yfvObfk2zPc4nitSpRGrfgrbC4GqYGvpM1nu7rir&#xa;/0BfOVseOBtvdU9w7tuvovwX3/OJn96X/0I7obAhef1hwVIgd0+klMUU6WKhJRjPbXzghMX+V5&#xa;+F+RrHc0mqdHi8bc1CnaBfoBTYXsrslpPbfdZ/kNtY19Lwl4H21zr3+T+y4wucV1yySeM/X8bb&#xa;AtQL+i05I+gEt+XkqZSSSCr7xj/jADH+5fKg//W/zn1aDD7DNZkoTrxjOqJrWegEZd3CknlqUj&#xa;Eae7jkCrAJ3b5/vJfMJzi2OwilzWNXYuyA+kHPT9FFDDjBkJI9ltJx9fH+g+t5gjE+q4EP/1TI&#xa;Rwin42P8XlIypaH6vP8GnECcFNXBz/cr6xYWx2XDuZ85iw/3jXXOvb+5kL8hrHyA8O7Cpmv1qY&#xa;ZSgHqytLoq6ABfFeehlJZrpvi5/18c7VPj33Wac395JZn3cOyvAsOKHnsfx4h+z0b654fi5TFf&#xa;n3dfKiwF4ATXhruF+5YWgxb1PiO5/wCMrCWMTyd471Xn/vRClHfw3fIuvqfiz/gtW1LF4afH77&#xa;5OHWpHnCDQFuDgVtnHewLv+g8qVoyyOEVR6jqi2/dHFP/kTY+38N3nbRwL8Sccz0Sqa0Pp+LpQ&#xa;v7eej3cJpT2w8dxgVVC3zAMKn0BV3/g3HmFyPx3g9TVgtXObPd7Ad+WPCPu8iWMlJRSvTdfXiX&#xa;qObB13XHGCsm5hendPbvjx4bHYp1w+xrmXVzj3ClDJ8KuG1yRMqbyOsLIZ4aKi19r4bPw2fdXN&#xa;6skGodzHx5gzCDgB2zyl/lPdfzCTTzO5n9XAxsVxNgkvQr4EVDKsvIyw8grCllfxPVv8a228Nj&#xa;3Vg7qofpTUd93sSCnwKwxmBZyg1DtAcu7XVj9zz7MznXt+XiEbECYvGDYirGxCWHkRYctL+J4t&#xa;/rU2Xpue6qF6Uaq+6xG+pkKiFGB1EHCAT0uzB7zoP5Af2XhSB7jn9LgDKOsQJs8J6yHJ84YNCC&#xa;svIKxsRLio2OttvDY9pq/6UKqOCb1nRUqBa8Ldwiql1QkiOaIyl3lpy59OwIf4zBTnVhvWILzW&#xa;8CzCZJ3wHKSyHmHleYSVDQinwp5nr7fxalqatupD3YjqS91JmysLSwHcX1mDMO7un/kPYhdn+j&#xa;T3P1rHuVXjC3kK4acB5TOG1QivMaxFmDwrrBP5HKTPehwjod/0Oo2HUuPW9Jg2oT7UTaGORPV/&#xa;akJhtxAOsB5rGgJOUK00lQK/9h9Ah19I7lcHWDbauaWjnFsGlhtWILzSsArhp4SnIckzhtUIk7&#xa;VgjUiG08HziF5r42P8mh4l07f6UD/Vl7oT3seTD0TmCUp7KZDc8GPdr7N9U7o7t/BJ5xaBxcIS&#xa;SLJUWAa5XFgBSVYKqyCfMjyN8DPCash06Hm8hth4GK+moWmqDtRHdVNdqTvvgfB+rsJqYpkt/D&#xa;zcLVxaGkqBhr73r/41jK8OQCeYO9C5ecJ8yAXCQshFwmJIsgQsFZZBkuVghbASkqwSnoJUnkZY&#xa;0WN6nl5HybgYJ2H8mh4l01ddqBt1JKoz9dd7md0v4QC8319W2iM3uPqZ84dcO2XyeL+u8mHumN&#xa;nXuVnCbEgyB8wV5kHOFxZALgSLhMWQyhKEl4JlwnJIsgKsTAF/I3our2UchPHZ+Jkm0ybUQ3Wi&#xa;ftSVOhO9B72n66oULhyBE6SoCva04zlrn7zt33BifR9LgNtOcm5qD+emCdMhZwgzIclsYQ7kXG&#xa;Ee5HzDAoTJIrBYWAKpLEN4uaBhSmLP02sZj8Zp09H0qYvqNUv0pK6qO+9D72lGn0IHwPrB2zDk&#xa;vZc4QU4KgsjNnsllXlxLpyVAjQOdm9glziQwWZgCORVMA9OFGZAzhVmQs4U5kHPBPGE+JFkAFo&#xa;JFwmLIJQZ+5288h/B8vZZxMU7C+DUtpksdqAtR3agn9aXeeg+8H97XtJ4RB+C97yUO8EQuPCC5&#xa;8WcdgFXAOKytI+PBBGEiJJkEJoMpYKowDXK6MANyJpglzIacI8yFnAfmCwsgyUKRDPM3nkN4vl&#xa;6r8VEyDcI0mTahLtSJUD/qSX1Vf0q9rxqVIg5wWIVkB9iBPY/bhW2y4fV7yO+xzGwLN6rK5tX/&#xa;Qn6LxuS3kP8B3whfQ34l/B/kl7iGfIE4Pxe4k+kz8Ck21nx6fjn3L3JeOfdP8AlmL4+pmJ9h64&#xa;N9b6+DkbFECaBdwFEPO0fGCGMhxwnjISeAiWCSMBlyijAVchqYDmYIMyFngdnCHEgy16DHeA7P&#xa;5TWEcTAuwngZP9NimoQ6UBdCvagfdaXORO+B99O/YaQR+GpgmrjDMXgexd3wqsvlrQxtiM206Z&#xa;XpYyFOoGT6ey5KgS1J7QBdTaujgO1rOTe8pXMjwEhhFORoMAaMFcZBjhcmQpJJwmTIKWAqmCZM&#xa;hyQzwMwAPK7n8BpeSxgP49O4mc4Ekzb1UJ2oI6G+qjvvY3irwm6u3G+o6E/scLY7nf0dziFD6z&#xa;G2pZR056ljaNyB3c/nHBh0ghK/+4B75SLedTrbAtoN5Pw54cDJkPshwTBhOOQIMBKMEkZDjgFj&#xa;hfGQygSEJwmTIZUpCKdDz+O1EwHj0TjHmbSYLtOnLtSJuhHqqTpTf95H68siq4SGn5L8cDedGc&#xa;95iY2v7if41Dm2MP1wKUDblfiTtNf/U964DgTRAeqf7NzARs4NAoOFIZBDwZNgmDAccgQYKYyC&#xa;HA3GgjEix0GS8WCCYSLCij3O8/QajYdxEsbPtJgmYfrUhTop1JM6U3feA1HHRjVXEJgP2G8fMT&#xa;xzInPlBkwn/7A9O37EeZkoSly0hWx6nX9qsBS4pMQeECz+rANwKrjfPag3wRNggDAIkgwGQ4Qn&#xa;IckwYTjkCDASjBJGQ5IxwlhIix7X8yj1WsbD+BivpqFpqg7Uh3oNFD2pM6H+fziycEYQ93hMYL&#xa;l4LNfzobNoRtvAbf3up2NEu8INr9ArX8PW9/gRv4QWaGIyiA5Qo6Jzve9wrg/oK/SHJE+AAWCg&#xa;MAhyMBgChgpPQg4ThkOOyBKeS/RaxqNxMg3C9DRt6kJUN9WVevep71w13IuucAqsCTj/IDG87n&#xa;v84C1scP36p4M7obnrWTa9/g09hYATTMpFKcB36UQiT1QDfGB8cJwV7FnXuV7gcaEPJOkL+oH+&#xa;4AlhAORAYRDkYMMQhIdmAc+z1zEejVPTYZpMm1AP6tPb6EidSTWM/xsH4ErnpHtWw7MddBPq4K&#xa;8/j/PNT4Cm/dz8xF5HlkpHBLqruXAAxhF5IHf8zJQCfHCsO7ve6Fw3oTtkD9AT9DL0RrgP6Av6&#xa;Cf0hlScQHiAMhCT6ndL/zvPt9RovJdN63Euf+lAv1ZOyXbVC4+M+lmHOw7/fKb8y3WA6ALe2f/&#xa;nPZL7AMSX0e3GOpYvvi09Qau1f6AThYes3c+EE3yXlCLsglE7Q9DyUBNfF6QIeA12F7pCkB+gp&#xa;9ILs7dEX34uKjeNxXM94NQ2mp2mrLtSLxHTF3gDqrrk/vByscAyE7Z+212Dj6keZ+TfOKSnZpM&#xa;N3H5gNr9UPDVYFh5fUCSr4DnAsGkmRtkB1fO9QA1wdpyPoBDoLj0J2AY+BrqCboTvCPYSekNmi&#xa;1/B6Gx/TIEyP6aoO1Id6qY71T4wYvxXWO/j3+QHfcmYbvp9+gM2tf03NP/FbrkmXHn+rd1zh4F&#xa;UeVzPxHbuRB/Q1W8W6LJy56AbMorW9EsWq8Ahke9ABdASdQGfDowh3AY8ZuiKsdEPYR3+z1zDM&#xa;eBifxs+0mCbTJtSD+qhu7a6KGH9n4MFVpZPbsY/V07DJ9Z0oH+N7Nvwd52Uim3h4jq8DN77SDr&#xa;KOYc7pwVLg7JKWAkltATpEpBSgE3AwpfWlWGMHHhbaQrYDjxjaI9wBdDR0Qph0zoCeR2mvZ3yM&#xa;V9NhmkybUBfqRN0eArUPijhARfTxk6o53UBKSUf44M1C/hfhVHyI33JFunT4m+rEeQzd9ZzHUu&#xa;Be/yEt4UIRu0ScS6xb/E+cB0FL0Ao8ZGiNcBvwsKEtwqSd4RGEfezveo2Nh2HGr+kxbUJdVK/7&#xa;L4gY//vAbF/1KrgvLfrZ3nl7Y3zfI/lrCt7H8RB/w3GLf0663/TcVGkmdNocb6uIE3wdfg3OzF&#xa;yUAlx9Eu4W6h7Bhmc41+w85+4HzYUHIEkL8CBoKbSCJA8ZWiPcBlCmwp6vcWiclExH06QO1IU6&#xa;sbGqesrDwrh3cu639f5tv8Dm1k1R3sV3y5/xPRV/wW/Zki4eP01+t3qtxCJXs9Xt8DzNFu7nO0&#xa;DDo01u0eHU+37tXCPQWGgC2RQ0E+6HbG54AGHSIkv0fBsHw4yXaTAtwnRVB+pzJ4avzUN68pfJ&#xa;xt9oB7t4P29vwGbS9YW8jbDlT/ju8w6OlZRQvH7aVi+Grzs4MaQdGs6G7d7JRSmQPDhkF4zyod&#xa;1c1bl7TnWuAWgI7gX3GRoh3FhoAkmaGpohnAp7nl6rcTFemw7TZfrUg/oY46fYBRSt0jjItXlN&#xa;nDc8/ojvypsI+7yFY8UlFJ9Nz9dFdaSzmnuse2SwQXhULpwgUmyyEZVoMWub4E4sHyP1wV3gbu&#xa;EeyAZCQ0hybwnQODROxs+0mCZh+tTjWjT8TEOpzuHJD+ffnGSxVcRrT2Pv4irsVxReg7S8ju/K&#xa;ZoR93sCxohKKx6bj66C6UU9SF5lPnSDF2EYuHGC0XxVs1dewaf1ZHQ3CW1F/Etaj5A7hTsj6Hn&#xa;fhO7k7A3oepY2DcZLbBaan6VMa4/8QaCSdxfF+26Cd2Rv7FpdgHyOgfMnwMsI+r+DYqx6v4XtR&#xa;8eNgvKH0eMzqpHpuWhYpBcaEZwt/mwsniJQCFVgK6NpBdYKbjsbYObgZ3CLUhawn3AppuQ3fLb&#xa;fju+L/5l+rcTJ+TYvpMv1qcEZ9ixmqK+oaHN3U3H8F5gc2LCjkBYSVjQiTTeBFIxkmL4GXRWqY&#xa;37OB59vrNU5Nh2kS1cHqxbDqzMUtWgrgvkMN3Vw4wE0Zx835IK8/zLk64AbhRkjyB8NNCCs3I5&#xa;wJe76NR+NmWkyT1D40Mlwaej1cE77cWnM/xzPWzsJeRsNzCJP1wvOQZIPhBYSVjQhbNuF7Nthr&#xa;bHw2HU2bkvqobpSq87Oz41PXUuptCXcLZ+fCCZJzkl3mxMbhNVhJfC1ap4StVFIbXG+ogzC5IU&#xa;v0fEqNh3ESTYPp1QJ2+VX4QUSHe29BHcpRvzVgreFZhMk64TlIst7wPMLKBoQtL+B7Ouy5Nh4b&#xa;v6apOqhOlKor9Sbcv2FKAb7G18+wuXCAg/xImzM36cIJdYbqlZy7GlwjcOUtqWmohbByLcIh7D&#xa;kM2+s1TqbBtEg1zJapDjB+p8B4/2ecV9e1jswxT00CE7EjyfAMwmS1sAaSrBWehSTrDM8hTNYX&#xa;Ab3GxqNxU2p6mj71Ud0oVWfqT64rbPjuCC9v/ygXTpC0i3iHrpvThY38Vw/9F5AryqO4BXxrJ7&#xa;nKwFe2ZIu9TuPSuJkW/1FE3xIuDhnIAfESQov/rjdh88lobEoRVkCSlWAVeMrwNMLKaoTJGmEt&#xa;pPIswmSdSP2e6rhep3Fp3JSantWDehHVk5L68z7oBGaeoDEyZ+AZVMmFE0Qi3p+vj1MnSLViVo&#xa;tmbZxpw1EVziTtdf4q28CKWm5y8W/+O+qm6TKOJSOxU2lYnKVgichlkMpyhFcIKyHJKvCU8DSk&#xa;8gzCqw1rEPaxv/N8otdrnIxf06Jk+tSDqF5WX72HRfidazdlooj3GsoEuXCAyX7EO2XtekZH0J&#xa;5DyCGskU0rPlGvy9u/bTGf+CMps4z6W0zr+vrV5n4HO4A1sg02ngyKs0BYCLlIWAxJloClwjJI&#xa;slxYAblSWAW5ajAcgyD8tOEZHLPf+TuJXWPiYFwaNyXT0rSph+pEqXqq7ol7GVL4ZlTc74TA6C&#xa;eezVW5cILIQ2bX46qDy7mrDynnrsHkSk0sVuBbOfngOQhzI7gJ++5uBhyxuhVwtVH9o8q5u0ED&#xa;DDHfCxqh2GIrvRlojk0ZLUDLY8u5VqA1eBi0A+1Bx5+Xc53BY6jru4EeoFeg3o/NZFqHq462wq&#xa;x+2JgC5ghzIck8MF9YAEkWgkXCYsglwlLIZf1cAfgW+xI3DWjuHqh9sbv8rJPcRacf7y489Th3&#xa;GcI3XHSGe65/Uxgb568UVkAuF3A943GMT+NmOoTpMn1CXVQ36kmos94D74f31RcLX1kKSIYJzX&#xa;7mwgG4FHmv2EfX4zg8DFYTWgLM7o8NJ73izAAzhVmQZDaYI8yFnCfMh1wgLOzlvp7W2Y1ser07&#xa;+ejDXPny5V25ffZJeh6//dXP3YcT2riC5T1hcFxLloGlYImwGJIsAog3kQbTI0yfeqhO1E91pa&#xa;T+vA+9p2kI6/2yxA2vJB6RCyfYKxwg0UvRUmByV2xKAVOEqZDThOmQM4SZkGS2MAdybjf3xYR2&#xa;rtV1F7pKFfdNef8H7V/RDWtSy+3gxtZluG6psARyMVgkLIAk84V5TENgeoTpzxJdVDfqqTpTf7&#xa;0Xvbf7zitcP4i2zyF431M+uoWcaNjjnWAz1/XbEqAp1giM7xRnApgIJoHJwhTIqcI0yOlgRif3&#xa;3cS2rn2di12l/SqkvefLzjzO/X1MC+RmXEcWCQwvEOZDzgNzwRxhNuQsYWY8zRhMn3oQ6kX9VF&#xa;fqTf15HyR2T49GqgBmgHw1Bu/wIz4Hre+LMc5+Ifgt+A32s50HzgVng7PwO1vo3H52KuBbOU4B&#xa;J+5fzp0AjsPSrF8Abtaoijnuo7D8+UjII8ChCFeBJx8MKqPnwb+Fq4RhXu7i4XDvviDFMGh02J&#xa;oNzAmdsSmlHTajgHHCeEjk7hgTwSQwuZ3bOamtm9L4WnfkwQekNXzlAyq6ic1quZ2z2sKwuJbM&#xa;M+ixOThGZoNZwkzIGWA6mCZMhSRT4nrE9KFehDpSX0L9eR+8n9Gg2r4RB+iGKjDgAGfkvAqgAW&#xa;I7adPtptUdN353MbRr1u/e+Rsn9c8qzd/GMu31gXVyQ07yegGcNxjxEHYrgVFgtDAGciwYF+ej&#xa;fve6i0+u6vYJzCfYh/q7Xx3jPuFWtBm4bqYwC9JHf+N5ZDqYBqYKUyAng0nCRMgJYHyhTjH9qC&#xa;eh3tSf98H7GXx/pBfAdk++cv8sP+Jd2POe9j+DfSOn2y2baWt1ml20dIKDQhs+tGupA0GDmsQ3&#xa;vQ4Dw4WRkODHYc3coFsucZUqpK7nef/74/f+9X7ndnDD6hRcS6aCaWng73ruZITJJDARTBDGQZ&#xa;KxYIwwGnJUXL8YqjP1530QMxxM41+CXlk+BoOS/juYLzBIGN//s2jdaRPaMq0t89AYQGgsILTX&#xa;3jqD2cbt3/gFnAK2y7/oCIMaI9cIQyCHNnZ/7lzPnXPs4RnbNqcdXcW90/0WVzAO15HxYKIwCT&#xa;IVeg7PVzSOsTg22jAK4RHCcMhhAvR01FfhfTx4ceQFmJyyDxh/Q86L/lg/W3avRjZVWsOXdCTQ&#xa;jG4lDQyF9tbDEdiuSCql7NJv5pYudbCNrQF2JTVw2/reje0F57iKFZK7czaefdHda3XlGW7r0L&#xa;uQE3HtaMMYhMnYNOjv9rpROJ9xkeFgmMgnIYeCIcJgyEFgoAC94/rfF/0zjzxOCyf9lwAHYSKG&#xa;tzndFrta9OpaQpU0RCr8c3Whh+8QZhIo1uKXUig4H2BXADM+bBj9sP2N7pyqh2XM9UcdXMmta1&#xa;HdFQytjyIXDAPDRY6AtIzE9xD2HF6r1zM+xksGgyFgEBhoeALh/qAf6Ctww+utx0YWhrwb/vPs&#xa;PrnI/eH/DvZze8jw1si6TUsldxuF8M/TONQxzOSHPxXMUmnQicmlwD/ZaBRnLEB8Cy8/ylXO0L&#xa;Urh0Zg9V8e5b7iXsiB9eIMAoMNQxAeangSYR/7O88nGgfj07gHIPwE6A/6CX0h+4De4HGhJ2T3&#xa;m6M7nsNzADn5W5yefo5K9LHtGL+tZ3XVDQ0XMvbVOJ4N1jm8PX6J5V9aKtg5g1RrAnDuVujZFE&#xa;PK5TO08CuU38d1r36628ENqH0xg9gP9AdPGAYgPNAwCOFU2PN4HdG4GC/jJ0yrD+gNHge9hJ6Q&#xa;PUB30A3wGevGXdwXh9ADJR+n8kv8ic4C6rIwf2mYLdp9o6uxr4HSPjVwzOL/rteqM1hHsCuA6Y&#xa;BmxvB1LP32HwjnIM5GozDTQNaRB1Z0axtchAdeG/sYDY8j3NvQF2GffjjmEzqvj4mH8fYy6TDd&#xa;7qAb6Co8BtkFcMPrI1dnfN8B7jEnuf95/2Ht1GLf716FcjuNZw2qhq6J45kIOYV1Br9E8KsFOG&#xa;joPQCZjH/hsVXcpw9dif2MNUENGEDoBtld6AFJeoJeHo/jO+ktUr/752kcjJNhxq8w3S7gUaEz&#xa;ZCfQEXCDrtntzGrt54GGL+6zxC+SSnqdXOwtGv7+AC3uqRRzqZ/baUhr7Fr4Tq7NgJ5nr2Vc6l&#xa;BMx5YKfmkAB90ZXiETLAHKo5X/0AXHue3cXNrhKjxsoRNkZ+FRyC7gMUNXhLt5dMd3xf+N59vr&#xa;GR/j1TQomSbTpx7twSOAm13J7cdFHODL8KQP3/9U4k/yWsBUud43vM3pvsGvg+GyRZ3Ed4aQI3&#xa;i5gjnjGzycQ8MTIpF7q7RveTe39uluV5vfYz+j0BayHXhEaA/ZAXQ0dEKYdBYehUyFnkPJa2w8&#xa;jJfxa1qUTF91oV6tQZsrCntO0jPK14jfyX7Ew/BKtciAihb5anzmzFSGV4PXxjnK9Qinwp6n11&#xa;pn0FJBHUFLA3UC6PYXjAyekMWbwPnalZfRfXIPos4nLUEr8JDQGrINeBi0NbRDmDwC2nt0wHeL&#xa;/Z3nE15r42P8TIfpEaZPPQh1om5cEGtKuqVnBtsz95c466ftR4eKfDW+GkaLeN/wavA6eODZoO&#xa;erQzA+OoItEQJOsBYNQE4eZarvOTH1MUcR+VD/cAS2qp2PvYegOXhAeBCyJVDZCuGHDK0RJm2y&#xa;QM+11zPM+DWNFggr1IP6kKbnRre9hbt9P+bC+DP8B/clH5LdUWPre2t8W7fTWDScb/QbcEy5Ee&#xa;EQ9hw6SjpHoNOJExSgJJhyRnymMJPx+fs3HMm099X4HOxnPBv7GEFToRnk/aC58ACk0gJh8qCh&#xa;JcI+9neGeY2NR+OmZHqaNvWgPsSOgcD4/FPPwD2WuOFHB4pEzBcpF8n4IcPToGroPzC3CTdB+t&#xa;jf9Rp1CHUGOpatGuAEO+EE3VFN4R+hszI+7/M+Lm+34xfVscq4wWnYywjuBfcJjSBJY6EJJGkK&#xa;mhUDXkc0HsaraTBNpk2oB/XhjmcdDRV9A8bfmovc/xc/4mIbn8YKGV4NfjN+T4eepw5BZ2B8fo&#xa;kAR9gBB2h+fOp1AelKg8TfzNsNr3edgv2L4B6hAaTSEOF7hfsglUYIZ4Oer3EwPhu/psn0qUd9&#xa;YI2PXliK7m2J7X+s/6Buta+LYz3pN/hY/Nr6Xot8a3wa0Df6LTim1EXYYn+jg1hH0BJB2w+oGn&#xa;6AAzTAItFMRT4XSQ4PrJbl1GlS1/a249HdEu6AvFOoD3mXcDckuacY6LUaF+MlTIfpEaZPPWpV&#xa;jrzd/DM0bgP3mpPx/uRunz+6Zx2gKMbXnE7jqrHrIZwKPUedIeQIKA22wfj1MKybyfj7YZ3ANC&#xa;wYYXF/aWCu/DtOItnxjesOib//gFvIuBVbuRXheoCS3CbcDpkteg2lxsM4bTpMN5b+MRHjp/lj&#xa;ixLn/pr+Q5yPxlRkM2VJjO8b/lbErdyGsGKPq3PQGXi9OhFLBJQq21EK1MaS8kzG5waWxWfjGp&#xa;ZgLOYhg70cHeFUR6iDXsGNBvYSbhJuhrwFqKyLcFHQa3m9xkmp6d2AMNO/Asu8zPB23xOCuufk&#xa;v4TCgz62y6fDujqyx+6YbfBpsa9FvhqMBlRjWqPfjuPKHQgTe4xOoefzeuMIP6AqqJtFzmexv+&#xa;AcqbrMxEnbwD6CT/i+QOsE1Sqiy4mSgKWBUhthcr1QB1K5AeFM2PM1DkrGadNhWDe96ta38Kgm&#xa;X/BZ4s+rfo7YQa/TRpHf5fOLfnbRQnW+5noazze8GvxO/ObjO4M6gjjBjygB7sKCx1QLQfVeuG&#xa;B0OnJ+AbupLL10kEhmD4OlALuFutCED/7qAzD0LNSArGmohTC5NsB1OKaEftdrKTVOxq9pMV27&#xa;1gF6XVQ5P0u8k7p9HBlLelk0H6Dt74dyPxtoNvfTAdT4WsQzh9PANHr9NKhTaKkgTrADpcD9J2&#xa;cu9mn8MRglK/AHicwoWuhPIxux0WsXrtIIV1RAK1y4CpIvolD4hhTlaoSzwV6j8TBeoulcjqKf&#xa;jii6bMNahoDDflzirI8IPvcjLvCXTzHnpCr+/dzP+plFv+T+AjjARzhnE67/mI02lgRq+LsQJn&#xa;d76HGeR0cQJyjAtf2QozOt1GXJ0B0vfy7QUUk6rg4VexNGKUsBu74x0xI3HUfQ2chMUudTVJo6&#xa;PrHT2axuSrHDhw5R4s85/gN4DEVr0nh/qPGXoe4vQE59FwaohUUKXDau6RyM0uUW9Nc/ZklBw9&#xa;8TQB2CjmCcYA5yQ4r9bpHc0Rj3sEO7pmaUMFENmD71d4GFI6dh/iDtQteQQ6gRNfP4RrZrFXyD&#xa;ax2vOV6dTxa6vnFWMPc3K7H1g97vT/Vq/e8P91oH0MEe5P4C5P63kNuqYeGFNbyf1gEYp5/I4q&#xa;1hgAbiFHQEcYKXUJQfmMXYfk2ku1WrJ0rrAH4pIEa5+tDkB8y/iYs5AdEt8On2NthVy5nC/jJ5&#xa;rXI8w8fSDvf5c5L7G/tGeYFdJSqvRZqd7QvV/6b4L0D9/zpy1sWHZV5qlWikoXs2jg/jXnCfwD&#xa;CdwjjBlyhNTshiFc9JB+J/+Whw6sUBKZ00StUOMLkymBnw8Iu02cU2IH0jm/o8aWu7bnSho3mb&#xa;Xe4Oj/efmvPcz+1WiS5QERxgF1r/L6LUOL9K5ro59JAPQJWwmdVBI4GOYJzgB5QAtbMY5auM0u&#xa;ENFu3+XAGrAjpFqnYASzw4PbefZxpPyOfvbLewxOQkViXYgvY4GATS/E8ujP+eH3FssIFeGmoA&#xa;2h6A1q0y5Lsdch08/9FT8Z4AtKArZVFM+2mfiVJjC43eOOoEBSgFBqBvnqm7xwc38XxUPzphpC&#xa;UAq6ksHYC5MlM6+XSAIsSdC/sne1ai71tEB0j0/6X79w2MMARz8UeE16ilzGV9UdwWNBEnkFLg&#xa;b2hPVEYJkenhcEBoJ9PXyaJiOkAtOGKmtH7i35/JifURCeeMIzf7ayyMiJQAMmQaGzwJlQDMXb&#xa;YLqP1/6f59AUeoganWbB/Yofvh/3LZ3WNVgNJgB3oHNbMolo9Bi/1zlkbqAMWsAtJspsz6HrK9&#xa;1xKclyv7x+JJGv3TV4sUpxEYy306BiBDvzswBtAC/fFsb7ghzt3FqgDMR32ecd0+nHgFG14cdy&#xa;ihA/DvcQJ63o5jd4MGgP+j0Ag0AeyCNQctQEvQCrQGD4N2oD3oCDqDLqAr6AF6gd6AM3f9wAAw&#xa;CAwBQwH/sYVv8BgFxoBxYALgX8NdCXL+SV74YXsBbFRl6gbaIWBvEIjDvztBEyzSgOYZqYTi/m&#xa;2UHNvR/Ts3i+L4FjQOY0W/TA5F1goUoRfw3m+CutEg/99/uvuG2Yz6OzIQZOcBdBKIDSt/IMgO&#xa;A3tzAD/ACWqEd60kOUUNFPurUOWkG0OgzodULOc+pB46TUxH0MUiulooNA7gzQfkcx/93uI9yb&#xa;OAdiJIxwLsULDXE/AbgomhYDMP8H8w1CnhyYxI+iz2q6I9kqnE6Mpxfjqa5n46YKr6n45rVw2b&#xa;kcDp6L0E0qq+txgvF3qe6z+AsaiLE69VDTkA+9X+ZJCOBnqNQTsZ9DYc55AsWvWZjF8VPYyvmV&#xa;4o97NhytIp0yAQG7lw9EBaOVlVmwvD7M44eNORh5FVNcCH7C8B82cDdS0AJ4EwozcPYw2h17hn&#xa;Mrr+zr56D+T+iPFD3b+QA2jxzxIAg12nhLuqu/O571FpRRyA6+WT/jQy04IQvxQws4JaEuyCI3&#xa;TGSqPiDrocjtZ6rNtni367UNTmfn8E0Nb/cIKA0320R1lkNyuTPDqodaWdE1AnCK0HDC0K8Z0A&#xa;7QLO6dcLrMjJphRojR5FQSrja8s/XeNP7inFppHd/Mj3vOQiuaIKF4b4m0H8UsCuCE61MsjvHs&#xa;IBvsexS8ITHSkbgBUwNv4Wc7Ed9fMbfqnqfpP7N6CnE3C2B/Y8c+x+jTioEXk4r2GMPfLXsamW&#xa;hYfWB7BoprFsu0BLBLTgP4fDnJzFLJ/qdDZW827XasYW+7bbp2P/OgNol4Ix94eL/pxMr+5+c+&#xa;UnxeRuYWhLWGg7mO8EfpXgOwKc4R/IsSdgGjdd8c+c/wu0ScZzjMLfHJLO+CytbMMP99EzvKr2&#xa;rPw8yr0z1t/5xhjJbmFRqgIaxe8d+NvCWC0I/0B74njPCTgJxIWfm5Fjt8GRdulMH50qVbEfWv&#xa;xhHCDFnyx+uXeaKb9af5u2W8hGoa0KWBrYRmFowagaTotwzyH+jutPRC7n5M445PStbE/YfYGp&#xa;DK91fgbj04GPLev2FclrIsXybzCKFxwbSNUmoGGsI2iJoA1FrR40Z0NuxTk/8net363R7RSv39&#xa;XLwvhc6BqoZnLy8sQiPdW96OT3k0oBGUCJ7BewcwW2XeB3E7V9YB2BRlW0WLfH1Ohaz6vhQ7ne&#xa;rvjx6n06br7+TWsvsmexVI3kmtifRtoFI3SI0BgBW+B24sh/ZwANaR1C2wy+1PO0NPFfCmHX+m&#xa;mDL2D8OdgTGMj9VxbriZSyizj/HXl4710gTqBr30NOYMcK1BG0RLDOYKsJNbbN5SHD2+I+lOvp&#xa;kGayJ59/oFRafCE8W+gvH9eSwK8SaCS/arDOoLk6JHVjh2903/B+rpetXyytbsc6xUDuP760GC&#xa;8X98k/II48xG7Y2BH5/2BdRaylga0WtJGopYJ1CK0q0kk9n9crOriTxvDUj+8zDBifL8Ao+xTx&#xa;CXyV1CC0mx/80sB3BC0VrDOoMdXAVlpj6zw+rw0Z3hb31EOWeXN9I/9dJOAARbz1stP1CUQe5s&#xa;XsFurmBzqDOoGWBnbgyFYP1hnUqOkkz1cYj9bxXj2fMLxss/omvKNmfpk5i/8E/urnpq3cxWJ3&#xa;w6RzBBmHj7we3hrXD6uxQ0bXOt7utxPD666bQM4vG+8vvu0TVyY3CHU/mzqCVg1aHOsmSbtjVp&#xa;0hW6nXalxqeE1LSyLRZdiJwaI/J3+WlINnuFdH0dTPWe+fi1IgtHnSVg9aMvhOYQ2aLqzXaf2u&#xa;ud3ut9P9dZBluT+/PhZ5wFzZk3YXrd0k6TccrWFDYXt+KqN7GytTvEXjkPw+ktIV+2l+DnvwaD&#xa;gBd9La7dTZbKn2ncN+t2HdPk0Z2kIt26gLwg2/9aXLPLvnbrf7TsC/jtuCUcIt2MwZg9/B9zBK&#xa;DBgpAhxkaxq24bcYuC4B4tkGthPEnQDpbQdl4/27x/jBbmGKejfj+v48X8ftV2WfPD2BjXk2Xk&#xa;mdZ1ee7rssWvMESmqkfF7/szJL5f8JcDdsPo1Ykrjzf/d7aQr/D5rg4wVz6SYWAAAAAGNtT0RO&#xa;iAnBAABAAGNwSXDQzxHgobEa4QAAAAAAAAAAAAAAAAAAAAA+AAMA/v8JAAYAAAAAAAAAAAAAAA&#xa;EAAAABAAAAAAAAAAAQAAACAAAAAQAAAP7///8AAAAAAAAAAP//////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;////////////////////////////////3///8EAAAA/v///xcAAAAZAAAABgAAAAcAAAAIAAAA&#xa;CQAAAAoAAAALAAAADAAAAA0AAAAOAAAADwAAABAAAAARAAAAEgAAABMAAAAUAAAAFQAAABYAAA&#xa;D+////GAAAABoAAAD+////GwAAABwAAAAdAAAAHgAAAP7/////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;////////////////////////////////////////////////UgBvAG8AdAAgAEUAbgB0AHIAeQ&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABYABQD/////////&#xa;/wEAAAB+fz+1pfaGQ6GhowIk0ojvAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAgA8AAAAAAABEAG&#xa;EAdABhAFMAdABvAHIAZQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAFAABAQkAAAD/////AwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcHIc6YKyzAFwVCHpgr&#xa;LMAQAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAIB////////////////AAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJkAAAAAAAAAMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAgECAAAABQAAAP////&#xa;8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAABAAAAAAAAAABAAAAAgAA&#xa;AP7////+/////v////7///8HAAAACAAAAAkAAAAKAAAACwAAAAwAAAANAAAADgAAAA8AAAAQAA&#xa;AAEQAAAP7///8TAAAA/v///xUAAAAWAAAAFwAAABgAAAAZAAAAGgAAABsAAAAcAAAAHQAAAB4A&#xa;AAAfAAAAIAAAACEAAAAiAAAAIwAAACQAAAAlAAAAJgAAACcAAAAoAAAAKQAAACoAAAArAAAALA&#xa;AAAC0AAAAuAAAALwAAADAAAAAxAAAAMgAAADMAAAA0AAAANQAAADYAAAA3AAAAOAAAADkAAAA6&#xa;AAAAOwAAAP7///89AAAA/v////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;///////wEAAAAAACgwIFBUWVAgNw0KMCBPVVRWIDgNCjAgUEFGVCAyDQowIFRITVMNCg0KGwDy&#xa;BAAAAAIAAAAcAPIEAAAAAQAAAB8ABAIAAAAgAASY9hZCIQAEAQAAACIACAAAAEMAAPpCIwAqRg&#xa;ByAGUAZQBwAGwAYQBuAGUARwBUAEQAXwBsAG8AZwBvAF8AMQAyADgAJQAEAAAQQQAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAGgAIHjF0Q/h3bkMb&#xa;APIEAAAABgAAABwAEAAAAAAAAAAAAAAAAAAAAAAeAAEAAAAAAAAAAAAAAAAAAAAABQAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AACAAAABAAAAGgDw4QIAAAAAAAD/2P/gABBKRklGAAEBAQBIAEgAAP/hAFhFeGlmAABJSSoACA&#xa;AAAAQAMQECABEAAAA+AAAAEFEBAAEAAAABLNQAEVEEAAEAAACjEgAAElEEAAEAAACjEgAAAAAA&#xa;AHd3dy5pbmtzY2FwZS5vcmcAMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAgH///////////////8AAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAMQAAAAAAAAAzAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAACAAQAAAAHAAAA&#xa;/////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUAAAAEAAAAAAAAADQAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAEAAIA////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AABQAAAIoiAAAAAAAANQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAgEGAAAACAAAAP////8AAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAGAAAA8AIAAAAAAAAAgAAAAQAAABoA8HsiAAACAAAAfQAAAIAA&#xa;AACY9hZCmPYWQoUcAAD/2P/gABBKRklGAAEBAQAmACYAAP/bAEMAAgEBAgEBAgICAgICAgIDBQ&#xa;MDAwMDBgQEAwUHBgcHBwYHBwgJCwkICAoIBwcKDQoKCwwMDAwHCQ4PDQwOCwwMDP/bAEMBAgIC&#xa;AwMDBgMDBgwIBwgMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDA&#xa;wMDAwMDP/AABEIAH0AgAMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJ&#xa;Cgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8C&#xa;QzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5&#xa;eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4e&#xa;Lj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1&#xa;EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFi&#xa;Q04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SF&#xa;hoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5u&#xa;fo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/AP5/6KK0/Bng/UfiB4s07Q9ItmvNT1W4S2toVIG9&#xa;2OBkngDuSeAASSAKipUjCLnN2S1beyRpRo1KtSNKlFylJpJLVtvRJLq2e0/sN/8ABP8A8Uftya&#xa;9fWmhtfW8dsy29v9l0uXUJ7+5ILmKKNCu4rGCz4bKhk+Uhsj6mX/g2p+MJ/wCYf8RB/wB09vf/&#xa;AI5X66f8G+f7BOkfszfCKz8Xz29vNLbwPp+izlF3TSEst7fFTuZHdw0S/PlUEqYKlTX6WDxl/t&#xa;frX53g8Xmeaxlj6WLlQpTf7uKhB+5spNyi3eWsrdE0fuGaYDh7h2UMnxGWxxeIpxXtqjq1Yr2r&#xa;u5Qiqc1G1O6he13JNn8sB/4Np/jD/wA+HxD/APDe3v8A8cpD/wAG1HxiB/5B/wAQz/3T69/+OV&#xa;/VD/wmJ/vUHxiR/FXWsFmv/Qyl/wCC6X/yJ5f9s8Of9CGn/wCD8T/8sP5Gf2kf+CHPxF/Zu8AX&#xa;Wr6r/wAJHDfrby3Fjp2peFrjTX1QRbTKsJdyXdVYHaqkksi8bga+Iq/tj/bj+CFr+1p+z5qnhp&#xa;iq6vasNR0aVnKrFeRqwQNggbXVnjO7IUSbsEqtfyQ/8FJP2VZ/2ZPj3dCLT5dN0fXpZpobV4RA&#xa;dPuEfFxamPgp5bEEKVUBXC8lDWmT5pi8NmTyzMa3tVUXNTm4xi218cGopK6+JabX10I4oyDK8f&#xa;kMc/yPC/V3RlyV6SnOaSk/3dVOblJRk705K9lJKy1u/nqiiivuD8iCiiigAooooAKKKKACv0c/&#xa;4IOfsE3Xxw+JVt4qvIjEt+0lpp85iEi2VqhxdXn3TtbgwodygszqeHU18Ofs4fA+/wD2h/i9pP&#xa;hmyEqRXL+bfXKIWFnbKQZJTwQOMKucAuyLkbq/pZ/4J4fBDTf2ePgvp7QWi2lzfWcMFtEx3tZW&#xa;MahYIgxLMcqA5JOTlQwyma/NuPM2U3DJKb/ie9Ufamn8PrN6f4VI/c/CLh2VGFXiuvH+C+Sgn9&#xa;qs18XmqUfe/wAbhrufZvhi8svCHh6w0nTYltdO0y3jtbWBSSIokUKigkknAAGSSa0l8XZ/jrym&#xa;Hxdkfe/WrUPivd/H+teR/bMYrljokejWyKUpOc9W9W3u2enf8JZ/t0jeLcfx15wviYEfeH50yT&#xa;xVj+L9ahZ75nOsh8j0aTxd/t1+W3/Beb9grT/jV4QvtY02C3th4ik86NwwiSz1lEcxykAfdmTe&#xa;HIVjnzWJ3OtffM3i0f365r4nWNh8UPA2qeH9SJaz1OExMQfmjOQVcdtysFYZ4yorgzXFSxdFOl&#xa;LlqwalB9pLb5PZ+TZ9Xwth4YDFNYiHNQqxdOrH+aEtH818UX0kkfyHavpN1oGq3VjfW81pe2Ur&#xa;wXEEyFJIZFJVkZTyGBBBB6EVXr7U/wCCxv7H118Ffi1L4pt7NIIr25NhrCRIVRbsAmO4GSCVnj&#xa;GchAMpuJJlr4rr9Y4ezqnmuAp42mrN6SXWMlpKL9H96s+p+Bca8LV+Hs4rZXWfMou8JdJwlrCS&#xa;9YtX7O63QUUUV7R8qFFFFABRRRQB6v8AsX/tAD9nL476brN0xGi3qnT9VABJW3kZSZAArHMbKj&#xa;4UZYIVGN1f0Jfsq/HT/hJvA0OlXM6PeaRGscRBX99b4xGwx12jCk+ykklq/mWr9M/+CPn7YNxq&#xa;XhNPDN5cs+teDUCwKz4N7prEKq/eJJiYhPuhVUwdTmvx7xNyidBwz7DL4bQqJdYt+7L1i9H5Nd&#xa;Ef0v4E8SU8ZTq8HY5/G3UoN9KiXvw9JxV0tk093JH7J2/jLp81XrfxiP71eH6Z8Qo7y2jmimDR&#xa;SqHVuRkHkVow+OxgfPX5TUzdvVM/ZK3DDTs4ntKeNAF+/wDrUM/jLI+9+teRjx2D/wAtBTJfHY&#xa;I+/WEc1d9zljwu77HqNx4xxn5/1rA8a/Fe38HeHLzU7lmMNpGXKr1c9FUe5YgenNcDceOsE/PX&#xa;y/8A8FEP2vrT4NfCrUdUleK4TS8Ja2xdQb6+cFY4xlgSFyWYKdwRZTg7a6o5nXqONHDLmqTajF&#xa;d5PRf8E9TDcO4ajGWKxz5KNJOc5doxV38+i8z4p/4KyftK658d/i/Z/DHRpJ73WdXvoZ9WjR2j&#xa;E9xLtNraBnYL5aqyP8xKj9zyDGcfoj/wTF/4N6fCf7Qf7O8N/rq+G9Lt9McWMGpX/hSPUbjXJg&#xa;C1xMDI8ZESuwRSGfkOmR5fPwb/AMEUf2M9c/ah+Og8b6oXn1fxPqE1tp91Mi/JuLNfX5BCghV8&#xa;xRsYZxMuMla/pz+GWlaV8JPh/pHhrQ4ktNK0W1S1t0AUFgo5dtoALscszYyzMxPJNfpmWZVQlV&#xa;WUczdDDX9o1Jx9rXkve1i07QT73u0nex+RZ7xNi6WGnxLyRjjMdb2MZQjNUMHB2haM1KPNVa3s&#xa;00nJWcj4M/4hbPhb/wBB7wZ/4by2/wDkmg/8GtXwtI/5D3gz/wAN7b//ACTX6Ijxhn+P9aP+Ev&#xa;P979a+i/1byT+Sf/g2t/8AJnwj8QeKutWn/wCE2G/+Un51t/way/Cxv+Y/4OH/AHT63/8Akmvy&#xa;i/4Lmf8ABJcfseeIbv8AsDS9LhPhlBcyy6XYG2i1nTJT+7uhEuQrRMHVxg4xLl2WJSf6cD4w/w&#xa;Bv9a+Zf+Co37N9p+1P8Ap54rG31DXPDUc08MDxGb+0LR0xc2hTO1t6hWAKsSY9gwJGNcGY5bSy&#xa;6nHMMo5lUpPmcXUnJTj9qNpSkrtXadr3SPcyHiLEZ5VnknEzpuhiI8imqNKEqVTR06ilThB2Uk&#xa;lJN2cW7n8edFem/tdfs+T/ALNXxt1Hw/mSTTJgL3SpnZS01q5YLuwfvKyuhyBkoWAAIrzKv0rA&#xa;Y6jjMNDFYd3hNJp+T/rVdGfg+b5TissxtXLsbHlq0pOMl5p2+a6p7NarQK634GfF7UfgR8VtG8&#xa;U6aWabS5w0sIYKLuE8SwklWADoWXdglSQw5ArkqK1xOHpYilKhWjzRkmmn1T0aMMDja+DxNPF4&#xa;WTjUpyUotbqSd016M/dL4KfGux8ZeB9N1PTLoXOlapbrd2knT5HGSpHZgTyOoO4HkV3Efj/j7/&#xa;61+N37NH7efjL9nvwQ/hrStN0/XLFbh7qBbvz5JLUNjcibXAEe4FsAD5nc87q9LT/grR8QYvve&#xa;DND/AO+Lkf8As1fzJmHhZnlLETp4RRlTTfK3JJuPS6fWx/eWV+PnCGMwVLEZi5068orniqcpRU&#xa;/tWaWqvqvLfU/UweP+Pv8A60x/iB/t/rX5cf8AD3bxwn3/AAZof53A/rQ3/BX7xiB83g7RB/21&#xa;mH9a4F4YcS9Kcf8AwOP+Z2rxt4BW9ea/7hT/AMj9NtZ+IzW9o5jfMhGF+tfmR+1P4u1T9vX9r/&#xa;Tfh54cuJZfDugTtFPeRAyxqwI+13jZCghP9WmWIZlG1v3tZHjj/grH4x8T+EdS0210DS9Iur+3&#xa;e3S9huJvNtdwwXTkYcAkqc8Ng84wfob/AIIafAHwrqtnZa9qN7aTXvibUzYXboN0llDE2Vs8jD&#xa;I0zbSSD0khOPlGffy3h3G8M4epnGYxSr6U6KumlOenO2tFZX3811R85nfGOT8dYuhwxkdSTwut&#xa;bFStKMpU6VmqUU7N80rXsrp2a0Uj9b/+CV37Omnfs9fB611aKz+xzX9lHYaXAWctaadGFCA7hk&#xa;mQoHJJbcqxnOS1fWEfi3/a/WvILLxUlvCkceyOOMBURRtVQOAAOwrzb9qT/goV8Mv2LvCS6t8Q&#xa;vFVno7TIWtLBMz6hfkdoYFy7DPBYgIpI3Mte3lNR4ejDB4e8pfe5Serb63b1PhOKV9dxVXMsXa&#xa;Eei0UYRWkYrZJJWSPq5fFRP8X60v8AwlJ/vfrX4tH/AIOR/iD+0f8AFOHwb+z98C5/EOp3co+y&#xa;yazetLJJFwDJLBBtSBQSMu1wUUdSK/SP9nbxZ8Sbn4aWtz8VT4Nt/FdyPMms/DUc/wBksgf+WZ&#xa;kmkZpW9WAUA5A3Abj62Pq4nBRTxNot7K6v9yvb5nxWXLCY+bWEvJLeVmo+l3a/yPf38WED71QP&#xa;4uI/i/WvOZ/FuB9/9apz+L8fxVwQzu/U96nw/foflt/wXv8A+CfcfiLTrzVPDtnmWLz9c0OOGP&#xa;vwbuwjjjB6jY0ahBz5SA8Ma/Eqv6sv2qIdL8d/BXWIdUuI4FsYze2szvtEVwikJ9d24pjBJ3nA&#xa;ziv5wP8Agol8I9J+EH7S2oQaNNF9k1uBdXa1jUKNPkldw8XBPBKFwMLhZAAMAE+rwHm0cPjqmT&#xa;fYknUp/wB3X34+Sv7y6atbmHi5w7PHZPQ4ptarTcaFZ/z2X7qfnLlXJLd6RdrXPDKKK9o/YU/Z&#xa;pb9pP42W9tewO/hvRAt9qzYcLIgPyW+4DhpG4xlTsWQg5Wv0vNMyoZfhKmNxLtCCu/8AJeb2Xm&#xa;fhOQZHi85zGjleBjepVkortr1fZJXbfRJs+t/+CZH7M4+GPwq/4S7UoF/tzxfEksO5UZrWx+9E&#xa;qsBkGXIkYbsECIEAoa+o4tPz2q5aWeccVfgsMjpX8Q8QZ/XzTH1MdiPim727Lol5JWR/qtwpkG&#xa;E4cyehk2C+ClG1+snvKT85Sbb7XstDJGncdKa+ncdK3xp+R0FMl0/jpXhrEnuLGanF+L/BVj40&#xa;8N6hpGqWy3em6nbva3MLEqJY3UqwyCCOD1BBHUEGvhT9lnxdqP7Bn7X2pfD7xLeMnhzXpVhjvJ&#xa;QYodx5tbteGwGz5T4YKpY7mPlV+gfjPXdN8EeHbzVtXvLfTtNsIzLcXM7hUiUdyf6dzxX5Xft4&#xa;/tT6Z+0/8SLSfR9JhtNM0OOS1tr6SPbeagjMDl/SMEEoh5Xe5OCxA/YfC/B4nNFicsqQcsLVja&#xa;b6QmtYSV/tJ9F5N6I/n7x6z3AZOsBn1GqoZhh53px61KctKkJW15Gur21UdZH35+2P/wAHAcng&#xa;Lwenhf4YR2ur+MBEYNQ8QzqstjZOPl3QIPlmkP3skeWpwMSDIHyh+yP+wH8Vv+Co3xMufG/jDX&#xa;NUtfDt5Pu1HxTqxaee+KnBitUYjzCMbRjEcYGOoCHK/wCCX/7JnhL4/eNbrXvGNxHqGj+G7mJJ&#xa;tEQurXBdSUkmYf8ALLKt8qnLFGBwBhv2V8P+I7Tw9pFrYWEFtY2NlEsNvb28YiigjUYVFVQAqg&#xa;AAADAr7fN+JcFw2pZVli5q8UlOpJa6pP5trX+VebPx3IuBc1405eIs7ahhKjk6VKD0aUmns3ZJ&#xa;prX33/dVjpP2SP2Zvh5+xR8PV8PeAdFh06OQKb2/lIkvtUkUf6yeXALHkkKMIu4hVUcV6w3jfA&#xa;+/+teLx+PRj7/608+Ps/x/rX5XiM6qVqjq1ZOUnu29T9docHU6FONKjBRitEkrJHrtx42yPv8A&#xa;61RufGvX5xn615VN48/2/wBaxfFPxSGi6TNcBg0gGI1J+8x6D6dz7A0QzblV2z0cNwpKclGMdW&#xa;cn/wAFAv2rLH4a/D3U5r64mj0jQYBeagIs77mQ4EMCg4BLMygZO3c6ZI2k1+CHxO+I2p/Fz4ga&#xa;t4l1mUS6lrFw1xLtLbI88LGm4khEUKqgk4VQM8V9Qf8ABV79qE/Ev4hR+B9OuhcWHh+4N1qkys&#xa;ji5vyCNuRk/ulZlIyPndwwygNfIVfu3hpkE8PhZZti1+9r2sv5af2V8/ify6o/mXx04vpYrHw4&#xa;by6V8PhG+ZradZ6Tl6R+Bdves2mh9tbSXtzHDDG800zBERFLM7E4AAHJJPav1r/Yh/Zui/Zv+C&#xa;dhps8KDX9SC32sSYXd57KP3OQzArEPkGDtJDMAN5r4B/4J2weGZ/2rfDw8SkjbvbSt5jEBvwMw&#xa;+Zv/AOBbNvzeb5WPSv1esK+J8bM/rqVLKIJqDXPJ/wA2rSXorNvzt2P1T6LnB+EdDEcTVWpVU3&#xa;SgusFZOTfZyuku0U/5jSs7cHArI8YfGnwV8MNSt7LxJ4s8O6DeXS7ooL/UYrd3X+9hmBx79Kyv&#xa;jJ8PvEXxL8FyaZ4b8ZXfgm7lBD31tZpcSMpBG0biCnruQhh2Ir8qP2vf2WfG/wCzb49b/hLZZN&#xa;Xi1d2lttbWR5Y9RPVtzN8wkGeVbnuCRzX5rwNwbgM/rujicYqc9bQSfM/O7tHzsnJ23sfp3ix4&#xa;jZtwvQVfB4B1ael6jkuSN+jUW5a7Xkoq+zex+zulvbazp0N3ZzwXVrcoJIpoZA8cqkZDKw4II7&#xa;iqXi/WdP8ABXh291bVbuCw03ToWuLm4mbakKKMlia/Nr/gkp+2Vc/Cn4o2/wAPtevXfwt4nl8q&#xa;x81yV069Y/Jtz0SU/KR03FDx82dT/gr1+2PL468dS/DHQLoroegyg6w8bYF7eDnyiR1SLjI7vn&#xa;I+QGtv+IUZjHiVZG5Xp25/aW09nezdv5r+7bvrtqfNR8dMufCsuIVG1VPk9lfX2lrpX0923vc1&#xa;trr4tDyX9un9uTU/2p/Fj6fprXGn+CdOlP2OzJ2teMOPPmHdj/CvRR7kk+2f8E9f+CfaQ2Vl4/&#xa;8AHViHllCz6NpU6cRjqtxKp6k9UU9PvHnGOD/4JhfsaR/G3xg/jTxHaiXwt4dnC28EgympXYww&#xa;UjvHHwW7ElRyNwr9J70ADjAr7nj7ivD5Lh1wtkHuKKtUkt9fs3/me83v072+Y8HuAsVxLj3xxx&#xa;X+9lJ3pRls7bStsox2px205u1/zd8V2Nx/wTa/bag1O1inPgbxGrsI4lJX7HI/7yAMynMlvIEc&#xa;BW3FRHuYeYa/Rvwz8RUvNFtZre5iurWaNZIJ4XDxzRsAVZWBwQQRgjgjFfLf/BVXS/Dt3+zS1z&#xa;q7iLVbW/hGiuse6R52Pzx5xwhhEjHJAyinkhQfinwR+3J8VPh14UsdE0jxbPBpumx+TbRS2Vtc&#xa;NEgJwgeSNnKjoAThQABgAAVS4cxfGOVYfM6DUMRC9ObndKajZqV0nd62btq766JHp1uN8s8Ms/&#xa;xmQ46MqmCrWr0o0+WUqMptqUGpSjaLtdK+is7e82fsfH4+YfxGnnx8wH3m/WvyDH/BRv4zD/mc&#xa;v/KTY/8Axml/4eOfGf8A6HL/AMpNj/8AGa4v+IM57/z+pf8AgU//AJA7v+JmeC/+gXEf+AUv/l&#xa;x+u03j1iPvGvFv22v2pR8B/gxf62HR9Tm/0LSIXBIkupAcMcA/KiqzkHAITbkFhX54/wDDxv4z&#xa;Hr4yz/3CbH/4zXCfGL9oLxf8fbyxn8WazJqr6ajx2w8iKFIQ5BYhY1VcnC5OMnaPQV6mTeDuPh&#xa;jKc8yqU5UU7yUXJt21trFaN6PXbY8XiX6TORSyqvTyGhWhipRcYSnGCjFvRyvGpJ3iruOjTdr6&#xa;XOS1LUrjWNRnu7uea6u7qRppppnLyTOxJZmY8liSSSeSTUNFFf0MkkrI/imUnJuUndsmsL+fSr&#xa;+C6tZ5ra6tpFlhmicpJE6nKsrDkEEAgjkEV+uf7Gn7REP7SPwS03XXMSavbk2Wqwx5AiuUAyRk&#xa;Dh1KyADIAfbklTX5DV7t/wAE+/2lP+GefjhBHf3Cw+GvExSx1MsVCwHJ8m4JLKFEbsdxJwI3kO&#xa;CcV+c+JvCn9sZU6lFXrUryj3a+1H5rVeaXdn7b4E+IP+refxoYqVsNibQn2i7+5P8A7dbs/wC7&#xa;JvVpH61WVx0rD+OHwZ0H9on4X6j4V8QQiSzvkzHKoHm2kw+5NGezKfwIJByCQbdre4xzV+C+wO&#xa;tfx7TnWw9aNehJxnFpprdNbM/0KzPK6OMoTw2JgpQmmpJ6pp6NM/Fv4/fAnxD+zJ8Vbvw5raNF&#xa;dWbia0u48rHeRZOyaM+hx9VIIPINc/4d0TVfiv8AEGy0+F5b7WvEV+kKySuWeeeaQDczHkks2S&#xa;T7mv2H/aP/AGavCf7U3hKDSvE9tNus5PNtL21ZY7u0ORuCOQw2sBgqQQeDjIBFf4U/sn/Db4Ip&#xa;bP4e8I6Pb3to2+O/nhFzeq2MbhNJudSfRSB6AV/ROG8bsOstjKvQbxVmna3Lf+a97pN68qWmvk&#xa;z+O8X9GHHyzmUMLiIxwV1JXbc7X1jZKzaV0pNq9097pdR8IfhjpvwQ+FeieFNKQLZ6NarBuAwZ&#xa;36vI3+07lmPu1aV9NnNPub3rzXzB/wAFLv2nf+FNfB9/D+l3Jj8SeLUa2jaNwJLO16TS9DywPl&#xa;r905dmU5jr8PybKsXnOZRw8HzVKstW/PWUn6atn9WZxmmX8K5HUx9dctHDw0itNklCEfNu0V5v&#xa;XQ+Pf+CgX7Sn/DQ3xunj0+4Wbwz4aL2OllQNs5yPOnBBIYO6jaQQDGkZwDmvCqKK/t/KcsoZdg&#xa;6eBwytCCsv1b829X5s/wAueI8/xed5nXzXHO9SrJyfl2S8oq0UuiSQUUUV6J4oUUUUAFFFFABR&#xa;RRQB+mP/AATd/aZ/4XH8HU0PU7kSeIvCaray73zJdWuMQzdByADG3LHMYZjmQV9JRahgda/FDw&#xa;n421rwHqMl5oer6pot3LGYXnsLqS2keMkMULIQSuVU46ZUeldAP2kviKOnj7xoP+43c/8Axdfh&#xa;XEPg48Zj6mKwVaMITd+Vp6N72t0vsumx/XvBv0naWXZNQy/NsLOtVpR5edSS5ktIt315uWyb6t&#xa;X6n7KjURjrTZNQ96/G3/hpP4i/9D941/8AB5df/F0f8NJ/EX/of/Gv/g8uv/i68T/iB2M/6CYf&#xa;+As+lX0rsn/6F9T/AMCifr74o8XWfhXw/f6pqE4trDTbeS6uZiCwiijUs7EAEnCgngE8V+RH7S&#xa;fxyvv2iPjDq3ie78yKG4cQ2Nszki0tk4jjAJIBxlm28F3cgDNZfiL43eNPF+jzadq3i7xRqmn3&#xa;G3zba71WeeGXawYbkZiDhgCMjggGuYr9F4D8PY5BOpiK01UqS0TSslHd79W9/JLzPxjxi8a5cZ&#xa;UaGAwdGVGhB80k2m5T2V7dIq9u7k77IKKKK/Sz8ECiiigAooooAKKKKAP/2YlQTkcNChoKAAAA&#xa;DUlIRFIAAACAAAAAfQgGAAAAajJrDAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAIG&#xa;NIUk0AAHomAACAhAAA+gAAAIDoAAB1MAAA6mAAADqYAAAXcJy6UTwAAAAJcEhZcwAABc0AAAXN&#xa;AW20X4EAAAU7SURBVHhe7Z1LqE5hFIa3Syi3UiSDMzAguU1MGB3OwMhAyWXgljuRJEmSSySXji&#xa;QkuZTLwMjQQCEZGEnkMsGETlJEcmd9h51znPN3/rPX2s5+13q/WiP//9lrvc96v2/v/+y9s8xu&#xa;vJWpflYwjtqlyJlqVWBABYVvCyOVK7kCXysOQEvJ+Yeefm7Fxc+doH9olUpMvorrfmfH9K3EGo&#xa;Sd+jxI9+dAzAqrVAmJ9wYTP4eghFLEnPIHKACHYsplm/VwUPFzF+hlW454s6F2fw7Ax3iS2WW8&#xa;A7z7uRdQsoBy2tfVcX5S1iHk16876f4cjnkhVSyY9CBn4nMp6CYIXVkq6r83d7MOIT/e4LT7eV&#xa;pYJ86o3V3vcb+psw4hP3bOeffnkPQJqW4dSdfbReifSxe3OP6pwMMg3Z/DO4cE/K3AyGDi87Tw&#xa;H/rRLb3o8ac9T/jRFLT76QJ/0C/aPV6+9zKyBdwJ3v05xEOjQuCliy3yCMfAK3Z/u7ubZkQiYD&#xa;zF7/TWtjAMWFimxzmuRiBgCbu/kje21mqoz9ZQeuxc7zmZ7U/us/uhur8t2CZG4L1TPOd3wIIA&#xa;zwWKkJuagcFcAmCXgAT4CzUBMsEHQgANgfrZB+leuQh26TlHtRGg3evvWcwiuU1TE0AXgHdBNQ&#xa;OLCAE0BGfUBMgE6Vk6RSyI36lG3SwYIADATXDPgoD3wAWgE2XZMC0EfQkAvAtqGcjSM3bZTbg1&#xa;mKgmgADAN4CagaWEABqCi2oCZIL01ydcCnBroGagHwGAboAHagJ4cQgagOTeIywg4DKAuwwk7d&#xa;TjBJcCaCeYoiaAAEADYOICswkBNASX6QLY67jFPkzNwEC6ALQLPFMTIBPwLmJsJzF59oGFHXGO&#xa;ngNJbQRnuRRALwXT1QQQAGgATE4L058i08Zxa3CMLoArnlXjqRlIPzRYHQzn+f+1VAOwgADANs&#xa;A4tfoUH1Z8k03gJQIAC4D6YhDqu4O5z8iyW7T+/7/ZqhJ4av2jvkugSiIWPZZ9avVlAvR3Bxct&#xa;Hvr3TF6Ls5sbP9iNX/opXz3QuyDq8Zt0/012P2z3qx8kxcfJ4Z45pOc/qUdU6/SQt1r80bR+WO&#xa;tfrVaf4sOK/8VC/AsEABYA9cYvAeRhDYyYw0eL7n9EAGAbQK3/KIoPK77J9f6ItuklZ3X3z2T3&#xa;w3a/ybuEvHRCtDzSAz7V4y67H7b71eLztA/3tPe5hfot7P643T+J4sOKv8qi+6NtmDzlq9Z/Ob&#xa;sftvvHqNWn+LDiv7UQ/zEBgAXAQn/Y5D2t4UVyuWaivkySfjMucgD8Ts/WzUr/1nl49a9rMedL&#xa;nRZKLJZI71FYJrFCIp2CrZFYJ7FeYoPERolNEpsltkhsldgmsV1ih8QuiT0SeyXSL3f7JQ5KHJ&#xa;Zoljgikd7Ykp7gcVzipMQpidMS6dVwjRLmgx1dG4IkiPuxUzIkBJ3XwL34eYIEoCMATWHUl0Qn&#xa;0wXauaDJX9WiAZSSphP8rkHYQQCy7FlY9SVxXh2MrP6f3CO7wFrq//uiRlQIqH9gF5hA9f9WYG&#xa;owF3hN8TtW4F0gCKh/jQpE2AuYPDzRK0FPA7iAV+3M8vLsAo1mVXI8Ufr92ysEjmWzTc0jAA22&#xa;JfI9W3oBsScI0gMwOLpZgTeOIOhm6vx4XgEPLnCFchavwBMHLlA8e36ztQLILmDysqToHKwEhi&#xa;C6dmb5I7rAELPsOVE2FswFblAz+wp8AoLAPnvOCLMhTLdfcZRUgdsVd4HvJeXNadtUoMobwuFU&#xa;qvwKpLthqwpB+dmD/g+/AGLHCZaQOz4aAAAAAElFTkSuQmCCAgAAAKtr204AAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/9sAQwAIBgYHBgUIBwcHCQkICgwU&#xa;DQwLCwwZEhMPFB0aHx4dGhwcICQuJyAiLCMcHCg3KSwwMTQ0NB8nOT04MjwuMzQy/9sAQwEJCQ&#xa;kMCwwYDQ0YMiEcITIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy&#xa;MjIyMjIy/8AAEQgAAQABAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCA&#xa;kKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHw&#xa;JDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eH&#xa;l6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh&#xa;4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EAL&#xa;URAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoW&#xa;JDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhI&#xa;WGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm&#xa;5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A+f6KKKAP/9kDAAAAq2vbTgAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAhAAADoA8gQAAAAEAAAAOwDyBAAAAAUAAAAaABgAAIA/AAAAAAAAAAAAAIA/AAAA&#xa;AAAAAAAbAPIEAAAAAwAAABwABIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABDSE5LSU5LIAQABwAMAAADAAIAAAAKAAD4AQwA////&#xa;/xgAVEVYVAAAAQAAAFRFWFQAAgAAAgAAABgARkRQUAAAAQAAAEZEUFAABAAAAAIAABgARkRQQw&#xa;AAAQAAAEZEUEMABgAAAAIAABgAU1RTSAAAAQAAAFNUU0gACAAAHgAAABgAU1RTSAEAAQAAAFNU&#xa;U0geCAAARgAAABgAU1lJRAAAAQAAAFNZSURkCAAADAAAABgAU0dQIAAAAQAAAFNHUCBwCAAABA&#xa;AAABgASU5LIAAAAQAAAElOSyB0CAAABAAAABgAQlRFUAAAAQAAAFBMQyB4CAAAGAAAABgAQlRF&#xa;QwAANgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAQAAgD///////////////8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAASAAAARwAAAAAAAABUAGUAeAB0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACgABAP//////////CgAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAcFQh6YKyzAFAhS/pgrLMAQAAAAAAAAAAAAAAAEMATwBOAFQARQBOAFQAUwAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAIBCwAAAP//&#xa;////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFAAAAAAKAAAAAAAAAQ&#xa;BDAG8AbQBwAE8AYgBqAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAABIAAgD///////////////8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAA8AAAAVgAAAAAAAAABAAAAUExDIJAIAAAYAAAAGABGT05UAAABAAAARk9OVKgIAAA8AAAA&#xa;GABTVFJTAAABAAAAUExDIOQIAAAeAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQAAAAEA&#xa;AABAB20CBAAAAAAAAAAEAAAAAAD/////MgAAAAIAAABAB20CAAAAAAAAAAAIAAAAKgAAABAAHg&#xa;AAAAwi8PkGACkaBwAqGgcALiIAAAAAMCKZmZkAAAADAAQAAAAMIgIAAAABAAAAAgAAAAQAAAB2&#xa;AHYAAQAAAAQAAAAAAAAAAAAAAAICAAAABAAAAQAAAAQAAAAAAAAAAAAAAAICAAAABgAAKAAAAA&#xa;EAAABAB20CBAAAAAAAAAAEAAAADwBUAGkAbQBlAHMAIABOAGUAdwAgAFIAbwBtAGEAbgAAAAEC&#xa;AQAAAAgAAAD/AAAAAQAAAAAAAAAKAAAAACIFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAABAAEAAAAAAAICAAD8AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAABAAAAAEAAQAAAAAAAgIAAPYBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAAAEiIJBAAACgAAAAEAAAA4B20CBAAAAAAAAAAEAAAA&#xa;AAD/////MgAAAAIAAAA4B20CAAAAAAAAAAAIAAAAKgAAABAAHgAAAAwi8PkGACkaBwAqGgcALi&#xa;IAAAAAMCKZmZkAAAADAAQAAAAMIgIAAAABAAAAAgAAAAQAAAB2AHYAAQAAAAQAAAAAAAAAAAAA&#xa;AAICAAAABAAAAQAAAAQAAAAAAAAAAAAAAAICAAAABgAAKAAAAAEAAAA4B20CBAAAAAAAAAAEAA&#xa;AADwBUAGkAbQBlAHMAIABOAGUAdwAgAFIAbwBtAGEAbgAAAAECAQAAAAgAAAD/AAAAAQAAAAAA&#xa;AAAKAAAAACIFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAP7/AwoAAP////&#xa;8AAAAAAAAAAAAAAAAAAAAAGgAAAFF1aWxsOTYgU3RvcnkgR3JvdXAgQ2xhc3MA/////wEAAAAA&#xa;AAAA9DmycQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3YhSrgAAAB9pVFh0VGl0bGUAAAAAAEZyZWVwbGFuZUdU&#xa;RF9sb2dvXzEyODMnn8AAAAAbdEVYdFRpdGxlAEZyZWVwbGFuZUdURF9sb2dvXzEyOH9jaiAAAA&#xa;DwbWVUYf/+PAA/AHgAbQBsACAAdgBlAHIAcwBpAG8AbgA9ACIAMQAuADAAIgAgAGUAbgBjAG8A&#xa;ZABpAG4AZwA9ACIAVQBUAEYALQAxADYAIgA/AD4ADQAKADwAbQBlAHQAYQA+ADwAYwBvAG0AbQ&#xa;BvAG4APgA8AGEAYwB0AHUAYQBsAF8AaQBtAGEAZwBlAF8AcwBpAHoAZQA+ADEAMgA4AC8AMQAy&#xa;ADUAPAAvAGEAYwB0AHUAYQBsAF8AaQBtAGEAZwBlAF8AcwBpAHoAZQA+ADwALwBjAG8AbQBtAG&#xa;8AbgA+ADwALwBtAGUAdABhAD4ADQAKADBtVEgAAAAASUVORK5CYII=" ID="ID_1750575931" CREATED="1414544707451" MODIFIED="1414544707506"/>
</node>
<node TEXT="${name}-icon.png" ID="ID_1819207796" CREATED="1323059863835" MODIFIED="1323063753585">
<edge COLOR="#999999"/>
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAACAAAAAfCAYAAACGVs+MAAAABHNCSVQICAgIfAhkiAAAAAlwSF&#xa;lzAAABcgAAAXIBFjPAmQAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAZ+&#xa;SURBVEiJrZd/bFVnGcc/7zm391fba7dOCm2hSDsoK22QLmAY4NaMbgpMx1hMo1NB41JlblC1aG&#xa;Js3BxGCGPqjGNTZiKImgWiY4EIyRiDhaaDdNZCf9HRNfbSriu3t7339t5zzuMf99zb03uH0bI3&#xa;efK+OT/e53Oe9/k+73kREZyWp/EqIIClkmZqYGoKQwNDVxi6IgF8KfPd2ZgSEVJNKXVPQOfU1f&#xa;r53vzqWkQlSbCJRABLOH38NRq6zNFJi/kiEuVWWooE0PJ0ug6UY8n510TCYze3Z7dKfQERr8Yz&#xa;H1sENKUeX+JjX+d3P+9XT+yfJlSOEKRaeIyrjeupenM8FrNYLCLvzzYAGoBSqsCjsed31R6/2v&#xa;hNCI3A+AiE7T5zbBks2rKV7xSj5+v8erbO0wA+jd0bbidn9UObwaVD+INpm8iw1PXln6VlVWmO&#xa;rlivlFozWwAFVHk13ulbX+gp3v4MuN1JrJQpx9MWtj5s6+vg4P7n5Mk+usMmd4mI9f8CuPJ1Xm&#xa;oqwVW89kGIhCAG6A4A3YZIOTUd49uL+PrKJerpga4FIvz7NpeasBFRICi7t6/FLY6ETWmZAWAK&#xa;JYu96Hw4BKF5SYeZptmOM80QZOIGkybe5mK89XM8RaKppHxlWroiEI7E2dxt7VJKHRaRbucSPH&#xa;hHDq8OrHP7fXWbwesBV4ZzHKF3AlzrofnoeY6NIJe3rlHavhM3j/XfX6Zl51Pmc0OcDRlyXxpA&#xa;RMh3qdM7Slj30zVlLiqWzXSuOSZxAsQNxt5+g9IzU3KyRldrDhyHBZUzcybVBLBMYt/fQNlfrk&#xa;SGEzwqIq+nAZRSd3o1/tm1SnkWLFsGft80gLLNmXwmMPQ+9aeGyNWQo09sUTQ0TztXGc5TfVcb&#xa;f21uZGs3g5Mmi0Qk4QIQkR6/rn77ZLd862ig18eceTNV4AQQIJbgQl+QsyHouS9fce+WZH1Qju&#xa;edACmbW8aj6+9h7+C52y5O8BSwJ10JlVIBn8bAiSo+sW6uD9yuj5ahBUSilL9tyGNF0PLtryru&#xa;vj8b2FlBU+8J8OEI7+5pZmWbEZmy+JQrDSoyrivV9I1ufnXAivqUylh/x2RHRyFsoX64Yh6U18&#xa;D4B+klS1gmHYNBlILli0qy5aspatbey5evndKOjLDX5Zzfgt8PGzy/rQf8enLzS4tYppdzzEAV&#xa;5SCegkLF+CjoMBaL8cLpd/jNPy6ytLSQP+54CCZGppPWmcC5AR4pxHtomC/MAAAe8GtoVz4NHh&#xa;fqZpUwGIPyS6jjbR1sKKvg5PAU2w6f4Xo4SsumWn60aTmaikEoli3dhIXVdoqmfiJxYZczB3Ly&#xa;dK7+4U5KN89hpgoyc8CC3e8hvwwij5R4tRf6Y5QGfBxuuJu15YXZ0k1BGMBADy+9+S/ZeZXeCZ&#xa;PKNIBHUz+ozeMn52vxz6iCN5Fh/wQsbgVDYOP8XF7ZVE1hnit7D3ECTCUItbdRds6MhUzqReSs&#xa;y/76Iq9Gy4tL8OGCtDknc1TCrgg80J685NGQIxVTKndiFKa07OLlrKAjQX7cayYsOCkiZ7HdkK&#xa;+zv+GT6NUB+6szIVIAJrSNw+daYTQOB5fCi4NIQ7vB31yDCr//5gBxg8vBEAeCmFMW21O3XUqp&#xa;lbk6D/9sEW5n6DsjcCkMWxaCx5WcqO8G1L0FYQP2VMLXSmCFH23lJegcjnJXfjQJ+1EAFjT2Ek&#xa;X4hYgMpm6rgE57ywKqd5ShcAM5sO8a7OqEhAVzfXDxYSjKgXWvw7kRaKqAvYuBBBCHbZexToxB&#xa;XYC4UnbaJHuVCuCEiTp+g7FJi4UiEktHQKCjK0ol4E4JfWcFrC6CjW9BMArfuwA1BUnnC3Ph2a&#xa;X2mtqtJ0Z81ODMoVH+y3YIwDmnc2y4Iq9Gf9sKfFUFyQik7EII6t6AiAE5WjIir9QmQ088GYFj&#xa;QfjKFa5PmjO/7H9tmohct4SnG3uIzCgaBqwKwJ8/A7pKOq8KwGPFyXtYMGXA9h6ikyaNs3EO09&#xa;uxO1fnvT9VMm/TXLJ+SI4NJYf33wE+bAADft6PuXuA1pAhq2fjPA0AoJT6YqmbQ32r8LtzyP4h&#xa;SW0KdoSCUShvJRaxqBWRztkCpAUjIsdCJu8+P4CZym7iwJRjbK87CWjqJQocvBXnQNbZsMav0d&#xa;pRg6fQndTQDFnZmm6fgLrLjEctykTkxq0AZJ3VcjVe1hUJ3T4Na2CqaUv/Wih4/OM4Hf8HcDzY&#xa;B5x/4NoAAAAASUVORK5CYII=" ID="ID_827364624" CREATED="1414544707507" MODIFIED="1414544707509"/>
</node>
<node TEXT="fpgtdLogo.png" ID="ID_1897993304" CREATED="1323059879726" MODIFIED="1323063753585">
<edge COLOR="#999999"/>
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAAIAAAAB9CAYAAABqMmsMAAAAAXNSR0IArs4c6QAAAARnQU1BAA&#xa;Cxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlw&#xa;SFlzAAAFzQAABc0BbbRfgQAAKQxJREFUeF7tnQe4VNXV9xFBUVFsUTSxJ7ZYY141GhsooIhGBR&#xa;sqKE1EEARpIlWaVOm9995VQEQEO0aNJsb4qomJRn3VGBFQ4O7v/59Za+46e/aUe+8MwnfvPM/v&#xa;WXvOnLP3Omet3fc+U65c7j7/QVRuD2RY7m6xLKZUT6DSHmh464xllsvzE9ixhzvA53m+/1Id/a&#xa;17uPG1JNi/VFspjzefVO9vu6Cc2/bbOFv/R7gQUrmonPteuRhhwxaEY+B3y3e4NgLi/Q78lyCd&#xa;/yLNGL9BOpABp9yZx2dQaqOe6j/oLTCGg7EcDBgDxozxO+ESSOVShEP8PsVxnmuv1zg1DU0T6U&#xa;88KegEdUqtpfJw4+V94x+5rzE8jXHpvnF+L1wGSS73uILfy6fnMvweYx/EZ7gUYXKJQGcQR0hR&#xa;NeXhUZTOKAv8BxzL5ZrbNy53btfO3Q9LH9Hj3+GqYGDpNFdu7/pnvvFbVjXFPOph98M257Zv3f&#xa;189lG8mhAnOLB8sCrYJ7ePo/TFlpz7bb3+yfvObfk2zPc4nitSpRGrfgrbC4GqYGvpM1nu7rir&#xa;/0BfOVseOBtvdU9w7tuvovwX3/OJn96X/0I7obAhef1hwVIgd0+klMUU6WKhJRjPbXzghMX+V5&#xa;+F+RrHc0mqdHi8bc1CnaBfoBTYXsrslpPbfdZ/kNtY19Lwl4H21zr3+T+y4wucV1yySeM/X8bb&#xa;AtQL+i05I+gEt+XkqZSSSCr7xj/jADH+5fKg//W/zn1aDD7DNZkoTrxjOqJrWegEZd3CknlqUj&#xa;Eae7jkCrAJ3b5/vJfMJzi2OwilzWNXYuyA+kHPT9FFDDjBkJI9ltJx9fH+g+t5gjE+q4EP/1TI&#xa;Rwin42P8XlIypaH6vP8GnECcFNXBz/cr6xYWx2XDuZ85iw/3jXXOvb+5kL8hrHyA8O7Cpmv1qY&#xa;ZSgHqytLoq6ABfFeehlJZrpvi5/18c7VPj33Wac395JZn3cOyvAsOKHnsfx4h+z0b654fi5TFf&#xa;n3dfKiwF4ATXhruF+5YWgxb1PiO5/wCMrCWMTyd471Xn/vRClHfw3fIuvqfiz/gtW1LF4afH77&#xa;5OHWpHnCDQFuDgVtnHewLv+g8qVoyyOEVR6jqi2/dHFP/kTY+38N3nbRwL8Sccz0Sqa0Pp+LpQ&#xa;v7eej3cJpT2w8dxgVVC3zAMKn0BV3/g3HmFyPx3g9TVgtXObPd7Ad+WPCPu8iWMlJRSvTdfXiX&#xa;qObB13XHGCsm5hendPbvjx4bHYp1w+xrmXVzj3ClDJ8KuG1yRMqbyOsLIZ4aKi19r4bPw2fdXN&#xa;6skGodzHx5gzCDgB2zyl/lPdfzCTTzO5n9XAxsVxNgkvQr4EVDKsvIyw8grCllfxPVv8a228Nj&#xa;3Vg7qofpTUd93sSCnwKwxmBZyg1DtAcu7XVj9zz7MznXt+XiEbECYvGDYirGxCWHkRYctL+J4t&#xa;/rU2Xpue6qF6Uaq+6xG+pkKiFGB1EHCAT0uzB7zoP5Af2XhSB7jn9LgDKOsQJs8J6yHJ84YNCC&#xa;svIKxsRLio2OttvDY9pq/6UKqOCb1nRUqBa8Ldwiql1QkiOaIyl3lpy59OwIf4zBTnVhvWILzW&#xa;8CzCZJ3wHKSyHmHleYSVDQinwp5nr7fxalqatupD3YjqS91JmysLSwHcX1mDMO7un/kPYhdn+j&#xa;T3P1rHuVXjC3kK4acB5TOG1QivMaxFmDwrrBP5HKTPehwjod/0Oo2HUuPW9Jg2oT7UTaGORPV/&#xa;akJhtxAOsB5rGgJOUK00lQK/9h9Ah19I7lcHWDbauaWjnFsGlhtWILzSsArhp4SnIckzhtUIk7&#xa;VgjUiG08HziF5r42P8mh4l07f6UD/Vl7oT3seTD0TmCUp7KZDc8GPdr7N9U7o7t/BJ5xaBxcIS&#xa;SLJUWAa5XFgBSVYKqyCfMjyN8DPCash06Hm8hth4GK+moWmqDtRHdVNdqTvvgfB+rsJqYpkt/D&#xa;zcLVxaGkqBhr73r/41jK8OQCeYO9C5ecJ8yAXCQshFwmJIsgQsFZZBkuVghbASkqwSnoJUnkZY&#xa;0WN6nl5HybgYJ2H8mh4l01ddqBt1JKoz9dd7md0v4QC8319W2iM3uPqZ84dcO2XyeL+u8mHumN&#xa;nXuVnCbEgyB8wV5kHOFxZALgSLhMWQyhKEl4JlwnJIsgKsTAF/I3our2UchPHZ+Jkm0ybUQ3Wi&#xa;ftSVOhO9B72n66oULhyBE6SoCva04zlrn7zt33BifR9LgNtOcm5qD+emCdMhZwgzIclsYQ7kXG&#xa;Ee5HzDAoTJIrBYWAKpLEN4uaBhSmLP02sZj8Zp09H0qYvqNUv0pK6qO+9D72lGn0IHwPrB2zDk&#xa;vZc4QU4KgsjNnsllXlxLpyVAjQOdm9glziQwWZgCORVMA9OFGZAzhVmQs4U5kHPBPGE+JFkAFo&#xa;JFwmLIJQZ+5288h/B8vZZxMU7C+DUtpksdqAtR3agn9aXeeg+8H97XtJ4RB+C97yUO8EQuPCC5&#xa;8WcdgFXAOKytI+PBBGEiJJkEJoMpYKowDXK6MANyJpglzIacI8yFnAfmCwsgyUKRDPM3nkN4vl&#xa;6r8VEyDcI0mTahLtSJUD/qSX1Vf0q9rxqVIg5wWIVkB9iBPY/bhW2y4fV7yO+xzGwLN6rK5tX/&#xa;Qn6LxuS3kP8B3whfQ34l/B/kl7iGfIE4Pxe4k+kz8Ck21nx6fjn3L3JeOfdP8AlmL4+pmJ9h64&#xa;N9b6+DkbFECaBdwFEPO0fGCGMhxwnjISeAiWCSMBlyijAVchqYDmYIMyFngdnCHEgy16DHeA7P&#xa;5TWEcTAuwngZP9NimoQ6UBdCvagfdaXORO+B99O/YaQR+GpgmrjDMXgexd3wqsvlrQxtiM206Z&#xa;XpYyFOoGT6ey5KgS1J7QBdTaujgO1rOTe8pXMjwEhhFORoMAaMFcZBjhcmQpJJwmTIKWAqmCZM&#xa;hyQzwMwAPK7n8BpeSxgP49O4mc4Ekzb1UJ2oI6G+qjvvY3irwm6u3G+o6E/scLY7nf0dziFD6z&#xa;G2pZR056ljaNyB3c/nHBh0ghK/+4B75SLedTrbAtoN5Pw54cDJkPshwTBhOOQIMBKMEkZDjgFj&#xa;hfGQygSEJwmTIZUpCKdDz+O1EwHj0TjHmbSYLtOnLtSJuhHqqTpTf95H68siq4SGn5L8cDedGc&#xa;95iY2v7if41Dm2MP1wKUDblfiTtNf/U964DgTRAeqf7NzARs4NAoOFIZBDwZNgmDAccgQYKYyC&#xa;HA3GgjEix0GS8WCCYSLCij3O8/QajYdxEsbPtJgmYfrUhTop1JM6U3feA1HHRjVXEJgP2G8fMT&#xa;xzInPlBkwn/7A9O37EeZkoSly0hWx6nX9qsBS4pMQeECz+rANwKrjfPag3wRNggDAIkgwGQ4Qn&#xa;IckwYTjkCDASjBJGQ5IxwlhIix7X8yj1WsbD+BivpqFpqg7Uh3oNFD2pM6H+fziycEYQ93hMYL&#xa;l4LNfzobNoRtvAbf3up2NEu8INr9ArX8PW9/gRv4QWaGIyiA5Qo6Jzve9wrg/oK/SHJE+AAWCg&#xa;MAhyMBgChgpPQg4ThkOOyBKeS/RaxqNxMg3C9DRt6kJUN9WVevep71w13IuucAqsCTj/IDG87n&#xa;v84C1scP36p4M7obnrWTa9/g09hYATTMpFKcB36UQiT1QDfGB8cJwV7FnXuV7gcaEPJOkL+oH+&#xa;4AlhAORAYRDkYMMQhIdmAc+z1zEejVPTYZpMm1AP6tPb6EidSTWM/xsH4ErnpHtWw7MddBPq4K&#xa;8/j/PNT4Cm/dz8xF5HlkpHBLqruXAAxhF5IHf8zJQCfHCsO7ve6Fw3oTtkD9AT9DL0RrgP6Av6&#xa;Cf0hlScQHiAMhCT6ndL/zvPt9RovJdN63Euf+lAv1ZOyXbVC4+M+lmHOw7/fKb8y3WA6ALe2f/&#xa;nPZL7AMSX0e3GOpYvvi09Qau1f6AThYes3c+EE3yXlCLsglE7Q9DyUBNfF6QIeA12F7pCkB+gp&#xa;9ILs7dEX34uKjeNxXM94NQ2mp2mrLtSLxHTF3gDqrrk/vByscAyE7Z+212Dj6keZ+TfOKSnZpM&#xa;N3H5gNr9UPDVYFh5fUCSr4DnAsGkmRtkB1fO9QA1wdpyPoBDoLj0J2AY+BrqCboTvCPYSekNmi&#xa;1/B6Gx/TIEyP6aoO1Id6qY71T4wYvxXWO/j3+QHfcmYbvp9+gM2tf03NP/FbrkmXHn+rd1zh4F&#xa;UeVzPxHbuRB/Q1W8W6LJy56AbMorW9EsWq8Ahke9ABdASdQGfDowh3AY8ZuiKsdEPYR3+z1zDM&#xa;eBifxs+0mCbTJtSD+qhu7a6KGH9n4MFVpZPbsY/V07DJ9Z0oH+N7Nvwd52Uim3h4jq8DN77SDr&#xa;KOYc7pwVLg7JKWAkltATpEpBSgE3AwpfWlWGMHHhbaQrYDjxjaI9wBdDR0Qph0zoCeR2mvZ3yM&#xa;V9NhmkybUBfqRN0eArUPijhARfTxk6o53UBKSUf44M1C/hfhVHyI33JFunT4m+rEeQzd9ZzHUu&#xa;Be/yEt4UIRu0ScS6xb/E+cB0FL0Ao8ZGiNcBvwsKEtwqSd4RGEfezveo2Nh2HGr+kxbUJdVK/7&#xa;L4gY//vAbF/1KrgvLfrZ3nl7Y3zfI/lrCt7H8RB/w3GLf0663/TcVGkmdNocb6uIE3wdfg3OzF&#xa;yUAlx9Eu4W6h7Bhmc41+w85+4HzYUHIEkL8CBoKbSCJA8ZWiPcBlCmwp6vcWiclExH06QO1IU6&#xa;sbGqesrDwrh3cu639f5tv8Dm1k1R3sV3y5/xPRV/wW/Zki4eP01+t3qtxCJXs9Xt8DzNFu7nO0&#xa;DDo01u0eHU+37tXCPQWGgC2RQ0E+6HbG54AGHSIkv0fBsHw4yXaTAtwnRVB+pzJ4avzUN68pfJ&#xa;xt9oB7t4P29vwGbS9YW8jbDlT/ju8w6OlZRQvH7aVi+Grzs4MaQdGs6G7d7JRSmQPDhkF4zyod&#xa;1c1bl7TnWuAWgI7gX3GRoh3FhoAkmaGpohnAp7nl6rcTFemw7TZfrUg/oY46fYBRSt0jjItXlN&#xa;nDc8/ojvypsI+7yFY8UlFJ9Nz9dFdaSzmnuse2SwQXhULpwgUmyyEZVoMWub4E4sHyP1wV3gbu&#xa;EeyAZCQ0hybwnQODROxs+0mCZh+tTjWjT8TEOpzuHJD+ffnGSxVcRrT2Pv4irsVxReg7S8ju/K&#xa;ZoR93sCxohKKx6bj66C6UU9SF5lPnSDF2EYuHGC0XxVs1dewaf1ZHQ3CW1F/Etaj5A7hTsj6Hn&#xa;fhO7k7A3oepY2DcZLbBaan6VMa4/8QaCSdxfF+26Cd2Rv7FpdgHyOgfMnwMsI+r+DYqx6v4XtR&#xa;8eNgvKH0eMzqpHpuWhYpBcaEZwt/mwsniJQCFVgK6NpBdYKbjsbYObgZ3CLUhawn3AppuQ3fLb&#xa;fju+L/5l+rcTJ+TYvpMv1qcEZ9ixmqK+oaHN3U3H8F5gc2LCjkBYSVjQiTTeBFIxkmL4GXRWqY&#xa;37OB59vrNU5Nh2kS1cHqxbDqzMUtWgrgvkMN3Vw4wE0Zx835IK8/zLk64AbhRkjyB8NNCCs3I5&#xa;wJe76NR+NmWkyT1D40Mlwaej1cE77cWnM/xzPWzsJeRsNzCJP1wvOQZIPhBYSVjQhbNuF7Nthr&#xa;bHw2HU2bkvqobpSq87Oz41PXUuptCXcLZ+fCCZJzkl3mxMbhNVhJfC1ap4StVFIbXG+ogzC5IU&#xa;v0fEqNh3ESTYPp1QJ2+VX4QUSHe29BHcpRvzVgreFZhMk64TlIst7wPMLKBoQtL+B7Ouy5Nh4b&#xa;v6apOqhOlKor9Sbcv2FKAb7G18+wuXCAg/xImzM36cIJdYbqlZy7GlwjcOUtqWmohbByLcIh7D&#xa;kM2+s1TqbBtEg1zJapDjB+p8B4/2ecV9e1jswxT00CE7EjyfAMwmS1sAaSrBWehSTrDM8hTNYX&#xa;Ab3GxqNxU2p6mj71Ud0oVWfqT64rbPjuCC9v/ygXTpC0i3iHrpvThY38Vw/9F5AryqO4BXxrJ7&#xa;nKwFe2ZIu9TuPSuJkW/1FE3xIuDhnIAfESQov/rjdh88lobEoRVkCSlWAVeMrwNMLKaoTJGmEt&#xa;pPIswmSdSP2e6rhep3Fp3JSantWDehHVk5L68z7oBGaeoDEyZ+AZVMmFE0Qi3p+vj1MnSLViVo&#xa;tmbZxpw1EVziTtdf4q28CKWm5y8W/+O+qm6TKOJSOxU2lYnKVgichlkMpyhFcIKyHJKvCU8DSk&#xa;8gzCqw1rEPaxv/N8otdrnIxf06Jk+tSDqF5WX72HRfidazdlooj3GsoEuXCAyX7EO2XtekZH0J&#xa;5DyCGskU0rPlGvy9u/bTGf+CMps4z6W0zr+vrV5n4HO4A1sg02ngyKs0BYCLlIWAxJloClwjJI&#xa;slxYAblSWAW5ajAcgyD8tOEZHLPf+TuJXWPiYFwaNyXT0rSph+pEqXqq7ol7GVL4ZlTc74TA6C&#xa;eezVW5cILIQ2bX46qDy7mrDynnrsHkSk0sVuBbOfngOQhzI7gJ++5uBhyxuhVwtVH9o8q5u0ED&#xa;DDHfCxqh2GIrvRlojk0ZLUDLY8u5VqA1eBi0A+1Bx5+Xc53BY6jru4EeoFeg3o/NZFqHq462wq&#xa;x+2JgC5ghzIck8MF9YAEkWgkXCYsglwlLIZf1cAfgW+xI3DWjuHqh9sbv8rJPcRacf7y489Th3&#xa;GcI3XHSGe65/Uxgb568UVkAuF3A943GMT+NmOoTpMn1CXVQ36kmos94D74f31RcLX1kKSIYJzX&#xa;7mwgG4FHmv2EfX4zg8DFYTWgLM7o8NJ73izAAzhVmQZDaYI8yFnCfMh1wgLOzlvp7W2Y1ser07&#xa;+ejDXPny5V25ffZJeh6//dXP3YcT2riC5T1hcFxLloGlYImwGJIsAog3kQbTI0yfeqhO1E91pa&#xa;T+vA+9p2kI6/2yxA2vJB6RCyfYKxwg0UvRUmByV2xKAVOEqZDThOmQM4SZkGS2MAdybjf3xYR2&#xa;rtV1F7pKFfdNef8H7V/RDWtSy+3gxtZluG6psARyMVgkLIAk84V5TENgeoTpzxJdVDfqqTpTf7&#xa;0Xvbf7zitcP4i2zyF431M+uoWcaNjjnWAz1/XbEqAp1giM7xRnApgIJoHJwhTIqcI0yOlgRif3&#xa;3cS2rn2di12l/SqkvefLzjzO/X1MC+RmXEcWCQwvEOZDzgNzwRxhNuQsYWY8zRhMn3oQ6kX9VF&#xa;fqTf15HyR2T49GqgBmgHw1Bu/wIz4Hre+LMc5+Ifgt+A32s50HzgVng7PwO1vo3H52KuBbOU4B&#xa;J+5fzp0AjsPSrF8Abtaoijnuo7D8+UjII8ChCFeBJx8MKqPnwb+Fq4RhXu7i4XDvviDFMGh02J&#xa;oNzAmdsSmlHTajgHHCeEjk7hgTwSQwuZ3bOamtm9L4WnfkwQekNXzlAyq6ic1quZ2z2sKwuJbM&#xa;M+ixOThGZoNZwkzIGWA6mCZMhSRT4nrE9KFehDpSX0L9eR+8n9Gg2r4RB+iGKjDgAGfkvAqgAW&#xa;I7adPtptUdN353MbRr1u/e+Rsn9c8qzd/GMu31gXVyQ07yegGcNxjxEHYrgVFgtDAGciwYF+ej&#xa;fve6i0+u6vYJzCfYh/q7Xx3jPuFWtBm4bqYwC9JHf+N5ZDqYBqYKUyAng0nCRMgJYHyhTjH9qC&#xa;eh3tSf98H7GXx/pBfAdk++cv8sP+Jd2POe9j+DfSOn2y2baWt1ml20dIKDQhs+tGupA0GDmsQ3&#xa;vQ4Dw4WRkODHYc3coFsucZUqpK7nef/74/f+9X7ndnDD6hRcS6aCaWng73ruZITJJDARTBDGQZ&#xa;KxYIwwGnJUXL8YqjP1530QMxxM41+CXlk+BoOS/juYLzBIGN//s2jdaRPaMq0t89AYQGgsILTX&#xa;3jqD2cbt3/gFnAK2y7/oCIMaI9cIQyCHNnZ/7lzPnXPs4RnbNqcdXcW90/0WVzAO15HxYKIwCT&#xa;IVeg7PVzSOsTg22jAK4RHCcMhhAvR01FfhfTx4ceQFmJyyDxh/Q86L/lg/W3avRjZVWsOXdCTQ&#xa;jG4lDQyF9tbDEdiuSCql7NJv5pYudbCNrQF2JTVw2/reje0F57iKFZK7czaefdHda3XlGW7r0L&#xa;uQE3HtaMMYhMnYNOjv9rpROJ9xkeFgmMgnIYeCIcJgyEFgoAC94/rfF/0zjzxOCyf9lwAHYSKG&#xa;tzndFrta9OpaQpU0RCr8c3Whh+8QZhIo1uKXUig4H2BXADM+bBj9sP2N7pyqh2XM9UcdXMmta1&#xa;HdFQytjyIXDAPDRY6AtIzE9xD2HF6r1zM+xksGgyFgEBhoeALh/qAf6Ctww+utx0YWhrwb/vPs&#xa;PrnI/eH/DvZze8jw1si6TUsldxuF8M/TONQxzOSHPxXMUmnQicmlwD/ZaBRnLEB8Cy8/ylXO0L&#xa;Urh0Zg9V8e5b7iXsiB9eIMAoMNQxAeangSYR/7O88nGgfj07gHIPwE6A/6CX0h+4De4HGhJ2T3&#xa;m6M7nsNzADn5W5yefo5K9LHtGL+tZ3XVDQ0XMvbVOJ4N1jm8PX6J5V9aKtg5g1RrAnDuVujZFE&#xa;PK5TO08CuU38d1r36628ENqH0xg9gP9AdPGAYgPNAwCOFU2PN4HdG4GC/jJ0yrD+gNHge9hJ6Q&#xa;PUB30A3wGevGXdwXh9ADJR+n8kv8ic4C6rIwf2mYLdp9o6uxr4HSPjVwzOL/rteqM1hHsCuA6Y&#xa;BmxvB1LP32HwjnIM5GozDTQNaRB1Z0axtchAdeG/sYDY8j3NvQF2GffjjmEzqvj4mH8fYy6TDd&#xa;7qAb6Co8BtkFcMPrI1dnfN8B7jEnuf95/2Ht1GLf716FcjuNZw2qhq6J45kIOYV1Br9E8KsFOG&#xa;joPQCZjH/hsVXcpw9dif2MNUENGEDoBtld6AFJeoJeHo/jO+ktUr/752kcjJNhxq8w3S7gUaEz&#xa;ZCfQEXCDrtntzGrt54GGL+6zxC+SSnqdXOwtGv7+AC3uqRRzqZ/baUhr7Fr4Tq7NgJ5nr2Vc6l&#xa;BMx5YKfmkAB90ZXiETLAHKo5X/0AXHue3cXNrhKjxsoRNkZ+FRyC7gMUNXhLt5dMd3xf+N59vr&#xa;GR/j1TQomSbTpx7twSOAm13J7cdFHODL8KQP3/9U4k/yWsBUud43vM3pvsGvg+GyRZ3Ed4aQI3&#xa;i5gjnjGzycQ8MTIpF7q7RveTe39uluV5vfYz+j0BayHXhEaA/ZAXQ0dEKYdBYehUyFnkPJa2w8&#xa;jJfxa1qUTF91oV6tQZsrCntO0jPK14jfyX7Ew/BKtciAihb5anzmzFSGV4PXxjnK9Qinwp6n11&#xa;pn0FJBHUFLA3UC6PYXjAyekMWbwPnalZfRfXIPos4nLUEr8JDQGrINeBi0NbRDmDwC2nt0wHeL&#xa;/Z3nE15r42P8TIfpEaZPPQh1om5cEGtKuqVnBtsz95c466ftR4eKfDW+GkaLeN/wavA6eODZoO&#xa;erQzA+OoItEQJOsBYNQE4eZarvOTH1MUcR+VD/cAS2qp2PvYegOXhAeBCyJVDZCuGHDK0RJm2y&#xa;QM+11zPM+DWNFggr1IP6kKbnRre9hbt9P+bC+DP8B/clH5LdUWPre2t8W7fTWDScb/QbcEy5Ee&#xa;EQ9hw6SjpHoNOJExSgJJhyRnymMJPx+fs3HMm099X4HOxnPBv7GEFToRnk/aC58ACk0gJh8qCh&#xa;JcI+9neGeY2NR+OmZHqaNvWgPsSOgcD4/FPPwD2WuOFHB4pEzBcpF8n4IcPToGroPzC3CTdB+t&#xa;jf9Rp1CHUGOpatGuAEO+EE3VFN4R+hszI+7/M+Lm+34xfVscq4wWnYywjuBfcJjSBJY6EJJGkK&#xa;mhUDXkc0HsaraTBNpk2oB/XhjmcdDRV9A8bfmovc/xc/4mIbn8YKGV4NfjN+T4eepw5BZ2B8fo&#xa;kAR9gBB2h+fOp1AelKg8TfzNsNr3edgv2L4B6hAaTSEOF7hfsglUYIZ4Oer3EwPhu/psn0qUd9&#xa;YI2PXliK7m2J7X+s/6Buta+LYz3pN/hY/Nr6Xot8a3wa0Df6LTim1EXYYn+jg1hH0BJB2w+oGn&#xa;6AAzTAItFMRT4XSQ4PrJbl1GlS1/a249HdEu6AvFOoD3mXcDckuacY6LUaF+MlTIfpEaZPPWpV&#xa;jrzd/DM0bgP3mpPx/uRunz+6Zx2gKMbXnE7jqrHrIZwKPUedIeQIKA22wfj1MKybyfj7YZ3ANC&#xa;wYYXF/aWCu/DtOItnxjesOib//gFvIuBVbuRXheoCS3CbcDpkteg2lxsM4bTpMN5b+MRHjp/lj&#xa;ixLn/pr+Q5yPxlRkM2VJjO8b/lbErdyGsGKPq3PQGXi9OhFLBJQq21EK1MaS8kzG5waWxWfjGp&#xa;ZgLOYhg70cHeFUR6iDXsGNBvYSbhJuhrwFqKyLcFHQa3m9xkmp6d2AMNO/Asu8zPB23xOCuufk&#xa;v4TCgz62y6fDujqyx+6YbfBpsa9FvhqMBlRjWqPfjuPKHQgTe4xOoefzeuMIP6AqqJtFzmexv+&#xa;AcqbrMxEnbwD6CT/i+QOsE1Sqiy4mSgKWBUhthcr1QB1K5AeFM2PM1DkrGadNhWDe96ta38Kgm&#xa;X/BZ4s+rfo7YQa/TRpHf5fOLfnbRQnW+5noazze8GvxO/ObjO4M6gjjBjygB7sKCx1QLQfVeuG&#xa;B0OnJ+AbupLL10kEhmD4OlALuFutCED/7qAzD0LNSArGmohTC5NsB1OKaEftdrKTVOxq9pMV27&#xa;1gF6XVQ5P0u8k7p9HBlLelk0H6Dt74dyPxtoNvfTAdT4WsQzh9PANHr9NKhTaKkgTrADpcD9J2&#xa;cu9mn8MRglK/AHicwoWuhPIxux0WsXrtIIV1RAK1y4CpIvolD4hhTlaoSzwV6j8TBeoulcjqKf&#xa;jii6bMNahoDDflzirI8IPvcjLvCXTzHnpCr+/dzP+plFv+T+AjjARzhnE67/mI02lgRq+LsQJn&#xa;d76HGeR0cQJyjAtf2QozOt1GXJ0B0vfy7QUUk6rg4VexNGKUsBu74x0xI3HUfQ2chMUudTVJo6&#xa;PrHT2axuSrHDhw5R4s85/gN4DEVr0nh/qPGXoe4vQE59FwaohUUKXDau6RyM0uUW9Nc/ZklBw9&#xa;8TQB2CjmCcYA5yQ4r9bpHc0Rj3sEO7pmaUMFENmD71d4GFI6dh/iDtQteQQ6gRNfP4RrZrFXyD&#xa;ax2vOV6dTxa6vnFWMPc3K7H1g97vT/Vq/e8P91oH0MEe5P4C5P63kNuqYeGFNbyf1gEYp5/I4q&#xa;1hgAbiFHQEcYKXUJQfmMXYfk2ku1WrJ0rrAH4pIEa5+tDkB8y/iYs5AdEt8On2NthVy5nC/jJ5&#xa;rXI8w8fSDvf5c5L7G/tGeYFdJSqvRZqd7QvV/6b4L0D9/zpy1sWHZV5qlWikoXs2jg/jXnCfwD&#xa;CdwjjBlyhNTshiFc9JB+J/+Whw6sUBKZ00StUOMLkymBnw8Iu02cU2IH0jm/o8aWu7bnSho3mb&#xa;Xe4Oj/efmvPcz+1WiS5QERxgF1r/L6LUOL9K5ro59JAPQJWwmdVBI4GOYJzgB5QAtbMY5auM0u&#xa;ENFu3+XAGrAjpFqnYASzw4PbefZxpPyOfvbLewxOQkViXYgvY4GATS/E8ujP+eH3FssIFeGmoA&#xa;2h6A1q0y5Lsdch08/9FT8Z4AtKArZVFM+2mfiVJjC43eOOoEBSgFBqBvnqm7xwc38XxUPzphpC&#xa;UAq6ksHYC5MlM6+XSAIsSdC/sne1ai71tEB0j0/6X79w2MMARz8UeE16ilzGV9UdwWNBEnkFLg&#xa;b2hPVEYJkenhcEBoJ9PXyaJiOkAtOGKmtH7i35/JifURCeeMIzf7ayyMiJQAMmQaGzwJlQDMXb&#xa;YLqP1/6f59AUeoganWbB/Yofvh/3LZ3WNVgNJgB3oHNbMolo9Bi/1zlkbqAMWsAtJspsz6HrK9&#xa;1xKclyv7x+JJGv3TV4sUpxEYy306BiBDvzswBtAC/fFsb7ghzt3FqgDMR32ecd0+nHgFG14cdy&#xa;ihA/DvcQJ63o5jd4MGgP+j0Ag0AeyCNQctQEvQCrQGD4N2oD3oCDqDLqAr6AF6gd6AM3f9wAAw&#xa;CAwBQwH/sYVv8BgFxoBxYALgX8NdCXL+SV74YXsBbFRl6gbaIWBvEIjDvztBEyzSgOYZqYTi/m&#xa;2UHNvR/Ts3i+L4FjQOY0W/TA5F1goUoRfw3m+CutEg/99/uvuG2Yz6OzIQZOcBdBKIDSt/IMgO&#xa;A3tzAD/ACWqEd60kOUUNFPurUOWkG0OgzodULOc+pB46TUxH0MUiulooNA7gzQfkcx/93uI9yb&#xa;OAdiJIxwLsULDXE/AbgomhYDMP8H8w1CnhyYxI+iz2q6I9kqnE6Mpxfjqa5n46YKr6n45rVw2b&#xa;kcDp6L0E0qq+txgvF3qe6z+AsaiLE69VDTkA+9X+ZJCOBnqNQTsZ9DYc55AsWvWZjF8VPYyvmV&#xa;4o97NhytIp0yAQG7lw9EBaOVlVmwvD7M44eNORh5FVNcCH7C8B82cDdS0AJ4EwozcPYw2h17hn&#xa;Mrr+zr56D+T+iPFD3b+QA2jxzxIAg12nhLuqu/O571FpRRyA6+WT/jQy04IQvxQws4JaEuyCI3&#xa;TGSqPiDrocjtZ6rNtni367UNTmfn8E0Nb/cIKA0320R1lkNyuTPDqodaWdE1AnCK0HDC0K8Z0A&#xa;7QLO6dcLrMjJphRojR5FQSrja8s/XeNP7inFppHd/Mj3vOQiuaIKF4b4m0H8UsCuCE61MsjvHs&#xa;IBvsexS8ITHSkbgBUwNv4Wc7Ed9fMbfqnqfpP7N6CnE3C2B/Y8c+x+jTioEXk4r2GMPfLXsamW&#xa;hYfWB7BoprFsu0BLBLTgP4fDnJzFLJ/qdDZW827XasYW+7bbp2P/OgNol4Ix94eL/pxMr+5+c+&#xa;UnxeRuYWhLWGg7mO8EfpXgOwKc4R/IsSdgGjdd8c+c/wu0ScZzjMLfHJLO+CytbMMP99EzvKr2&#xa;rPw8yr0z1t/5xhjJbmFRqgIaxe8d+NvCWC0I/0B74njPCTgJxIWfm5Fjt8GRdulMH50qVbEfWv&#xa;xhHCDFnyx+uXeaKb9af5u2W8hGoa0KWBrYRmFowagaTotwzyH+jutPRC7n5M445PStbE/YfYGp&#xa;DK91fgbj04GPLev2FclrIsXybzCKFxwbSNUmoGGsI2iJoA1FrR40Z0NuxTk/8net363R7RSv39&#xa;XLwvhc6BqoZnLy8sQiPdW96OT3k0oBGUCJ7BewcwW2XeB3E7V9YB2BRlW0WLfH1Ohaz6vhQ7ne&#xa;rvjx6n06br7+TWsvsmexVI3kmtifRtoFI3SI0BgBW+B24sh/ZwANaR1C2wy+1PO0NPFfCmHX+m&#xa;mDL2D8OdgTGMj9VxbriZSyizj/HXl4710gTqBr30NOYMcK1BG0RLDOYKsJNbbN5SHD2+I+lOvp&#xa;kGayJ59/oFRafCE8W+gvH9eSwK8SaCS/arDOoLk6JHVjh2903/B+rpetXyytbsc6xUDuP760GC&#xa;8X98k/II48xG7Y2BH5/2BdRaylga0WtJGopYJ1CK0q0kk9n9crOriTxvDUj+8zDBifL8Ao+xTx&#xa;CXyV1CC0mx/80sB3BC0VrDOoMdXAVlpj6zw+rw0Z3hb31EOWeXN9I/9dJOAARbz1stP1CUQe5s&#xa;XsFurmBzqDOoGWBnbgyFYP1hnUqOkkz1cYj9bxXj2fMLxss/omvKNmfpk5i/8E/urnpq3cxWJ3&#xa;w6RzBBmHj7we3hrXD6uxQ0bXOt7utxPD666bQM4vG+8vvu0TVyY3CHU/mzqCVg1aHOsmSbtjVp&#xa;0hW6nXalxqeE1LSyLRZdiJwaI/J3+WlINnuFdH0dTPWe+fi1IgtHnSVg9aMvhOYQ2aLqzXaf2u&#xa;ud3ut9P9dZBluT+/PhZ5wFzZk3YXrd0k6TccrWFDYXt+KqN7GytTvEXjkPw+ktIV+2l+DnvwaD&#xa;gBd9La7dTZbKn2ncN+t2HdPk0Z2kIt26gLwg2/9aXLPLvnbrf7TsC/jtuCUcIt2MwZg9/B9zBK&#xa;DBgpAhxkaxq24bcYuC4B4tkGthPEnQDpbQdl4/27x/jBbmGKejfj+v48X8ftV2WfPD2BjXk2Xk&#xa;mdZ1ee7rssWvMESmqkfF7/szJL5f8JcDdsPo1Ykrjzf/d7aQr/D5rg4wVz6SYWAAAAAGNtT0RO&#xa;iAnBAABAAGNwSXDQzxHgobEa4QAAAAAAAAAAAAAAAAAAAAA+AAMA/v8JAAYAAAAAAAAAAAAAAA&#xa;EAAAABAAAAAAAAAAAQAAACAAAAAQAAAP7///8AAAAAAAAAAP//////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;////////////////////////////////3///8EAAAA/v///xcAAAAZAAAABgAAAAcAAAAIAAAA&#xa;CQAAAAoAAAALAAAADAAAAA0AAAAOAAAADwAAABAAAAARAAAAEgAAABMAAAAUAAAAFQAAABYAAA&#xa;D+////GAAAABoAAAD+////GwAAABwAAAAdAAAAHgAAAP7/////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;////////////////////////////////////////////////UgBvAG8AdAAgAEUAbgB0AHIAeQ&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABYABQD/////////&#xa;/wEAAAB+fz+1pfaGQ6GhowIk0ojvAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAgA8AAAAAAABEAG&#xa;EAdABhAFMAdABvAHIAZQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAFAABAQkAAAD/////AwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcHIc6YKyzAFwVCHpgr&#xa;LMAQAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAIB////////////////AAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJkAAAAAAAAAMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAgECAAAABQAAAP////&#xa;8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAABAAAAAAAAAABAAAAAgAA&#xa;AP7////+/////v////7///8HAAAACAAAAAkAAAAKAAAACwAAAAwAAAANAAAADgAAAA8AAAAQAA&#xa;AAEQAAAP7///8TAAAA/v///xUAAAAWAAAAFwAAABgAAAAZAAAAGgAAABsAAAAcAAAAHQAAAB4A&#xa;AAAfAAAAIAAAACEAAAAiAAAAIwAAACQAAAAlAAAAJgAAACcAAAAoAAAAKQAAACoAAAArAAAALA&#xa;AAAC0AAAAuAAAALwAAADAAAAAxAAAAMgAAADMAAAA0AAAANQAAADYAAAA3AAAAOAAAADkAAAA6&#xa;AAAAOwAAAP7///89AAAA/v////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;//////////////////////////////////////////////////////////////////////////&#xa;///////wEAAAAAACgwIFBUWVAgNw0KMCBPVVRWIDgNCjAgUEFGVCAyDQowIFRITVMNCg0KGwDy&#xa;BAAAAAIAAAAcAPIEAAAAAQAAAB8ABAIAAAAgAASY9hZCIQAEAQAAACIACAAAAEMAAPpCIwAqRg&#xa;ByAGUAZQBwAGwAYQBuAGUARwBUAEQAXwBsAG8AZwBvAF8AMQAyADgAJQAEAAAQQQAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAGgAIHjF0Q/h3bkMb&#xa;APIEAAAABgAAABwAEAAAAAAAAAAAAAAAAAAAAAAeAAEAAAAAAAAAAAAAAAAAAAAABQAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AACAAAABAAAAGgDw4QIAAAAAAAD/2P/gABBKRklGAAEBAQBIAEgAAP/hAFhFeGlmAABJSSoACA&#xa;AAAAQAMQECABEAAAA+AAAAEFEBAAEAAAABLNQAEVEEAAEAAACjEgAAElEEAAEAAACjEgAAAAAA&#xa;AHd3dy5pbmtzY2FwZS5vcmcAMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAgH///////////////8AAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAMQAAAAAAAAAzAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAACAAQAAAAHAAAA&#xa;/////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUAAAAEAAAAAAAAADQAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAEAAIA////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AABQAAAIoiAAAAAAAANQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAgEGAAAACAAAAP////8AAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAGAAAA8AIAAAAAAAAAgAAAAQAAABoA8HsiAAACAAAAfQAAAIAA&#xa;AACY9hZCmPYWQoUcAAD/2P/gABBKRklGAAEBAQAmACYAAP/bAEMAAgEBAgEBAgICAgICAgIDBQ&#xa;MDAwMDBgQEAwUHBgcHBwYHBwgJCwkICAoIBwcKDQoKCwwMDAwHCQ4PDQwOCwwMDP/bAEMBAgIC&#xa;AwMDBgMDBgwIBwgMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDA&#xa;wMDAwMDP/AABEIAH0AgAMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJ&#xa;Cgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8C&#xa;QzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5&#xa;eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4e&#xa;Lj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1&#xa;EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFi&#xa;Q04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SF&#xa;hoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5u&#xa;fo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/AP5/6KK0/Bng/UfiB4s07Q9ItmvNT1W4S2toVIG9&#xa;2OBkngDuSeAASSAKipUjCLnN2S1beyRpRo1KtSNKlFylJpJLVtvRJLq2e0/sN/8ABP8A8Uftya&#xa;9fWmhtfW8dsy29v9l0uXUJ7+5ILmKKNCu4rGCz4bKhk+Uhsj6mX/g2p+MJ/wCYf8RB/wB09vf/&#xa;AI5X66f8G+f7BOkfszfCKz8Xz29vNLbwPp+izlF3TSEst7fFTuZHdw0S/PlUEqYKlTX6WDxl/t&#xa;frX53g8Xmeaxlj6WLlQpTf7uKhB+5spNyi3eWsrdE0fuGaYDh7h2UMnxGWxxeIpxXtqjq1Yr2r&#xa;u5Qiqc1G1O6he13JNn8sB/4Np/jD/wA+HxD/APDe3v8A8cpD/wAG1HxiB/5B/wAQz/3T69/+OV&#xa;/VD/wmJ/vUHxiR/FXWsFmv/Qyl/wCC6X/yJ5f9s8Of9CGn/wCD8T/8sP5Gf2kf+CHPxF/Zu8AX&#xa;Wr6r/wAJHDfrby3Fjp2peFrjTX1QRbTKsJdyXdVYHaqkksi8bga+Iq/tj/bj+CFr+1p+z5qnhp&#xa;iq6vasNR0aVnKrFeRqwQNggbXVnjO7IUSbsEqtfyQ/8FJP2VZ/2ZPj3dCLT5dN0fXpZpobV4RA&#xa;dPuEfFxamPgp5bEEKVUBXC8lDWmT5pi8NmTyzMa3tVUXNTm4xi218cGopK6+JabX10I4oyDK8f&#xa;kMc/yPC/V3RlyV6SnOaSk/3dVOblJRk705K9lJKy1u/nqiiivuD8iCiiigAooooAKKKKACv0c/&#xa;4IOfsE3Xxw+JVt4qvIjEt+0lpp85iEi2VqhxdXn3TtbgwodygszqeHU18Ofs4fA+/wD2h/i9pP&#xa;hmyEqRXL+bfXKIWFnbKQZJTwQOMKucAuyLkbq/pZ/4J4fBDTf2ePgvp7QWi2lzfWcMFtEx3tZW&#xa;MahYIgxLMcqA5JOTlQwyma/NuPM2U3DJKb/ie9Ufamn8PrN6f4VI/c/CLh2VGFXiuvH+C+Sgn9&#xa;qs18XmqUfe/wAbhrufZvhi8svCHh6w0nTYltdO0y3jtbWBSSIokUKigkknAAGSSa0l8XZ/jrym&#xa;Hxdkfe/WrUPivd/H+teR/bMYrljokejWyKUpOc9W9W3u2enf8JZ/t0jeLcfx15wviYEfeH50yT&#xa;xVj+L9ahZ75nOsh8j0aTxd/t1+W3/Beb9grT/jV4QvtY02C3th4ik86NwwiSz1lEcxykAfdmTe&#xa;HIVjnzWJ3OtffM3i0f365r4nWNh8UPA2qeH9SJaz1OExMQfmjOQVcdtysFYZ4yorgzXFSxdFOl&#xa;LlqwalB9pLb5PZ+TZ9Xwth4YDFNYiHNQqxdOrH+aEtH818UX0kkfyHavpN1oGq3VjfW81pe2Ur&#xa;wXEEyFJIZFJVkZTyGBBBB6EVXr7U/wCCxv7H118Ffi1L4pt7NIIr25NhrCRIVRbsAmO4GSCVnj&#xa;GchAMpuJJlr4rr9Y4ezqnmuAp42mrN6SXWMlpKL9H96s+p+Bca8LV+Hs4rZXWfMou8JdJwlrCS&#xa;9YtX7O63QUUUV7R8qFFFFABRRRQB6v8AsX/tAD9nL476brN0xGi3qnT9VABJW3kZSZAArHMbKj&#xa;4UZYIVGN1f0Jfsq/HT/hJvA0OlXM6PeaRGscRBX99b4xGwx12jCk+ykklq/mWr9M/+CPn7YNxq&#xa;XhNPDN5cs+teDUCwKz4N7prEKq/eJJiYhPuhVUwdTmvx7xNyidBwz7DL4bQqJdYt+7L1i9H5Nd&#xa;Ef0v4E8SU8ZTq8HY5/G3UoN9KiXvw9JxV0tk093JH7J2/jLp81XrfxiP71eH6Z8Qo7y2jmimDR&#xa;SqHVuRkHkVow+OxgfPX5TUzdvVM/ZK3DDTs4ntKeNAF+/wDrUM/jLI+9+teRjx2D/wAtBTJfHY&#xa;I+/WEc1d9zljwu77HqNx4xxn5/1rA8a/Fe38HeHLzU7lmMNpGXKr1c9FUe5YgenNcDceOsE/PX&#xa;y/8A8FEP2vrT4NfCrUdUleK4TS8Ja2xdQb6+cFY4xlgSFyWYKdwRZTg7a6o5nXqONHDLmqTajF&#xa;d5PRf8E9TDcO4ajGWKxz5KNJOc5doxV38+i8z4p/4KyftK658d/i/Z/DHRpJ73WdXvoZ9WjR2j&#xa;E9xLtNraBnYL5aqyP8xKj9zyDGcfoj/wTF/4N6fCf7Qf7O8N/rq+G9Lt9McWMGpX/hSPUbjXJg&#xa;C1xMDI8ZESuwRSGfkOmR5fPwb/AMEUf2M9c/ah+Og8b6oXn1fxPqE1tp91Mi/JuLNfX5BCghV8&#xa;xRsYZxMuMla/pz+GWlaV8JPh/pHhrQ4ktNK0W1S1t0AUFgo5dtoALscszYyzMxPJNfpmWZVQlV&#xa;WUczdDDX9o1Jx9rXkve1i07QT73u0nex+RZ7xNi6WGnxLyRjjMdb2MZQjNUMHB2haM1KPNVa3s&#xa;00nJWcj4M/4hbPhb/wBB7wZ/4by2/wDkmg/8GtXwtI/5D3gz/wAN7b//ACTX6Ijxhn+P9aP+Ev&#xa;P979a+i/1byT+Sf/g2t/8AJnwj8QeKutWn/wCE2G/+Un51t/way/Cxv+Y/4OH/AHT63/8Akmvy&#xa;i/4Lmf8ABJcfseeIbv8AsDS9LhPhlBcyy6XYG2i1nTJT+7uhEuQrRMHVxg4xLl2WJSf6cD4w/w&#xa;Bv9a+Zf+Co37N9p+1P8Ap54rG31DXPDUc08MDxGb+0LR0xc2hTO1t6hWAKsSY9gwJGNcGY5bSy&#xa;6nHMMo5lUpPmcXUnJTj9qNpSkrtXadr3SPcyHiLEZ5VnknEzpuhiI8imqNKEqVTR06ilThB2Uk&#xa;lJN2cW7n8edFem/tdfs+T/ALNXxt1Hw/mSTTJgL3SpnZS01q5YLuwfvKyuhyBkoWAAIrzKv0rA&#xa;Y6jjMNDFYd3hNJp+T/rVdGfg+b5TissxtXLsbHlq0pOMl5p2+a6p7NarQK634GfF7UfgR8VtG8&#xa;U6aWabS5w0sIYKLuE8SwklWADoWXdglSQw5ArkqK1xOHpYilKhWjzRkmmn1T0aMMDja+DxNPF4&#xa;WTjUpyUotbqSd016M/dL4KfGux8ZeB9N1PTLoXOlapbrd2knT5HGSpHZgTyOoO4HkV3Efj/j7/&#xa;61+N37NH7efjL9nvwQ/hrStN0/XLFbh7qBbvz5JLUNjcibXAEe4FsAD5nc87q9LT/grR8QYvve&#xa;DND/AO+Lkf8As1fzJmHhZnlLETp4RRlTTfK3JJuPS6fWx/eWV+PnCGMwVLEZi5068orniqcpRU&#xa;/tWaWqvqvLfU/UweP+Pv8A60x/iB/t/rX5cf8AD3bxwn3/AAZof53A/rQ3/BX7xiB83g7RB/21&#xa;mH9a4F4YcS9Kcf8AwOP+Z2rxt4BW9ea/7hT/AMj9NtZ+IzW9o5jfMhGF+tfmR+1P4u1T9vX9r/&#xa;Tfh54cuJZfDugTtFPeRAyxqwI+13jZCghP9WmWIZlG1v3tZHjj/grH4x8T+EdS0210DS9Iur+3&#xa;e3S9huJvNtdwwXTkYcAkqc8Ng84wfob/AIIafAHwrqtnZa9qN7aTXvibUzYXboN0llDE2Vs8jD&#xa;I0zbSSD0khOPlGffy3h3G8M4epnGYxSr6U6KumlOenO2tFZX3811R85nfGOT8dYuhwxkdSTwut&#xa;bFStKMpU6VmqUU7N80rXsrp2a0Uj9b/+CV37Omnfs9fB611aKz+xzX9lHYaXAWctaadGFCA7hk&#xa;mQoHJJbcqxnOS1fWEfi3/a/WvILLxUlvCkceyOOMBURRtVQOAAOwrzb9qT/goV8Mv2LvCS6t8Q&#xa;vFVno7TIWtLBMz6hfkdoYFy7DPBYgIpI3Mte3lNR4ejDB4e8pfe5Serb63b1PhOKV9dxVXMsXa&#xa;Eei0UYRWkYrZJJWSPq5fFRP8X60v8AwlJ/vfrX4tH/AIOR/iD+0f8AFOHwb+z98C5/EOp3co+y&#xa;yazetLJJFwDJLBBtSBQSMu1wUUdSK/SP9nbxZ8Sbn4aWtz8VT4Nt/FdyPMms/DUc/wBksgf+WZ&#xa;kmkZpW9WAUA5A3Abj62Pq4nBRTxNot7K6v9yvb5nxWXLCY+bWEvJLeVmo+l3a/yPf38WED71QP&#xa;4uI/i/WvOZ/FuB9/9apz+L8fxVwQzu/U96nw/foflt/wXv8A+CfcfiLTrzVPDtnmWLz9c0OOGP&#xa;vwbuwjjjB6jY0ahBz5SA8Ma/Eqv6sv2qIdL8d/BXWIdUuI4FsYze2szvtEVwikJ9d24pjBJ3nA&#xa;ziv5wP8Agol8I9J+EH7S2oQaNNF9k1uBdXa1jUKNPkldw8XBPBKFwMLhZAAMAE+rwHm0cPjqmT&#xa;fYknUp/wB3X34+Sv7y6atbmHi5w7PHZPQ4ptarTcaFZ/z2X7qfnLlXJLd6RdrXPDKKK9o/YU/Z&#xa;pb9pP42W9tewO/hvRAt9qzYcLIgPyW+4DhpG4xlTsWQg5Wv0vNMyoZfhKmNxLtCCu/8AJeb2Xm&#xa;fhOQZHi85zGjleBjepVkortr1fZJXbfRJs+t/+CZH7M4+GPwq/4S7UoF/tzxfEksO5UZrWx+9E&#xa;qsBkGXIkYbsECIEAoa+o4tPz2q5aWeccVfgsMjpX8Q8QZ/XzTH1MdiPim727Lol5JWR/qtwpkG&#xa;E4cyehk2C+ClG1+snvKT85Sbb7XstDJGncdKa+ncdK3xp+R0FMl0/jpXhrEnuLGanF+L/BVj40&#xa;8N6hpGqWy3em6nbva3MLEqJY3UqwyCCOD1BBHUEGvhT9lnxdqP7Bn7X2pfD7xLeMnhzXpVhjvJ&#xa;QYodx5tbteGwGz5T4YKpY7mPlV+gfjPXdN8EeHbzVtXvLfTtNsIzLcXM7hUiUdyf6dzxX5Xft4&#xa;/tT6Z+0/8SLSfR9JhtNM0OOS1tr6SPbeagjMDl/SMEEoh5Xe5OCxA/YfC/B4nNFicsqQcsLVja&#xa;b6QmtYSV/tJ9F5N6I/n7x6z3AZOsBn1GqoZhh53px61KctKkJW15Gur21UdZH35+2P/wAHAcng&#xa;Lwenhf4YR2ur+MBEYNQ8QzqstjZOPl3QIPlmkP3skeWpwMSDIHyh+yP+wH8Vv+Co3xMufG/jDX&#xa;NUtfDt5Pu1HxTqxaee+KnBitUYjzCMbRjEcYGOoCHK/wCCX/7JnhL4/eNbrXvGNxHqGj+G7mJJ&#xa;tEQurXBdSUkmYf8ALLKt8qnLFGBwBhv2V8P+I7Tw9pFrYWEFtY2NlEsNvb28YiigjUYVFVQAqg&#xa;AAADAr7fN+JcFw2pZVli5q8UlOpJa6pP5trX+VebPx3IuBc1405eIs7ahhKjk6VKD0aUmns3ZJ&#xa;prX33/dVjpP2SP2Zvh5+xR8PV8PeAdFh06OQKb2/lIkvtUkUf6yeXALHkkKMIu4hVUcV6w3jfA&#xa;+/+teLx+PRj7/608+Ps/x/rX5XiM6qVqjq1ZOUnu29T9docHU6FONKjBRitEkrJHrtx42yPv8A&#xa;61RufGvX5xn615VN48/2/wBaxfFPxSGi6TNcBg0gGI1J+8x6D6dz7A0QzblV2z0cNwpKclGMdW&#xa;cn/wAFAv2rLH4a/D3U5r64mj0jQYBeagIs77mQ4EMCg4BLMygZO3c6ZI2k1+CHxO+I2p/Fz4ga&#xa;t4l1mUS6lrFw1xLtLbI88LGm4khEUKqgk4VQM8V9Qf8ABV79qE/Ev4hR+B9OuhcWHh+4N1qkys&#xa;ji5vyCNuRk/ulZlIyPndwwygNfIVfu3hpkE8PhZZti1+9r2sv5af2V8/ify6o/mXx04vpYrHw4&#xa;by6V8PhG+ZradZ6Tl6R+Bdves2mh9tbSXtzHDDG800zBERFLM7E4AAHJJPav1r/Yh/Zui/Zv+C&#xa;dhps8KDX9SC32sSYXd57KP3OQzArEPkGDtJDMAN5r4B/4J2weGZ/2rfDw8SkjbvbSt5jEBvwMw&#xa;+Zv/AOBbNvzeb5WPSv1esK+J8bM/rqVLKIJqDXPJ/wA2rSXorNvzt2P1T6LnB+EdDEcTVWpVU3&#xa;SgusFZOTfZyuku0U/5jSs7cHArI8YfGnwV8MNSt7LxJ4s8O6DeXS7ooL/UYrd3X+9hmBx79Kyv&#xa;jJ8PvEXxL8FyaZ4b8ZXfgm7lBD31tZpcSMpBG0biCnruQhh2Ir8qP2vf2WfG/wCzb49b/hLZZN&#xa;Xi1d2lttbWR5Y9RPVtzN8wkGeVbnuCRzX5rwNwbgM/rujicYqc9bQSfM/O7tHzsnJ23sfp3ix4&#xa;jZtwvQVfB4B1ael6jkuSN+jUW5a7Xkoq+zex+zulvbazp0N3ZzwXVrcoJIpoZA8cqkZDKw4II7&#xa;iqXi/WdP8ABXh291bVbuCw03ToWuLm4mbakKKMlia/Nr/gkp+2Vc/Cn4o2/wAPtevXfwt4nl8q&#xa;x81yV069Y/Jtz0SU/KR03FDx82dT/gr1+2PL468dS/DHQLoroegyg6w8bYF7eDnyiR1SLjI7vn&#xa;I+QGtv+IUZjHiVZG5Xp25/aW09nezdv5r+7bvrtqfNR8dMufCsuIVG1VPk9lfX2lrpX0923vc1&#xa;trr4tDyX9un9uTU/2p/Fj6fprXGn+CdOlP2OzJ2teMOPPmHdj/CvRR7kk+2f8E9f+CfaQ2Vl4/&#xa;8AHViHllCz6NpU6cRjqtxKp6k9UU9PvHnGOD/4JhfsaR/G3xg/jTxHaiXwt4dnC28EgympXYww&#xa;UjvHHwW7ElRyNwr9J70ADjAr7nj7ivD5Lh1wtkHuKKtUkt9fs3/me83v072+Y8HuAsVxLj3xxx&#xa;X+9lJ3pRls7bStsox2px205u1/zd8V2Nx/wTa/bag1O1inPgbxGrsI4lJX7HI/7yAMynMlvIEc&#xa;BW3FRHuYeYa/Rvwz8RUvNFtZre5iurWaNZIJ4XDxzRsAVZWBwQQRgjgjFfLf/BVXS/Dt3+zS1z&#xa;q7iLVbW/hGiuse6R52Pzx5xwhhEjHJAyinkhQfinwR+3J8VPh14UsdE0jxbPBpumx+TbRS2Vtc&#xa;NEgJwgeSNnKjoAThQABgAAVS4cxfGOVYfM6DUMRC9ObndKajZqV0nd62btq766JHp1uN8s8Ms/&#xa;xmQ46MqmCrWr0o0+WUqMptqUGpSjaLtdK+is7e82fsfH4+YfxGnnx8wH3m/WvyDH/BRv4zD/mc&#xa;v/KTY/8Axml/4eOfGf8A6HL/AMpNj/8AGa4v+IM57/z+pf8AgU//AJA7v+JmeC/+gXEf+AUv/l&#xa;x+u03j1iPvGvFv22v2pR8B/gxf62HR9Tm/0LSIXBIkupAcMcA/KiqzkHAITbkFhX54/wDDxv4z&#xa;Hr4yz/3CbH/4zXCfGL9oLxf8fbyxn8WazJqr6ajx2w8iKFIQ5BYhY1VcnC5OMnaPQV6mTeDuPh&#xa;jKc8yqU5UU7yUXJt21trFaN6PXbY8XiX6TORSyqvTyGhWhipRcYSnGCjFvRyvGpJ3iruOjTdr6&#xa;XOS1LUrjWNRnu7uea6u7qRppppnLyTOxJZmY8liSSSeSTUNFFf0MkkrI/imUnJuUndsmsL+fSr&#xa;+C6tZ5ra6tpFlhmicpJE6nKsrDkEEAgjkEV+uf7Gn7REP7SPwS03XXMSavbk2Wqwx5AiuUAyRk&#xa;Dh1KyADIAfbklTX5DV7t/wAE+/2lP+GefjhBHf3Cw+GvExSx1MsVCwHJ8m4JLKFEbsdxJwI3kO&#xa;CcV+c+JvCn9sZU6lFXrUryj3a+1H5rVeaXdn7b4E+IP+refxoYqVsNibQn2i7+5P8A7dbs/wC7&#xa;JvVpH61WVx0rD+OHwZ0H9on4X6j4V8QQiSzvkzHKoHm2kw+5NGezKfwIJByCQbdre4xzV+C+wO&#xa;tfx7TnWw9aNehJxnFpprdNbM/0KzPK6OMoTw2JgpQmmpJ6pp6NM/Fv4/fAnxD+zJ8Vbvw5raNF&#xa;dWbia0u48rHeRZOyaM+hx9VIIPINc/4d0TVfiv8AEGy0+F5b7WvEV+kKySuWeeeaQDczHkks2S&#xa;T7mv2H/aP/AGavCf7U3hKDSvE9tNus5PNtL21ZY7u0ORuCOQw2sBgqQQeDjIBFf4U/sn/Db4Ip&#xa;bP4e8I6Pb3to2+O/nhFzeq2MbhNJudSfRSB6AV/ROG8bsOstjKvQbxVmna3Lf+a97pN68qWmvk&#xa;z+O8X9GHHyzmUMLiIxwV1JXbc7X1jZKzaV0pNq9097pdR8IfhjpvwQ+FeieFNKQLZ6NarBuAwZ&#xa;36vI3+07lmPu1aV9NnNPub3rzXzB/wAFLv2nf+FNfB9/D+l3Jj8SeLUa2jaNwJLO16TS9DywPl&#xa;r905dmU5jr8PybKsXnOZRw8HzVKstW/PWUn6atn9WZxmmX8K5HUx9dctHDw0itNklCEfNu0V5v&#xa;XQ+Pf+CgX7Sn/DQ3xunj0+4Wbwz4aL2OllQNs5yPOnBBIYO6jaQQDGkZwDmvCqKK/t/KcsoZdg&#xa;6eBwytCCsv1b829X5s/wAueI8/xed5nXzXHO9SrJyfl2S8oq0UuiSQUUUV6J4oUUUUAFFFFABR&#xa;RRQB+mP/AATd/aZ/4XH8HU0PU7kSeIvCaray73zJdWuMQzdByADG3LHMYZjmQV9JRahgda/FDw&#xa;n421rwHqMl5oer6pot3LGYXnsLqS2keMkMULIQSuVU46ZUeldAP2kviKOnj7xoP+43c/8Axdfh&#xa;XEPg48Zj6mKwVaMITd+Vp6N72t0vsumx/XvBv0naWXZNQy/NsLOtVpR5edSS5ktIt315uWyb6t&#xa;X6n7KjURjrTZNQ96/G3/hpP4i/9D941/8AB5df/F0f8NJ/EX/of/Gv/g8uv/i68T/iB2M/6CYf&#xa;+As+lX0rsn/6F9T/AMCifr74o8XWfhXw/f6pqE4trDTbeS6uZiCwiijUs7EAEnCgngE8V+RH7S&#xa;fxyvv2iPjDq3ie78yKG4cQ2Nszki0tk4jjAJIBxlm28F3cgDNZfiL43eNPF+jzadq3i7xRqmn3&#xa;G3zba71WeeGXawYbkZiDhgCMjggGuYr9F4D8PY5BOpiK01UqS0TSslHd79W9/JLzPxjxi8a5cZ&#xa;UaGAwdGVGhB80k2m5T2V7dIq9u7k77IKKKK/Sz8ECiiigAooooAKKKKAP/2YlQTkcNChoKAAAA&#xa;DUlIRFIAAACAAAAAfQgGAAAAajJrDAAAAAFzUkdCAK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAAIG&#xa;NIUk0AAHomAACAhAAA+gAAAIDoAAB1MAAA6mAAADqYAAAXcJy6UTwAAAAJcEhZcwAABc0AAAXN&#xa;AW20X4EAAAU7SURBVHhe7Z1LqE5hFIa3Syi3UiSDMzAguU1MGB3OwMhAyWXgljuRJEmSSySXji&#xa;QkuZTLwMjQQCEZGEnkMsGETlJEcmd9h51znPN3/rPX2s5+13q/WiP//9lrvc96v2/v/+y9s8xu&#xa;vJWpflYwjtqlyJlqVWBABYVvCyOVK7kCXysOQEvJ+Yeefm7Fxc+doH9olUpMvorrfmfH9K3EGo&#xa;Sd+jxI9+dAzAqrVAmJ9wYTP4eghFLEnPIHKACHYsplm/VwUPFzF+hlW454s6F2fw7Ax3iS2WW8&#xa;A7z7uRdQsoBy2tfVcX5S1iHk16876f4cjnkhVSyY9CBn4nMp6CYIXVkq6r83d7MOIT/e4LT7eV&#xa;pYJ86o3V3vcb+psw4hP3bOeffnkPQJqW4dSdfbReifSxe3OP6pwMMg3Z/DO4cE/K3AyGDi87Tw&#xa;H/rRLb3o8ac9T/jRFLT76QJ/0C/aPV6+9zKyBdwJ3v05xEOjQuCliy3yCMfAK3Z/u7ubZkQiYD&#xa;zF7/TWtjAMWFimxzmuRiBgCbu/kje21mqoz9ZQeuxc7zmZ7U/us/uhur8t2CZG4L1TPOd3wIIA&#xa;zwWKkJuagcFcAmCXgAT4CzUBMsEHQgANgfrZB+leuQh26TlHtRGg3evvWcwiuU1TE0AXgHdBNQ&#xa;OLCAE0BGfUBMgE6Vk6RSyI36lG3SwYIADATXDPgoD3wAWgE2XZMC0EfQkAvAtqGcjSM3bZTbg1&#xa;mKgmgADAN4CagaWEABqCi2oCZIL01ydcCnBroGagHwGAboAHagJ4cQgagOTeIywg4DKAuwwk7d&#xa;TjBJcCaCeYoiaAAEADYOICswkBNASX6QLY67jFPkzNwEC6ALQLPFMTIBPwLmJsJzF59oGFHXGO&#xa;ngNJbQRnuRRALwXT1QQQAGgATE4L058i08Zxa3CMLoArnlXjqRlIPzRYHQzn+f+1VAOwgADANs&#xa;A4tfoUH1Z8k03gJQIAC4D6YhDqu4O5z8iyW7T+/7/ZqhJ4av2jvkugSiIWPZZ9avVlAvR3Bxct&#xa;Hvr3TF6Ls5sbP9iNX/opXz3QuyDq8Zt0/012P2z3qx8kxcfJ4Z45pOc/qUdU6/SQt1r80bR+WO&#xa;tfrVaf4sOK/8VC/AsEABYA9cYvAeRhDYyYw0eL7n9EAGAbQK3/KIoPK77J9f6ItuklZ3X3z2T3&#xa;w3a/ybuEvHRCtDzSAz7V4y67H7b71eLztA/3tPe5hfot7P643T+J4sOKv8qi+6NtmDzlq9Z/Ob&#xa;sftvvHqNWn+LDiv7UQ/zEBgAXAQn/Y5D2t4UVyuWaivkySfjMucgD8Ts/WzUr/1nl49a9rMedL&#xa;nRZKLJZI71FYJrFCIp2CrZFYJ7FeYoPERolNEpsltkhsldgmsV1ih8QuiT0SeyXSL3f7JQ5KHJ&#xa;Zoljgikd7Ykp7gcVzipMQpidMS6dVwjRLmgx1dG4IkiPuxUzIkBJ3XwL34eYIEoCMATWHUl0Qn&#xa;0wXauaDJX9WiAZSSphP8rkHYQQCy7FlY9SVxXh2MrP6f3CO7wFrq//uiRlQIqH9gF5hA9f9WYG&#xa;owF3hN8TtW4F0gCKh/jQpE2AuYPDzRK0FPA7iAV+3M8vLsAo1mVXI8Ufr92ysEjmWzTc0jAA22&#xa;JfI9W3oBsScI0gMwOLpZgTeOIOhm6vx4XgEPLnCFchavwBMHLlA8e36ztQLILmDysqToHKwEhi&#xa;C6dmb5I7rAELPsOVE2FswFblAz+wp8AoLAPnvOCLMhTLdfcZRUgdsVd4HvJeXNadtUoMobwuFU&#xa;qvwKpLthqwpB+dmD/g+/AGLHCZaQOz4aAAAAAElFTkSuQmCCAgAAAKtr204AAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/9sAQwAIBgYHBgUIBwcHCQkICgwU&#xa;DQwLCwwZEhMPFB0aHx4dGhwcICQuJyAiLCMcHCg3KSwwMTQ0NB8nOT04MjwuMzQy/9sAQwEJCQ&#xa;kMCwwYDQ0YMiEcITIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy&#xa;MjIyMjIy/8AAEQgAAQABAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCA&#xa;kKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHw&#xa;JDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eH&#xa;l6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh&#xa;4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EAL&#xa;URAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoW&#xa;JDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhI&#xa;WGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm&#xa;5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A+f6KKKAP/9kDAAAAq2vbTgAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAhAAADoA8gQAAAAEAAAAOwDyBAAAAAUAAAAaABgAAIA/AAAAAAAAAAAAAIA/AAAA&#xa;AAAAAAAbAPIEAAAAAwAAABwABIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABDSE5LSU5LIAQABwAMAAADAAIAAAAKAAD4AQwA////&#xa;/xgAVEVYVAAAAQAAAFRFWFQAAgAAAgAAABgARkRQUAAAAQAAAEZEUFAABAAAAAIAABgARkRQQw&#xa;AAAQAAAEZEUEMABgAAAAIAABgAU1RTSAAAAQAAAFNUU0gACAAAHgAAABgAU1RTSAEAAQAAAFNU&#xa;U0geCAAARgAAABgAU1lJRAAAAQAAAFNZSURkCAAADAAAABgAU0dQIAAAAQAAAFNHUCBwCAAABA&#xa;AAABgASU5LIAAAAQAAAElOSyB0CAAABAAAABgAQlRFUAAAAQAAAFBMQyB4CAAAGAAAABgAQlRF&#xa;QwAANgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAQAAgD///////////////8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAASAAAARwAAAAAAAABUAGUAeAB0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACgABAP//////////CgAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAcFQh6YKyzAFAhS/pgrLMAQAAAAAAAAAAAAAAAEMATwBOAFQARQBOAFQAUwAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAIBCwAAAP//&#xa;////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFAAAAAAKAAAAAAAAAQ&#xa;BDAG8AbQBwAE8AYgBqAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAABIAAgD///////////////8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAA8AAAAVgAAAAAAAAABAAAAUExDIJAIAAAYAAAAGABGT05UAAABAAAARk9OVKgIAAA8AAAA&#xa;GABTVFJTAAABAAAAUExDIOQIAAAeAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQAAAAEA&#xa;AABAB20CBAAAAAAAAAAEAAAAAAD/////MgAAAAIAAABAB20CAAAAAAAAAAAIAAAAKgAAABAAHg&#xa;AAAAwi8PkGACkaBwAqGgcALiIAAAAAMCKZmZkAAAADAAQAAAAMIgIAAAABAAAAAgAAAAQAAAB2&#xa;AHYAAQAAAAQAAAAAAAAAAAAAAAICAAAABAAAAQAAAAQAAAAAAAAAAAAAAAICAAAABgAAKAAAAA&#xa;EAAABAB20CBAAAAAAAAAAEAAAADwBUAGkAbQBlAHMAIABOAGUAdwAgAFIAbwBtAGEAbgAAAAEC&#xa;AQAAAAgAAAD/AAAAAQAAAAAAAAAKAAAAACIFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAABAAEAAAAAAAICAAD8AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAABAAAAAEAAQAAAAAAAgIAAPYBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAAAEiIJBAAACgAAAAEAAAA4B20CBAAAAAAAAAAEAAAA&#xa;AAD/////MgAAAAIAAAA4B20CAAAAAAAAAAAIAAAAKgAAABAAHgAAAAwi8PkGACkaBwAqGgcALi&#xa;IAAAAAMCKZmZkAAAADAAQAAAAMIgIAAAABAAAAAgAAAAQAAAB2AHYAAQAAAAQAAAAAAAAAAAAA&#xa;AAICAAAABAAAAQAAAAQAAAAAAAAAAAAAAAICAAAABgAAKAAAAAEAAAA4B20CBAAAAAAAAAAEAA&#xa;AADwBUAGkAbQBlAHMAIABOAGUAdwAgAFIAbwBtAGEAbgAAAAECAQAAAAgAAAD/AAAAAQAAAAAA&#xa;AAAKAAAAACIFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAP7/AwoAAP////&#xa;8AAAAAAAAAAAAAAAAAAAAAGgAAAFF1aWxsOTYgU3RvcnkgR3JvdXAgQ2xhc3MA/////wEAAAAA&#xa;AAAA9DmycQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA&#xa;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3YhSrgAAAB9pVFh0VGl0bGUAAAAAAEZyZWVwbGFuZUdU&#xa;RF9sb2dvXzEyODMnn8AAAAAbdEVYdFRpdGxlAEZyZWVwbGFuZUdURF9sb2dvXzEyOH9jaiAAAA&#xa;DwbWVUYf/+PAA/AHgAbQBsACAAdgBlAHIAcwBpAG8AbgA9ACIAMQAuADAAIgAgAGUAbgBjAG8A&#xa;ZABpAG4AZwA9ACIAVQBUAEYALQAxADYAIgA/AD4ADQAKADwAbQBlAHQAYQA+ADwAYwBvAG0AbQ&#xa;BvAG4APgA8AGEAYwB0AHUAYQBsAF8AaQBtAGEAZwBlAF8AcwBpAHoAZQA+ADEAMgA4AC8AMQAy&#xa;ADUAPAAvAGEAYwB0AHUAYQBsAF8AaQBtAGEAZwBlAF8AcwBpAHoAZQA+ADwALwBjAG8AbQBtAG&#xa;8AbgA+ADwALwBtAGUAdABhAD4ADQAKADBtVEgAAAAASUVORK5CYII=" ID="ID_1737625253" CREATED="1414544707510" MODIFIED="1414544707528"/>
</node>
</node>
<node TEXT="lib" POSITION="right" ID="ID_1003498816" CREATED="1413287263211" MODIFIED="1413673313418"><richcontent TYPE="NOTE">

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
<node TEXT="" POSITION="right" ID="ID_315054055" CREATED="1413839034906" MODIFIED="1413839034906"/>
</node>
</map>
