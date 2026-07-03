FreePlaneGTD
============

Fork of Freeplane GTD with extensions

The initial fork has been completely rewritten from original bits and pieces.

## About

Freeplane is a widely used mind mapping tool. GTD is a time management methodology by David Allen.

Freeplane GTD is an addon, that can collect tasks specified in a mindmap, thus allowing the users of Freeplane to use the concepts of GTD in their mind mapping tool.

## Installation and usage instructions

For more information about using the add-on, follow the instructions at (http://www.itworks.hu/index.php/freeplane-gtd/).

===================

*Please use the [latest documentation](http://www.itworks.hu/index.php/freeplane-gtd/)!*

===================
## Installation

* Download and install [Freeplane](http://freeplane.org) on your computer.
* Download the latest FreeplaneGTD plugin from the [release page](https://github.com/gpapp/FreePlaneGTD/releases )
* In Freeplane open the addon manager, select the previously downloaded addon, and install it.
* Restart Freeplane to enable the plugin
* You can now use the addon.

*Please be aware, that the addon will replace any previous version of FreePlane GTD.*

## Usage

### Using the task overview

Select Tools -> Freeplane GTD -> Next Actions from the menu. As of version 0.9 the addon can be invoked using the pre-defined hotkey Ctrl-H.

The main window of the Freeplane GTD add-on will contain all the action items (annotated with the corresponding icon) of the current map.

You can close this window using the window buttons, or the ESC hotkey.

The sidebar of the window contains the different groupings of the tasks.

* By project – the actions will be grouped based on the projects found above them
* By who – the actions will be grouped based on the Who attribute
* By context – the actions will be grouped based on the Where attribute
* By duration – the actions will be grouped based on the Duration attribute
* By energy – the actions will be grouped based on the Energy attribute
* Timeline – the actions will be grouped based on the When attribute, or the ‘Do next’ icon
* Done timeline – completed tasks will be shown in a timeline view

### Duration and Energy

Tasks may optionally include two additional GTD attributes:

* `Duration` – estimated time required for the task
* `Energy` – estimated energy required for the task

These values can be edited in the Edit Action dialog. When present, they are displayed in the GTD Next Actions panel.

The GTD Next Actions panel can also group tasks by Duration and Energy.

`Duration` and `Energy` are free-text fields. For consistent grouping, it is recommended to use a small controlled set of values. Grouping is based on the exact text value, so values with different spelling, capitalization, or spacing may appear as separate groups.

Suggested values for `Duration`:

* `1 - 5 min`
* `2 - 15 min`
* `3 - 30 min`
* `4 - 60 min`
* `5 - 2 h+`

Suggested values for `Energy`:

* `1 - Low`
* `2 - Medium`
* `3 - High`

The shorthand notation does not currently set Duration or Energy values. Use the Edit Action dialog or the Freeplane attribute editor to set these attributes.

Tasks without Duration or Energy remain valid and continue to work normally.

### Shorthand notation

In order to speed up the action entry, shorthand notation can be used to add new items. These shorthand notations will be parsed upon the display or the refresh of the task overview window. The parsed items will be annotated with the task icon and the extracted attributes will be added to the task.

The format of the shorthand notation is as follows. Please note, that the position of the attributes do not matter. The first character of the notation must be an "*".

Examples:
`* Action name {when} @context [who] #priority`

Will be converted to a node with attributes
* Where - 'context'
* When - 'when'
* Who - 'who'
* Priority - 'priority' (only accepts values 0 to 9)

`* Increase default size of the GTD pane @Coding {v0.9}`

Will be converted to a node with attributes
* Where - Coding
* When - v0.9

### Icons

The plugin uses a number of preset icons to identify the action items and their properties. These can be changed according to the user's liking.

* Icon: Project (default icon: 'list' looks like a checklist) – specifies the grouping node for actions
* Icon: Next action (default icon: 'yes' - looks like !) – specifies the individual actions
* Icon: Today (default icon: 'bookmark' - looks like a star) – specifies the next actions (When property will be ignored on grouping)
* Icon: Week (default icon: 'idea' - looks like a lightbulb)– specifies the tasks until the end of the week (will be sorted accordingly) 
* Icon: Done (default icon: 'button_ok' - looks like a checkmark)–  Once an item is completed it can be marked as done.
* Icon: Cancel (default icon: 'button_cancel' - looks like a cross)–  Once an item is cancelled it can be marked as cancelled.

To customize these icons you must place a node with the text above anywhere in your map and add a desired icon to that node. I suggest you place it under a "Config" or "Settings" node in the root of the map, so it doesn't get mixed up with the actual map content.

## Using the editor

The add-on comes with a simple task editor, that is mapped to the F4 key by default. This can be used to edit/set the task properties without having to use the property editor directly.

The editor can also be used to edit the optional Duration and Energy attributes. When a task is saved through the editor, the known GTD task attributes are kept in a consistent display order.

The editor is also the place, where the WaitFor and WaitUntil properties can be edited for the tasks. These properties are relevant, when you want to override the ordering of certain tasks. Eg. if you know that a task to be performed by Alice is waiting for some other responsible Bob, then set WaitFor to Bob and set the responsible to Alice. This task will be present at both their names as responsible.

## Context icons

If you want to add pre-defined icons for some contexts specified in your action nodes, it's available for versions over 1.0. To use this feature you must create icon nodes such as the ones above with the text `Icon: @Context` where the Context text can be replaced with the context of your liking.

The icons specified will be converted to the corresponding context attribute (Where property).

## Aliases for people and contexts

If you prefer to use shortcuts for people or contexts, it is available starting V2.0. All you have to do is to create nodes with the text `Alias: @Context @ctx` or `Alias: [John Connor] [jc] ` where the texts can be any string of your liking.

The defined aliases will replace the text when node is parsed with the shortcuts or edited through the editor.

Aliases are case-insensitive and you can specify multiple aliases for the same context/people either on the same config line or separately.

## Credits

The addon is based on the v0.8 FreeplaneGTD addon by Auxilus.

## Versions

Versions can be found on the official [release page](https://www.itworks.hu/freeplanegtd-release) or on [GitHub release page](https://github.com/gpapp/FreePlaneGTD/releases)
