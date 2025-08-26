package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class CalcModeRecord extends RecordData {
    static /* synthetic */ Class class$jxl$read$biff$CalcModeRecord;
    private static Logger logger;
    private boolean automatic;

    static {
        Class clsClass$ = class$jxl$read$biff$CalcModeRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.CalcModeRecord");
            class$jxl$read$biff$CalcModeRecord = clsClass$;
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

    public CalcModeRecord(Record record) {
        super(record);
        byte[] data = record.getData();
        this.automatic = IntegerHelper.getInt(data[0], data[1]) == 1;
    }

    public boolean isAutomatic() {
        return this.automatic;
    }
}
