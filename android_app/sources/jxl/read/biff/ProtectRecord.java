package jxl.read.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class ProtectRecord extends RecordData {
    private boolean prot;

    ProtectRecord(Record record) {
        super(record);
        byte[] data = getRecord().getData();
        this.prot = IntegerHelper.getInt(data[0], data[1]) == 1;
    }

    boolean isProtected() {
        return this.prot;
    }
}
