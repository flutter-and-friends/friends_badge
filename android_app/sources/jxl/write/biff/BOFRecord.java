package jxl.write.biff;

import cn.highlight.p004tx.app.CmdCenter;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class BOFRecord extends WritableRecordData {
    public static final SheetBOF sheet;
    public static final WorkbookGlobalsBOF workbookGlobals;
    private byte[] data;

    /* JADX INFO: Access modifiers changed from: private */
    static class WorkbookGlobalsBOF {
        private WorkbookGlobalsBOF() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class SheetBOF {
        private SheetBOF() {
        }
    }

    static {
        workbookGlobals = new WorkbookGlobalsBOF();
        sheet = new SheetBOF();
    }

    public BOFRecord(WorkbookGlobalsBOF workbookGlobalsBOF) {
        super(Type.BOF);
        this.data = new byte[]{0, 6, 5, 0, -14, 21, -52, 7, 0, 0, 0, 0, 6, 0, 0, 0};
    }

    public BOFRecord(SheetBOF sheetBOF) {
        super(Type.BOF);
        this.data = new byte[]{0, 6, CmdCenter.CMD_openMoreCabinet, 0, -14, 21, -52, 7, 0, 0, 0, 0, 6, 0, 0, 0};
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
