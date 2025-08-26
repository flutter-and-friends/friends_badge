package jxl.read.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class DefaultColumnWidthRecord extends RecordData {
    private int width;

    public DefaultColumnWidthRecord(Record record) {
        super(record);
        byte[] data = record.getData();
        this.width = IntegerHelper.getInt(data[0], data[1]);
    }

    public int getWidth() {
        return this.width;
    }
}
