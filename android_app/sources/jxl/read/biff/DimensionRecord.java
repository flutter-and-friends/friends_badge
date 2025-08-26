package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class DimensionRecord extends RecordData {
    public static Biff7 biff7;
    static /* synthetic */ Class class$jxl$read$biff$DimensionRecord;
    private static Logger logger;
    private int numCols;
    private int numRows;

    static {
        Class clsClass$ = class$jxl$read$biff$DimensionRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.DimensionRecord");
            class$jxl$read$biff$DimensionRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        biff7 = new Biff7();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Biff7 {
        private Biff7() {
        }
    }

    public DimensionRecord(Record record) {
        super(record);
        byte[] data = record.getData();
        if (data.length == 10) {
            read10ByteData(data);
        } else {
            read14ByteData(data);
        }
    }

    public DimensionRecord(Record record, Biff7 biff72) {
        super(record);
        read10ByteData(record.getData());
    }

    private void read10ByteData(byte[] bArr) {
        this.numRows = IntegerHelper.getInt(bArr[2], bArr[3]);
        this.numCols = IntegerHelper.getInt(bArr[6], bArr[7]);
    }

    private void read14ByteData(byte[] bArr) {
        this.numRows = IntegerHelper.getInt(bArr[4], bArr[5], bArr[6], bArr[7]);
        this.numCols = IntegerHelper.getInt(bArr[10], bArr[11]);
    }

    public int getNumberOfRows() {
        return this.numRows;
    }

    public int getNumberOfColumns() {
        return this.numCols;
    }
}
