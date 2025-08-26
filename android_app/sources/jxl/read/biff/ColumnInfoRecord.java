package jxl.read.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.Type;

/* loaded from: classes2.dex */
public class ColumnInfoRecord extends RecordData {
    private byte[] data;
    private int endColumn;
    private boolean hidden;
    private int startColumn;
    private int width;
    private int xfIndex;

    ColumnInfoRecord(Record record) {
        super(Type.COLINFO);
        this.data = record.getData();
        byte[] bArr = this.data;
        this.startColumn = IntegerHelper.getInt(bArr[0], bArr[1]);
        byte[] bArr2 = this.data;
        this.endColumn = IntegerHelper.getInt(bArr2[2], bArr2[3]);
        byte[] bArr3 = this.data;
        this.width = IntegerHelper.getInt(bArr3[4], bArr3[5]);
        byte[] bArr4 = this.data;
        this.xfIndex = IntegerHelper.getInt(bArr4[6], bArr4[7]);
        byte[] bArr5 = this.data;
        this.hidden = (IntegerHelper.getInt(bArr5[8], bArr5[9]) & 1) != 0;
    }

    public int getStartColumn() {
        return this.startColumn;
    }

    public int getEndColumn() {
        return this.endColumn;
    }

    public int getXFIndex() {
        return this.xfIndex;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean getHidden() {
        return this.hidden;
    }
}
