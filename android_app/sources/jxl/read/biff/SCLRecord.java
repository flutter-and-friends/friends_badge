package jxl.read.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.Type;

/* loaded from: classes2.dex */
class SCLRecord extends RecordData {
    private int denominator;
    private int numerator;

    protected SCLRecord(Record record) {
        super(Type.SCL);
        byte[] data = record.getData();
        this.numerator = IntegerHelper.getInt(data[0], data[1]);
        this.denominator = IntegerHelper.getInt(data[2], data[3]);
    }

    public int getZoomFactor() {
        return (this.numerator * 100) / this.denominator;
    }
}
