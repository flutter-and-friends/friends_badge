package jxl.read.biff;

import jxl.biff.DoubleHelper;
import jxl.biff.RecordData;
import jxl.biff.Type;

/* loaded from: classes2.dex */
abstract class MarginRecord extends RecordData {
    private double margin;

    protected MarginRecord(Type type, Record record) {
        super(type);
        this.margin = DoubleHelper.getIEEEDouble(record.getData(), 0);
    }

    double getMargin() {
        return this.margin;
    }
}
