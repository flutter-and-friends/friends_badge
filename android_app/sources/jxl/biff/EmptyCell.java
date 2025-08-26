package jxl.biff;

import jxl.CellFeatures;
import jxl.CellType;
import jxl.format.Alignment;
import jxl.format.CellFormat;
import jxl.write.Border;
import jxl.write.BorderLineStyle;
import jxl.write.VerticalAlignment;
import jxl.write.WritableCell;
import jxl.write.WritableCellFeatures;

/* loaded from: classes2.dex */
public class EmptyCell implements WritableCell {
    private int col;
    private int row;

    @Override // jxl.Cell
    public CellFeatures getCellFeatures() {
        return null;
    }

    @Override // jxl.Cell
    public CellFormat getCellFormat() {
        return null;
    }

    @Override // jxl.Cell
    public String getContents() {
        return "";
    }

    @Override // jxl.write.WritableCell
    public WritableCellFeatures getWritableCellFeatures() {
        return null;
    }

    @Override // jxl.Cell
    public boolean isHidden() {
        return false;
    }

    public void setAlignment(Alignment alignment) {
    }

    public void setBorder(Border border, BorderLineStyle borderLineStyle) {
    }

    @Override // jxl.write.WritableCell
    public void setCellFeatures(WritableCellFeatures writableCellFeatures) {
    }

    public void setCellFormat(jxl.CellFormat cellFormat) {
    }

    @Override // jxl.write.WritableCell
    public void setCellFormat(CellFormat cellFormat) {
    }

    public void setHidden(boolean z) {
    }

    public void setLocked(boolean z) {
    }

    public void setVerticalAlignment(VerticalAlignment verticalAlignment) {
    }

    public EmptyCell(int i, int i2) {
        this.row = i2;
        this.col = i;
    }

    @Override // jxl.Cell
    public int getRow() {
        return this.row;
    }

    @Override // jxl.Cell
    public int getColumn() {
        return this.col;
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.EMPTY;
    }

    @Override // jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new EmptyCell(i, i2);
    }
}
