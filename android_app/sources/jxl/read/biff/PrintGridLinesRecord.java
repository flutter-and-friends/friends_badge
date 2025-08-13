package jxl.read.biff;

import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class PrintGridLinesRecord extends RecordData {
    private boolean printGridLines;

    public PrintGridLinesRecord(Record record) {
        super(record);
        this.printGridLines = record.getData()[0] == 1;
    }

    public boolean getPrintGridLines() {
        return this.printGridLines;
    }
}
