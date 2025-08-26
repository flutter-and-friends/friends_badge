package jxl;

/* loaded from: classes2.dex */
public interface Cell {
    CellFeatures getCellFeatures();

    jxl.format.CellFormat getCellFormat();

    int getColumn();

    String getContents();

    int getRow();

    CellType getType();

    boolean isHidden();
}
