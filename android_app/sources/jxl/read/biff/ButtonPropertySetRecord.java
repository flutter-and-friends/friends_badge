package jxl.read.biff;

import common.Logger;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
public class ButtonPropertySetRecord extends RecordData {
    static /* synthetic */ Class class$jxl$read$biff$ButtonPropertySetRecord;
    private static Logger logger;

    static {
        Class clsClass$ = class$jxl$read$biff$ButtonPropertySetRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.ButtonPropertySetRecord");
            class$jxl$read$biff$ButtonPropertySetRecord = clsClass$;
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

    ButtonPropertySetRecord(Record record) {
        super(record);
    }

    public byte[] getData() {
        return getRecord().getData();
    }
}
