package jxl.biff;

import androidx.exifinterface.media.ExifInterface;
import common.Logger;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import jxl.WorkbookSettings;
import jxl.format.Format;
import jxl.read.biff.Record;

/* loaded from: classes2.dex */
public class FormatRecord extends WritableRecordData implements DisplayFormat, Format {
    public static final BiffType biff7;
    public static final BiffType biff8;
    static /* synthetic */ Class class$jxl$biff$FormatRecord;
    private static String[] dateStrings;
    public static Logger logger;
    private byte[] data;
    private boolean date;
    private java.text.Format format;
    private String formatString;
    private int indexCode;
    private boolean initialized;
    private boolean number;
    private WorkbookSettings settings;

    @Override // jxl.biff.DisplayFormat
    public boolean isBuiltIn() {
        return false;
    }

    static {
        Class clsClass$ = class$jxl$biff$FormatRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.FormatRecord");
            class$jxl$biff$FormatRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        dateStrings = new String[]{"dd", "mm", "yy", "hh", "ss", "m/", "/d"};
        biff8 = new BiffType();
        biff7 = new BiffType();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static class BiffType {
        private BiffType() {
        }
    }

    FormatRecord(String str, int i) {
        super(Type.FORMAT);
        this.formatString = str;
        this.indexCode = i;
        this.initialized = true;
    }

    protected FormatRecord() {
        super(Type.FORMAT);
        this.initialized = false;
    }

    protected FormatRecord(FormatRecord formatRecord) {
        super(Type.FORMAT);
        this.initialized = false;
        this.formatString = formatRecord.formatString;
        this.date = formatRecord.date;
        this.number = formatRecord.number;
    }

    public FormatRecord(Record record, WorkbookSettings workbookSettings, BiffType biffType) {
        super(record);
        byte[] data = getRecord().getData();
        int i = 0;
        this.indexCode = IntegerHelper.getInt(data[0], data[1]);
        this.initialized = true;
        if (biffType == biff8) {
            int i2 = IntegerHelper.getInt(data[2], data[3]);
            if (data[4] == 0) {
                this.formatString = StringHelper.getString(data, i2, 5, workbookSettings);
            } else {
                this.formatString = StringHelper.getUnicodeString(data, i2, 5);
            }
        } else {
            byte[] bArr = new byte[data[2]];
            System.arraycopy(data, 3, bArr, 0, bArr.length);
            this.formatString = new String(bArr);
        }
        this.date = false;
        this.number = false;
        while (true) {
            String[] strArr = dateStrings;
            if (i >= strArr.length) {
                break;
            }
            String str = strArr[i];
            if (this.formatString.indexOf(str) != -1 || this.formatString.indexOf(str.toUpperCase()) != -1) {
                break;
            } else {
                i++;
            }
        }
        this.date = true;
        if (this.date) {
            return;
        }
        if (this.formatString.indexOf(35) == -1 && this.formatString.indexOf(48) == -1) {
            return;
        }
        this.number = true;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        this.data = new byte[(this.formatString.length() * 2) + 3 + 2];
        IntegerHelper.getTwoBytes(this.indexCode, this.data, 0);
        IntegerHelper.getTwoBytes(this.formatString.length(), this.data, 2);
        byte[] bArr = this.data;
        bArr[4] = 1;
        StringHelper.getUnicodeBytes(this.formatString, bArr, 5);
        return this.data;
    }

    @Override // jxl.biff.DisplayFormat
    public int getFormatIndex() {
        return this.indexCode;
    }

    @Override // jxl.biff.DisplayFormat
    public boolean isInitialized() {
        return this.initialized;
    }

    @Override // jxl.biff.DisplayFormat
    public void initialize(int i) {
        this.indexCode = i;
        this.initialized = true;
    }

    protected final String replace(String str, String str2, String str3) {
        int iIndexOf = str.indexOf(str2);
        while (iIndexOf != -1) {
            StringBuffer stringBuffer = new StringBuffer(str.substring(0, iIndexOf));
            stringBuffer.append(str3);
            stringBuffer.append(str.substring(iIndexOf + str2.length()));
            str = stringBuffer.toString();
            iIndexOf = str.indexOf(str2);
        }
        return str;
    }

    protected final void setFormatString(String str) {
        this.formatString = str;
    }

    public final boolean isDate() {
        return this.date;
    }

    public final boolean isNumber() {
        return this.number;
    }

    public final NumberFormat getNumberFormat() {
        java.text.Format format = this.format;
        if (format != null && (format instanceof NumberFormat)) {
            return (NumberFormat) format;
        }
        try {
            String str = this.formatString;
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("format string is ");
            stringBuffer.append(this.formatString);
            logger2.debug(stringBuffer.toString());
            this.format = new DecimalFormat(replace(replace(replace(replace(replace(str, "E+", ExifInterface.LONGITUDE_EAST), "_)", ""), "_", ""), "[Red]", ""), "\\", ""));
        } catch (IllegalArgumentException unused) {
            this.format = new DecimalFormat("#.###");
        }
        return (NumberFormat) this.format;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.text.DateFormat getDateFormat() {
        /*
            Method dump skipped, instructions count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.biff.FormatRecord.getDateFormat():java.text.DateFormat");
    }

    public int getIndexCode() {
        return this.indexCode;
    }

    @Override // jxl.format.Format
    public String getFormatString() {
        return this.formatString;
    }

    public int hashCode() {
        return this.formatString.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FormatRecord)) {
            return false;
        }
        FormatRecord formatRecord = (FormatRecord) obj;
        if (this.initialized && formatRecord.initialized) {
            if (this.date == formatRecord.date && this.number == formatRecord.number) {
                return this.formatString.equals(formatRecord.formatString);
            }
            return false;
        }
        return this.formatString.equals(formatRecord.formatString);
    }
}
