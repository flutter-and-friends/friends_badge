package jxl.write;

import jxl.biff.DisplayFormat;
import jxl.format.CellFormat;
import jxl.format.Orientation;
import jxl.write.biff.CellXFRecord;

/* loaded from: classes2.dex */
public class WritableCellFormat extends CellXFRecord {
    public WritableCellFormat() {
        this(WritableWorkbook.ARIAL_10_PT, NumberFormats.DEFAULT);
    }

    public WritableCellFormat(WritableFont writableFont) {
        this(writableFont, NumberFormats.DEFAULT);
    }

    public WritableCellFormat(DisplayFormat displayFormat) {
        this(WritableWorkbook.ARIAL_10_PT, displayFormat);
    }

    public WritableCellFormat(WritableFont writableFont, DisplayFormat displayFormat) {
        super(writableFont, displayFormat);
    }

    public WritableCellFormat(CellFormat cellFormat) {
        super(cellFormat);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setAlignment(jxl.format.Alignment alignment) throws WriteException {
        super.setAlignment(alignment);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setVerticalAlignment(jxl.format.VerticalAlignment verticalAlignment) throws WriteException {
        super.setVerticalAlignment(verticalAlignment);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setOrientation(Orientation orientation) throws WriteException {
        super.setOrientation(orientation);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setWrap(boolean z) throws WriteException {
        super.setWrap(z);
    }

    public void setBorder(jxl.format.Border border, jxl.format.BorderLineStyle borderLineStyle) throws WriteException {
        super.setBorder(border, borderLineStyle, jxl.format.Colour.BLACK);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setBorder(jxl.format.Border border, jxl.format.BorderLineStyle borderLineStyle, jxl.format.Colour colour) throws WriteException {
        super.setBorder(border, borderLineStyle, colour);
    }

    public void setBackground(jxl.format.Colour colour) throws WriteException {
        setBackground(colour, jxl.format.Pattern.SOLID);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setBackground(jxl.format.Colour colour, jxl.format.Pattern pattern) throws WriteException {
        super.setBackground(colour, pattern);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setShrinkToFit(boolean z) throws WriteException {
        super.setShrinkToFit(z);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setIndentation(int i) throws WriteException {
        super.setIndentation(i);
    }

    @Override // jxl.write.biff.CellXFRecord
    public void setLocked(boolean z) throws WriteException {
        super.setLocked(z);
    }
}
