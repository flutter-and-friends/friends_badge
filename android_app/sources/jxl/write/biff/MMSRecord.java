package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class MMSRecord extends WritableRecordData {
    private byte[] data;
    private byte numMenuItemsAdded;
    private byte numMenuItemsDeleted;

    public MMSRecord(int i, int i2) {
        super(Type.MMS);
        this.numMenuItemsAdded = (byte) i;
        this.numMenuItemsDeleted = (byte) i2;
        this.data = new byte[2];
        byte[] bArr = this.data;
        bArr[0] = this.numMenuItemsAdded;
        bArr[1] = this.numMenuItemsDeleted;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
