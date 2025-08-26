package jxl.read.biff;

import jxl.JXLException;

/* loaded from: classes2.dex */
public class BiffException extends JXLException {
    static final BiffMessage unrecognizedBiffVersion = new BiffMessage("Unrecognized biff version");
    static final BiffMessage expectedGlobals = new BiffMessage("Expected globals");
    static final BiffMessage excelFileTooBig = new BiffMessage("Warning:  not all of the excel file could be read");
    static final BiffMessage excelFileNotFound = new BiffMessage("The input file was not found");
    static final BiffMessage unrecognizedOLEFile = new BiffMessage("Unable to recognize OLE stream");
    static final BiffMessage streamNotFound = new BiffMessage("Compound file does not contain the specified stream");
    static final BiffMessage passwordProtected = new BiffMessage("The workbook is password protected");
    static final BiffMessage corruptFileFormat = new BiffMessage("The file format is corrupt");

    /* JADX INFO: Access modifiers changed from: private */
    static class BiffMessage {
        public String message;

        BiffMessage(String str) {
            this.message = str;
        }
    }

    public BiffException(BiffMessage biffMessage) {
        super(biffMessage.message);
    }
}
