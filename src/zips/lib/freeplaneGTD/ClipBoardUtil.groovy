package freeplaneGTD

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

    static Transferable createTransferable(Tag content) {
        return new MyTransferable(extractText(content), extractHtml(content));
    }

    static String extractText(Tag content) {
        def list = []
        assert content.tagName == 'body'
        assert content.content[0].tagName == 'h1'
        list << (String) ((Tag) content.content[0]).content[0]
        for (int i = 1; i < content.content.size(); i += 2) {
            Tag title = content.content[i]
            Tag actions = content.content[i + 1]
            assert title.tagName == 'h2'
            assert actions.tagName == 'ul'
            list << '\t' + (String) title.content[0]
            actions.content.each {
                Tag curTag = (Tag) it
                assert curTag.tagName == 'li'
                if (((Tag) curTag.content[0]).tagName == 'del') curTag = (Tag) curTag.content[0]
                int ptr = 0
                String priority, action, trail
                if (((Tag) curTag.content[ptr]).tagName == 'span') {
                    priority = ((Tag) curTag.content[ptr]).content[0]; ptr++
                }
                if (((Tag) curTag.content[ptr]).tagName == 'a') {
                    action = ((Tag) (curTag.content[ptr])).content[0]; ptr++
                }
                if (curTag.content.size() > ptr) {
                    trail = curTag.content[ptr]
                }
                list << '\t\t*' + (priority ? ' #' + priority : '') + ' ' + action + (trail ?: '')
            }
        }
        return list.join('\n');
    }

    static String extractHtml(String source) {
        return source
    }

    static String extractHtml(Tag source) {
        String retval = ''
        if (source.tagName.equalsIgnoreCase('a')) {
            source.content.each { retval += it instanceof Tag ? extractHtml((Tag) it) : extractHtml((String) it) }
        } else {
            retval = '<' + source.tagName
            source.params.each {
                retval += ' ' + it.key + '=\'' + it.value + '\''
            }
            retval += '>'
            source.content.each {
                retval += it instanceof Tag ? extractHtml((Tag) it) : extractHtml((String) it)
            }
            retval += '</' + source.tagName + '>'
        }
        return retval
    }
}

