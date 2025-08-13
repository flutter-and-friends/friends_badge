package jxl.read.biff;

import common.Logger;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.StringHelper;

/* loaded from: classes2.dex */
public class HeaderRecord extends RecordData {
    public static Biff7 biff7;
    static /* synthetic */ Class class$jxl$read$biff$HeaderRecord;
    private static Logger logger;
    private String header;

    static {
        Class clsClass$ = class$jxl$read$biff$HeaderRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.HeaderRecord");
            class$jxl$read$biff$HeaderRecord = clsClass$;
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

    HeaderRecord(Record record, WorkbookSettings workbookSettings) {
        super(record);
        byte[] data = getRecord().getData();
        if (data.length == 0) {
            return;
        }
        int i = IntegerHelper.getInt(data[0], data[1]);
        if (data[2] == 1) {
            this.header = StringHelper.getUnicodeString(data, i, 3);
        } else {
            this.header = StringHelper.getString(data, i, 3, workbookSettings);
        }
    }

    HeaderRecord(Record record, WorkbookSettings workbookSettings, Biff7 biff72) {
        super(record);
        byte[] data = getRecord().getData();
        if (data.length == 0) {
            return;
        }
        this.header = StringHelper.getString(data, data[0], 1, workbookSettings);
    }

    String getHeader() {
        return this.header;
    }
}
