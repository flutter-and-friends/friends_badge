package jxl.read.biff;

import common.Logger;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.StringHelper;

/* loaded from: classes2.dex */
public class ExternalNameRecord extends RecordData {
    static /* synthetic */ Class class$jxl$read$biff$ExternalNameRecord;
    private static Logger logger;
    private boolean addInFunction;
    private String name;

    static {
        Class clsClass$ = class$jxl$read$biff$ExternalNameRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.ExternalNameRecord");
            class$jxl$read$biff$ExternalNameRecord = clsClass$;
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

    ExternalNameRecord(Record record, WorkbookSettings workbookSettings) {
        super(record);
        byte[] data = getRecord().getData();
        if (IntegerHelper.getInt(data[0], data[1]) == 0) {
            this.addInFunction = true;
        }
        if (this.addInFunction) {
            byte b = data[6];
            if (data[7] != 0) {
                this.name = StringHelper.getUnicodeString(data, b, 8);
            } else {
                this.name = StringHelper.getString(data, b, 8, workbookSettings);
            }
        }
    }

    public boolean isAddInFunction() {
        return this.addInFunction;
    }

    public String getName() {
        return this.name;
    }
}
