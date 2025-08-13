package jxl.write;

import java.util.Date;
import jxl.DateCell;
import jxl.format.CellFormat;
import jxl.write.biff.DateRecord;

/* loaded from: classes2.dex */
public class DateTime extends DateRecord implements WritableCell, DateCell {
    public static final DateRecord.GMTDate GMT = new DateRecord.GMTDate();

    public DateTime(int i, int i2, Date date) {
        super(i, i2, date);
    }

    public DateTime(int i, int i2, Date date, DateRecord.GMTDate gMTDate) {
        super(i, i2, date, gMTDate);
    }

    public DateTime(int i, int i2, Date date, CellFormat cellFormat) {
        super(i, i2, date, cellFormat);
    }

    public DateTime(int i, int i2, Date date, CellFormat cellFormat, DateRecord.GMTDate gMTDate) {
        super(i, i2, date, cellFormat, gMTDate);
    }

    public DateTime(int i, int i2, Date date, CellFormat cellFormat, boolean z) {
        super(i, i2, date, cellFormat, z);
    }

    public DateTime(DateCell dateCell) {
        super(dateCell);
    }

    protected DateTime(int i, int i2, DateTime dateTime) {
        super(i, i2, dateTime);
    }

    @Override // jxl.write.biff.DateRecord
    public void setDate(Date date) {
        super.setDate(date);
    }

    @Override // jxl.write.biff.DateRecord
    public void setDate(Date date, DateRecord.GMTDate gMTDate) {
        super.setDate(date, gMTDate);
    }

    @Override // jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new DateTime(i, i2, this);
    }
}
