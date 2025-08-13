package jxl.read.biff;

import common.Logger;
import java.net.MalformedURLException;
import java.net.URL;
import jxl.CellReferenceHelper;
import jxl.Hyperlink;
import jxl.Range;
import jxl.Sheet;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.SheetRangeImpl;
import jxl.biff.StringHelper;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class HyperlinkRecord extends RecordData implements Hyperlink {
    static /* synthetic */ Class class$jxl$read$biff$HyperlinkRecord;
    private static final LinkType fileLink;
    private static Logger logger;
    private static final LinkType unknown;
    private static final LinkType urlLink;
    private static final LinkType workbookLink;
    private java.io.File file;
    private int firstColumn;
    private int firstRow;
    private int lastColumn;
    private int lastRow;
    private LinkType linkType;
    private String location;
    private SheetRangeImpl range;
    private URL url;

    static {
        Class clsClass$ = class$jxl$read$biff$HyperlinkRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.HyperlinkRecord");
            class$jxl$read$biff$HyperlinkRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        urlLink = new LinkType();
        fileLink = new LinkType();
        workbookLink = new LinkType();
        unknown = new LinkType();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    private static class LinkType {
        private LinkType() {
        }
    }

    HyperlinkRecord(Record record, Sheet sheet, WorkbookSettings workbookSettings) {
        super(record);
        this.linkType = unknown;
        byte[] data = getRecord().getData();
        this.firstRow = IntegerHelper.getInt(data[0], data[1]);
        this.lastRow = IntegerHelper.getInt(data[2], data[3]);
        this.firstColumn = IntegerHelper.getInt(data[4], data[5]);
        this.lastColumn = IntegerHelper.getInt(data[6], data[7]);
        this.range = new SheetRangeImpl(sheet, this.firstColumn, this.firstRow, this.lastColumn, this.lastRow);
        int i = IntegerHelper.getInt(data[28], data[29], data[30], data[31]);
        int i2 = ((i & 20) != 0 ? (IntegerHelper.getInt(data[32], data[33], data[34], data[35]) * 2) + 4 : 0) + 32;
        int i3 = i2 + ((i & 128) != 0 ? (IntegerHelper.getInt(data[i2], data[i2 + 1], data[i2 + 2], data[i2 + 3]) * 2) + 4 : 0);
        if ((i & 3) == 3) {
            this.linkType = urlLink;
            if (data[i3] == 3) {
                this.linkType = fileLink;
            }
        } else if ((i & 1) != 0) {
            this.linkType = fileLink;
            if (data[i3] == -32) {
                this.linkType = urlLink;
            }
        } else if ((i & 8) != 0) {
            this.linkType = workbookLink;
        }
        LinkType linkType = this.linkType;
        if (linkType == urlLink) {
            String unicodeString = null;
            int i4 = i3 + 16;
            try {
                try {
                    unicodeString = StringHelper.getUnicodeString(data, (IntegerHelper.getInt(data[i4], data[i4 + 1], data[i4 + 2], data[i4 + 3]) / 2) - 1, i4 + 4);
                    this.url = new URL(unicodeString);
                    return;
                } catch (MalformedURLException unused) {
                    Logger logger2 = logger;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("URL ");
                    stringBuffer.append(unicodeString);
                    stringBuffer.append(" is malformed.  Trying a file");
                    logger2.warn(stringBuffer.toString());
                    try {
                        this.linkType = fileLink;
                        this.file = new java.io.File(unicodeString);
                    } catch (Exception unused2) {
                        logger.warn("Cannot set to file.  Setting a default URL");
                        this.linkType = urlLink;
                        this.url = new URL("http://www.andykhan.com/jexcelapi/index.html");
                    }
                    return;
                } catch (Throwable th) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    StringBuffer stringBuffer3 = new StringBuffer();
                    CellReferenceHelper.getCellReference(this.firstColumn, this.firstRow, stringBuffer2);
                    CellReferenceHelper.getCellReference(this.lastColumn, this.lastRow, stringBuffer3);
                    stringBuffer2.insert(0, "Exception when parsing URL ");
                    stringBuffer2.append(Typography.quote);
                    stringBuffer2.append(stringBuffer3.toString());
                    stringBuffer2.append("\".  Using default.");
                    logger.warn(stringBuffer2, th);
                    this.url = new URL("http://www.andykhan.com/jexcelapi/index.html");
                    return;
                }
            } catch (MalformedURLException unused3) {
                return;
            }
        }
        if (linkType == fileLink) {
            int i5 = i3 + 16;
            try {
                int i6 = IntegerHelper.getInt(data[i5], data[i5 + 1]);
                String string = StringHelper.getString(data, IntegerHelper.getInt(data[i5 + 2], data[i5 + 3], data[i5 + 4], data[i5 + 5]) - 1, i5 + 6, workbookSettings);
                StringBuffer stringBuffer4 = new StringBuffer();
                for (int i7 = 0; i7 < i6; i7++) {
                    stringBuffer4.append("..\\");
                }
                stringBuffer4.append(string);
                this.file = new java.io.File(stringBuffer4.toString());
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                Logger logger3 = logger;
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("Exception when parsing file ");
                stringBuffer5.append(th2.getClass().getName());
                stringBuffer5.append(".");
                logger3.warn(stringBuffer5.toString());
                this.file = new java.io.File(".");
                return;
            }
        }
        if (linkType == workbookLink) {
            this.location = StringHelper.getUnicodeString(data, IntegerHelper.getInt(data[32], data[33], data[34], data[35]) - 1, 36);
        } else {
            logger.warn("Cannot determine link type");
        }
    }

    @Override // jxl.Hyperlink
    public boolean isFile() {
        return this.linkType == fileLink;
    }

    @Override // jxl.Hyperlink
    public boolean isURL() {
        return this.linkType == urlLink;
    }

    @Override // jxl.Hyperlink
    public boolean isLocation() {
        return this.linkType == workbookLink;
    }

    @Override // jxl.Hyperlink
    public int getRow() {
        return this.firstRow;
    }

    @Override // jxl.Hyperlink
    public int getColumn() {
        return this.firstColumn;
    }

    @Override // jxl.Hyperlink
    public int getLastRow() {
        return this.lastRow;
    }

    @Override // jxl.Hyperlink
    public int getLastColumn() {
        return this.lastColumn;
    }

    @Override // jxl.Hyperlink
    public URL getURL() {
        return this.url;
    }

    @Override // jxl.Hyperlink
    public java.io.File getFile() {
        return this.file;
    }

    @Override // jxl.biff.RecordData
    public Record getRecord() {
        return super.getRecord();
    }

    @Override // jxl.Hyperlink
    public Range getRange() {
        return this.range;
    }

    public String getLocation() {
        return this.location;
    }
}
