package jxl.read.biff;

import common.Assert;
import common.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import jxl.Cell;
import jxl.CellFeatures;
import jxl.CellReferenceHelper;
import jxl.CellType;
import jxl.Range;
import jxl.SheetSettings;
import jxl.WorkbookSettings;
import jxl.biff.AutoFilter;
import jxl.biff.ContinueRecord;
import jxl.biff.DataValidation;
import jxl.biff.DataValiditySettingsRecord;
import jxl.biff.FormattingRecords;
import jxl.biff.Type;
import jxl.biff.WorkspaceInformationRecord;
import jxl.biff.drawing.Button;
import jxl.biff.drawing.ComboBox;
import jxl.biff.drawing.Comment;
import jxl.biff.drawing.Drawing;
import jxl.biff.drawing.DrawingData;
import jxl.biff.drawing.DrawingDataException;
import jxl.biff.drawing.MsoDrawingRecord;
import jxl.biff.drawing.ObjRecord;
import jxl.biff.drawing.TextObjectRecord;
import jxl.biff.formula.FormulaException;

/* loaded from: classes2.dex */
final class SheetReader {
    static /* synthetic */ Class class$jxl$read$biff$SheetReader;
    private static Logger logger;
    private AutoFilter autoFilter;
    private ButtonPropertySetRecord buttonPropertySet;
    private Cell[][] cells;
    private int[] columnBreaks;
    private DataValidation dataValidation;
    private DrawingData drawingData;
    private File excelFile;
    private FormattingRecords formattingRecords;
    private Range[] mergedCells;
    private boolean nineteenFour;
    private int numCols;
    private int numRows;
    private PLSRecord plsRecord;
    private int[] rowBreaks;
    private SheetSettings settings;
    private SSTRecord sharedStrings;
    private SheetImpl sheet;
    private BOFRecord sheetBof;
    private int startPosition;
    private WorkbookParser workbook;
    private BOFRecord workbookBof;
    private WorkbookSettings workbookSettings;
    private WorkspaceInformationRecord workspaceOptions;
    private ArrayList columnInfosArray = new ArrayList();
    private ArrayList sharedFormulas = new ArrayList();
    private ArrayList hyperlinks = new ArrayList();
    private ArrayList conditionalFormats = new ArrayList();
    private ArrayList rowProperties = new ArrayList(10);
    private ArrayList charts = new ArrayList();
    private ArrayList drawings = new ArrayList();
    private ArrayList outOfBoundsCells = new ArrayList();

    static {
        Class clsClass$ = class$jxl$read$biff$SheetReader;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.SheetReader");
            class$jxl$read$biff$SheetReader = clsClass$;
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

    SheetReader(File file, SSTRecord sSTRecord, FormattingRecords formattingRecords, BOFRecord bOFRecord, BOFRecord bOFRecord2, boolean z, WorkbookParser workbookParser, int i, SheetImpl sheetImpl) {
        this.excelFile = file;
        this.sharedStrings = sSTRecord;
        this.formattingRecords = formattingRecords;
        this.sheetBof = bOFRecord;
        this.workbookBof = bOFRecord2;
        this.nineteenFour = z;
        this.workbook = workbookParser;
        this.startPosition = i;
        this.sheet = sheetImpl;
        this.settings = new SheetSettings(sheetImpl);
        this.workbookSettings = this.workbook.getSettings();
    }

    private void addCell(Cell cell) {
        if (cell.getRow() < this.numRows && cell.getColumn() < this.numCols) {
            if (this.cells[cell.getRow()][cell.getColumn()] != null) {
                StringBuffer stringBuffer = new StringBuffer();
                CellReferenceHelper.getCellReference(cell.getColumn(), cell.getRow(), stringBuffer);
                Logger logger2 = logger;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Cell ");
                stringBuffer2.append(stringBuffer.toString());
                stringBuffer2.append(" already contains data");
                logger2.warn(stringBuffer2.toString());
            }
            this.cells[cell.getRow()][cell.getColumn()] = cell;
            return;
        }
        this.outOfBoundsCells.add(cell);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0351  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void read() {
        /*
            Method dump skipped, instructions count: 2703
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: jxl.read.biff.SheetReader.read():void");
    }

    private boolean addToSharedFormulas(BaseSharedFormulaRecord baseSharedFormulaRecord) {
        int size = this.sharedFormulas.size();
        boolean zAdd = false;
        for (int i = 0; i < size && !zAdd; i++) {
            zAdd = ((SharedFormulaRecord) this.sharedFormulas.get(i)).add(baseSharedFormulaRecord);
        }
        return zAdd;
    }

    private Cell revertSharedFormula(BaseSharedFormulaRecord baseSharedFormulaRecord) {
        int pos = this.excelFile.getPos();
        this.excelFile.setPos(baseSharedFormulaRecord.getFilePos());
        Record record = baseSharedFormulaRecord.getRecord();
        File file = this.excelFile;
        FormattingRecords formattingRecords = this.formattingRecords;
        WorkbookParser workbookParser = this.workbook;
        FormulaRecord formulaRecord = new FormulaRecord(record, file, formattingRecords, workbookParser, workbookParser, FormulaRecord.ignoreSharedFormula, this.sheet, this.workbookSettings);
        try {
            Cell formula = formulaRecord.getFormula();
            if (formulaRecord.getFormula().getType() == CellType.NUMBER_FORMULA) {
                NumberFormulaRecord numberFormulaRecord = (NumberFormulaRecord) formulaRecord.getFormula();
                if (this.formattingRecords.isDate(formulaRecord.getXFIndex())) {
                    formula = new DateFormulaRecord(numberFormulaRecord, this.formattingRecords, this.workbook, this.workbook, this.nineteenFour, this.sheet);
                }
            }
            this.excelFile.setPos(pos);
            return formula;
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(CellReferenceHelper.getCellReference(formulaRecord.getColumn(), formulaRecord.getRow()));
            stringBuffer.append(" ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
            return null;
        }
    }

    final int getNumRows() {
        return this.numRows;
    }

    final int getNumCols() {
        return this.numCols;
    }

    final Cell[][] getCells() {
        return this.cells;
    }

    final ArrayList getRowProperties() {
        return this.rowProperties;
    }

    final ArrayList getColumnInfosArray() {
        return this.columnInfosArray;
    }

    final ArrayList getHyperlinks() {
        return this.hyperlinks;
    }

    final ArrayList getConditionalFormats() {
        return this.conditionalFormats;
    }

    final AutoFilter getAutoFilter() {
        return this.autoFilter;
    }

    final ArrayList getCharts() {
        return this.charts;
    }

    final ArrayList getDrawings() {
        return this.drawings;
    }

    final DataValidation getDataValidation() {
        return this.dataValidation;
    }

    final Range[] getMergedCells() {
        return this.mergedCells;
    }

    final SheetSettings getSettings() {
        return this.settings;
    }

    final int[] getRowBreaks() {
        return this.rowBreaks;
    }

    final int[] getColumnBreaks() {
        return this.columnBreaks;
    }

    final WorkspaceInformationRecord getWorkspaceOptions() {
        return this.workspaceOptions;
    }

    final PLSRecord getPLS() {
        return this.plsRecord;
    }

    final ButtonPropertySetRecord getButtonPropertySet() {
        return this.buttonPropertySet;
    }

    private void addCellComment(int i, int i2, String str, double d, double d2) {
        Cell cell = this.cells[i2][i];
        if (cell == null) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Cell at ");
            stringBuffer.append(CellReferenceHelper.getCellReference(i, i2));
            stringBuffer.append(" not present - adding a blank");
            logger2.warn(stringBuffer.toString());
            MulBlankCell mulBlankCell = new MulBlankCell(i2, i, 0, this.formattingRecords, this.sheet);
            CellFeatures cellFeatures = new CellFeatures();
            cellFeatures.setReadComment(str, d, d2);
            mulBlankCell.setCellFeatures(cellFeatures);
            addCell(mulBlankCell);
            return;
        }
        if (cell instanceof CellFeaturesAccessor) {
            CellFeaturesAccessor cellFeaturesAccessor = (CellFeaturesAccessor) cell;
            CellFeatures cellFeatures2 = cellFeaturesAccessor.getCellFeatures();
            if (cellFeatures2 == null) {
                cellFeatures2 = new CellFeatures();
                cellFeaturesAccessor.setCellFeatures(cellFeatures2);
            }
            cellFeatures2.setReadComment(str, d, d2);
            return;
        }
        Logger logger3 = logger;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Not able to add comment to cell type ");
        stringBuffer2.append(cell.getClass().getName());
        stringBuffer2.append(" at ");
        stringBuffer2.append(CellReferenceHelper.getCellReference(i, i2));
        logger3.warn(stringBuffer2.toString());
    }

    private void addCellValidation(int i, int i2, int i3, int i4, DataValiditySettingsRecord dataValiditySettingsRecord) {
        for (int i5 = i2; i5 <= i4; i5++) {
            for (int i6 = i; i6 <= i3; i6++) {
                Cell cell = null;
                Cell[][] cellArr = this.cells;
                if (cellArr.length > i5 && cellArr[i5].length > i6) {
                    cell = cellArr[i5][i6];
                }
                if (cell == null) {
                    Logger logger2 = logger;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Cell at ");
                    stringBuffer.append(CellReferenceHelper.getCellReference(i6, i5));
                    stringBuffer.append(" not present - adding a blank");
                    logger2.warn(stringBuffer.toString());
                    MulBlankCell mulBlankCell = new MulBlankCell(i5, i6, 0, this.formattingRecords, this.sheet);
                    CellFeatures cellFeatures = new CellFeatures();
                    cellFeatures.setValidationSettings(dataValiditySettingsRecord);
                    mulBlankCell.setCellFeatures(cellFeatures);
                    addCell(mulBlankCell);
                    return;
                }
                if (cell instanceof CellFeaturesAccessor) {
                    CellFeaturesAccessor cellFeaturesAccessor = (CellFeaturesAccessor) cell;
                    CellFeatures cellFeatures2 = cellFeaturesAccessor.getCellFeatures();
                    if (cellFeatures2 == null) {
                        cellFeatures2 = new CellFeatures();
                        cellFeaturesAccessor.setCellFeatures(cellFeatures2);
                    }
                    cellFeatures2.setValidationSettings(dataValiditySettingsRecord);
                } else {
                    Logger logger3 = logger;
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Not able to add comment to cell type ");
                    stringBuffer2.append(cell.getClass().getName());
                    stringBuffer2.append(" at ");
                    stringBuffer2.append(CellReferenceHelper.getCellReference(i6, i5));
                    logger3.warn(stringBuffer2.toString());
                }
            }
        }
    }

    private void handleObjectRecord(ObjRecord objRecord, MsoDrawingRecord msoDrawingRecord, HashMap map) {
        if (msoDrawingRecord == null) {
            logger.warn("Object record is not associated with a drawing  record - ignoring");
            return;
        }
        try {
            if (objRecord.getType() == ObjRecord.PICTURE) {
                if (this.drawingData == null) {
                    this.drawingData = new DrawingData();
                }
                this.drawings.add(new Drawing(msoDrawingRecord, objRecord, this.drawingData, this.workbook.getDrawingGroup(), this.sheet));
                return;
            }
            if (objRecord.getType() == ObjRecord.EXCELNOTE) {
                if (this.drawingData == null) {
                    this.drawingData = new DrawingData();
                }
                Comment comment = new Comment(msoDrawingRecord, objRecord, this.drawingData, this.workbook.getDrawingGroup(), this.workbookSettings);
                Record next = this.excelFile.next();
                if (next.getType() == Type.MSODRAWING) {
                    comment.addMso(new MsoDrawingRecord(next));
                    next = this.excelFile.next();
                }
                Assert.verify(next.getType() == Type.TXO);
                comment.setTextObject(new TextObjectRecord(next));
                Record next2 = this.excelFile.next();
                Assert.verify(next2.getType() == Type.CONTINUE);
                comment.setText(new ContinueRecord(next2));
                Record next3 = this.excelFile.next();
                if (next3.getType() == Type.CONTINUE) {
                    comment.setFormatting(new ContinueRecord(next3));
                }
                map.put(new Integer(comment.getObjectId()), comment);
                return;
            }
            if (objRecord.getType() == ObjRecord.COMBOBOX) {
                if (this.drawingData == null) {
                    this.drawingData = new DrawingData();
                }
                this.drawings.add(new ComboBox(msoDrawingRecord, objRecord, this.drawingData, this.workbook.getDrawingGroup(), this.workbookSettings));
                return;
            }
            if (objRecord.getType() == ObjRecord.BUTTON) {
                if (this.drawingData == null) {
                    this.drawingData = new DrawingData();
                }
                Button button = new Button(msoDrawingRecord, objRecord, this.drawingData, this.workbook.getDrawingGroup(), this.workbookSettings);
                Record next4 = this.excelFile.next();
                if (next4.getType() == Type.MSODRAWING) {
                    button.addMso(new MsoDrawingRecord(next4));
                    next4 = this.excelFile.next();
                }
                Assert.verify(next4.getType() == Type.TXO);
                button.setTextObject(new TextObjectRecord(next4));
                Record next5 = this.excelFile.next();
                Assert.verify(next5.getType() == Type.CONTINUE);
                button.setText(new ContinueRecord(next5));
                Record next6 = this.excelFile.next();
                if (next6.getType() == Type.CONTINUE) {
                    button.setFormatting(new ContinueRecord(next6));
                }
                this.drawings.add(button);
                return;
            }
            if (objRecord.getType() != ObjRecord.CHART) {
                Logger logger2 = logger;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(objRecord.getType());
                stringBuffer.append(" on sheet \"");
                stringBuffer.append(this.sheet.getName());
                stringBuffer.append("\" not supported - omitting");
                logger2.warn(stringBuffer.toString());
                if (this.drawingData == null) {
                    this.drawingData = new DrawingData();
                }
                this.drawingData.addData(msoDrawingRecord.getData());
                if (this.workbook.getDrawingGroup() != null) {
                    this.workbook.getDrawingGroup().setDrawingsOmitted(msoDrawingRecord, objRecord);
                }
            }
        } catch (DrawingDataException e) {
            Logger logger3 = logger;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(e.getMessage());
            stringBuffer2.append("...disabling drawings for the remainder of the workbook");
            logger3.warn(stringBuffer2.toString());
            this.workbookSettings.setDrawingsDisabled(true);
        }
    }

    DrawingData getDrawingData() {
        return this.drawingData;
    }

    private void handleOutOfBoundsCells() {
        int iMax = this.numRows;
        int iMax2 = this.numCols;
        Iterator it = this.outOfBoundsCells.iterator();
        while (it.hasNext()) {
            Cell cell = (Cell) it.next();
            iMax = Math.max(iMax, cell.getRow() + 1);
            iMax2 = Math.max(iMax2, cell.getColumn() + 1);
        }
        Logger logger2 = logger;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Some cells exceeded the specified bounds.  Resizing sheet dimensions from ");
        stringBuffer.append(this.numCols);
        stringBuffer.append("x");
        stringBuffer.append(this.numRows);
        stringBuffer.append(" to ");
        stringBuffer.append(iMax2);
        stringBuffer.append("x");
        stringBuffer.append(iMax);
        logger2.warn(stringBuffer.toString());
        if (iMax2 > this.numCols) {
            for (int i = 0; i < this.numRows; i++) {
                Cell[] cellArr = new Cell[iMax2];
                Cell[] cellArr2 = this.cells[i];
                System.arraycopy(cellArr2, 0, cellArr, 0, cellArr2.length);
                this.cells[i] = cellArr;
            }
        }
        if (iMax > this.numRows) {
            Cell[][] cellArr3 = new Cell[iMax][];
            Cell[][] cellArr4 = this.cells;
            System.arraycopy(cellArr4, 0, cellArr3, 0, cellArr4.length);
            this.cells = cellArr3;
            for (int i2 = this.numRows; i2 < iMax; i2++) {
                cellArr3[i2] = new Cell[iMax2];
            }
        }
        this.numRows = iMax;
        this.numCols = iMax2;
        Iterator it2 = this.outOfBoundsCells.iterator();
        while (it2.hasNext()) {
            addCell((Cell) it2.next());
        }
        this.outOfBoundsCells.clear();
    }
}
