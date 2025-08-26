package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class VerticalPageBreaksRecord extends RecordData {
    public static Biff7 biff7 = new Biff7();
    static /* synthetic */ Class class$jxl$read$biff$VerticalPageBreaksRecord;
    private int[] columnBreaks;
    private final Logger logger;

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

    public VerticalPageBreaksRecord(Record record) {
        super(record);
        Class clsClass$ = class$jxl$read$biff$VerticalPageBreaksRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.VerticalPageBreaksRecord");
            class$jxl$read$biff$VerticalPageBreaksRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        byte[] data = record.getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        int i2 = 2;
        this.columnBreaks = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            this.columnBreaks[i3] = IntegerHelper.getInt(data[i2], data[i2 + 1]);
            i2 += 6;
        }
    }

    public VerticalPageBreaksRecord(Record record, Biff7 biff72) {
        super(record);
        Class clsClass$ = class$jxl$read$biff$VerticalPageBreaksRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.VerticalPageBreaksRecord");
            class$jxl$read$biff$VerticalPageBreaksRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        byte[] data = record.getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        this.columnBreaks = new int[i];
        int i2 = 2;
        for (int i3 = 0; i3 < i; i3++) {
            this.columnBreaks[i3] = IntegerHelper.getInt(data[i2], data[i2 + 1]);
            i2 += 2;
        }
    }

    public int[] getColumnBreaks() {
        return this.columnBreaks;
    }
}
