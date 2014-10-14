// @ExecutionModes({on_single_node="main_menu_scripting/freeplaneGTD[addons.parseShorthand]"})
//=========================================================
// Freeplane GTD
//
// Groovy script to process shorthand notation fo GTD
// from a Freeplane mind map
//
// Version 1.0-beta
//
// Copyright (c)2014 Gergely Papp
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//=========================================================

//=========================================================
// references
//=========================================================
import org.freeplane.plugin.script.proxy.Proxy;
import freeplaneGTD.GTDMapReader;

//=========================================================
// script
//=========================================================
// Get icon keys for next actions and projects
def mapreader = new GTDMapReader(node.map.root);

// Expand any nodes with next action shorthand
mapreader.ConvertShorthand(node.map.root);
