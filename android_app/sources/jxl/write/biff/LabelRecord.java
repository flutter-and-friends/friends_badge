package jxl.write.biff;

import common.Assert;
import common.Logger;
import jxl.CellType;
import jxl.LabelCell;
import jxl.biff.FormattingRecords;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.format.CellFormat;

/* loaded from: classes2.dex */
public abstract class LabelRecord extends CellValue {
    static /* synthetic */ Class class$jxl$write$biff$LabelRecord;
    private static Logger logger;
    private String contents;
    private int index;
    private SharedStrings sharedStrings;

    static {
        Class clsClass$ = class$jxl$write$biff$LabelRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.LabelRecord");
            class$jxl$write$biff$LabelRecord = clsClass$;
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

    protected LabelRecord(int i, int i2, String str) {
        super(Type.LABELSST, i, i2);
        this.contents = str;
        if (this.contents == null) {
            this.contents = "";
        }
    }

    protected LabelRecord(int i, int i2, String str, CellFormat cellFormat) {
        super(Type.LABELSST, i, i2, cellFormat);
        this.contents = str;
        if (this.contents == null) {
            this.contents = "";
        }
    }

    protected LabelRecord(int i, int i2, LabelRecord labelRecord) {
        super(Type.LABELSST, i, i2, labelRecord);
        this.contents = labelRecord.contents;
    }

    protected LabelRecord(LabelCell labelCell) {
        super(Type.LABELSST, labelCell);
        this.contents = labelCell.getString();
        if (this.contents == null) {
            this.contents = "";
        }
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.LABEL;
    }

    @Override // jxl.write.biff.CellValue, jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] data = super.getData();
        byte[] bArr = new byte[data.length + 4];
        System.arraycopy(data, 0, bArr, 0, data.length);
        IntegerHelper.getFourBytes(this.index, bArr, data.length);
        return bArr;
    }

    @Override // jxl.Cell
    public String getContents() {
        return this.contents;
    }

    public String getString() {
        return this.contents;
    }

    protected void setString(String str) {
        if (str == null) {
            str = "";
        }
        this.contents = str;
        if (isReferenced()) {
            Assert.verify(this.sharedStrings != null);
            this.index = this.sharedStrings.getIndex(this.contents);
            this.contents = this.sharedStrings.get(this.index);
        }
    }

    @Override // jxl.write.biff.CellValue
    void setCellDetails(FormattingRecords formattingRecords, SharedStrings sharedStrings, WritableSheetImpl writableSheetImpl) {
        super.setCellDetails(formattingRecords, sharedStrings, writableSheetImpl);
        this.sharedStrings = sharedStrings;
        this.index = this.sharedStrings.getIndex(this.contents);
        this.contents = this.sharedStrings.get(this.index);
    }
}
