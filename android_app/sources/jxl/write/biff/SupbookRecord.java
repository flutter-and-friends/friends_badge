package jxl.write.biff;

import common.Assert;
import common.Logger;
import jxl.WorkbookSettings;
import jxl.biff.EncodedURLHelper;
import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class SupbookRecord extends WritableRecordData {
    public static final SupbookType ADDIN;
    public static final SupbookType EXTERNAL;
    public static final SupbookType INTERNAL;
    public static final SupbookType LINK;
    public static final SupbookType UNKNOWN;
    static /* synthetic */ Class class$jxl$write$biff$SupbookRecord;
    private static Logger logger;
    private byte[] data;
    private String fileName;
    private int numSheets;
    private String[] sheetNames;
    private SupbookType type;
    private WorkbookSettings workbookSettings;

    static {
        Class clsClass$ = class$jxl$write$biff$SupbookRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.SupbookRecord");
            class$jxl$write$biff$SupbookRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        INTERNAL = new SupbookType();
        EXTERNAL = new SupbookType();
        ADDIN = new SupbookType();
        LINK = new SupbookType();
        UNKNOWN = new SupbookType();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class SupbookType {
        private SupbookType() {
        }
    }

    public SupbookRecord() throws Exception {
        super(Type.SUPBOOK);
        this.type = ADDIN;
        try {
            throw new Exception();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public SupbookRecord(int i, WorkbookSettings workbookSettings) {
        super(Type.SUPBOOK);
        this.numSheets = i;
        this.type = INTERNAL;
        this.workbookSettings = workbookSettings;
    }

    public SupbookRecord(String str, WorkbookSettings workbookSettings) {
        super(Type.SUPBOOK);
        this.fileName = str;
        this.numSheets = 1;
        this.sheetNames = new String[0];
        this.workbookSettings = workbookSettings;
        this.type = EXTERNAL;
    }

    public SupbookRecord(jxl.read.biff.SupbookRecord supbookRecord, WorkbookSettings workbookSettings) {
        super(Type.SUPBOOK);
        this.workbookSettings = workbookSettings;
        if (supbookRecord.getType() == jxl.read.biff.SupbookRecord.INTERNAL) {
            this.type = INTERNAL;
            this.numSheets = supbookRecord.getNumberOfSheets();
        } else if (supbookRecord.getType() == jxl.read.biff.SupbookRecord.EXTERNAL) {
            this.type = EXTERNAL;
            this.numSheets = supbookRecord.getNumberOfSheets();
            this.fileName = supbookRecord.getFileName();
            this.sheetNames = new String[this.numSheets];
            for (int i = 0; i < this.numSheets; i++) {
                this.sheetNames[i] = supbookRecord.getSheetName(i);
            }
        }
        if (supbookRecord.getType() == jxl.read.biff.SupbookRecord.ADDIN) {
            logger.warn("Supbook type is addin");
        }
    }

    private void initInternal(jxl.read.biff.SupbookRecord supbookRecord) {
        this.numSheets = supbookRecord.getNumberOfSheets();
        initInternal();
    }

    private void initInternal() {
        this.data = new byte[4];
        IntegerHelper.getTwoBytes(this.numSheets, this.data, 0);
        byte[] bArr = this.data;
        bArr[2] = 1;
        bArr[3] = 4;
        this.type = INTERNAL;
    }

    void adjustInternal(int i) {
        Assert.verify(this.type == INTERNAL);
        this.numSheets = i;
        initInternal();
    }

    private void initExternal() {
        int i = 0;
        int length = 0;
        for (int i2 = 0; i2 < this.numSheets; i2++) {
            length += this.sheetNames[i2].length();
        }
        byte[] encodedURL = EncodedURLHelper.getEncodedURL(this.fileName, this.workbookSettings);
        int length2 = encodedURL.length + 6;
        int i3 = this.numSheets;
        this.data = new byte[length2 + (i3 * 3) + (length * 2)];
        IntegerHelper.getTwoBytes(i3, this.data, 0);
        IntegerHelper.getTwoBytes(encodedURL.length + 1, this.data, 2);
        byte[] bArr = this.data;
        bArr[4] = 0;
        bArr[5] = 1;
        System.arraycopy(encodedURL, 0, bArr, 6, encodedURL.length);
        int length3 = encodedURL.length + 4 + 2;
        while (true) {
            String[] strArr = this.sheetNames;
            if (i >= strArr.length) {
                return;
            }
            IntegerHelper.getTwoBytes(strArr[i].length(), this.data, length3);
            byte[] bArr2 = this.data;
            bArr2[length3 + 2] = 1;
            StringHelper.getUnicodeBytes(this.sheetNames[i], bArr2, length3 + 3);
            length3 += (this.sheetNames[i].length() * 2) + 3;
            i++;
        }
    }

    private void initAddin() {
        this.data = new byte[]{1, 0, 1, 58};
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        SupbookType supbookType = this.type;
        if (supbookType == INTERNAL) {
            initInternal();
        } else if (supbookType == EXTERNAL) {
            initExternal();
        } else if (supbookType == ADDIN) {
            initAddin();
        } else {
            logger.warn("unsupported supbook type - defaulting to internal");
            initInternal();
        }
        return this.data;
    }

    public SupbookType getType() {
        return this.type;
    }

    public int getNumberOfSheets() {
        return this.numSheets;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getSheetIndex(String str) {
        int i = 0;
        boolean z = false;
        while (true) {
            String[] strArr = this.sheetNames;
            if (i >= strArr.length || z) {
                break;
            }
            if (strArr[i].equals(str)) {
                z = true;
            }
            i++;
        }
        if (z) {
            return 0;
        }
        String[] strArr2 = this.sheetNames;
        String[] strArr3 = new String[strArr2.length + 1];
        strArr3[strArr2.length] = str;
        this.sheetNames = strArr3;
        return this.sheetNames.length - 1;
    }

    public String getSheetName(int i) {
        return this.sheetNames[i];
    }
}
