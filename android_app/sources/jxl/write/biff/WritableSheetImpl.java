package jxl.write.biff;

import common.Assert;
import common.Logger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import jxl.BooleanCell;
import jxl.Cell;
import jxl.CellType;
import jxl.CellView;
import jxl.DateCell;
import jxl.HeaderFooter;
import jxl.Hyperlink;
import jxl.Image;
import jxl.LabelCell;
import jxl.NumberCell;
import jxl.Range;
import jxl.Sheet;
import jxl.SheetSettings;
import jxl.WorkbookSettings;
import jxl.biff.AutoFilter;
import jxl.biff.CellReferenceHelper;
import jxl.biff.ConditionalFormat;
import jxl.biff.DataValidation;
import jxl.biff.EmptyCell;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.IndexMapping;
import jxl.biff.NumFormatRecordsException;
import jxl.biff.SheetRangeImpl;
import jxl.biff.WorkspaceInformationRecord;
import jxl.biff.XFRecord;
import jxl.biff.drawing.Chart;
import jxl.biff.drawing.ComboBox;
import jxl.biff.drawing.Drawing;
import jxl.biff.drawing.DrawingGroupObject;
import jxl.format.CellFormat;
import jxl.format.Font;
import jxl.format.PageOrientation;
import jxl.format.PaperSize;
import jxl.write.Blank;
import jxl.write.Boolean;
import jxl.write.DateTime;
import jxl.write.Label;
import jxl.write.Number;
import jxl.write.WritableCell;
import jxl.write.WritableHyperlink;
import jxl.write.WritableImage;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

/* loaded from: classes2.dex */
class WritableSheetImpl implements WritableSheet {
    static /* synthetic */ Class class$jxl$write$biff$WritableSheetImpl = null;
    private static final char[] illegalSheetNameCharacters;
    private static final String[] imageTypes;
    private static Logger logger = null;
    private static final int maxSheetNameLength = 31;
    private static final int numRowsPerSheet = 65536;
    private static final int rowGrowSize = 10;
    private AutoFilter autoFilter;
    private ButtonPropertySetRecord buttonPropertySet;
    private ComboBox comboBox;
    private DataValidation dataValidation;
    private FormattingRecords formatRecords;
    private String name;
    private File outputFile;
    private PLSRecord plsRecord;
    private SharedStrings sharedStrings;
    private SheetWriter sheetWriter;
    private WritableWorkbookImpl workbook;
    private WorkbookSettings workbookSettings;
    private RowRecord[] rows = new RowRecord[0];
    private int numRows = 0;
    private int numColumns = 0;
    private boolean chartOnly = false;
    private boolean drawingsModified = false;
    private TreeSet columnFormats = new TreeSet(new ColumnInfoComparator());
    private TreeSet autosizedColumns = new TreeSet();
    private ArrayList hyperlinks = new ArrayList();
    private MergedCells mergedCells = new MergedCells(this);
    private ArrayList rowBreaks = new ArrayList();
    private ArrayList columnBreaks = new ArrayList();
    private ArrayList drawings = new ArrayList();
    private ArrayList images = new ArrayList();
    private ArrayList conditionalFormats = new ArrayList();
    private ArrayList validatedCells = new ArrayList();
    private SheetSettings settings = new SheetSettings(this);

    static {
        Class clsClass$ = class$jxl$write$biff$WritableSheetImpl;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.WritableSheetImpl");
            class$jxl$write$biff$WritableSheetImpl = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        illegalSheetNameCharacters = new char[]{'*', ':', '?', '\\'};
        imageTypes = new String[]{"png"};
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    private static class ColumnInfoComparator implements Comparator {
        @Override // java.util.Comparator
        public boolean equals(Object obj) {
            return obj == this;
        }

        private ColumnInfoComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            Assert.verify(obj instanceof ColumnInfoRecord);
            Assert.verify(obj2 instanceof ColumnInfoRecord);
            return ((ColumnInfoRecord) obj).getColumn() - ((ColumnInfoRecord) obj2).getColumn();
        }
    }

    public WritableSheetImpl(String str, File file, FormattingRecords formattingRecords, SharedStrings sharedStrings, WorkbookSettings workbookSettings, WritableWorkbookImpl writableWorkbookImpl) {
        this.name = validateName(str);
        this.outputFile = file;
        this.workbook = writableWorkbookImpl;
        this.formatRecords = formattingRecords;
        this.sharedStrings = sharedStrings;
        this.workbookSettings = workbookSettings;
        this.sheetWriter = new SheetWriter(this.outputFile, this, this.workbookSettings);
    }

    @Override // jxl.Sheet
    public Cell getCell(String str) {
        return getCell(CellReferenceHelper.getColumn(str), CellReferenceHelper.getRow(str));
    }

    @Override // jxl.Sheet
    public Cell getCell(int i, int i2) {
        return getWritableCell(i, i2);
    }

    @Override // jxl.write.WritableSheet
    public WritableCell getWritableCell(String str) {
        return getWritableCell(CellReferenceHelper.getColumn(str), CellReferenceHelper.getRow(str));
    }

    @Override // jxl.write.WritableSheet
    public WritableCell getWritableCell(int i, int i2) {
        RowRecord[] rowRecordArr = this.rows;
        CellValue cell = (i2 >= rowRecordArr.length || rowRecordArr[i2] == null) ? null : rowRecordArr[i2].getCell(i);
        return cell == null ? new EmptyCell(i, i2) : cell;
    }

    @Override // jxl.Sheet
    public int getRows() {
        return this.numRows;
    }

    @Override // jxl.Sheet
    public int getColumns() {
        return this.numColumns;
    }

    @Override // jxl.Sheet
    public Cell findCell(String str) {
        Cell cell = null;
        int i = 0;
        boolean z = false;
        while (i < getRows() && !z) {
            Cell[] row = getRow(i);
            Cell cell2 = cell;
            boolean z2 = z;
            for (int i2 = 0; i2 < row.length && !z2; i2++) {
                if (row[i2].getContents().equals(str)) {
                    cell2 = row[i2];
                    z2 = true;
                }
            }
            i++;
            z = z2;
            cell = cell2;
        }
        return cell;
    }

    @Override // jxl.Sheet
    public LabelCell findLabelCell(String str) {
        LabelCell labelCell = null;
        int i = 0;
        boolean z = false;
        while (i < getRows() && !z) {
            Cell[] row = getRow(i);
            LabelCell labelCell2 = labelCell;
            boolean z2 = z;
            for (int i2 = 0; i2 < row.length && !z2; i2++) {
                if ((row[i2].getType() == CellType.LABEL || row[i2].getType() == CellType.STRING_FORMULA) && row[i2].getContents().equals(str)) {
                    labelCell2 = (LabelCell) row[i2];
                    z2 = true;
                }
            }
            i++;
            z = z2;
            labelCell = labelCell2;
        }
        return labelCell;
    }

    @Override // jxl.Sheet
    public Cell[] getRow(int i) {
        int i2 = this.numColumns - 1;
        boolean z = false;
        while (i2 >= 0 && !z) {
            if (getCell(i2, i).getType() != CellType.EMPTY) {
                z = true;
            } else {
                i2--;
            }
        }
        Cell[] cellArr = new Cell[i2 + 1];
        for (int i3 = 0; i3 <= i2; i3++) {
            cellArr[i3] = getCell(i3, i);
        }
        return cellArr;
    }

    @Override // jxl.Sheet
    public Cell[] getColumn(int i) {
        int i2 = this.numRows - 1;
        boolean z = false;
        while (i2 >= 0 && !z) {
            if (getCell(i, i2).getType() != CellType.EMPTY) {
                z = true;
            } else {
                i2--;
            }
        }
        Cell[] cellArr = new Cell[i2 + 1];
        for (int i3 = 0; i3 <= i2; i3++) {
            cellArr[i3] = getCell(i, i3);
        }
        return cellArr;
    }

    @Override // jxl.Sheet
    public String getName() {
        return this.name;
    }

    @Override // jxl.write.WritableSheet
    public void insertRow(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.numRows)) {
            return;
        }
        RowRecord[] rowRecordArr = this.rows;
        if (i2 == rowRecordArr.length) {
            this.rows = new RowRecord[rowRecordArr.length + 10];
        } else {
            this.rows = new RowRecord[rowRecordArr.length];
        }
        System.arraycopy(rowRecordArr, 0, this.rows, 0, i);
        int i3 = i + 1;
        System.arraycopy(rowRecordArr, i, this.rows, i3, this.numRows - i);
        while (i3 <= this.numRows) {
            RowRecord[] rowRecordArr2 = this.rows;
            if (rowRecordArr2[i3] != null) {
                rowRecordArr2[i3].incrementRow();
            }
            i3++;
        }
        Iterator it = this.hyperlinks.iterator();
        while (it.hasNext()) {
            ((HyperlinkRecord) it.next()).insertRow(i);
        }
        DataValidation dataValidation = this.dataValidation;
        if (dataValidation != null) {
            dataValidation.insertRow(i);
        }
        this.mergedCells.insertRow(i);
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.rowBreaks.iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Integer) it2.next()).intValue();
            if (iIntValue >= i) {
                iIntValue++;
            }
            arrayList.add(new Integer(iIntValue));
        }
        this.rowBreaks = arrayList;
        Iterator it3 = this.conditionalFormats.iterator();
        while (it3.hasNext()) {
            ((ConditionalFormat) it3.next()).insertRow(i);
        }
        if (this.workbookSettings.getFormulaAdjust()) {
            this.workbook.rowInserted(this, i);
        }
        this.numRows++;
    }

    @Override // jxl.write.WritableSheet
    public void insertColumn(int i) {
        if (i < 0 || i >= this.numColumns) {
            return;
        }
        for (int i2 = 0; i2 < this.numRows; i2++) {
            RowRecord[] rowRecordArr = this.rows;
            if (rowRecordArr[i2] != null) {
                rowRecordArr[i2].insertColumn(i);
            }
        }
        Iterator it = this.hyperlinks.iterator();
        while (it.hasNext()) {
            ((HyperlinkRecord) it.next()).insertColumn(i);
        }
        Iterator it2 = this.columnFormats.iterator();
        while (it2.hasNext()) {
            ColumnInfoRecord columnInfoRecord = (ColumnInfoRecord) it2.next();
            if (columnInfoRecord.getColumn() >= i) {
                columnInfoRecord.incrementColumn();
            }
        }
        if (this.autosizedColumns.size() > 0) {
            TreeSet treeSet = new TreeSet();
            Iterator it3 = this.autosizedColumns.iterator();
            while (it3.hasNext()) {
                Integer num = (Integer) it3.next();
                if (num.intValue() >= i) {
                    treeSet.add(new Integer(num.intValue() + 1));
                } else {
                    treeSet.add(num);
                }
            }
            this.autosizedColumns = treeSet;
        }
        DataValidation dataValidation = this.dataValidation;
        if (dataValidation != null) {
            dataValidation.insertColumn(i);
        }
        this.mergedCells.insertColumn(i);
        ArrayList arrayList = new ArrayList();
        Iterator it4 = this.columnBreaks.iterator();
        while (it4.hasNext()) {
            int iIntValue = ((Integer) it4.next()).intValue();
            if (iIntValue >= i) {
                iIntValue++;
            }
            arrayList.add(new Integer(iIntValue));
        }
        this.columnBreaks = arrayList;
        Iterator it5 = this.conditionalFormats.iterator();
        while (it5.hasNext()) {
            ((ConditionalFormat) it5.next()).insertColumn(i);
        }
        if (this.workbookSettings.getFormulaAdjust()) {
            this.workbook.columnInserted(this, i);
        }
        this.numColumns++;
    }

    @Override // jxl.write.WritableSheet
    public void removeColumn(int i) {
        if (i < 0 || i >= this.numColumns) {
            return;
        }
        for (int i2 = 0; i2 < this.numRows; i2++) {
            RowRecord[] rowRecordArr = this.rows;
            if (rowRecordArr[i2] != null) {
                rowRecordArr[i2].removeColumn(i);
            }
        }
        Iterator it = this.hyperlinks.iterator();
        while (it.hasNext()) {
            HyperlinkRecord hyperlinkRecord = (HyperlinkRecord) it.next();
            if (hyperlinkRecord.getColumn() == i && hyperlinkRecord.getLastColumn() == i) {
                ArrayList arrayList = this.hyperlinks;
                arrayList.remove(arrayList.indexOf(hyperlinkRecord));
            } else {
                hyperlinkRecord.removeColumn(i);
            }
        }
        DataValidation dataValidation = this.dataValidation;
        if (dataValidation != null) {
            dataValidation.removeColumn(i);
        }
        this.mergedCells.removeColumn(i);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = this.columnBreaks.iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Integer) it2.next()).intValue();
            if (iIntValue != i) {
                if (iIntValue > i) {
                    iIntValue--;
                }
                arrayList2.add(new Integer(iIntValue));
            }
        }
        this.columnBreaks = arrayList2;
        Iterator it3 = this.columnFormats.iterator();
        ColumnInfoRecord columnInfoRecord = null;
        while (it3.hasNext()) {
            ColumnInfoRecord columnInfoRecord2 = (ColumnInfoRecord) it3.next();
            if (columnInfoRecord2.getColumn() == i) {
                columnInfoRecord = columnInfoRecord2;
            } else if (columnInfoRecord2.getColumn() > i) {
                columnInfoRecord2.decrementColumn();
            }
        }
        if (columnInfoRecord != null) {
            this.columnFormats.remove(columnInfoRecord);
        }
        if (this.autosizedColumns.size() > 0) {
            TreeSet treeSet = new TreeSet();
            Iterator it4 = this.autosizedColumns.iterator();
            while (it4.hasNext()) {
                Integer num = (Integer) it4.next();
                if (num.intValue() != i) {
                    if (num.intValue() > i) {
                        treeSet.add(new Integer(num.intValue() - 1));
                    } else {
                        treeSet.add(num);
                    }
                }
            }
            this.autosizedColumns = treeSet;
        }
        Iterator it5 = this.conditionalFormats.iterator();
        while (it5.hasNext()) {
            ((ConditionalFormat) it5.next()).removeColumn(i);
        }
        if (this.workbookSettings.getFormulaAdjust()) {
            this.workbook.columnRemoved(this, i);
        }
        this.numColumns--;
    }

    @Override // jxl.write.WritableSheet
    public void removeRow(int i) {
        if (i < 0 || i >= this.numRows) {
            return;
        }
        RowRecord[] rowRecordArr = this.rows;
        this.rows = new RowRecord[rowRecordArr.length];
        System.arraycopy(rowRecordArr, 0, this.rows, 0, i);
        int i2 = i + 1;
        System.arraycopy(rowRecordArr, i2, this.rows, i, this.numRows - i2);
        for (int i3 = i; i3 < this.numRows; i3++) {
            RowRecord[] rowRecordArr2 = this.rows;
            if (rowRecordArr2[i3] != null) {
                rowRecordArr2[i3].decrementRow();
            }
        }
        Iterator it = this.hyperlinks.iterator();
        while (it.hasNext()) {
            HyperlinkRecord hyperlinkRecord = (HyperlinkRecord) it.next();
            if (hyperlinkRecord.getRow() == i && hyperlinkRecord.getLastRow() == i) {
                it.remove();
            } else {
                hyperlinkRecord.removeRow(i);
            }
        }
        DataValidation dataValidation = this.dataValidation;
        if (dataValidation != null) {
            dataValidation.removeRow(i);
        }
        this.mergedCells.removeRow(i);
        ArrayList arrayList = new ArrayList();
        Iterator it2 = this.rowBreaks.iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Integer) it2.next()).intValue();
            if (iIntValue != i) {
                if (iIntValue > i) {
                    iIntValue--;
                }
                arrayList.add(new Integer(iIntValue));
            }
        }
        this.rowBreaks = arrayList;
        Iterator it3 = this.conditionalFormats.iterator();
        while (it3.hasNext()) {
            ((ConditionalFormat) it3.next()).removeRow(i);
        }
        if (this.workbookSettings.getFormulaAdjust()) {
            this.workbook.rowRemoved(this, i);
        }
        this.numRows--;
    }

    @Override // jxl.write.WritableSheet
    public void addCell(WritableCell writableCell) throws WriteException {
        if (writableCell.getType() == CellType.EMPTY && writableCell != null && writableCell.getCellFormat() == null) {
            return;
        }
        CellValue cellValue = (CellValue) writableCell;
        if (cellValue.isReferenced()) {
            throw new JxlWriteException(JxlWriteException.cellReferenced);
        }
        int row = writableCell.getRow();
        RowRecord rowRecord = getRowRecord(row);
        rowRecord.addCell(cellValue);
        this.numRows = Math.max(row + 1, this.numRows);
        this.numColumns = Math.max(this.numColumns, rowRecord.getMaxColumn());
        cellValue.setCellDetails(this.formatRecords, this.sharedStrings, this);
    }

    RowRecord getRowRecord(int i) throws RowsExceededException {
        if (i >= 65536) {
            throw new RowsExceededException();
        }
        RowRecord[] rowRecordArr = this.rows;
        if (i >= rowRecordArr.length) {
            this.rows = new RowRecord[Math.max(rowRecordArr.length + 10, i + 1)];
            System.arraycopy(rowRecordArr, 0, this.rows, 0, rowRecordArr.length);
        }
        RowRecord rowRecord = this.rows[i];
        if (rowRecord != null) {
            return rowRecord;
        }
        RowRecord rowRecord2 = new RowRecord(i);
        this.rows[i] = rowRecord2;
        return rowRecord2;
    }

    RowRecord getRowInfo(int i) {
        if (i < 0) {
            return null;
        }
        RowRecord[] rowRecordArr = this.rows;
        if (i > rowRecordArr.length) {
            return null;
        }
        return rowRecordArr[i];
    }

    ColumnInfoRecord getColumnInfo(int i) {
        Iterator it = this.columnFormats.iterator();
        boolean z = false;
        ColumnInfoRecord columnInfoRecord = null;
        while (it.hasNext() && !z) {
            columnInfoRecord = (ColumnInfoRecord) it.next();
            if (columnInfoRecord.getColumn() >= i) {
                z = true;
            }
        }
        if (z && columnInfoRecord.getColumn() == i) {
            return columnInfoRecord;
        }
        return null;
    }

    @Override // jxl.write.WritableSheet
    public void setName(String str) {
        this.name = str;
    }

    @Override // jxl.write.WritableSheet
    public void setHidden(boolean z) {
        this.settings.setHidden(z);
    }

    @Override // jxl.write.WritableSheet
    public void setProtected(boolean z) {
        this.settings.setProtected(z);
    }

    public void setSelected() {
        this.settings.setSelected();
    }

    @Override // jxl.Sheet
    public boolean isHidden() {
        return this.settings.isHidden();
    }

    @Override // jxl.write.WritableSheet
    public void setColumnView(int i, int i2) {
        CellView cellView = new CellView();
        cellView.setSize(i2 * 256);
        setColumnView(i, cellView);
    }

    @Override // jxl.write.WritableSheet
    public void setColumnView(int i, int i2, CellFormat cellFormat) {
        CellView cellView = new CellView();
        cellView.setSize(i2 * 256);
        cellView.setFormat(cellFormat);
        setColumnView(i, cellView);
    }

    @Override // jxl.write.WritableSheet
    public void setColumnView(int i, CellView cellView) {
        XFRecord normalStyle = (XFRecord) cellView.getFormat();
        if (normalStyle == null) {
            normalStyle = getWorkbook().getStyles().getNormalStyle();
        }
        try {
            if (!normalStyle.isInitialized()) {
                this.formatRecords.addStyle(normalStyle);
            }
            int dimension = cellView.depUsed() ? cellView.getDimension() * 256 : cellView.getSize();
            if (cellView.isAutosize()) {
                this.autosizedColumns.add(new Integer(i));
            }
            ColumnInfoRecord columnInfoRecord = new ColumnInfoRecord(i, dimension, normalStyle);
            if (cellView.isHidden()) {
                columnInfoRecord.setHidden(true);
            }
            if (!this.columnFormats.contains(columnInfoRecord)) {
                this.columnFormats.add(columnInfoRecord);
            } else {
                this.columnFormats.remove(columnInfoRecord);
                this.columnFormats.add(columnInfoRecord);
            }
        } catch (NumFormatRecordsException unused) {
            logger.warn("Maximum number of format records exceeded.  Using default format.");
            ColumnInfoRecord columnInfoRecord2 = new ColumnInfoRecord(i, cellView.getDimension() * 256, WritableWorkbook.NORMAL_STYLE);
            if (this.columnFormats.contains(columnInfoRecord2)) {
                return;
            }
            this.columnFormats.add(columnInfoRecord2);
        }
    }

    @Override // jxl.write.WritableSheet
    public void setRowView(int i, int i2) throws RowsExceededException {
        CellView cellView = new CellView();
        cellView.setSize(i2);
        cellView.setHidden(false);
        setRowView(i, cellView);
    }

    @Override // jxl.write.WritableSheet
    public void setRowView(int i, boolean z) throws RowsExceededException {
        CellView cellView = new CellView();
        cellView.setHidden(z);
        setRowView(i, cellView);
    }

    @Override // jxl.write.WritableSheet
    public void setRowView(int i, int i2, boolean z) throws RowsExceededException {
        CellView cellView = new CellView();
        cellView.setSize(i2);
        cellView.setHidden(z);
        setRowView(i, cellView);
    }

    @Override // jxl.write.WritableSheet
    public void setRowView(int i, CellView cellView) throws RowsExceededException {
        RowRecord rowRecord = getRowRecord(i);
        XFRecord xFRecord = (XFRecord) cellView.getFormat();
        if (xFRecord != null) {
            try {
                if (!xFRecord.isInitialized()) {
                    this.formatRecords.addStyle(xFRecord);
                }
            } catch (NumFormatRecordsException unused) {
                logger.warn("Maximum number of format records exceeded.  Using default format.");
                xFRecord = null;
            }
        }
        rowRecord.setRowDetails(cellView.getSize(), false, cellView.isHidden(), xFRecord);
        this.numRows = Math.max(this.numRows, i + 1);
    }

    public void write() throws IOException {
        boolean zHasDrawingsOmitted = this.drawingsModified;
        if (this.workbook.getDrawingGroup() != null) {
            zHasDrawingsOmitted |= this.workbook.getDrawingGroup().hasDrawingsOmitted();
        }
        if (this.autosizedColumns.size() > 0) {
            autosizeColumns();
        }
        this.sheetWriter.setWriteData(this.rows, this.rowBreaks, this.columnBreaks, this.hyperlinks, this.mergedCells, this.columnFormats);
        this.sheetWriter.setDimensions(getRows(), getColumns());
        this.sheetWriter.setSettings(this.settings);
        this.sheetWriter.setPLS(this.plsRecord);
        this.sheetWriter.setDrawings(this.drawings, zHasDrawingsOmitted);
        this.sheetWriter.setButtonPropertySet(this.buttonPropertySet);
        this.sheetWriter.setDataValidation(this.dataValidation, this.validatedCells);
        this.sheetWriter.setConditionalFormats(this.conditionalFormats);
        this.sheetWriter.setAutoFilter(this.autoFilter);
        this.sheetWriter.write();
    }

    private void copyCells(Sheet sheet) {
        int rows = sheet.getRows();
        for (int i = 0; i < rows; i++) {
            for (Cell cell : sheet.getRow(i)) {
                CellType type = cell.getType();
                try {
                    if (type == CellType.LABEL) {
                        addCell(new Label((LabelCell) cell));
                    } else if (type == CellType.NUMBER) {
                        addCell(new Number((NumberCell) cell));
                    } else if (type == CellType.DATE) {
                        addCell(new DateTime((DateCell) cell));
                    } else if (type == CellType.BOOLEAN) {
                        addCell(new Boolean((BooleanCell) cell));
                    } else if (type == CellType.NUMBER_FORMULA) {
                        addCell(new ReadNumberFormulaRecord((FormulaData) cell));
                    } else if (type == CellType.STRING_FORMULA) {
                        addCell(new ReadStringFormulaRecord((FormulaData) cell));
                    } else if (type == CellType.BOOLEAN_FORMULA) {
                        addCell(new ReadBooleanFormulaRecord((FormulaData) cell));
                    } else if (type == CellType.DATE_FORMULA) {
                        addCell(new ReadDateFormulaRecord((FormulaData) cell));
                    } else if (type == CellType.FORMULA_ERROR) {
                        addCell(new ReadErrorFormulaRecord((FormulaData) cell));
                    } else if (type == CellType.EMPTY && cell.getCellFormat() != null) {
                        addCell(new Blank(cell));
                    }
                } catch (WriteException unused) {
                    Assert.verify(false);
                }
            }
        }
    }

    private void copyCells(WritableSheet writableSheet) {
        int rows = writableSheet.getRows();
        for (int i = 0; i < rows; i++) {
            for (Cell cell : writableSheet.getRow(i)) {
                try {
                    addCell(((WritableCell) cell).copyTo(cell.getColumn(), cell.getRow()));
                } catch (WriteException unused) {
                    Assert.verify(false);
                }
            }
        }
    }

    void copy(Sheet sheet) {
        this.settings = new SheetSettings(sheet.getSettings(), this);
        SheetCopier sheetCopier = new SheetCopier(sheet, this);
        sheetCopier.setColumnFormats(this.columnFormats);
        sheetCopier.setFormatRecords(this.formatRecords);
        sheetCopier.setHyperlinks(this.hyperlinks);
        sheetCopier.setMergedCells(this.mergedCells);
        sheetCopier.setRowBreaks(this.rowBreaks);
        sheetCopier.setColumnBreaks(this.columnBreaks);
        sheetCopier.setSheetWriter(this.sheetWriter);
        sheetCopier.setDrawings(this.drawings);
        sheetCopier.setImages(this.images);
        sheetCopier.setConditionalFormats(this.conditionalFormats);
        sheetCopier.copySheet();
        this.dataValidation = sheetCopier.getDataValidation();
        this.comboBox = sheetCopier.getComboBox();
        this.plsRecord = sheetCopier.getPLSRecord();
        this.chartOnly = sheetCopier.isChartOnly();
        this.buttonPropertySet = sheetCopier.getButtonPropertySet();
        this.numRows = sheetCopier.getRows();
        this.autoFilter = sheetCopier.getAutoFilter();
    }

    void copy(WritableSheet writableSheet) {
        this.settings = new SheetSettings(writableSheet.getSettings(), this);
        copyCells(writableSheet);
        WritableSheetImpl writableSheetImpl = (WritableSheetImpl) writableSheet;
        Iterator it = writableSheetImpl.columnFormats.iterator();
        while (it.hasNext()) {
            this.columnFormats.add(new ColumnInfoRecord((ColumnInfoRecord) it.next()));
        }
        for (Range range : writableSheet.getMergedCells()) {
            this.mergedCells.add(new SheetRangeImpl((SheetRangeImpl) range, this));
        }
        try {
            RowRecord[] rowRecordArr = ((WritableSheetImpl) writableSheet).rows;
            for (int i = 0; i < rowRecordArr.length; i++) {
                RowRecord rowRecord = rowRecordArr[i];
                if (rowRecord != null && (!rowRecord.isDefaultHeight() || rowRecord.isCollapsed())) {
                    getRowRecord(i).setRowDetails(rowRecord.getRowHeight(), rowRecord.matchesDefaultFontHeight(), rowRecord.isCollapsed(), rowRecord.getStyle());
                }
            }
        } catch (RowsExceededException unused) {
            Assert.verify(false);
        }
        this.rowBreaks = new ArrayList(writableSheetImpl.rowBreaks);
        this.columnBreaks = new ArrayList(writableSheetImpl.columnBreaks);
        DataValidation dataValidation = writableSheetImpl.dataValidation;
        if (dataValidation != null) {
            WritableWorkbookImpl writableWorkbookImpl = this.workbook;
            this.dataValidation = new DataValidation(dataValidation, writableWorkbookImpl, writableWorkbookImpl, this.workbookSettings);
        }
        this.sheetWriter.setCharts(writableSheetImpl.getCharts());
        DrawingGroupObject[] drawings = writableSheetImpl.getDrawings();
        for (int i2 = 0; i2 < drawings.length; i2++) {
            if (drawings[i2] instanceof Drawing) {
                WritableImage writableImage = new WritableImage(drawings[i2], this.workbook.getDrawingGroup());
                this.drawings.add(writableImage);
                this.images.add(writableImage);
            }
        }
        this.sheetWriter.setWorkspaceOptions(writableSheetImpl.getWorkspaceOptions());
        PLSRecord pLSRecord = writableSheetImpl.plsRecord;
        if (pLSRecord != null) {
            this.plsRecord = new PLSRecord(pLSRecord);
        }
        ButtonPropertySetRecord buttonPropertySetRecord = writableSheetImpl.buttonPropertySet;
        if (buttonPropertySetRecord != null) {
            this.buttonPropertySet = new ButtonPropertySetRecord(buttonPropertySetRecord);
        }
    }

    final HeaderRecord getHeader() {
        return this.sheetWriter.getHeader();
    }

    final FooterRecord getFooter() {
        return this.sheetWriter.getFooter();
    }

    @Override // jxl.Sheet
    public boolean isProtected() {
        return this.settings.isProtected();
    }

    @Override // jxl.Sheet
    public Hyperlink[] getHyperlinks() {
        Hyperlink[] hyperlinkArr = new Hyperlink[this.hyperlinks.size()];
        for (int i = 0; i < this.hyperlinks.size(); i++) {
            hyperlinkArr[i] = (Hyperlink) this.hyperlinks.get(i);
        }
        return hyperlinkArr;
    }

    @Override // jxl.Sheet
    public Range[] getMergedCells() {
        return this.mergedCells.getMergedCells();
    }

    @Override // jxl.write.WritableSheet
    public WritableHyperlink[] getWritableHyperlinks() {
        WritableHyperlink[] writableHyperlinkArr = new WritableHyperlink[this.hyperlinks.size()];
        for (int i = 0; i < this.hyperlinks.size(); i++) {
            writableHyperlinkArr[i] = (WritableHyperlink) this.hyperlinks.get(i);
        }
        return writableHyperlinkArr;
    }

    @Override // jxl.write.WritableSheet
    public void removeHyperlink(WritableHyperlink writableHyperlink) {
        removeHyperlink(writableHyperlink, false);
    }

    @Override // jxl.write.WritableSheet
    public void removeHyperlink(WritableHyperlink writableHyperlink, boolean z) {
        ArrayList arrayList = this.hyperlinks;
        arrayList.remove(arrayList.indexOf(writableHyperlink));
        if (z) {
            return;
        }
        Assert.verify(this.rows.length > writableHyperlink.getRow() && this.rows[writableHyperlink.getRow()] != null);
        this.rows[writableHyperlink.getRow()].removeCell(writableHyperlink.getColumn());
    }

    @Override // jxl.write.WritableSheet
    public void addHyperlink(WritableHyperlink writableHyperlink) throws WriteException {
        String contents;
        Cell cell = getCell(writableHyperlink.getColumn(), writableHyperlink.getRow());
        if (writableHyperlink.isFile() || writableHyperlink.isUNC()) {
            contents = writableHyperlink.getContents();
            if (contents == null) {
                contents = writableHyperlink.getFile().getPath();
            }
        } else if (writableHyperlink.isURL()) {
            contents = writableHyperlink.getContents();
            if (contents == null) {
                contents = writableHyperlink.getURL().toString();
            }
        } else {
            contents = writableHyperlink.isLocation() ? writableHyperlink.getContents() : null;
        }
        if (cell.getType() == CellType.LABEL) {
            Label label = (Label) cell;
            label.setString(contents);
            label.setCellFormat(WritableWorkbook.HYPERLINK_STYLE);
        } else {
            addCell(new Label(writableHyperlink.getColumn(), writableHyperlink.getRow(), contents, WritableWorkbook.HYPERLINK_STYLE));
        }
        for (int row = writableHyperlink.getRow(); row <= writableHyperlink.getLastRow(); row++) {
            for (int column = writableHyperlink.getColumn(); column <= writableHyperlink.getLastColumn(); column++) {
                if (row != writableHyperlink.getRow() && column != writableHyperlink.getColumn()) {
                    RowRecord[] rowRecordArr = this.rows;
                    if (rowRecordArr[row] != null) {
                        rowRecordArr[row].removeCell(column);
                    }
                }
            }
        }
        writableHyperlink.initialize(this);
        this.hyperlinks.add(writableHyperlink);
    }

    @Override // jxl.write.WritableSheet
    public Range mergeCells(int i, int i2, int i3, int i4) throws WriteException {
        if (i3 < i || i4 < i2) {
            logger.warn("Cannot merge cells - top left and bottom right incorrectly specified");
        }
        if (i3 >= this.numColumns || i4 >= this.numRows) {
            addCell(new Blank(i3, i4));
        }
        SheetRangeImpl sheetRangeImpl = new SheetRangeImpl(this, i, i2, i3, i4);
        this.mergedCells.add(sheetRangeImpl);
        return sheetRangeImpl;
    }

    @Override // jxl.write.WritableSheet
    public void unmergeCells(Range range) {
        this.mergedCells.unmergeCells(range);
    }

    @Override // jxl.write.WritableSheet
    public void setHeader(String str, String str2, String str3) {
        HeaderFooter headerFooter = new HeaderFooter();
        headerFooter.getLeft().append(str);
        headerFooter.getCentre().append(str2);
        headerFooter.getRight().append(str3);
        this.settings.setHeader(headerFooter);
    }

    @Override // jxl.write.WritableSheet
    public void setFooter(String str, String str2, String str3) {
        HeaderFooter headerFooter = new HeaderFooter();
        headerFooter.getLeft().append(str);
        headerFooter.getCentre().append(str2);
        headerFooter.getRight().append(str3);
        this.settings.setFooter(headerFooter);
    }

    @Override // jxl.write.WritableSheet
    public void setPageSetup(PageOrientation pageOrientation) {
        this.settings.setOrientation(pageOrientation);
    }

    @Override // jxl.write.WritableSheet
    public void setPageSetup(PageOrientation pageOrientation, double d, double d2) {
        this.settings.setOrientation(pageOrientation);
        this.settings.setHeaderMargin(d);
        this.settings.setFooterMargin(d2);
    }

    @Override // jxl.write.WritableSheet
    public void setPageSetup(PageOrientation pageOrientation, PaperSize paperSize, double d, double d2) {
        this.settings.setPaperSize(paperSize);
        this.settings.setOrientation(pageOrientation);
        this.settings.setHeaderMargin(d);
        this.settings.setFooterMargin(d2);
    }

    @Override // jxl.Sheet
    public SheetSettings getSettings() {
        return this.settings;
    }

    WorkbookSettings getWorkbookSettings() {
        return this.workbookSettings;
    }

    @Override // jxl.write.WritableSheet
    public void addRowPageBreak(int i) {
        Iterator it = this.rowBreaks.iterator();
        boolean z = false;
        while (it.hasNext() && !z) {
            if (((Integer) it.next()).intValue() == i) {
                z = true;
            }
        }
        if (z) {
            return;
        }
        this.rowBreaks.add(new Integer(i));
    }

    public void addColumnPageBreak(int i) {
        Iterator it = this.columnBreaks.iterator();
        boolean z = false;
        while (it.hasNext() && !z) {
            if (((Integer) it.next()).intValue() == i) {
                z = true;
            }
        }
        if (z) {
            return;
        }
        this.columnBreaks.add(new Integer(i));
    }

    private Chart[] getCharts() {
        return this.sheetWriter.getCharts();
    }

    private DrawingGroupObject[] getDrawings() {
        return (DrawingGroupObject[]) this.drawings.toArray(new DrawingGroupObject[this.drawings.size()]);
    }

    void checkMergedBorders() {
        this.sheetWriter.setWriteData(this.rows, this.rowBreaks, this.columnBreaks, this.hyperlinks, this.mergedCells, this.columnFormats);
        this.sheetWriter.setDimensions(getRows(), getColumns());
        this.sheetWriter.checkMergedBorders();
    }

    private WorkspaceInformationRecord getWorkspaceOptions() {
        return this.sheetWriter.getWorkspaceOptions();
    }

    void rationalize(IndexMapping indexMapping, IndexMapping indexMapping2, IndexMapping indexMapping3) {
        Iterator it = this.columnFormats.iterator();
        while (it.hasNext()) {
            ((ColumnInfoRecord) it.next()).rationalize(indexMapping);
        }
        int i = 0;
        while (true) {
            RowRecord[] rowRecordArr = this.rows;
            if (i >= rowRecordArr.length) {
                break;
            }
            if (rowRecordArr[i] != null) {
                rowRecordArr[i].rationalize(indexMapping);
            }
            i++;
        }
        for (Chart chart : getCharts()) {
            chart.rationalize(indexMapping, indexMapping2, indexMapping3);
        }
    }

    WritableWorkbookImpl getWorkbook() {
        return this.workbook;
    }

    @Override // jxl.Sheet
    public CellFormat getColumnFormat(int i) {
        return getColumnView(i).getFormat();
    }

    @Override // jxl.Sheet
    public int getColumnWidth(int i) {
        return getColumnView(i).getDimension();
    }

    @Override // jxl.Sheet
    public int getRowHeight(int i) {
        return getRowView(i).getDimension();
    }

    boolean isChartOnly() {
        return this.chartOnly;
    }

    @Override // jxl.Sheet
    public CellView getRowView(int i) {
        CellView cellView = new CellView();
        try {
            RowRecord rowRecord = getRowRecord(i);
            if (rowRecord == null || rowRecord.isDefaultHeight()) {
                cellView.setDimension(this.settings.getDefaultRowHeight());
                cellView.setSize(this.settings.getDefaultRowHeight());
            } else if (rowRecord.isCollapsed()) {
                cellView.setHidden(true);
            } else {
                cellView.setDimension(rowRecord.getRowHeight());
                cellView.setSize(rowRecord.getRowHeight());
            }
            return cellView;
        } catch (RowsExceededException unused) {
            cellView.setDimension(this.settings.getDefaultRowHeight());
            cellView.setSize(this.settings.getDefaultRowHeight());
            return cellView;
        }
    }

    @Override // jxl.Sheet
    public CellView getColumnView(int i) {
        ColumnInfoRecord columnInfo = getColumnInfo(i);
        CellView cellView = new CellView();
        if (columnInfo != null) {
            cellView.setDimension(columnInfo.getWidth() / 256);
            cellView.setSize(columnInfo.getWidth());
            cellView.setHidden(columnInfo.getHidden());
            cellView.setFormat(columnInfo.getCellFormat());
        } else {
            cellView.setDimension(this.settings.getDefaultColumnWidth() / 256);
            cellView.setSize(this.settings.getDefaultColumnWidth() * 256);
        }
        return cellView;
    }

    @Override // jxl.write.WritableSheet
    public void addImage(WritableImage writableImage) {
        String strSubstring;
        boolean z;
        java.io.File imageFile = writableImage.getImageFile();
        if (imageFile != null) {
            String name = imageFile.getName();
            int iLastIndexOf = name.lastIndexOf(46);
            strSubstring = iLastIndexOf != -1 ? name.substring(iLastIndexOf + 1) : "";
            int i = 0;
            z = false;
            while (true) {
                String[] strArr = imageTypes;
                if (i >= strArr.length || z) {
                    break;
                }
                if (strSubstring.equalsIgnoreCase(strArr[i])) {
                    z = true;
                }
                i++;
            }
        } else {
            strSubstring = "?";
            z = true;
        }
        if (z) {
            this.workbook.addDrawing(writableImage);
            this.drawings.add(writableImage);
            this.images.add(writableImage);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer("Image type ");
        stringBuffer.append(strSubstring);
        stringBuffer.append(" not supported.  Supported types are ");
        stringBuffer.append(imageTypes[0]);
        for (int i2 = 1; i2 < imageTypes.length; i2++) {
            stringBuffer.append(", ");
            stringBuffer.append(imageTypes[i2]);
        }
        logger.warn(stringBuffer.toString());
    }

    @Override // jxl.write.WritableSheet, jxl.Sheet
    public int getNumberOfImages() {
        return this.images.size();
    }

    @Override // jxl.write.WritableSheet
    public WritableImage getImage(int i) {
        return (WritableImage) this.images.get(i);
    }

    @Override // jxl.Sheet
    public Image getDrawing(int i) {
        return (Image) this.images.get(i);
    }

    @Override // jxl.write.WritableSheet
    public void removeImage(WritableImage writableImage) {
        this.drawings.remove(writableImage);
        this.images.remove(writableImage);
        this.drawingsModified = true;
        this.workbook.removeDrawing(writableImage);
    }

    private String validateName(String str) {
        int i = 0;
        if (str.length() > 31) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Sheet name ");
            stringBuffer.append(str);
            stringBuffer.append(" too long - truncating");
            logger2.warn(stringBuffer.toString());
            str = str.substring(0, 31);
        }
        if (str.charAt(0) == '\'') {
            logger.warn("Sheet naming cannot start with ' - removing");
            str = str.substring(1);
        }
        while (true) {
            char[] cArr = illegalSheetNameCharacters;
            if (i >= cArr.length) {
                return str;
            }
            String strReplace = str.replace(cArr[i], '@');
            if (str != strReplace) {
                Logger logger3 = logger;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(illegalSheetNameCharacters[i]);
                stringBuffer2.append(" is not a valid character within a sheet name - replacing");
                logger3.warn(stringBuffer2.toString());
            }
            i++;
            str = strReplace;
        }
    }

    void addDrawing(DrawingGroupObject drawingGroupObject) {
        this.drawings.add(drawingGroupObject);
        Assert.verify(!(drawingGroupObject instanceof Drawing));
    }

    void removeDrawing(DrawingGroupObject drawingGroupObject) {
        int size = this.drawings.size();
        this.drawings.remove(drawingGroupObject);
        int size2 = this.drawings.size();
        this.drawingsModified = true;
        Assert.verify(size2 == size - 1);
    }

    @Override // jxl.Sheet
    public int[] getRowPageBreaks() {
        int[] iArr = new int[this.rowBreaks.size()];
        Iterator it = this.rowBreaks.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Integer) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    @Override // jxl.Sheet
    public int[] getColumnPageBreaks() {
        int[] iArr = new int[this.columnBreaks.size()];
        Iterator it = this.columnBreaks.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Integer) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    void addValidationCell(CellValue cellValue) {
        this.validatedCells.add(cellValue);
    }

    ComboBox getComboBox() {
        return this.comboBox;
    }

    void setComboBox(ComboBox comboBox) {
        this.comboBox = comboBox;
    }

    public DataValidation getDataValidation() {
        return this.dataValidation;
    }

    private void autosizeColumns() {
        Iterator it = this.autosizedColumns.iterator();
        while (it.hasNext()) {
            autosizeColumn(((Integer) it.next()).intValue());
        }
    }

    private void autosizeColumn(int i) {
        ColumnInfoRecord columnInfo = getColumnInfo(i);
        Font font = columnInfo.getCellFormat().getFont();
        Font font2 = WritableWorkbook.NORMAL_STYLE.getFont();
        int iMax = 0;
        for (int i2 = 0; i2 < this.numRows; i2++) {
            RowRecord[] rowRecordArr = this.rows;
            CellValue cell = rowRecordArr[i2] != null ? rowRecordArr[i2].getCell(i) : null;
            if (cell != null) {
                String contents = cell.getContents();
                Font font3 = cell.getCellFormat().getFont();
                if (font3.equals(font2)) {
                    font3 = font;
                }
                int pointSize = font3.getPointSize();
                int length = contents.length();
                if (font3.isItalic() || font3.getBoldWeight() > 400) {
                    length += 2;
                }
                iMax = Math.max(iMax, length * pointSize * 256);
            }
        }
        columnInfo.setWidth(iMax / font2.getPointSize());
    }

    void importSheet(Sheet sheet) {
        this.settings = new SheetSettings(sheet.getSettings(), this);
        SheetCopier sheetCopier = new SheetCopier(sheet, this);
        sheetCopier.setColumnFormats(this.columnFormats);
        sheetCopier.setFormatRecords(this.formatRecords);
        sheetCopier.setHyperlinks(this.hyperlinks);
        sheetCopier.setMergedCells(this.mergedCells);
        sheetCopier.setRowBreaks(this.rowBreaks);
        sheetCopier.setColumnBreaks(this.columnBreaks);
        sheetCopier.setSheetWriter(this.sheetWriter);
        sheetCopier.setDrawings(this.drawings);
        sheetCopier.setImages(this.images);
        sheetCopier.importSheet();
        this.dataValidation = sheetCopier.getDataValidation();
        this.comboBox = sheetCopier.getComboBox();
        this.plsRecord = sheetCopier.getPLSRecord();
        this.chartOnly = sheetCopier.isChartOnly();
        this.buttonPropertySet = sheetCopier.getButtonPropertySet();
        this.numRows = sheetCopier.getRows();
    }
}
