package jxl.read.biff;

import common.Assert;
import common.Logger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import jxl.CellFeatures;
import jxl.CellType;
import jxl.DateCell;
import jxl.NumberCell;
import jxl.biff.FormattingRecords;
import jxl.format.CellFormat;

/* loaded from: classes2.dex */
class DateRecord implements DateCell, CellFeaturesAccessor {
    static /* synthetic */ Class class$jxl$read$biff$DateRecord = null;
    private static final SimpleDateFormat dateFormat;
    private static final TimeZone gmtZone;
    private static Logger logger = null;
    private static final long msInADay = 86400000;
    private static final long msInASecond = 1000;
    private static final int nonLeapDay = 61;
    private static final long secondsInADay = 86400;
    private static final SimpleDateFormat timeFormat;
    private static final int utcOffsetDays = 25569;
    private static final int utcOffsetDays1904 = 24107;
    private CellFormat cellFormat;
    private int column;
    private Date date;
    private CellFeatures features;
    private DateFormat format;
    private FormattingRecords formattingRecords;
    private boolean initialized = false;
    private int row;
    private SheetImpl sheet;
    private boolean time;
    private int xfIndex;

    static {
        Class clsClass$ = class$jxl$read$biff$DateRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.DateRecord");
            class$jxl$read$biff$DateRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        dateFormat = new SimpleDateFormat("dd MMM yyyy");
        timeFormat = new SimpleDateFormat("HH:mm:ss");
        gmtZone = TimeZone.getTimeZone("GMT");
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public DateRecord(NumberCell numberCell, int i, FormattingRecords formattingRecords, boolean z, SheetImpl sheetImpl) {
        this.row = numberCell.getRow();
        this.column = numberCell.getColumn();
        this.xfIndex = i;
        this.formattingRecords = formattingRecords;
        this.sheet = sheetImpl;
        this.format = this.formattingRecords.getDateFormat(this.xfIndex);
        double value = numberCell.getValue();
        if (Math.abs(value) < 1.0d) {
            if (this.format == null) {
                this.format = timeFormat;
            }
            this.time = true;
        } else {
            if (this.format == null) {
                this.format = dateFormat;
            }
            this.time = false;
        }
        if (!z && !this.time && value < 61.0d) {
            value += 1.0d;
        }
        this.format.setTimeZone(gmtZone);
        this.date = new Date(Math.round((value - (z ? utcOffsetDays1904 : utcOffsetDays)) * 86400.0d) * msInASecond);
    }

    @Override // jxl.Cell
    public final int getRow() {
        return this.row;
    }

    @Override // jxl.Cell
    public final int getColumn() {
        return this.column;
    }

    @Override // jxl.DateCell
    public Date getDate() {
        return this.date;
    }

    @Override // jxl.Cell
    public String getContents() {
        return this.format.format(this.date);
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.DATE;
    }

    @Override // jxl.DateCell
    public boolean isTime() {
        return this.time;
    }

    @Override // jxl.DateCell
    public DateFormat getDateFormat() {
        Assert.verify(this.format != null);
        return this.format;
    }

    @Override // jxl.Cell
    public CellFormat getCellFormat() {
        if (!this.initialized) {
            this.cellFormat = this.formattingRecords.getXFRecord(this.xfIndex);
            this.initialized = true;
        }
        return this.cellFormat;
    }

    @Override // jxl.Cell
    public boolean isHidden() {
        ColumnInfoRecord columnInfo = this.sheet.getColumnInfo(this.column);
        if (columnInfo != null && columnInfo.getWidth() == 0) {
            return true;
        }
        RowRecord rowInfo = this.sheet.getRowInfo(this.row);
        if (rowInfo != null) {
            return rowInfo.getRowHeight() == 0 || rowInfo.isCollapsed();
        }
        return false;
    }

    protected final SheetImpl getSheet() {
        return this.sheet;
    }

    @Override // jxl.Cell
    public CellFeatures getCellFeatures() {
        return this.features;
    }

    @Override // jxl.read.biff.CellFeaturesAccessor
    public void setCellFeatures(CellFeatures cellFeatures) {
        this.features = cellFeatures;
    }
}
