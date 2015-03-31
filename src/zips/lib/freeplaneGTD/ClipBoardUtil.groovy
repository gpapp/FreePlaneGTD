package freeplaneGTD

import org.freeplane.core.util.TextUtils
import org.freeplane.features.format.FormattedDate
import org.freeplane.features.format.FormattedNumber

import java.awt.datatransfer.DataFlavor
import java.awt.datatransfer.Transferable
import java.awt.datatransfer.UnsupportedFlavorException

class ClipBoardUtil {

    static class MyTransferable implements Transferable {

        private static final DataFlavor[] supportedFlavors = [
                new DataFlavor("text/freeplane-nodes; class=java.lang.String"),
                new DataFlavor('text/html; class=java.lang.String'),
                new DataFlavor('text/plain; class=java.lang.String'),
        ]

        private final String freeplaneData;
        private final String plainData;
        private final String htmlData;

        public MyTransferable(String freeplaneData, String plainData, String htmlData) {
            this.freeplaneData = freeplaneData;
            this.plainData = plainData;
            this.htmlData = htmlData;
        }

        public DataFlavor[] getTransferDataFlavors() {
            return supportedFlavors;
        }

        public boolean isDataFlavorSupported(DataFlavor flavor) {
            for (DataFlavor supportedFlavor : supportedFlavors) {
                if (supportedFlavor == flavor) {
                    return true;
                }
            }
            return false;
        }

        public Object getTransferData(DataFlavor flavor) throws UnsupportedFlavorException, IOException {
            if (flavor.equals(supportedFlavors[0])) {
                return freeplaneData;
            }
            if (flavor.equals(supportedFlavors[1])) {
                return htmlData
            }
            if (flavor.equals(supportedFlavors[2])) {
                return plainData
            }
            throw new UnsupportedFlavorException(flavor);
        }
    }

    static Transferable createTransferable(Map content, GTDMapReader reader, boolean showNotes) {
        return new MyTransferable(
                extractFreeplane(content, reader),
                extractText(content),
                extractHtml(content,showNotes));
    }

    static String contextsToList(String context) {
        String[] list = context.split(',')
        return ' @' + list.join(' @')
    }

    static String extractFreeplane(Map content, GTDMapReader reader) {
        Tag body = new Tag('node', [TEXT: TextUtils.getText('freeplaneGTD_view_' + content['type'])])
        content['groups'].each {
            Tag curItem = body.addChild('node', [TEXT: it['title']])
            it['items'].each {
                Tag node = curItem.addChild('node', [TEXT: it['action']])
                node.addChild('icon', [BUILTIN: reader.iconNextAction])
                it['done'] ? node.addChild('icon', [BUILTIN: reader.iconDone]) : false
                it['context'] ? node.addChild('attribute', [NAME: 'Where', VALUE: it['context']]) : false
                if (it['when']) {
                    Tag attr = node.addChild('attribute', [
                            NAME : 'When',
                            VALUE: it['when']])
                    if (it['when'] instanceof FormattedDate) {
                        attr.addProperty('OBJECT', 'org.freeplane.features.format.FormattedDate|' + it['when'] + '|yyyy-MM-dd')
                    }
                }
                it['who'] ? node.addChild('attribute', [NAME: 'Who', VALUE: it['who']]) : false
                if (it['priority']) {
                    Tag attr = node.addChild('attribute', [NAME : 'Priority',
                                                           VALUE: it['priority']
                    ])
                    if (it['priority'] instanceof FormattedNumber) {
                        attr.addProperty('OBJECT', 'org.freeplane.features.format.FormattedNumber|' + it['priority'])
                    }
                }
                it['details'] ? node.addChild('richcontent', [TYPE: 'DETAILS']).addPreformatted((String) it['details']) : false
                it['notes'] ? node.addChild('richcontent', [TYPE: 'NOTE']).addPreformatted((String) it['notes']) : false
            }
        }
        return body.toString()
    }

    static String extractText(Map content) {
        def list = []
        list << TextUtils.getText('freeplaneGTD_view_' + content['type'])
        content['groups'].each {
            list << '\t' + it['title']
            it['items'].each {
                list << '\t\t*' + (it['priority'] ? ' #' + it['priority'] : '') + ' ' + it['action'] +
                        (it['who'] ? ' [' + it['who'] + ']' : '') +
                        (it['when'] ? ' {' + it['when'] + '}' : '') +
                        (it['project'] ? ' for ' + it['project'] : '') +
                        (it['context'] ? contextsToList((String) it['context']) : '')
            }
        }
        return list.join('\n');
    }

    static String extractHtml(Map content, boolean showNotes) {
        Tag body = new Tag('body')
        body.addContent('h1', TextUtils.getText('freeplaneGTD_view_' + content['type']))
        content['groups'].each {
            body.addContent('h2', it['title'])
            Tag curItem = body.addChild('ul')
            it['items'].each {
                Tag wrap = curItem.addChild('li')
                if (it['done']) wrap.params = [style: 'text-decoration: line-through']
                if (it['priority']) {
                    wrap = wrap.addContent('span', it['priority'] + ' ', [style: 'color:red'])
                }
                wrap.addContent(it['action'] +
                        (it['who'] ? ' [' + it['who'] + ']' : '') +
                        (it['when'] ? ' {' + it['when'] + '}' : '') +
                        (it['project'] ? ' for ' + it['project'] : '') +
                        (it['context'] ? contextsToList((String) it['context']) : '')
                )
                if (showNotes) {
                    Tag tag = new Tag('div',)
                    if (it['details']) {
                        tag.addChild('div', [style: 'background-color: rgb(240,250,240);font-size:10pt']).addPreformatted((String) it['details'])
                    }
                    if (it['notes']) {
                        tag.addChild('div', [style: 'background-color: rgb(250,250,240);font-size:10pt']).addPreformatted((String) it['notes'])
                    }
                    wrap.addContent(tag)
                }
            }
        }
        return body.toString()
    }
}

