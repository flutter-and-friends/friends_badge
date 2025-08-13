package jxl.read.biff;

import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.StringHelper;

/* loaded from: classes2.dex */
public class FooterRecord extends RecordData {
    public static Biff7 biff7 = new Biff7();
    private String footer;

    /* JADX INFO: Access modifiers changed from: private */
    static class Biff7 {
        private Biff7() {
        }
    }

    FooterRecord(Record record, WorkbookSettings workbookSettings) {
        super(record);
        byte[] data = getRecord().getData();
        if (data.length == 0) {
            return;
        }
        int i = IntegerHelper.getInt(data[0], data[1]);
        if (data[2] == 1) {
            this.footer = StringHelper.getUnicodeString(data, i, 3);
        } else {
            this.footer = StringHelper.getString(data, i, 3, workbookSettings);
        }
    }

    FooterRecord(Record record, WorkbookSettings workbookSettings, Biff7 biff72) {
        super(record);
        byte[] data = getRecord().getData();
        if (data.length == 0) {
            return;
        }
        this.footer = StringHelper.getString(data, data[0], 1, workbookSettings);
    }

    String getFooter() {
        return this.footer;
    }
}
