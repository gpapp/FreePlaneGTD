package freeplaneGTD

import javax.swing.*
import javax.swing.text.MutableAttributeSet;
import javax.swing.text.html.HTML;
import javax.swing.text.html.HTMLEditorKit;
import javax.swing.text.html.parser.ParserDelegator;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
    
class MyTransferHandler extends TransferHandler {

    class MyTransferable implements Transferable {

        private static final DataFlavor[] supportedFlavors;

        static {
            try {
                supportedFlavors = [
                        new DataFlavor('text/html;class=java.lang.String'),
                        new DataFlavor('text/plain;class=java.lang.String')
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
                return htmlData;
            }
            if (flavor.equals(supportedFlavors[1])) {
                return plainData;
            }
            throw new UnsupportedFlavorException(flavor);
        }
    }

    protected Transferable createTransferable(JComponent c) {
        final JEditorPane pane = (JEditorPane) c;
        // TODO remove map links from html
        final String htmlText = pane.getText();
        final String plainText = extractText(new StringReader(htmlText));
        return new MyTransferable(plainText, htmlText);
    }

    public String extractText(Reader reader) {
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
                if (t.equals(HTML.Tag.DIV) || t.equals(HTML.Tag.H1) || t.equals(HTML.Tag.H2) || t.equals(HTML.Tag.LI) ) {
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


    @Override
    public void exportToClipboard(JComponent comp, Clipboard clip, int action) throws IllegalStateException {
        if (action == COPY) {
            clip.setContents(this.createTransferable(comp), null);
        }
    }

    @Override
    public int getSourceActions(JComponent c) {
        return COPY;
    }
}
