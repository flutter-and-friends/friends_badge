package jxl.read.biff;

import common.Logger;
import jxl.Cell;
import jxl.CellFeatures;
import jxl.CellType;
import jxl.biff.FormattingRecords;
import jxl.format.CellFormat;

/* loaded from: classes2.dex */
class MulBlankCell implements Cell, CellFeaturesAccessor {
    static /* synthetic */ Class class$jxl$read$biff$MulBlankCell;
    private static Logger logger;
    private CellFormat cellFormat;
    private int column;
    private CellFeatures features;
    private FormattingRecords formattingRecords;
    private boolean initialized = false;
    private int row;
    private SheetImpl sheet;
    private int xfIndex;

    @Override // jxl.Cell
    public String getContents() {
        return "";
    }

    static {
        Class clsClass$ = class$jxl$read$biff$MulBlankCell;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.MulBlankCell");
            class$jxl$read$biff$MulBlankCell = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public MulBlankCell(int i, int i2, int i3, FormattingRecords formattingRecords, SheetImpl sheetImpl) {
        this.row = i;
        this.column = i2;
        this.xfIndex = i3;
        this.formattingRecords = formattingRecords;
        this.sheet = sheetImpl;
    }

    @Override // jxl.Cell
    public final int getRow() {
        return this.row;
    }

    @Override // jxl.Cell
    public final int getColumn() {
        return this.column;
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.EMPTY;
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

    @Override // jxl.Cell
    public CellFeatures getCellFeatures() {
        return this.features;
    }

    @Override // jxl.read.biff.CellFeaturesAccessor
    public void setCellFeatures(CellFeatures cellFeatures) {
        if (this.features != null) {
            logger.warn("current cell features not null - overwriting");
        }
        this.features = cellFeatures;
    }
}
