package jxl.biff;

import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes2.dex */
class BuiltInStyle extends WritableRecordData {
    private int styleNumber;
    private int xfIndex;

    public BuiltInStyle(int i, int i2) {
        super(Type.STYLE);
        this.xfIndex = i;
        this.styleNumber = i2;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[4];
        IntegerHelper.getTwoBytes(this.xfIndex, bArr, 0);
        bArr[1] = (byte) (bArr[1] | ByteCompanionObject.MIN_VALUE);
        bArr[2] = (byte) this.styleNumber;
        bArr[3] = -1;
        return bArr;
    }
}
