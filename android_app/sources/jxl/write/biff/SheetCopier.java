package jxl.write.biff;

import common.Assert;
import common.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.TreeSet;
import jxl.BooleanCell;
import jxl.Cell;
import jxl.CellType;
import jxl.DateCell;
import jxl.Hyperlink;
import jxl.LabelCell;
import jxl.NumberCell;
import jxl.Range;
import jxl.Sheet;
import jxl.WorkbookSettings;
import jxl.biff.AutoFilter;
import jxl.biff.CellReferenceHelper;
import jxl.biff.ConditionalFormat;
import jxl.biff.DataValidation;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.NumFormatRecordsException;
import jxl.biff.SheetRangeImpl;
import jxl.biff.XFRecord;
import jxl.biff.drawing.Button;
import jxl.biff.drawing.Chart;
import jxl.biff.drawing.ComboBox;
import jxl.biff.drawing.Comment;
import jxl.biff.drawing.Drawing;
import jxl.biff.drawing.DrawingGroupObject;
import jxl.biff.formula.FormulaException;
import jxl.format.CellFormat;
import jxl.read.biff.NameRecord;
import jxl.read.biff.SheetImpl;
import jxl.read.biff.WorkbookParser;
import jxl.write.Blank;
import jxl.write.Boolean;
import jxl.write.DateTime;
import jxl.write.Formula;
import jxl.write.Label;
import jxl.write.Number;
import jxl.write.WritableCell;
import jxl.write.WritableCellFormat;
import jxl.write.WritableHyperlink;
import jxl.write.WritableImage;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

/* loaded from: classes2.dex */
class SheetCopier {
    static /* synthetic */ Class class$jxl$write$biff$SheetCopier;
    private static Logger logger;
    private AutoFilter autoFilter;
    private ButtonPropertySetRecord buttonPropertySet;
    private boolean chartOnly = false;
    private ArrayList columnBreaks;
    private TreeSet columnFormats;
    private ComboBox comboBox;
    private ArrayList conditionalFormats;
    private DataValidation dataValidation;
    private ArrayList drawings;
    private HashMap fonts;
    private FormattingRecords formatRecords;
    private HashMap formats;
    private SheetImpl fromSheet;
    private ArrayList hyperlinks;
    private ArrayList images;
    private MergedCells mergedCells;
    private int numRows;
    private PLSRecord plsRecord;
    private ArrayList rowBreaks;
    private SheetWriter sheetWriter;
    private WritableSheetImpl toSheet;
    private WorkbookSettings workbookSettings;
    private HashMap xfRecords;

    static {
        Class clsClass$ = class$jxl$write$biff$SheetCopier;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.SheetCopier");
            class$jxl$write$biff$SheetCopier = clsClass$;
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

    public SheetCopier(Sheet sheet, WritableSheet writableSheet) {
        this.fromSheet = (SheetImpl) sheet;
        this.toSheet = (WritableSheetImpl) writableSheet;
        this.workbookSettings = this.toSheet.getWorkbook().getSettings();
    }

    void setColumnFormats(TreeSet treeSet) {
        this.columnFormats = treeSet;
    }

    void setFormatRecords(FormattingRecords formattingRecords) {
        this.formatRecords = formattingRecords;
    }

    void setHyperlinks(ArrayList arrayList) {
        this.hyperlinks = arrayList;
    }

    void setMergedCells(MergedCells mergedCells) {
        this.mergedCells = mergedCells;
    }

    void setRowBreaks(ArrayList arrayList) {
        this.rowBreaks = arrayList;
    }

    void setColumnBreaks(ArrayList arrayList) {
        this.columnBreaks = arrayList;
    }

    void setSheetWriter(SheetWriter sheetWriter) {
        this.sheetWriter = sheetWriter;
    }

    void setDrawings(ArrayList arrayList) {
        this.drawings = arrayList;
    }

    void setImages(ArrayList arrayList) {
        this.images = arrayList;
    }

    void setConditionalFormats(ArrayList arrayList) {
        this.conditionalFormats = arrayList;
    }

    AutoFilter getAutoFilter() {
        return this.autoFilter;
    }

    DataValidation getDataValidation() {
        return this.dataValidation;
    }

    ComboBox getComboBox() {
        return this.comboBox;
    }

    PLSRecord getPLSRecord() {
        return this.plsRecord;
    }

    boolean isChartOnly() {
        return this.chartOnly;
    }

    ButtonPropertySetRecord getButtonPropertySet() {
        return this.buttonPropertySet;
    }

    public void copySheet() {
        shallowCopyCells();
        for (jxl.read.biff.ColumnInfoRecord columnInfoRecord : this.fromSheet.getColumnInfos()) {
            for (int startColumn = columnInfoRecord.getStartColumn(); startColumn <= columnInfoRecord.getEndColumn(); startColumn++) {
                ColumnInfoRecord columnInfoRecord2 = new ColumnInfoRecord(columnInfoRecord, startColumn, this.formatRecords);
                columnInfoRecord2.setHidden(columnInfoRecord.getHidden());
                this.columnFormats.add(columnInfoRecord2);
            }
        }
        for (Hyperlink hyperlink : this.fromSheet.getHyperlinks()) {
            this.hyperlinks.add(new WritableHyperlink(hyperlink, this.toSheet));
        }
        for (Range range : this.fromSheet.getMergedCells()) {
            this.mergedCells.add(new SheetRangeImpl((SheetRangeImpl) range, this.toSheet));
        }
        try {
            jxl.read.biff.RowRecord[] rowProperties = this.fromSheet.getRowProperties();
            for (int i = 0; i < rowProperties.length; i++) {
                this.toSheet.getRowRecord(rowProperties[i].getRowNumber()).setRowDetails(rowProperties[i].getRowHeight(), rowProperties[i].matchesDefaultFontHeight(), rowProperties[i].isCollapsed(), rowProperties[i].hasDefaultFormat() ? this.formatRecords.getXFRecord(rowProperties[i].getXFIndex()) : null);
                this.numRows = Math.max(this.numRows, rowProperties[i].getRowNumber() + 1);
            }
        } catch (RowsExceededException unused) {
            Assert.verify(false);
        }
        int[] rowPageBreaks = this.fromSheet.getRowPageBreaks();
        if (rowPageBreaks != null) {
            for (int i2 : rowPageBreaks) {
                this.rowBreaks.add(new Integer(i2));
            }
        }
        int[] columnPageBreaks = this.fromSheet.getColumnPageBreaks();
        if (columnPageBreaks != null) {
            for (int i3 : columnPageBreaks) {
                this.columnBreaks.add(new Integer(i3));
            }
        }
        this.sheetWriter.setCharts(this.fromSheet.getCharts());
        DrawingGroupObject[] drawings = this.fromSheet.getDrawings();
        for (int i4 = 0; i4 < drawings.length; i4++) {
            if (drawings[i4] instanceof Drawing) {
                WritableImage writableImage = new WritableImage(drawings[i4], this.toSheet.getWorkbook().getDrawingGroup());
                this.drawings.add(writableImage);
                this.images.add(writableImage);
            } else if (drawings[i4] instanceof Comment) {
                Comment comment = new Comment(drawings[i4], this.toSheet.getWorkbook().getDrawingGroup(), this.workbookSettings);
                this.drawings.add(comment);
                CellValue cellValue = (CellValue) this.toSheet.getWritableCell(comment.getColumn(), comment.getRow());
                Assert.verify(cellValue.getCellFeatures() != null);
                cellValue.getWritableCellFeatures().setCommentDrawing(comment);
            } else if (drawings[i4] instanceof Button) {
                this.drawings.add(new Button(drawings[i4], this.toSheet.getWorkbook().getDrawingGroup(), this.workbookSettings));
            } else if (drawings[i4] instanceof ComboBox) {
                this.drawings.add(new ComboBox(drawings[i4], this.toSheet.getWorkbook().getDrawingGroup(), this.workbookSettings));
            }
        }
        DataValidation dataValidation = this.fromSheet.getDataValidation();
        if (dataValidation != null) {
            this.dataValidation = new DataValidation(dataValidation, this.toSheet.getWorkbook(), this.toSheet.getWorkbook(), this.workbookSettings);
            int comboBoxObjectId = this.dataValidation.getComboBoxObjectId();
            if (comboBoxObjectId != 0) {
                this.comboBox = (ComboBox) this.drawings.get(comboBoxObjectId);
            }
        }
        ConditionalFormat[] conditionalFormats = this.fromSheet.getConditionalFormats();
        if (conditionalFormats.length > 0) {
            for (ConditionalFormat conditionalFormat : conditionalFormats) {
                this.conditionalFormats.add(conditionalFormat);
            }
        }
        this.autoFilter = this.fromSheet.getAutoFilter();
        this.sheetWriter.setWorkspaceOptions(this.fromSheet.getWorkspaceOptions());
        if (this.fromSheet.getSheetBof().isChart()) {
            this.chartOnly = true;
            this.sheetWriter.setChartOnly();
        }
        if (this.fromSheet.getPLS() != null) {
            if (this.fromSheet.getWorkbookBof().isBiff7()) {
                logger.warn("Cannot copy Biff7 print settings record - ignoring");
            } else {
                this.plsRecord = new PLSRecord(this.fromSheet.getPLS());
            }
        }
        if (this.fromSheet.getButtonPropertySet() != null) {
            this.buttonPropertySet = new ButtonPropertySetRecord(this.fromSheet.getButtonPropertySet());
        }
    }

    public void importSheet() {
        this.xfRecords = new HashMap();
        this.fonts = new HashMap();
        this.formats = new HashMap();
        deepCopyCells();
        for (jxl.read.biff.ColumnInfoRecord columnInfoRecord : this.fromSheet.getColumnInfos()) {
            for (int startColumn = columnInfoRecord.getStartColumn(); startColumn <= columnInfoRecord.getEndColumn(); startColumn++) {
                ColumnInfoRecord columnInfoRecord2 = new ColumnInfoRecord(columnInfoRecord, startColumn);
                WritableCellFormat writableCellFormat = (WritableCellFormat) this.xfRecords.get(new Integer(columnInfoRecord2.getXfIndex()));
                if (writableCellFormat == null) {
                    copyCellFormat(this.fromSheet.getColumnView(startColumn).getFormat());
                }
                columnInfoRecord2.setCellFormat(writableCellFormat);
                columnInfoRecord2.setHidden(columnInfoRecord.getHidden());
                this.columnFormats.add(columnInfoRecord2);
            }
        }
        for (Hyperlink hyperlink : this.fromSheet.getHyperlinks()) {
            this.hyperlinks.add(new WritableHyperlink(hyperlink, this.toSheet));
        }
        for (Range range : this.fromSheet.getMergedCells()) {
            this.mergedCells.add(new SheetRangeImpl((SheetRangeImpl) range, this.toSheet));
        }
        try {
            jxl.read.biff.RowRecord[] rowProperties = this.fromSheet.getRowProperties();
            for (int i = 0; i < rowProperties.length; i++) {
                RowRecord rowRecord = this.toSheet.getRowRecord(rowProperties[i].getRowNumber());
                WritableCellFormat writableCellFormat2 = null;
                jxl.read.biff.RowRecord rowRecord2 = rowProperties[i];
                if (rowRecord2.hasDefaultFormat() && (writableCellFormat2 = (WritableCellFormat) this.xfRecords.get(new Integer(rowRecord2.getXFIndex()))) == null) {
                    copyCellFormat(this.fromSheet.getRowView(rowRecord2.getRowNumber()).getFormat());
                }
                rowRecord.setRowDetails(rowRecord2.getRowHeight(), rowRecord2.matchesDefaultFontHeight(), rowRecord2.isCollapsed(), writableCellFormat2);
                this.numRows = Math.max(this.numRows, rowProperties[i].getRowNumber() + 1);
            }
        } catch (RowsExceededException unused) {
            Assert.verify(false);
        }
        int[] rowPageBreaks = this.fromSheet.getRowPageBreaks();
        if (rowPageBreaks != null) {
            for (int i2 : rowPageBreaks) {
                this.rowBreaks.add(new Integer(i2));
            }
        }
        int[] columnPageBreaks = this.fromSheet.getColumnPageBreaks();
        if (columnPageBreaks != null) {
            for (int i3 : columnPageBreaks) {
                this.columnBreaks.add(new Integer(i3));
            }
        }
        Chart[] charts = this.fromSheet.getCharts();
        if (charts != null && charts.length > 0) {
            logger.warn("Importing of charts is not supported");
        }
        DrawingGroupObject[] drawings = this.fromSheet.getDrawings();
        if (drawings.length > 0 && this.toSheet.getWorkbook().getDrawingGroup() == null) {
            this.toSheet.getWorkbook().createDrawingGroup();
        }
        for (int i4 = 0; i4 < drawings.length; i4++) {
            if (drawings[i4] instanceof Drawing) {
                WritableImage writableImage = new WritableImage(drawings[i4].getX(), drawings[i4].getY(), drawings[i4].getWidth(), drawings[i4].getHeight(), drawings[i4].getImageData());
                this.toSheet.getWorkbook().addDrawing(writableImage);
                this.drawings.add(writableImage);
                this.images.add(writableImage);
            } else if (drawings[i4] instanceof Comment) {
                Comment comment = new Comment(drawings[i4], this.toSheet.getWorkbook().getDrawingGroup(), this.workbookSettings);
                this.drawings.add(comment);
                CellValue cellValue = (CellValue) this.toSheet.getWritableCell(comment.getColumn(), comment.getRow());
                Assert.verify(cellValue.getCellFeatures() != null);
                cellValue.getWritableCellFeatures().setCommentDrawing(comment);
            } else if (drawings[i4] instanceof Button) {
                this.drawings.add(new Button(drawings[i4], this.toSheet.getWorkbook().getDrawingGroup(), this.workbookSettings));
            } else if (drawings[i4] instanceof ComboBox) {
                this.drawings.add(new ComboBox(drawings[i4], this.toSheet.getWorkbook().getDrawingGroup(), this.workbookSettings));
            }
        }
        DataValidation dataValidation = this.fromSheet.getDataValidation();
        if (dataValidation != null) {
            this.dataValidation = new DataValidation(dataValidation, this.toSheet.getWorkbook(), this.toSheet.getWorkbook(), this.workbookSettings);
            int comboBoxObjectId = this.dataValidation.getComboBoxObjectId();
            if (comboBoxObjectId != 0) {
                this.comboBox = (ComboBox) this.drawings.get(comboBoxObjectId);
            }
        }
        this.sheetWriter.setWorkspaceOptions(this.fromSheet.getWorkspaceOptions());
        if (this.fromSheet.getSheetBof().isChart()) {
            this.chartOnly = true;
            this.sheetWriter.setChartOnly();
        }
        if (this.fromSheet.getPLS() != null) {
            if (this.fromSheet.getWorkbookBof().isBiff7()) {
                logger.warn("Cannot copy Biff7 print settings record - ignoring");
            } else {
                this.plsRecord = new PLSRecord(this.fromSheet.getPLS());
            }
        }
        if (this.fromSheet.getButtonPropertySet() != null) {
            this.buttonPropertySet = new ButtonPropertySetRecord(this.fromSheet.getButtonPropertySet());
        }
        importNames();
    }

    private WritableCell shallowCopyCell(Cell cell) {
        CellType type = cell.getType();
        if (type == CellType.LABEL) {
            return new Label((LabelCell) cell);
        }
        if (type == CellType.NUMBER) {
            return new Number((NumberCell) cell);
        }
        if (type == CellType.DATE) {
            return new DateTime((DateCell) cell);
        }
        if (type == CellType.BOOLEAN) {
            return new Boolean((BooleanCell) cell);
        }
        if (type == CellType.NUMBER_FORMULA) {
            return new ReadNumberFormulaRecord((FormulaData) cell);
        }
        if (type == CellType.STRING_FORMULA) {
            return new ReadStringFormulaRecord((FormulaData) cell);
        }
        if (type == CellType.BOOLEAN_FORMULA) {
            return new ReadBooleanFormulaRecord((FormulaData) cell);
        }
        if (type == CellType.DATE_FORMULA) {
            return new ReadDateFormulaRecord((FormulaData) cell);
        }
        if (type == CellType.FORMULA_ERROR) {
            return new ReadErrorFormulaRecord((FormulaData) cell);
        }
        if (type != CellType.EMPTY || cell.getCellFormat() == null) {
            return null;
        }
        return new Blank(cell);
    }

    private WritableCell deepCopyCell(Cell cell) {
        WritableCell writableCellShallowCopyCell = shallowCopyCell(cell);
        if (writableCellShallowCopyCell == null) {
            return writableCellShallowCopyCell;
        }
        if (writableCellShallowCopyCell instanceof ReadFormulaRecord) {
            ReadFormulaRecord readFormulaRecord = (ReadFormulaRecord) writableCellShallowCopyCell;
            if (!readFormulaRecord.handleImportedCellReferences(this.fromSheet.getWorkbook(), this.fromSheet.getWorkbook(), this.workbookSettings)) {
                try {
                    Logger logger2 = logger;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Formula ");
                    stringBuffer.append(readFormulaRecord.getFormula());
                    stringBuffer.append(" in cell ");
                    stringBuffer.append(CellReferenceHelper.getCellReference(cell.getColumn(), cell.getRow()));
                    stringBuffer.append(" cannot be imported because it references another ");
                    stringBuffer.append(" sheet from the source workbook");
                    logger2.warn(stringBuffer.toString());
                } catch (FormulaException e) {
                    Logger logger3 = logger;
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Formula  in cell ");
                    stringBuffer2.append(CellReferenceHelper.getCellReference(cell.getColumn(), cell.getRow()));
                    stringBuffer2.append(" cannot be imported:  ");
                    stringBuffer2.append(e.getMessage());
                    logger3.warn(stringBuffer2.toString());
                }
                writableCellShallowCopyCell = new Formula(cell.getColumn(), cell.getRow(), "\"ERROR\"");
            }
        }
        CellFormat cellFormat = writableCellShallowCopyCell.getCellFormat();
        WritableCellFormat writableCellFormatCopyCellFormat = (WritableCellFormat) this.xfRecords.get(new Integer(((XFRecord) cellFormat).getXFIndex()));
        if (writableCellFormatCopyCellFormat == null) {
            writableCellFormatCopyCellFormat = copyCellFormat(cellFormat);
        }
        writableCellShallowCopyCell.setCellFormat(writableCellFormatCopyCellFormat);
        return writableCellShallowCopyCell;
    }

    void shallowCopyCells() {
        int rows = this.fromSheet.getRows();
        for (int i = 0; i < rows; i++) {
            for (Cell cell : this.fromSheet.getRow(i)) {
                WritableCell writableCellShallowCopyCell = shallowCopyCell(cell);
                if (writableCellShallowCopyCell != null) {
                    try {
                        this.toSheet.addCell(writableCellShallowCopyCell);
                    } catch (WriteException unused) {
                        Assert.verify(false);
                    }
                }
            }
        }
        this.numRows = this.toSheet.getRows();
    }

    void deepCopyCells() {
        int rows = this.fromSheet.getRows();
        for (int i = 0; i < rows; i++) {
            for (Cell cell : this.fromSheet.getRow(i)) {
                WritableCell writableCellDeepCopyCell = deepCopyCell(cell);
                if (writableCellDeepCopyCell != null) {
                    try {
                        this.toSheet.addCell(writableCellDeepCopyCell);
                    } catch (WriteException unused) {
                        Assert.verify(false);
                    }
                }
            }
        }
    }

    private WritableCellFormat copyCellFormat(CellFormat cellFormat) {
        try {
            XFRecord xFRecord = (XFRecord) cellFormat;
            WritableCellFormat writableCellFormat = new WritableCellFormat(xFRecord);
            this.formatRecords.addStyle(writableCellFormat);
            this.xfRecords.put(new Integer(xFRecord.getXFIndex()), writableCellFormat);
            this.fonts.put(new Integer(xFRecord.getFontIndex()), new Integer(writableCellFormat.getFontIndex()));
            this.formats.put(new Integer(xFRecord.getFormatRecord()), new Integer(writableCellFormat.getFormatRecord()));
            return writableCellFormat;
        } catch (NumFormatRecordsException unused) {
            logger.warn("Maximum number of format records exceeded.  Using default format.");
            return WritableWorkbook.NORMAL_STYLE;
        }
    }

    private void importNames() {
        int i;
        WorkbookParser workbook = this.fromSheet.getWorkbook();
        WritableWorkbookImpl workbook2 = this.toSheet.getWorkbook();
        int index = workbook.getIndex(this.fromSheet);
        jxl.read.biff.NameRecord[] nameRecords = workbook.getNameRecords();
        String[] rangeNames = workbook2.getRangeNames();
        for (int i2 = 0; i2 < nameRecords.length; i2++) {
            NameRecord.NameRange[] ranges = nameRecords[i2].getRanges();
            int i3 = 0;
            while (i3 < ranges.length) {
                if (index == workbook.getExternalSheetIndex(ranges[i3].getExternalSheet())) {
                    String name = nameRecords[i2].getName();
                    if (Arrays.binarySearch(rangeNames, name) < 0) {
                        i = i3;
                        workbook2.addNameArea(name, this.toSheet, ranges[i3].getFirstColumn(), ranges[i3].getFirstRow(), ranges[i3].getLastColumn(), ranges[i3].getLastRow());
                    } else {
                        i = i3;
                        Logger logger2 = logger;
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Named range ");
                        stringBuffer.append(name);
                        stringBuffer.append(" is already present in the destination workbook");
                        logger2.warn(stringBuffer.toString());
                    }
                } else {
                    i = i3;
                }
                i3 = i + 1;
            }
        }
    }

    int getRows() {
        return this.numRows;
    }
}
