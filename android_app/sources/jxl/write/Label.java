package jxl.write;

import jxl.LabelCell;
import jxl.format.CellFormat;
import jxl.write.biff.LabelRecord;

/* loaded from: classes2.dex */
public class Label extends LabelRecord implements WritableCell, LabelCell {
    public Label(int i, int i2, String str) {
        super(i, i2, str);
    }

    public Label(int i, int i2, String str, CellFormat cellFormat) {
        super(i, i2, str, cellFormat);
    }

    protected Label(int i, int i2, Label label) {
        super(i, i2, label);
    }

    public Label(LabelCell labelCell) {
        super(labelCell);
    }

    @Override // jxl.write.biff.LabelRecord
    public void setString(String str) {
        super.setString(str);
    }

    @Override // jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new Label(i, i2, this);
    }
}
