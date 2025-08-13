package jxl.write.biff;

import jxl.biff.FormattingRecords;
import jxl.biff.IndexMapping;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.biff.XFRecord;

/* loaded from: classes2.dex */
class ColumnInfoRecord extends WritableRecordData {
    private int column;
    private byte[] data;
    private boolean hidden;
    private XFRecord style;
    private int width;
    private int xfIndex;

    public ColumnInfoRecord(int i, int i2, XFRecord xFRecord) {
        super(Type.COLINFO);
        this.column = i;
        this.width = i2;
        this.style = xFRecord;
        this.xfIndex = this.style.getXFIndex();
        this.hidden = false;
    }

    public ColumnInfoRecord(ColumnInfoRecord columnInfoRecord) {
        super(Type.COLINFO);
        this.column = columnInfoRecord.column;
        this.width = columnInfoRecord.width;
        this.style = columnInfoRecord.style;
        this.xfIndex = columnInfoRecord.xfIndex;
        this.hidden = columnInfoRecord.hidden;
    }

    public ColumnInfoRecord(jxl.read.biff.ColumnInfoRecord columnInfoRecord, int i, FormattingRecords formattingRecords) {
        super(Type.COLINFO);
        this.column = i;
        this.width = columnInfoRecord.getWidth();
        this.xfIndex = columnInfoRecord.getXFIndex();
        this.style = formattingRecords.getXFRecord(this.xfIndex);
    }

    public ColumnInfoRecord(jxl.read.biff.ColumnInfoRecord columnInfoRecord, int i) {
        super(Type.COLINFO);
        this.column = i;
        this.width = columnInfoRecord.getWidth();
        this.xfIndex = columnInfoRecord.getXFIndex();
    }

    public int getColumn() {
        return this.column;
    }

    public void incrementColumn() {
        this.column++;
    }

    public void decrementColumn() {
        this.column--;
    }

    int getWidth() {
        return this.width;
    }

    void setWidth(int i) {
        this.width = i;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        this.data = new byte[12];
        IntegerHelper.getTwoBytes(this.column, this.data, 0);
        IntegerHelper.getTwoBytes(this.column, this.data, 2);
        IntegerHelper.getTwoBytes(this.width, this.data, 4);
        IntegerHelper.getTwoBytes(this.xfIndex, this.data, 6);
        IntegerHelper.getTwoBytes(this.hidden ? 7 : 6, this.data, 8);
        return this.data;
    }

    public XFRecord getCellFormat() {
        return this.style;
    }

    public void setCellFormat(XFRecord xFRecord) {
        this.style = xFRecord;
    }

    public int getXfIndex() {
        return this.xfIndex;
    }

    void rationalize(IndexMapping indexMapping) {
        this.xfIndex = indexMapping.getNewIndex(this.xfIndex);
    }

    void setHidden(boolean z) {
        this.hidden = z;
    }

    boolean getHidden() {
        return this.hidden;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ColumnInfoRecord)) {
            return false;
        }
        ColumnInfoRecord columnInfoRecord = (ColumnInfoRecord) obj;
        if (this.column != columnInfoRecord.column || this.xfIndex != columnInfoRecord.xfIndex || this.width != columnInfoRecord.width || this.hidden != columnInfoRecord.hidden) {
            return false;
        }
        if ((this.style != null || columnInfoRecord.style == null) && (this.style == null || columnInfoRecord.style != null)) {
            return this.style.equals(columnInfoRecord.style);
        }
        return false;
    }

    public int hashCode() {
        int i = ((((((10823 + this.column) * 79) + this.xfIndex) * 79) + this.width) * 79) + (this.hidden ? 1 : 0);
        XFRecord xFRecord = this.style;
        return xFRecord != null ? i ^ xFRecord.hashCode() : i;
    }
}
