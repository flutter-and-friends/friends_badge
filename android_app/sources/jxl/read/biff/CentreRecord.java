package jxl.read.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class CentreRecord extends RecordData {
    private boolean centre;

    public CentreRecord(Record record) {
        super(record);
        byte[] data = getRecord().getData();
        this.centre = IntegerHelper.getInt(data[0], data[1]) != 0;
    }

    public boolean isCentre() {
        return this.centre;
    }
}
