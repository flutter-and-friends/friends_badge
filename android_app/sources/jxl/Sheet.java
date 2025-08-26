package jxl;

/* loaded from: classes2.dex */
public interface Sheet {
    Cell findCell(String str);

    LabelCell findLabelCell(String str);

    Cell getCell(int i, int i2);

    Cell getCell(String str);

    Cell[] getColumn(int i);

    jxl.format.CellFormat getColumnFormat(int i);

    int[] getColumnPageBreaks();

    CellView getColumnView(int i);

    int getColumnWidth(int i);

    int getColumns();

    Image getDrawing(int i);

    Hyperlink[] getHyperlinks();

    Range[] getMergedCells();

    String getName();

    int getNumberOfImages();

    Cell[] getRow(int i);

    int getRowHeight(int i);

    int[] getRowPageBreaks();

    CellView getRowView(int i);

    int getRows();

    SheetSettings getSettings();

    boolean isHidden();

    boolean isProtected();
}
