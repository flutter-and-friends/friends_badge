package jxl.biff;

import common.Logger;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class FilterModeRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$biff$FilterModeRecord;
    private static Logger logger;
    private byte[] data;

    static {
        Class clsClass$ = class$jxl$biff$FilterModeRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.FilterModeRecord");
            class$jxl$biff$FilterModeRecord = clsClass$;
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

    public FilterModeRecord(Record record) {
        super(record);
        this.data = getRecord().getData();
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
