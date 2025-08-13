package jxl.read.biff;

import common.Logger;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;

/* loaded from: classes2.dex */
public class ExternalSheetRecord extends RecordData {
    public static Biff7 biff7;
    static /* synthetic */ Class class$jxl$read$biff$ExternalSheetRecord;
    private static Logger logger;
    private XTI[] xtiArray;

    static {
        Class clsClass$ = class$jxl$read$biff$ExternalSheetRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.ExternalSheetRecord");
            class$jxl$read$biff$ExternalSheetRecord = clsClass$;
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

    private static class XTI {
        int firstTab;
        int lastTab;
        int supbookIndex;

        XTI(int i, int i2, int i3) {
            this.supbookIndex = i;
            this.firstTab = i2;
            this.lastTab = i3;
        }
    }

    ExternalSheetRecord(Record record, WorkbookSettings workbookSettings) {
        super(record);
        byte[] data = getRecord().getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        int i2 = 2;
        if (data.length < (i * 6) + 2) {
            this.xtiArray = new XTI[0];
            logger.warn("Could not process external sheets.  Formulas may be compromised.");
            return;
        }
        this.xtiArray = new XTI[i];
        for (int i3 = 0; i3 < i; i3++) {
            this.xtiArray[i3] = new XTI(IntegerHelper.getInt(data[i2], data[i2 + 1]), IntegerHelper.getInt(data[i2 + 2], data[i2 + 3]), IntegerHelper.getInt(data[i2 + 4], data[i2 + 5]));
            i2 += 6;
        }
    }

    ExternalSheetRecord(Record record, WorkbookSettings workbookSettings, Biff7 biff72) {
        super(record);
        logger.warn("External sheet record for Biff 7 not supported");
    }

    public int getNumRecords() {
        XTI[] xtiArr = this.xtiArray;
        if (xtiArr != null) {
            return xtiArr.length;
        }
        return 0;
    }

    public int getSupbookIndex(int i) {
        return this.xtiArray[i].supbookIndex;
    }

    public int getFirstTabIndex(int i) {
        return this.xtiArray[i].firstTab;
    }

    public int getLastTabIndex(int i) {
        return this.xtiArray[i].lastTab;
    }

    public byte[] getData() {
        return getRecord().getData();
    }
}
