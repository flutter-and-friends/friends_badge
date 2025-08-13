package jxl.write.biff;

import cn.highlight.p004tx.app.CmdCenter;
import common.Assert;
import common.Logger;
import java.net.URL;
import java.util.ArrayList;
import jxl.CellType;
import jxl.Hyperlink;
import jxl.Range;
import jxl.biff.CellReferenceHelper;
import jxl.biff.IntegerHelper;
import jxl.biff.SheetRangeImpl;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.write.Label;
import jxl.write.WritableCell;
import jxl.write.WritableSheet;

/* loaded from: classes2.dex */
public class HyperlinkRecord extends WritableRecordData {
    static /* synthetic */ Class class$jxl$write$biff$HyperlinkRecord;
    private static final LinkType fileLink;
    private static Logger logger;
    private static final LinkType uncLink;
    private static final LinkType unknown;
    private static final LinkType urlLink;
    private static final LinkType workbookLink;
    private String contents;
    private byte[] data;
    private java.io.File file;
    private int firstColumn;
    private int firstRow;
    private int lastColumn;
    private int lastRow;
    private LinkType linkType;
    private String location;
    private boolean modified;
    private Range range;
    private WritableSheet sheet;
    private URL url;

    static {
        Class clsClass$ = class$jxl$write$biff$HyperlinkRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.HyperlinkRecord");
            class$jxl$write$biff$HyperlinkRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        urlLink = new LinkType();
        fileLink = new LinkType();
        uncLink = new LinkType();
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

    protected HyperlinkRecord(Hyperlink hyperlink, WritableSheet writableSheet) {
        super(Type.HLINK);
        Assert.verify(hyperlink instanceof jxl.read.biff.HyperlinkRecord);
        jxl.read.biff.HyperlinkRecord hyperlinkRecord = (jxl.read.biff.HyperlinkRecord) hyperlink;
        this.data = hyperlinkRecord.getRecord().getData();
        this.sheet = writableSheet;
        this.firstRow = hyperlinkRecord.getRow();
        this.firstColumn = hyperlinkRecord.getColumn();
        this.lastRow = hyperlinkRecord.getLastRow();
        this.lastColumn = hyperlinkRecord.getLastColumn();
        this.range = new SheetRangeImpl(writableSheet, this.firstColumn, this.firstRow, this.lastColumn, this.lastRow);
        this.linkType = unknown;
        if (hyperlinkRecord.isFile()) {
            this.linkType = fileLink;
            this.file = hyperlinkRecord.getFile();
        } else if (hyperlinkRecord.isURL()) {
            this.linkType = urlLink;
            this.url = hyperlinkRecord.getURL();
        } else if (hyperlinkRecord.isLocation()) {
            this.linkType = workbookLink;
            this.location = hyperlinkRecord.getLocation();
        }
        this.modified = false;
    }

    protected HyperlinkRecord(int i, int i2, int i3, int i4, URL url, String str) {
        super(Type.HLINK);
        this.firstColumn = i;
        this.firstRow = i2;
        this.lastColumn = Math.max(this.firstColumn, i3);
        this.lastRow = Math.max(this.firstRow, i4);
        this.url = url;
        this.contents = str;
        this.linkType = urlLink;
        this.modified = true;
    }

    protected HyperlinkRecord(int i, int i2, int i3, int i4, java.io.File file, String str) {
        super(Type.HLINK);
        this.firstColumn = i;
        this.firstRow = i2;
        this.lastColumn = Math.max(this.firstColumn, i3);
        this.lastRow = Math.max(this.firstRow, i4);
        this.contents = str;
        this.file = file;
        if (file.getPath().startsWith("\\\\")) {
            this.linkType = uncLink;
        } else {
            this.linkType = fileLink;
        }
        this.modified = true;
    }

    protected HyperlinkRecord(int i, int i2, int i3, int i4, String str, WritableSheet writableSheet, int i5, int i6, int i7, int i8) {
        super(Type.HLINK);
        this.firstColumn = i;
        this.firstRow = i2;
        this.lastColumn = Math.max(this.firstColumn, i3);
        this.lastRow = Math.max(this.firstRow, i4);
        setLocation(writableSheet, i5, i6, i7, i8);
        this.contents = str;
        this.linkType = workbookLink;
        this.modified = true;
    }

    public boolean isFile() {
        return this.linkType == fileLink;
    }

    public boolean isUNC() {
        return this.linkType == uncLink;
    }

    public boolean isURL() {
        return this.linkType == urlLink;
    }

    public boolean isLocation() {
        return this.linkType == workbookLink;
    }

    public int getRow() {
        return this.firstRow;
    }

    public int getColumn() {
        return this.firstColumn;
    }

    public int getLastRow() {
        return this.lastRow;
    }

    public int getLastColumn() {
        return this.lastColumn;
    }

    public URL getURL() {
        return this.url;
    }

    public java.io.File getFile() {
        return this.file;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0096  */
    @Override // jxl.biff.WritableRecordData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] getData() {
        /*
            Method dump skipped, instructions count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.write.biff.HyperlinkRecord.getData():byte[]");
    }

    public String toString() {
        if (isFile()) {
            return this.file.toString();
        }
        if (isURL()) {
            return this.url.toString();
        }
        return isUNC() ? this.file.toString() : "";
    }

    public Range getRange() {
        return this.range;
    }

    public void setURL(URL url) {
        URL url2 = this.url;
        this.linkType = urlLink;
        this.file = null;
        this.location = null;
        this.contents = null;
        this.url = url;
        this.modified = true;
        WritableSheet writableSheet = this.sheet;
        if (writableSheet == null) {
            return;
        }
        WritableCell writableCell = writableSheet.getWritableCell(this.firstColumn, this.firstRow);
        if (writableCell.getType() == CellType.LABEL) {
            Label label = (Label) writableCell;
            String string = url2.toString();
            String strSubstring = (string.charAt(string.length() - 1) == '/' || string.charAt(string.length() - 1) == '\\') ? string.substring(0, string.length() - 1) : "";
            if (label.getString().equals(string) || label.getString().equals(strSubstring)) {
                logger.debug("equal");
                label.setString(url.toString());
            }
        }
    }

    public void setFile(java.io.File file) {
        this.linkType = fileLink;
        this.url = null;
        this.location = null;
        this.contents = null;
        this.file = file;
        this.modified = true;
        WritableSheet writableSheet = this.sheet;
        if (writableSheet == null) {
            return;
        }
        WritableCell writableCell = writableSheet.getWritableCell(this.firstColumn, this.firstRow);
        Assert.verify(writableCell.getType() == CellType.LABEL);
        ((Label) writableCell).setString(file.toString());
    }

    protected void setLocation(String str, WritableSheet writableSheet, int i, int i2, int i3, int i4) {
        this.linkType = workbookLink;
        this.url = null;
        this.file = null;
        this.modified = true;
        this.contents = str;
        setLocation(writableSheet, i, i2, i3, i4);
        if (writableSheet == null) {
            return;
        }
        WritableCell writableCell = writableSheet.getWritableCell(this.firstColumn, this.firstRow);
        Assert.verify(writableCell.getType() == CellType.LABEL);
        ((Label) writableCell).setString(str);
    }

    private void setLocation(WritableSheet writableSheet, int i, int i2, int i3, int i4) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('\'');
        if (writableSheet.getName().indexOf(39) == -1) {
            stringBuffer.append(writableSheet.getName());
        } else {
            String name = writableSheet.getName();
            int i5 = 0;
            int iIndexOf = name.indexOf(39, 0);
            while (iIndexOf != -1 && i5 < name.length()) {
                stringBuffer.append(name.substring(i5, iIndexOf));
                stringBuffer.append("''");
                i5 = iIndexOf + 1;
                iIndexOf = name.indexOf(39, i5);
            }
            stringBuffer.append(name.substring(i5));
        }
        stringBuffer.append('\'');
        stringBuffer.append('!');
        int iMax = Math.max(i, i3);
        int iMax2 = Math.max(i2, i4);
        CellReferenceHelper.getCellReference(i, i2, stringBuffer);
        stringBuffer.append(':');
        CellReferenceHelper.getCellReference(iMax, iMax2, stringBuffer);
        this.location = stringBuffer.toString();
    }

    void insertRow(int i) {
        Assert.verify((this.sheet == null || this.range == null) ? false : true);
        if (i > this.lastRow) {
            return;
        }
        int i2 = this.firstRow;
        if (i <= i2) {
            this.firstRow = i2 + 1;
            this.modified = true;
        }
        int i3 = this.lastRow;
        if (i <= i3) {
            this.lastRow = i3 + 1;
            this.modified = true;
        }
        if (this.modified) {
            this.range = new SheetRangeImpl(this.sheet, this.firstColumn, this.firstRow, this.lastColumn, this.lastRow);
        }
    }

    void insertColumn(int i) {
        Assert.verify((this.sheet == null || this.range == null) ? false : true);
        if (i > this.lastColumn) {
            return;
        }
        int i2 = this.firstColumn;
        if (i <= i2) {
            this.firstColumn = i2 + 1;
            this.modified = true;
        }
        int i3 = this.lastColumn;
        if (i <= i3) {
            this.lastColumn = i3 + 1;
            this.modified = true;
        }
        if (this.modified) {
            this.range = new SheetRangeImpl(this.sheet, this.firstColumn, this.firstRow, this.lastColumn, this.lastRow);
        }
    }

    void removeRow(int i) {
        Assert.verify((this.sheet == null || this.range == null) ? false : true);
        if (i > this.lastRow) {
            return;
        }
        int i2 = this.firstRow;
        if (i < i2) {
            this.firstRow = i2 - 1;
            this.modified = true;
        }
        int i3 = this.lastRow;
        if (i < i3) {
            this.lastRow = i3 - 1;
            this.modified = true;
        }
        if (this.modified) {
            Assert.verify(this.range != null);
            this.range = new SheetRangeImpl(this.sheet, this.firstColumn, this.firstRow, this.lastColumn, this.lastRow);
        }
    }

    void removeColumn(int i) {
        Assert.verify((this.sheet == null || this.range == null) ? false : true);
        if (i > this.lastColumn) {
            return;
        }
        int i2 = this.firstColumn;
        if (i < i2) {
            this.firstColumn = i2 - 1;
            this.modified = true;
        }
        int i3 = this.lastColumn;
        if (i < i3) {
            this.lastColumn = i3 - 1;
            this.modified = true;
        }
        if (this.modified) {
            Assert.verify(this.range != null);
            this.range = new SheetRangeImpl(this.sheet, this.firstColumn, this.firstRow, this.lastColumn, this.lastRow);
        }
    }

    private byte[] getURLData(byte[] bArr) {
        String string = this.url.toString();
        int length = bArr.length + 20 + ((string.length() + 1) * 2);
        String str = this.contents;
        if (str != null) {
            length += ((str.length() + 1) * 2) + 4;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int length2 = bArr.length;
        String str2 = this.contents;
        if (str2 != null) {
            IntegerHelper.getFourBytes(str2.length() + 1, bArr2, length2);
            StringHelper.getUnicodeBytes(this.contents, bArr2, length2 + 4);
            length2 += ((this.contents.length() + 1) * 2) + 4;
        }
        bArr2[length2] = -32;
        bArr2[length2 + 1] = -55;
        bArr2[length2 + 2] = -22;
        bArr2[length2 + 3] = 121;
        bArr2[length2 + 4] = -7;
        bArr2[length2 + 5] = -70;
        bArr2[length2 + 6] = -50;
        bArr2[length2 + 7] = CmdCenter.CMD_getCabinetLockStatus;
        bArr2[length2 + 8] = -116;
        bArr2[length2 + 9] = -126;
        bArr2[length2 + 10] = 0;
        bArr2[length2 + 11] = -86;
        bArr2[length2 + 12] = 0;
        bArr2[length2 + 13] = 75;
        bArr2[length2 + 14] = -87;
        bArr2[length2 + 15] = 11;
        IntegerHelper.getFourBytes((string.length() + 1) * 2, bArr2, length2 + 16);
        StringHelper.getUnicodeBytes(string, bArr2, length2 + 20);
        return bArr2;
    }

    private byte[] getUNCData(byte[] bArr) {
        String path = this.file.getPath();
        byte[] bArr2 = new byte[bArr.length + (path.length() * 2) + 2 + 4];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int length = bArr.length;
        IntegerHelper.getFourBytes(path.length() + 1, bArr2, length);
        StringHelper.getUnicodeBytes(path, bArr2, length + 4);
        return bArr2;
    }

    private byte[] getFileData(byte[] bArr) {
        char cCharAt;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add(this.file.getName());
        arrayList2.add(getShortName(this.file.getName()));
        for (java.io.File parentFile = this.file.getParentFile(); parentFile != null; parentFile = parentFile.getParentFile()) {
            arrayList.add(parentFile.getName());
            arrayList2.add(getShortName(parentFile.getName()));
        }
        int size = arrayList.size() - 1;
        boolean z = true;
        int i = 0;
        while (z) {
            if (((String) arrayList.get(size)).equals("..")) {
                i++;
                arrayList.remove(size);
                arrayList2.remove(size);
            } else {
                z = false;
            }
            size--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        if (this.file.getPath().charAt(1) == ':' && (cCharAt = this.file.getPath().charAt(0)) != 'C' && cCharAt != 'c') {
            stringBuffer.append(cCharAt);
            stringBuffer.append(':');
            stringBuffer2.append(cCharAt);
            stringBuffer2.append(':');
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            stringBuffer.append((String) arrayList.get(size2));
            stringBuffer2.append((String) arrayList2.get(size2));
            if (size2 != 0) {
                stringBuffer.append("\\");
                stringBuffer2.append("\\");
            }
        }
        String string = stringBuffer.toString();
        String string2 = stringBuffer2.toString();
        int length = bArr.length + 4 + ((string2.length() + 1) * 2) + 16 + 2 + 4 + string.length() + 1 + 4 + 24;
        String str = this.contents;
        if (str != null) {
            length += ((str.length() + 1) * 2) + 4;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int length2 = bArr.length;
        String str2 = this.contents;
        if (str2 != null) {
            IntegerHelper.getFourBytes(str2.length() + 1, bArr2, length2);
            StringHelper.getUnicodeBytes(this.contents, bArr2, length2 + 4);
            length2 += ((this.contents.length() + 1) * 2) + 4;
        }
        IntegerHelper.getFourBytes(string2.length() + 1, bArr2, length2);
        StringHelper.getUnicodeBytes(string2, bArr2, length2 + 4);
        int length3 = length2 + ((string2.length() + 1) * 2) + 4;
        bArr2[length3] = 3;
        bArr2[length3 + 1] = 3;
        bArr2[length3 + 2] = 0;
        bArr2[length3 + 3] = 0;
        bArr2[length3 + 4] = 0;
        bArr2[length3 + 5] = 0;
        bArr2[length3 + 6] = 0;
        bArr2[length3 + 7] = 0;
        bArr2[length3 + 8] = -64;
        bArr2[length3 + 9] = 0;
        bArr2[length3 + 10] = 0;
        bArr2[length3 + 11] = 0;
        bArr2[length3 + 12] = 0;
        bArr2[length3 + 13] = 0;
        bArr2[length3 + 14] = 0;
        bArr2[length3 + 15] = 70;
        int i2 = length3 + 16;
        IntegerHelper.getTwoBytes(i, bArr2, i2);
        int i3 = i2 + 2;
        IntegerHelper.getFourBytes(string.length() + 1, bArr2, i3);
        int i4 = i3 + 4;
        StringHelper.getBytes(string, bArr2, i4);
        int length4 = i4 + string.length() + 1;
        bArr2[length4] = -1;
        bArr2[length4 + 1] = -1;
        bArr2[length4 + 2] = -83;
        bArr2[length4 + 3] = -34;
        return bArr2;
    }

    private String getShortName(String str) {
        String strSubstring;
        int iIndexOf = str.indexOf(46);
        if (iIndexOf == -1) {
            strSubstring = "";
        } else {
            String strSubstring2 = str.substring(0, iIndexOf);
            strSubstring = str.substring(iIndexOf + 1);
            str = strSubstring2;
        }
        if (str.length() > 8) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str.substring(0, 6));
            stringBuffer.append("~");
            stringBuffer.append(str.length() - 6);
            str = stringBuffer.toString().substring(0, 8);
        }
        String strSubstring3 = strSubstring.substring(0, Math.min(3, strSubstring.length()));
        if (strSubstring3.length() <= 0) {
            return str;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(str);
        stringBuffer2.append('.');
        stringBuffer2.append(strSubstring3);
        return stringBuffer2.toString();
    }

    private byte[] getLocationData(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 4 + ((this.location.length() + 1) * 2)];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int length = bArr.length;
        IntegerHelper.getFourBytes(this.location.length() + 1, bArr2, length);
        StringHelper.getUnicodeBytes(this.location, bArr2, length + 4);
        return bArr2;
    }

    void initialize(WritableSheet writableSheet) {
        this.sheet = writableSheet;
        this.range = new SheetRangeImpl(writableSheet, this.firstColumn, this.firstRow, this.lastColumn, this.lastRow);
    }

    String getContents() {
        return this.contents;
    }

    protected void setContents(String str) {
        this.contents = str;
        this.modified = true;
    }
}
