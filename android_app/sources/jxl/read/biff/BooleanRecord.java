package jxl.read.biff;

import common.Assert;
import jxl.BooleanCell;
import jxl.CellType;
import jxl.biff.FormattingRecords;

/* loaded from: classes2.dex */
class BooleanRecord extends CellValue implements BooleanCell {
    private boolean error;
    private boolean value;

    public BooleanRecord(Record record, FormattingRecords formattingRecords, SheetImpl sheetImpl) {
        super(record, formattingRecords, sheetImpl);
        this.error = false;
        this.value = false;
        byte[] data = getRecord().getData();
        this.error = data[7] == 1;
        if (this.error) {
            return;
        }
        this.value = data[6] == 1;
    }

    public boolean isError() {
        return this.error;
    }

    @Override // jxl.BooleanCell
    public boolean getValue() {
        return this.value;
    }

    @Override // jxl.Cell
    public String getContents() {
        Assert.verify(!isError());
        return new Boolean(this.value).toString();
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.BOOLEAN;
    }

    @Override // jxl.biff.RecordData
    public Record getRecord() {
        return super.getRecord();
    }
}
