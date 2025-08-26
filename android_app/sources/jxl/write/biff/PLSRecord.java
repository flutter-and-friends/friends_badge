package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class PLSRecord extends WritableRecordData {
    private byte[] data;

    public PLSRecord(jxl.read.biff.PLSRecord pLSRecord) {
        super(Type.PLS);
        this.data = pLSRecord.getData();
    }

    public PLSRecord(PLSRecord pLSRecord) {
        super(Type.PLS);
        this.data = new byte[pLSRecord.data.length];
        byte[] bArr = pLSRecord.data;
        byte[] bArr2 = this.data;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
