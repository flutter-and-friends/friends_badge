package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class HorizontalPageBreaksRecord extends RecordData {
    public static Biff7 biff7 = new Biff7();
    static /* synthetic */ Class class$jxl$read$biff$HorizontalPageBreaksRecord;
    private final Logger logger;
    private int[] rowBreaks;

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

    public HorizontalPageBreaksRecord(Record record) {
        super(record);
        Class clsClass$ = class$jxl$read$biff$HorizontalPageBreaksRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.HorizontalPageBreaksRecord");
            class$jxl$read$biff$HorizontalPageBreaksRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        byte[] data = record.getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        int i2 = 2;
        this.rowBreaks = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            this.rowBreaks[i3] = IntegerHelper.getInt(data[i2], data[i2 + 1]);
            i2 += 6;
        }
    }

    public HorizontalPageBreaksRecord(Record record, Biff7 biff72) {
        super(record);
        Class clsClass$ = class$jxl$read$biff$HorizontalPageBreaksRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.HorizontalPageBreaksRecord");
            class$jxl$read$biff$HorizontalPageBreaksRecord = clsClass$;
        }
        this.logger = Logger.getLogger(clsClass$);
        byte[] data = record.getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        this.rowBreaks = new int[i];
        int i2 = 2;
        for (int i3 = 0; i3 < i; i3++) {
            this.rowBreaks[i3] = IntegerHelper.getInt(data[i2], data[i2 + 1]);
            i2 += 2;
        }
    }

    public int[] getRowBreaks() {
        return this.rowBreaks;
    }
}
