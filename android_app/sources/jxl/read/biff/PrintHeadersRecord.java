package jxl.read.biff;

import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class PrintHeadersRecord extends RecordData {
    private boolean printHeaders;

    public PrintHeadersRecord(Record record) {
        super(record);
        this.printHeaders = record.getData()[0] == 1;
    }

    public boolean getPrintHeaders() {
        return this.printHeaders;
    }
}
