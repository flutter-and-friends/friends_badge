package jxl.read.biff;

import jxl.biff.RecordData;

/* loaded from: classes2.dex */
public class PLSRecord extends RecordData {
    public PLSRecord(Record record) {
        super(record);
    }

    public byte[] getData() {
        return getRecord().getData();
    }
}
