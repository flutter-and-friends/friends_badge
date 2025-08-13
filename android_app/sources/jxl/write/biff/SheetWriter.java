package jxl.write.biff;

import common.Assert;
import common.Logger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeSet;
import jxl.Cell;
import jxl.Range;
import jxl.SheetSettings;
import jxl.WorkbookSettings;
import jxl.biff.AutoFilter;
import jxl.biff.ConditionalFormat;
import jxl.biff.DataValidation;
import jxl.biff.DataValiditySettingsRecord;
import jxl.biff.WorkspaceInformationRecord;
import jxl.biff.XFRecord;
import jxl.biff.drawing.Chart;
import jxl.biff.drawing.SheetDrawingWriter;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.write.Blank;
import jxl.write.WritableCell;
import jxl.write.WritableCellFormat;
import jxl.write.WritableHyperlink;
import jxl.write.WriteException;

/* loaded from: classes2.dex */
final class SheetWriter {
    static /* synthetic */ Class class$jxl$write$biff$SheetWriter;
    private static Logger logger;
    private AutoFilter autoFilter;
    private ButtonPropertySetRecord buttonPropertySet;
    private ArrayList columnBreaks;
    private TreeSet columnFormats;
    private ArrayList conditionalFormats;
    private DataValidation dataValidation;
    private SheetDrawingWriter drawingWriter;
    private FooterRecord footer;
    private HeaderRecord header;
    private ArrayList hyperlinks;
    private MergedCells mergedCells;
    private int numCols;
    private int numRows;
    private File outputFile;
    private PLSRecord plsRecord;
    private ArrayList rowBreaks;
    private RowRecord[] rows;
    private SheetSettings settings;
    private WritableSheetImpl sheet;
    private ArrayList validatedCells;
    private WorkbookSettings workbookSettings;
    private WorkspaceInformationRecord workspaceOptions = new WorkspaceInformationRecord();
    private boolean chartOnly = false;

    static {
        Class clsClass$ = class$jxl$write$biff$SheetWriter;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.SheetWriter");
            class$jxl$write$biff$SheetWriter = clsClass$;
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

    public SheetWriter(File file, WritableSheetImpl writableSheetImpl, WorkbookSettings workbookSettings) {
        this.outputFile = file;
        this.sheet = writableSheetImpl;
        this.workbookSettings = workbookSettings;
        this.drawingWriter = new SheetDrawingWriter(workbookSettings);
    }

    public void write() throws IOException {
        int i;
        Assert.verify(this.rows != null);
        if (this.chartOnly) {
            this.drawingWriter.write(this.outputFile);
            return;
        }
        this.outputFile.write(new BOFRecord(BOFRecord.sheet));
        int i2 = this.numRows;
        int i3 = i2 / 32;
        if (i2 - (i3 * 32) != 0) {
            i3++;
        }
        int pos = this.outputFile.getPos();
        IndexRecord indexRecord = new IndexRecord(0, this.numRows, i3);
        this.outputFile.write(indexRecord);
        if (this.settings.getAutomaticFormulaCalculation()) {
            this.outputFile.write(new CalcModeRecord(CalcModeRecord.automatic));
        } else {
            this.outputFile.write(new CalcModeRecord(CalcModeRecord.manual));
        }
        this.outputFile.write(new CalcCountRecord(100));
        this.outputFile.write(new RefModeRecord());
        this.outputFile.write(new IterationRecord(false));
        this.outputFile.write(new DeltaRecord(0.001d));
        this.outputFile.write(new SaveRecalcRecord(this.settings.getRecalculateFormulasBeforeSave()));
        this.outputFile.write(new PrintHeadersRecord(this.settings.getPrintHeaders()));
        this.outputFile.write(new PrintGridLinesRecord(this.settings.getPrintGridLines()));
        this.outputFile.write(new GridSetRecord(true));
        this.outputFile.write(new GuttersRecord());
        this.outputFile.write(new DefaultRowHeightRecord(this.settings.getDefaultRowHeight(), this.settings.getDefaultRowHeight() != 255));
        this.workspaceOptions.setFitToPages(this.settings.getFitToPages());
        this.outputFile.write(this.workspaceOptions);
        if (this.rowBreaks.size() > 0) {
            int[] iArr = new int[this.rowBreaks.size()];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr[i4] = ((Integer) this.rowBreaks.get(i4)).intValue();
            }
            this.outputFile.write(new HorizontalPageBreaksRecord(iArr));
        }
        if (this.columnBreaks.size() > 0) {
            int[] iArr2 = new int[this.columnBreaks.size()];
            for (int i5 = 0; i5 < iArr2.length; i5++) {
                iArr2[i5] = ((Integer) this.columnBreaks.get(i5)).intValue();
            }
            this.outputFile.write(new VerticalPageBreaksRecord(iArr2));
        }
        this.outputFile.write(new HeaderRecord(this.settings.getHeader().toString()));
        this.outputFile.write(new FooterRecord(this.settings.getFooter().toString()));
        this.outputFile.write(new HorizontalCentreRecord(this.settings.isHorizontalCentre()));
        this.outputFile.write(new VerticalCentreRecord(this.settings.isVerticalCentre()));
        if (this.settings.getLeftMargin() != this.settings.getDefaultWidthMargin()) {
            this.outputFile.write(new LeftMarginRecord(this.settings.getLeftMargin()));
        }
        if (this.settings.getRightMargin() != this.settings.getDefaultWidthMargin()) {
            this.outputFile.write(new RightMarginRecord(this.settings.getRightMargin()));
        }
        if (this.settings.getTopMargin() != this.settings.getDefaultHeightMargin()) {
            this.outputFile.write(new TopMarginRecord(this.settings.getTopMargin()));
        }
        if (this.settings.getBottomMargin() != this.settings.getDefaultHeightMargin()) {
            this.outputFile.write(new BottomMarginRecord(this.settings.getBottomMargin()));
        }
        PLSRecord pLSRecord = this.plsRecord;
        if (pLSRecord != null) {
            this.outputFile.write(pLSRecord);
        }
        this.outputFile.write(new SetupRecord(this.settings));
        if (this.settings.isProtected()) {
            this.outputFile.write(new ProtectRecord(this.settings.isProtected()));
            this.outputFile.write(new ScenarioProtectRecord(this.settings.isProtected()));
            this.outputFile.write(new ObjectProtectRecord(this.settings.isProtected()));
            if (this.settings.getPassword() != null) {
                this.outputFile.write(new PasswordRecord(this.settings.getPassword()));
            } else if (this.settings.getPasswordHash() != 0) {
                this.outputFile.write(new PasswordRecord(this.settings.getPasswordHash()));
            }
        }
        indexRecord.setDataStartPosition(this.outputFile.getPos());
        this.outputFile.write(new DefaultColumnWidth(this.settings.getDefaultColumnWidth()));
        WritableCellFormat normalStyle = this.sheet.getWorkbook().getStyles().getNormalStyle();
        WritableCellFormat defaultDateFormat = this.sheet.getWorkbook().getStyles().getDefaultDateFormat();
        Iterator it = this.columnFormats.iterator();
        while (it.hasNext()) {
            ColumnInfoRecord columnInfoRecord = (ColumnInfoRecord) it.next();
            if (columnInfoRecord.getColumn() < 256) {
                this.outputFile.write(columnInfoRecord);
            }
            XFRecord cellFormat = columnInfoRecord.getCellFormat();
            if (cellFormat != normalStyle && columnInfoRecord.getColumn() < 256) {
                Cell[] column = getColumn(columnInfoRecord.getColumn());
                for (int i6 = 0; i6 < column.length; i6++) {
                    if (column[i6] != null && (column[i6].getCellFormat() == normalStyle || column[i6].getCellFormat() == defaultDateFormat)) {
                        ((WritableCell) column[i6]).setCellFormat(cellFormat);
                    }
                }
            }
        }
        AutoFilter autoFilter = this.autoFilter;
        if (autoFilter != null) {
            autoFilter.write(this.outputFile);
        }
        this.outputFile.write(new DimensionRecord(this.numRows, this.numCols));
        for (int i7 = 0; i7 < i3; i7++) {
            DBCellRecord dBCellRecord = new DBCellRecord(this.outputFile.getPos());
            int i8 = i7 * 32;
            int iMin = Math.min(32, this.numRows - i8);
            int i9 = i8;
            boolean z = true;
            while (true) {
                i = i8 + iMin;
                if (i9 >= i) {
                    break;
                }
                RowRecord[] rowRecordArr = this.rows;
                if (rowRecordArr[i9] != null) {
                    rowRecordArr[i9].write(this.outputFile);
                    if (z) {
                        dBCellRecord.setCellOffset(this.outputFile.getPos());
                        z = false;
                    }
                }
                i9++;
            }
            while (i8 < i) {
                if (this.rows[i8] != null) {
                    dBCellRecord.addCellRowPosition(this.outputFile.getPos());
                    this.rows[i8].writeCells(this.outputFile);
                }
                i8++;
            }
            indexRecord.addBlockPosition(this.outputFile.getPos());
            dBCellRecord.setPosition(this.outputFile.getPos());
            this.outputFile.write(dBCellRecord);
        }
        if (!this.workbookSettings.getDrawingsDisabled()) {
            this.drawingWriter.write(this.outputFile);
        }
        this.outputFile.write(new Window2Record(this.settings));
        if (this.settings.getHorizontalFreeze() != 0 || this.settings.getVerticalFreeze() != 0) {
            this.outputFile.write(new PaneRecord(this.settings.getHorizontalFreeze(), this.settings.getVerticalFreeze()));
            this.outputFile.write(new SelectionRecord(SelectionRecord.upperLeft, 0, 0));
            if (this.settings.getHorizontalFreeze() != 0) {
                this.outputFile.write(new SelectionRecord(SelectionRecord.upperRight, this.settings.getHorizontalFreeze(), 0));
            }
            if (this.settings.getVerticalFreeze() != 0) {
                this.outputFile.write(new SelectionRecord(SelectionRecord.lowerLeft, 0, this.settings.getVerticalFreeze()));
            }
            if (this.settings.getHorizontalFreeze() != 0 && this.settings.getVerticalFreeze() != 0) {
                this.outputFile.write(new SelectionRecord(SelectionRecord.lowerRight, this.settings.getHorizontalFreeze(), this.settings.getVerticalFreeze()));
            }
            this.outputFile.write(new Weird1Record());
        } else {
            this.outputFile.write(new SelectionRecord(SelectionRecord.upperLeft, 0, 0));
        }
        if (this.settings.getZoomFactor() != 100) {
            this.outputFile.write(new SCLRecord(this.settings.getZoomFactor()));
        }
        this.mergedCells.write(this.outputFile);
        Iterator it2 = this.hyperlinks.iterator();
        while (it2.hasNext()) {
            this.outputFile.write((WritableHyperlink) it2.next());
        }
        ButtonPropertySetRecord buttonPropertySetRecord = this.buttonPropertySet;
        if (buttonPropertySetRecord != null) {
            this.outputFile.write(buttonPropertySetRecord);
        }
        if (this.dataValidation != null || this.validatedCells.size() > 0) {
            writeDataValidation();
        }
        ArrayList arrayList = this.conditionalFormats;
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it3 = this.conditionalFormats.iterator();
            while (it3.hasNext()) {
                ((ConditionalFormat) it3.next()).write(this.outputFile);
            }
        }
        this.outputFile.write(new EOFRecord());
        this.outputFile.setData(indexRecord.getData(), pos + 4);
    }

    final HeaderRecord getHeader() {
        return this.header;
    }

    final FooterRecord getFooter() {
        return this.footer;
    }

    void setWriteData(RowRecord[] rowRecordArr, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, MergedCells mergedCells, TreeSet treeSet) {
        this.rows = rowRecordArr;
        this.rowBreaks = arrayList;
        this.columnBreaks = arrayList2;
        this.hyperlinks = arrayList3;
        this.mergedCells = mergedCells;
        this.columnFormats = treeSet;
    }

    void setDimensions(int i, int i2) {
        this.numRows = i;
        this.numCols = i2;
    }

    void setSettings(SheetSettings sheetSettings) {
        this.settings = sheetSettings;
    }

    WorkspaceInformationRecord getWorkspaceOptions() {
        return this.workspaceOptions;
    }

    void setWorkspaceOptions(WorkspaceInformationRecord workspaceInformationRecord) {
        if (workspaceInformationRecord != null) {
            this.workspaceOptions = workspaceInformationRecord;
        }
    }

    void setCharts(Chart[] chartArr) {
        this.drawingWriter.setCharts(chartArr);
    }

    void setDrawings(ArrayList arrayList, boolean z) {
        this.drawingWriter.setDrawings(arrayList, z);
    }

    Chart[] getCharts() {
        return this.drawingWriter.getCharts();
    }

    void checkMergedBorders() {
        Range[] mergedCells = this.mergedCells.getMergedCells();
        ArrayList arrayList = new ArrayList();
        for (Range range : mergedCells) {
            Cell topLeft = range.getTopLeft();
            XFRecord xFRecord = (XFRecord) topLeft.getCellFormat();
            if (xFRecord != null && xFRecord.hasBorders() && !xFRecord.isRead()) {
                try {
                    CellXFRecord cellXFRecord = new CellXFRecord(xFRecord);
                    Cell bottomRight = range.getBottomRight();
                    cellXFRecord.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                    cellXFRecord.setBorder(Border.LEFT, xFRecord.getBorderLine(Border.LEFT), xFRecord.getBorderColour(Border.LEFT));
                    cellXFRecord.setBorder(Border.TOP, xFRecord.getBorderLine(Border.TOP), xFRecord.getBorderColour(Border.TOP));
                    if (topLeft.getRow() == bottomRight.getRow()) {
                        cellXFRecord.setBorder(Border.BOTTOM, xFRecord.getBorderLine(Border.BOTTOM), xFRecord.getBorderColour(Border.BOTTOM));
                    }
                    if (topLeft.getColumn() == bottomRight.getColumn()) {
                        cellXFRecord.setBorder(Border.RIGHT, xFRecord.getBorderLine(Border.RIGHT), xFRecord.getBorderColour(Border.RIGHT));
                    }
                    int iIndexOf = arrayList.indexOf(cellXFRecord);
                    if (iIndexOf != -1) {
                        cellXFRecord = (CellXFRecord) arrayList.get(iIndexOf);
                    } else {
                        arrayList.add(cellXFRecord);
                    }
                    ((WritableCell) topLeft).setCellFormat(cellXFRecord);
                    if (bottomRight.getRow() > topLeft.getRow()) {
                        if (bottomRight.getColumn() != topLeft.getColumn()) {
                            CellXFRecord cellXFRecord2 = new CellXFRecord(xFRecord);
                            cellXFRecord2.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                            cellXFRecord2.setBorder(Border.LEFT, xFRecord.getBorderLine(Border.LEFT), xFRecord.getBorderColour(Border.LEFT));
                            cellXFRecord2.setBorder(Border.BOTTOM, xFRecord.getBorderLine(Border.BOTTOM), xFRecord.getBorderColour(Border.BOTTOM));
                            int iIndexOf2 = arrayList.indexOf(cellXFRecord2);
                            if (iIndexOf2 != -1) {
                                cellXFRecord2 = (CellXFRecord) arrayList.get(iIndexOf2);
                            } else {
                                arrayList.add(cellXFRecord2);
                            }
                            this.sheet.addCell(new Blank(topLeft.getColumn(), bottomRight.getRow(), cellXFRecord2));
                        }
                        for (int row = topLeft.getRow() + 1; row < bottomRight.getRow(); row++) {
                            CellXFRecord cellXFRecord3 = new CellXFRecord(xFRecord);
                            cellXFRecord3.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                            cellXFRecord3.setBorder(Border.LEFT, xFRecord.getBorderLine(Border.LEFT), xFRecord.getBorderColour(Border.LEFT));
                            if (topLeft.getColumn() == bottomRight.getColumn()) {
                                cellXFRecord3.setBorder(Border.RIGHT, xFRecord.getBorderLine(Border.RIGHT), xFRecord.getBorderColour(Border.RIGHT));
                            }
                            int iIndexOf3 = arrayList.indexOf(cellXFRecord3);
                            if (iIndexOf3 != -1) {
                                cellXFRecord3 = (CellXFRecord) arrayList.get(iIndexOf3);
                            } else {
                                arrayList.add(cellXFRecord3);
                            }
                            this.sheet.addCell(new Blank(topLeft.getColumn(), row, cellXFRecord3));
                        }
                    }
                    if (bottomRight.getColumn() > topLeft.getColumn()) {
                        if (bottomRight.getRow() != topLeft.getRow()) {
                            CellXFRecord cellXFRecord4 = new CellXFRecord(xFRecord);
                            cellXFRecord4.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                            cellXFRecord4.setBorder(Border.RIGHT, xFRecord.getBorderLine(Border.RIGHT), xFRecord.getBorderColour(Border.RIGHT));
                            cellXFRecord4.setBorder(Border.TOP, xFRecord.getBorderLine(Border.TOP), xFRecord.getBorderColour(Border.TOP));
                            int iIndexOf4 = arrayList.indexOf(cellXFRecord4);
                            if (iIndexOf4 != -1) {
                                cellXFRecord4 = (CellXFRecord) arrayList.get(iIndexOf4);
                            } else {
                                arrayList.add(cellXFRecord4);
                            }
                            this.sheet.addCell(new Blank(bottomRight.getColumn(), topLeft.getRow(), cellXFRecord4));
                        }
                        for (int row2 = topLeft.getRow() + 1; row2 < bottomRight.getRow(); row2++) {
                            CellXFRecord cellXFRecord5 = new CellXFRecord(xFRecord);
                            cellXFRecord5.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                            cellXFRecord5.setBorder(Border.RIGHT, xFRecord.getBorderLine(Border.RIGHT), xFRecord.getBorderColour(Border.RIGHT));
                            int iIndexOf5 = arrayList.indexOf(cellXFRecord5);
                            if (iIndexOf5 != -1) {
                                cellXFRecord5 = (CellXFRecord) arrayList.get(iIndexOf5);
                            } else {
                                arrayList.add(cellXFRecord5);
                            }
                            this.sheet.addCell(new Blank(bottomRight.getColumn(), row2, cellXFRecord5));
                        }
                        for (int column = topLeft.getColumn() + 1; column < bottomRight.getColumn(); column++) {
                            CellXFRecord cellXFRecord6 = new CellXFRecord(xFRecord);
                            cellXFRecord6.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                            cellXFRecord6.setBorder(Border.TOP, xFRecord.getBorderLine(Border.TOP), xFRecord.getBorderColour(Border.TOP));
                            if (topLeft.getRow() == bottomRight.getRow()) {
                                cellXFRecord6.setBorder(Border.BOTTOM, xFRecord.getBorderLine(Border.BOTTOM), xFRecord.getBorderColour(Border.BOTTOM));
                            }
                            int iIndexOf6 = arrayList.indexOf(cellXFRecord6);
                            if (iIndexOf6 != -1) {
                                cellXFRecord6 = (CellXFRecord) arrayList.get(iIndexOf6);
                            } else {
                                arrayList.add(cellXFRecord6);
                            }
                            this.sheet.addCell(new Blank(column, topLeft.getRow(), cellXFRecord6));
                        }
                    }
                    if (bottomRight.getColumn() > topLeft.getColumn() || bottomRight.getRow() > topLeft.getRow()) {
                        CellXFRecord cellXFRecord7 = new CellXFRecord(xFRecord);
                        cellXFRecord7.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                        cellXFRecord7.setBorder(Border.RIGHT, xFRecord.getBorderLine(Border.RIGHT), xFRecord.getBorderColour(Border.RIGHT));
                        cellXFRecord7.setBorder(Border.BOTTOM, xFRecord.getBorderLine(Border.BOTTOM), xFRecord.getBorderColour(Border.BOTTOM));
                        if (bottomRight.getRow() == topLeft.getRow()) {
                            cellXFRecord7.setBorder(Border.TOP, xFRecord.getBorderLine(Border.TOP), xFRecord.getBorderColour(Border.TOP));
                        }
                        if (bottomRight.getColumn() == topLeft.getColumn()) {
                            cellXFRecord7.setBorder(Border.LEFT, xFRecord.getBorderLine(Border.LEFT), xFRecord.getBorderColour(Border.LEFT));
                        }
                        int iIndexOf7 = arrayList.indexOf(cellXFRecord7);
                        if (iIndexOf7 != -1) {
                            cellXFRecord7 = (CellXFRecord) arrayList.get(iIndexOf7);
                        } else {
                            arrayList.add(cellXFRecord7);
                        }
                        this.sheet.addCell(new Blank(bottomRight.getColumn(), bottomRight.getRow(), cellXFRecord7));
                        for (int column2 = topLeft.getColumn() + 1; column2 < bottomRight.getColumn(); column2++) {
                            CellXFRecord cellXFRecord8 = new CellXFRecord(xFRecord);
                            cellXFRecord8.setBorder(Border.ALL, BorderLineStyle.NONE, Colour.BLACK);
                            cellXFRecord8.setBorder(Border.BOTTOM, xFRecord.getBorderLine(Border.BOTTOM), xFRecord.getBorderColour(Border.BOTTOM));
                            if (topLeft.getRow() == bottomRight.getRow()) {
                                cellXFRecord8.setBorder(Border.TOP, xFRecord.getBorderLine(Border.TOP), xFRecord.getBorderColour(Border.TOP));
                            }
                            int iIndexOf8 = arrayList.indexOf(cellXFRecord8);
                            if (iIndexOf8 != -1) {
                                cellXFRecord8 = (CellXFRecord) arrayList.get(iIndexOf8);
                            } else {
                                arrayList.add(cellXFRecord8);
                            }
                            this.sheet.addCell(new Blank(column2, bottomRight.getRow(), cellXFRecord8));
                        }
                    }
                } catch (WriteException e) {
                    logger.warn(e.toString());
                }
            }
        }
    }

    private Cell[] getColumn(int i) {
        int i2 = this.numRows - 1;
        boolean z = false;
        while (i2 >= 0 && !z) {
            RowRecord[] rowRecordArr = this.rows;
            if (rowRecordArr[i2] == null || rowRecordArr[i2].getCell(i) == null) {
                i2--;
            } else {
                z = true;
            }
        }
        Cell[] cellArr = new Cell[i2 + 1];
        for (int i3 = 0; i3 <= i2; i3++) {
            RowRecord[] rowRecordArr2 = this.rows;
            cellArr[i3] = rowRecordArr2[i3] != null ? rowRecordArr2[i3].getCell(i) : null;
        }
        return cellArr;
    }

    void setChartOnly() {
        this.chartOnly = true;
    }

    void setPLS(PLSRecord pLSRecord) {
        this.plsRecord = pLSRecord;
    }

    void setButtonPropertySet(ButtonPropertySetRecord buttonPropertySetRecord) {
        this.buttonPropertySet = buttonPropertySetRecord;
    }

    void setDataValidation(DataValidation dataValidation, ArrayList arrayList) {
        this.dataValidation = dataValidation;
        this.validatedCells = arrayList;
    }

    void setConditionalFormats(ArrayList arrayList) {
        this.conditionalFormats = arrayList;
    }

    void setAutoFilter(AutoFilter autoFilter) {
        this.autoFilter = autoFilter;
    }

    private void writeDataValidation() throws IOException {
        if (this.dataValidation != null && this.validatedCells.size() == 0) {
            this.dataValidation.write(this.outputFile);
            return;
        }
        if (this.dataValidation == null && this.validatedCells.size() > 0) {
            this.dataValidation = new DataValidation(this.sheet.getComboBox() != null ? this.sheet.getComboBox().getObjectId() : -1, this.sheet.getWorkbook(), this.sheet.getWorkbook(), this.workbookSettings);
            Iterator it = this.validatedCells.iterator();
            while (it.hasNext()) {
                this.dataValidation.add(new DataValiditySettingsRecord(((CellValue) it.next()).getCellFeatures().getDVParser()));
            }
            this.dataValidation.write(this.outputFile);
            return;
        }
        Iterator it2 = this.validatedCells.iterator();
        while (it2.hasNext()) {
            this.dataValidation.add(new DataValiditySettingsRecord(((CellValue) it2.next()).getCellFeatures().getDVParser()));
        }
        this.dataValidation.write(this.outputFile);
    }
}
