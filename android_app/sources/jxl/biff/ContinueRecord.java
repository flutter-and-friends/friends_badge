package jxl.biff;

import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class ContinueRecord extends WritableRecordData {
    private byte[] data;

    public ContinueRecord(Record record) {
        super(record);
        this.data = record.getData();
    }

    public ContinueRecord(byte[] bArr) {
        super(Type.CONTINUE);
        this.data = bArr;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
