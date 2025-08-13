package jxl.biff;

import common.Logger;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class ConditionalFormatRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$biff$ConditionalFormatRecord;
    private static Logger logger;
    private byte[] data;

    static {
        Class clsClass$ = class$jxl$biff$ConditionalFormatRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.ConditionalFormatRecord");
            class$jxl$biff$ConditionalFormatRecord = clsClass$;
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

    public ConditionalFormatRecord(Record record) {
        super(record);
        this.data = getRecord().getData();
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
