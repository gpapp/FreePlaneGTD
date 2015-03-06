package freeplaneGTD

import javax.swing.text.MutableAttributeSet
import javax.swing.text.html.HTML
import javax.swing.text.html.HTMLEditorKit
import javax.swing.text.html.parser.ParserDelegator
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

    static Transferable createTransferable(String content) {
        return new MyTransferable(extractText(new StringReader(content)), extractHtml(content));
    }

    static String extractText(Reader reader) {
        final ArrayList<String> list = new ArrayList<String>();

        HTMLEditorKit.ParserCallback parserCallback = new HTMLEditorKit.ParserCallback() {
            public void handleText(final char[] data, final int pos) {
                list.add(new String(data));
            }

            public void handleStartTag(HTML.Tag t, MutableAttributeSet attribute, int pos) {
                if (t.equals(HTML.Tag.LI)) {
                    list.add("\t");
                }
            }

            public void handleEndTag(HTML.Tag t, final int pos) {
                if (t.equals(HTML.Tag.DIV) || t.equals(HTML.Tag.H1) || t.equals(HTML.Tag.H2) || t.equals(HTML.Tag.LI)) {
                    list.add("\n");
                }
            }

            public void handleSimpleTag(HTML.Tag t, MutableAttributeSet a, final int pos) {
                if (t.equals(HTML.Tag.BR)) {
                    list.add("\n");
                }
            }

            public void handleComment(final char[] data, final int pos) {
            }

            public void handleError(final String errMsg, final int pos) {
            }
        };
        try {
            new ParserDelegator().parse(reader, parserCallback, true);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String result = "";
        for (String s : list) {
            result += s;
        }
        return result;
    }

    static String extractHtml(String source) {
        return source.replaceAll('<a href=\'[^\']*\'>(.*)</a>', '$1')
    }
}
