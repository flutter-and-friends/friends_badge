package jxl.write.biff;

import jxl.biff.FontRecord;
import jxl.format.Font;
import jxl.write.WriteException;

/* loaded from: classes2.dex */
public class WritableFontRecord extends FontRecord {
    protected WritableFontRecord(String str, int i, int i2, boolean z, int i3, int i4, int i5) {
        super(str, i, i2, z, i3, i4, i5);
    }

    protected WritableFontRecord(Font font) {
        super(font);
    }

    protected void setPointSize(int i) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setFontPointSize(i);
    }

    protected void setBoldStyle(int i) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setFontBoldStyle(i);
    }

    protected void setItalic(boolean z) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setFontItalic(z);
    }

    protected void setUnderlineStyle(int i) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setFontUnderlineStyle(i);
    }

    protected void setColour(int i) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setFontColour(i);
    }

    protected void setScriptStyle(int i) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setFontScriptStyle(i);
    }

    protected void setStruckout(boolean z) throws WriteException {
        if (isInitialized()) {
            throw new JxlWriteException(JxlWriteException.formatInitialized);
        }
        super.setFontStruckout(z);
    }
}
