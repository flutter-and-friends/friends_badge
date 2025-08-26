package jxl.read.biff;

import common.Logger;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
class SaveRecalcRecord extends RecordData {
    static /* synthetic */ Class class$jxl$read$biff$SaveRecalcRecord;
    private static Logger logger;
    private boolean recalculateOnSave;

    static {
        Class clsClass$ = class$jxl$read$biff$SaveRecalcRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.SaveRecalcRecord");
            class$jxl$read$biff$SaveRecalcRecord = clsClass$;
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

    public SaveRecalcRecord(Record record) {
        super(record);
        byte[] data = record.getData();
        this.recalculateOnSave = IntegerHelper.getInt(data[0], data[1]) == 1;
    }

    public boolean getRecalculateOnSave() {
        return this.recalculateOnSave;
    }
}
