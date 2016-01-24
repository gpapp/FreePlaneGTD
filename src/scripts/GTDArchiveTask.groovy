import freeplaneGTD.DoneMover
import freeplaneGTD.GTDMapReader
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy

// @ExecutionModes({on_single_node="main_menu_scripting/freeplaneGTD[addons.archiveTask]"})
/*
=========================================================
 Freeplane GTD+

 Copyright (c)2016 Gergely Papp

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

=========================================================
*/

class ArchiveTask extends DoneMover {

    public Proxy.Node findOrCreateArchiveDir (Proxy.Node node){
        final Proxy.Node rootNode = node.map.root
        final String archiveDirName = TextUtils.getText("freeplaneGTD.config.archiveDirName")

        Proxy.Node archiveNode = rootNode.children.find {
            it.text==archiveDirName
        }
        if(!archiveNode) {
            archiveNode = rootNode.createChild()
            archiveNode.text=archiveDirName
        }
        return archiveNode
    }
}

ArchiveTask archiveTask = new ArchiveTask()
archiveTask.execute(archiveTask.findOrCreateArchiveDir(node), node)

