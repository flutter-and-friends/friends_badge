package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class PaneRecord extends WritableRecordData {
    private static final int bottomLeftPane = 2;
    private static final int bottomRightPane = 0;
    private static final int topLeftPane = 3;
    private static final int topRightPane = 1;
    private int columnsVisible;
    private int rowsVisible;

    public PaneRecord(int i, int i2) {
        super(Type.PANE);
        this.rowsVisible = i2;
        this.columnsVisible = i;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[10];
        int i = 0;
        IntegerHelper.getTwoBytes(this.columnsVisible, bArr, 0);
        IntegerHelper.getTwoBytes(this.rowsVisible, bArr, 2);
        int i2 = this.rowsVisible;
        if (i2 > 0) {
            IntegerHelper.getTwoBytes(i2, bArr, 4);
        }
        int i3 = this.columnsVisible;
        if (i3 > 0) {
            IntegerHelper.getTwoBytes(i3, bArr, 6);
        }
        if (this.rowsVisible > 0 && this.columnsVisible == 0) {
            i = 2;
        } else if (this.rowsVisible == 0 && this.columnsVisible > 0) {
            i = 1;
        } else if (this.rowsVisible <= 0 || this.columnsVisible <= 0) {
            i = 3;
        }
        IntegerHelper.getTwoBytes(i, bArr, 8);
        return bArr;
    }
}
