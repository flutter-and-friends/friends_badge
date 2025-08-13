package jxl.write.biff;

import jxl.biff.DisplayFormat;
import jxl.biff.FontRecord;
import jxl.biff.XFRecord;

/* loaded from: classes2.dex */
public class StyleXFRecord extends XFRecord {
    public StyleXFRecord(FontRecord fontRecord, DisplayFormat displayFormat) {
        super(fontRecord, displayFormat);
        setXFDetails(XFRecord.style, 65520);
    }

    public final void setCellOptions(int i) {
        super.setXFCellOptions(i);
    }

    public void setLocked(boolean z) {
        super.setXFLocked(z);
    }
}
