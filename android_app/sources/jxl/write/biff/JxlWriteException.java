package jxl.write.biff;

import jxl.write.WriteException;

/* loaded from: classes2.dex */
public class JxlWriteException extends WriteException {
    static WriteMessage formatInitialized = new WriteMessage("Attempt to modify a referenced format");
    static WriteMessage cellReferenced = new WriteMessage("Cell has already been added to a worksheet");
    static WriteMessage maxRowsExceeded = new WriteMessage("The maximum number of rows permitted on a worksheet been exceeded");
    static WriteMessage maxColumnsExceeded = new WriteMessage("The maximum number of columns permitted on a worksheet has been exceeded");
    static WriteMessage copyPropertySets = new WriteMessage("Error encounted when copying additional property sets");

    /* JADX INFO: Access modifiers changed from: private */
    static class WriteMessage {
        public String message;

        WriteMessage(String str) {
            this.message = str;
        }
    }

    public JxlWriteException(WriteMessage writeMessage) {
        super(writeMessage.message);
    }
}
