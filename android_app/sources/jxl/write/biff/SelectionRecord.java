package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class SelectionRecord extends WritableRecordData {
    private int column;
    private PaneType pane;
    private int row;
    public static final PaneType lowerRight = new PaneType(0);
    public static final PaneType upperRight = new PaneType(1);
    public static final PaneType lowerLeft = new PaneType(2);
    public static final PaneType upperLeft = new PaneType(3);

    /* JADX INFO: Access modifiers changed from: private */
    static class PaneType {
        int val;

        PaneType(int i) {
            this.val = i;
        }
    }

    public SelectionRecord(PaneType paneType, int i, int i2) {
        super(Type.SELECTION);
        this.column = i;
        this.row = i2;
        this.pane = paneType;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[15];
        bArr[0] = (byte) this.pane.val;
        IntegerHelper.getTwoBytes(this.row, bArr, 1);
        IntegerHelper.getTwoBytes(this.column, bArr, 3);
        bArr[7] = 1;
        IntegerHelper.getTwoBytes(this.row, bArr, 9);
        IntegerHelper.getTwoBytes(this.row, bArr, 11);
        int i = this.column;
        bArr[13] = (byte) i;
        bArr[14] = (byte) i;
        return bArr;
    }
}
