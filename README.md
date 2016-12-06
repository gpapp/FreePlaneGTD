FreePlaneGTD
============

Fork of Freeplane GTD with extensions

The initial fork has been completely rewritten from original bits and pieces.

## About

Freeplane is a widely used mind mapping tool. GTD is a time management methodology by David Allen.

Freeplane GTD is an addon, that can collect tasks specified in a mindmap, thus allowing the users of Freeplane to use the concepts of GTD in their mind mapping tool.

## Installation and usage instructions

To get more information about the add-on use follow the instructions at (http://www.itworks.hu/index.php/freeplane-gtd/).

===================

*Please use the [latest documentation](http://www.itworks.hu/index.php/freeplane-gtd/)!*

===================
## Installation

* Download and install [Freeplane](http://freeplane.org) on your computer.
* Download the latest FreeplaneGTD plugin from the [release page](http://itworks.hu/freeplanegtd-release)
* In Freeplane open the addon manager, select the previously downloaded addon, and install it.
* Restart Freeplane to enable the plugin
* You can now use the addon.

*Please be aware, that the addon will replace any previous version of FreePlane GTD.*

## Usage

### Using the task overview

Select Tools -> Freeplane GTD -> Next Actions from the menu. As of version 0.9 the addon can be invoked using the pre-defined hotkey Ctrl-H.

freeplanegtdThe main window of the Freeplane GTD addon will contain all the action items (annotated with the corresponding icon) of the current map.

You can close this window using the window buttons, or the ESC hotkey.

The sidebar of the window contain the different groupings of the tasks.

* By project – the actions will be grouped based on the projects found above them
* By who – the actions will be grouped based on the Who attribute
* By context – the actions will be grouped based on the Where attribute
* By when – the actions will be grouped based on the When attribute, or the ‘Do next’ icon

### Shorthand notation

In order to speed up the action entry, shorthand notation can be used to add new items. These shorthand notations will be parsed upon the display or the refresh of the task overview window. The parsed items will be annotated with the task icon and the extracted attributes will be added to the task.

The format of the shorthand notation is as follows. Please note, that the position of the attributes do not matter. The first character of the notation must be an “*”.

> `* Action name {when} @context [who] #priority

Will be converted to a node with attributes
* Where - 'context'
* When - 'when'
* Who - 'who'
* Priority - 'priority' (only accepts values 0 to 9)


> `* Increase default size of the GTD pane @Coding {v0.9}

Will be converted to a node with attributes
* Where - Coding
* When - v0.9


### Icons

The plugin uses a number of pre-set icons to identify the action items, and their properties. These can be changed according to the users liking.

* Icon: Project – specifies the grouping node for actions
* Icon: Next action – specifies the individual actions
* Icon: Today – specifies the next actions (When property will be ignored on grouping)
* Icon: Done –  Once an item is completed it can be marked as done.

To customize these icons you must place a node with the text above anywhere in your map and add a desired icon to that node. I suggest you place it under a "Config" or "Settings" node in the root of the map, so it doesn't get mixed up with the actual map content.

## Context icons

If you want to add pre-defined icons for some contexts specified in your action nodes, it's available for versions over 1.0. To use this feature you must create icon nodes such as the ones above with the text "*Icon: @Context" where the Context text can be replaced with the context of your liking.

The icons specified will be converted to the corresponding context attribute (Where property).

## Credits

The addon is based on the v0.8 FreeplaneGTD addon by Auxilus.

## Versions

Versions can be found on the official [release page](https://www.itworks.hu/freeplanegtd-release) or on [GitHub release page](https://github.com/gpapp/FreePlaneGTD/releases)
