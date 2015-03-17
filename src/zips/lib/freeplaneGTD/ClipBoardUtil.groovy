package freeplaneGTD

import org.freeplane.core.util.TextUtils

import java.awt.datatransfer.DataFlavor
import java.awt.datatransfer.Transferable
import java.awt.datatransfer.UnsupportedFlavorException

class ClipBoardUtil {

    static class MyTransferable implements Transferable {

        private static final DataFlavor[] supportedFlavors

        static {
            try {
                supportedFlavors = [
                        new DataFlavor('text/plain;class=java.lang.String'),
                        new DataFlavor('text/html;class=java.lang.String')
                ];
            } catch (ClassNotFoundException e) {
                throw new ExceptionInInitializerError(e);
            }
        }

        private final String plainData;
        private final String htmlData;

        public MyTransferable(String plainData, String htmlData) {
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
                return plainData;
            }
            if (flavor.equals(supportedFlavors[1])) {
                return htmlData;
            }
            throw new UnsupportedFlavorException(flavor);
        }
    }

    static Transferable createTransferable(Map content) {
        return new MyTransferable(extractText(content), extractHtml(content));
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
                        (it['context'] ? ' @' + it['context'] : '') +
                        (it['project'] ? ' for ' + it['project'] : '')
            }
        }
        return list.join('\n');
    }

    static String extractHtml(Map list) {
        Tag body = new Tag('body')
        body.addContent('h1', TextUtils.getText('freeplaneGTD_view_' + list['type']))
        list['groups'].each {
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
                        (it['context'] ? ' @' + it['context'] : '') +
                        (it['project'] ? ' for ' + it['project'] : ''))
                if (it['details'] || it['notes']) {
                    Tag tag = new Tag('div',)
                    if (it['details']) {
                        tag.addChild('div', [style: 'background-color: rgb(240,250,240);font-size:10pt']).addPreformatted(it['details'])
                    }
                    if (it['notes']) {
                        tag.addChild('div', [style: 'background-color: rgb(250,250,240);font-size:10pt']).addPreformatted(it['notes'])
                    }
                    wrap.addContent(tag)
                }
            }
        }
        return body.toString()
    }
}

