package jxl.read.biff;

import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class NineteenFourRecord extends RecordData {
    private boolean nineteenFour;

    public NineteenFourRecord(Record record) {
        super(record);
        this.nineteenFour = getRecord().getData()[0] == 1;
    }

    public boolean is1904() {
        return this.nineteenFour;
    }
}
