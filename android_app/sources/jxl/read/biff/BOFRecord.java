package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
public class BOFRecord extends RecordData {
    private static final int Biff7 = 1280;
    private static final int Biff8 = 1536;
    private static final int Chart = 32;
    private static final int MacroSheet = 64;
    private static final int WorkbookGlobals = 5;
    private static final int Worksheet = 16;
    static /* synthetic */ Class class$jxl$read$biff$BOFRecord;
    private static Logger logger;
    private int substreamType;
    private int version;

    static {
        Class clsClass$ = class$jxl$read$biff$BOFRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.BOFRecord");
            class$jxl$read$biff$BOFRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    BOFRecord(Record record) {
        super(record);
        byte[] data = getRecord().getData();
        this.version = IntegerHelper.getInt(data[0], data[1]);
        this.substreamType = IntegerHelper.getInt(data[2], data[3]);
    }

    public boolean isBiff8() {
        return this.version == 1536;
    }

    public boolean isBiff7() {
        return this.version == 1280;
    }

    boolean isWorkbookGlobals() {
        return this.substreamType == 5;
    }

    public boolean isWorksheet() {
        return this.substreamType == 16;
    }

    public boolean isMacroSheet() {
        return this.substreamType == 64;
    }

    public boolean isChart() {
        return this.substreamType == 32;
    }

    int getLength() {
        return getRecord().getLength();
    }
}
