package jxl.write.biff;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import jxl.CellType;
import jxl.NumberCell;
import jxl.biff.DoubleHelper;
import jxl.biff.Type;
import jxl.biff.XFRecord;
import jxl.format.CellFormat;

/* loaded from: classes2.dex */
public abstract class NumberRecord extends CellValue {
    private static DecimalFormat defaultFormat = new DecimalFormat("#.###");
    private NumberFormat format;
    private double value;

    public NumberFormat getNumberFormat() {
        return null;
    }

    protected NumberRecord(int i, int i2, double d) {
        super(Type.NUMBER, i, i2);
        this.value = d;
    }

    protected NumberRecord(int i, int i2, double d, CellFormat cellFormat) {
        super(Type.NUMBER, i, i2, cellFormat);
        this.value = d;
    }

    protected NumberRecord(NumberCell numberCell) {
        super(Type.NUMBER, numberCell);
        this.value = numberCell.getValue();
    }

    protected NumberRecord(int i, int i2, NumberRecord numberRecord) {
        super(Type.NUMBER, i, i2, numberRecord);
        this.value = numberRecord.value;
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.NUMBER;
    }

    @Override // jxl.write.biff.CellValue, jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] data = super.getData();
        byte[] bArr = new byte[data.length + 8];
        System.arraycopy(data, 0, bArr, 0, data.length);
        DoubleHelper.getIEEEBytes(this.value, bArr, data.length);
        return bArr;
    }

    @Override // jxl.Cell
    public String getContents() {
        if (this.format == null) {
            this.format = ((XFRecord) getCellFormat()).getNumberFormat();
            if (this.format == null) {
                this.format = defaultFormat;
            }
        }
        return this.format.format(this.value);
    }

    public double getValue() {
        return this.value;
    }

    public void setValue(double d) {
        this.value = d;
    }
}
