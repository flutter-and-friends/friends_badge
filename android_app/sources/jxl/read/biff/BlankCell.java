package jxl.read.biff;

import jxl.CellType;
import jxl.biff.FormattingRecords;

/* loaded from: classes2.dex */
public class BlankCell extends CellValue {
    @Override // jxl.Cell
    public String getContents() {
        return "";
    }

    BlankCell(Record record, FormattingRecords formattingRecords, SheetImpl sheetImpl) {
        super(record, formattingRecords, sheetImpl);
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.EMPTY;
    }
}
