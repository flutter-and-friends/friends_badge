package jxl.write.biff;

import jxl.biff.DisplayFormat;
import jxl.biff.FontRecord;
import jxl.biff.XFRecord;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.CellFormat;
import jxl.format.Colour;
import jxl.format.Orientation;
import jxl.format.Pattern;
import jxl.format.VerticalAlignment;
import jxl.write.WriteException;

/* loaded from: classes2.dex */
public class CellXFRecord extends XFRecord {
    protected CellXFRecord(FontRecord fontRecord, DisplayFormat displayFormat) {
        super(fontRecord, displayFormat);
        setXFDetails(XFRecord.cell, 0);
    }

    CellXFRecord(XFRecord xFRecord) {
        super(xFRecord);
        setXFDetails(XFRecord.cell, 0);
    }

    protected CellXFRecord(CellFormat cellFormat) {
        super(cellFormat);
    }

    public void setAlignment(Alignment alignment) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFAlignment(alignment);
    }

    public void setBackground(Colour colour, Pattern pattern) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFBackground(colour, pattern);
        super.setXFCellOptions(16384);
    }

    public void setLocked(boolean z) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFLocked(z);
        super.setXFCellOptions(32768);
    }

    public void setIndentation(int i) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFIndentation(i);
    }

    public void setShrinkToFit(boolean z) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFShrinkToFit(z);
    }

    public void setVerticalAlignment(VerticalAlignment verticalAlignment) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFVerticalAlignment(verticalAlignment);
    }

    public void setOrientation(Orientation orientation) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFOrientation(orientation);
    }

    public void setWrap(boolean z) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setXFWrap(z);
    }

    public void setBorder(Border border, BorderLineStyle borderLineStyle, Colour colour) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        if (border == Border.ALL) {
            super.setXFBorder(Border.LEFT, borderLineStyle, colour);
            super.setXFBorder(Border.RIGHT, borderLineStyle, colour);
            super.setXFBorder(Border.TOP, borderLineStyle, colour);
            super.setXFBorder(Border.BOTTOM, borderLineStyle, colour);
            return;
        }
        if (border == Border.NONE) {
            super.setXFBorder(Border.LEFT, BorderLineStyle.NONE, Colour.BLACK);
            super.setXFBorder(Border.RIGHT, BorderLineStyle.NONE, Colour.BLACK);
            super.setXFBorder(Border.TOP, BorderLineStyle.NONE, Colour.BLACK);
            super.setXFBorder(Border.BOTTOM, BorderLineStyle.NONE, Colour.BLACK);
            return;
        }
        super.setXFBorder(border, borderLineStyle, colour);
    }
}
