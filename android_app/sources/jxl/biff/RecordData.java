package jxl.biff;

import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public abstract class RecordData {
    private int code;
    private Record record;

    protected RecordData(Record record) {
        this.record = record;
        this.code = record.getCode();
    }

    protected RecordData(Type type) {
        this.code = type.value;
    }

    protected Record getRecord() {
        return this.record;
    }

    protected final int getCode() {
        return this.code;
    }
}
