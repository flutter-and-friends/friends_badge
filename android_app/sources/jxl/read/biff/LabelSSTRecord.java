package jxl.read.biff;

import jxl.CellType;
import jxl.LabelCell;
import jxl.biff.FormattingRecords;
import jxl.biff.IntegerHelper;

/* loaded from: classes2.dex */
class LabelSSTRecord extends CellValue implements LabelCell {
    private int index;
    private String string;

    public LabelSSTRecord(Record record, SSTRecord sSTRecord, FormattingRecords formattingRecords, SheetImpl sheetImpl) {
        super(record, formattingRecords, sheetImpl);
        byte[] data = getRecord().getData();
        this.index = IntegerHelper.getInt(data[6], data[7], data[8], data[9]);
        this.string = sSTRecord.getString(this.index);
    }

    @Override // jxl.LabelCell
    public String getString() {
        return this.string;
    }

    @Override // jxl.Cell
    public String getContents() {
        return this.string;
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.LABEL;
    }
}
