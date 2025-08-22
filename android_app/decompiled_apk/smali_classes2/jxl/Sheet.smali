.class public interface abstract Ljxl/Sheet;
.super Ljava/lang/Object;
.source "Sheet.java"


# virtual methods
.method public abstract findCell(Ljava/lang/String;)Ljxl/Cell;
.end method

.method public abstract findLabelCell(Ljava/lang/String;)Ljxl/LabelCell;
.end method

.method public abstract getCell(II)Ljxl/Cell;
.end method

.method public abstract getCell(Ljava/lang/String;)Ljxl/Cell;
.end method

.method public abstract getColumn(I)[Ljxl/Cell;
.end method

.method public abstract getColumnFormat(I)Ljxl/format/CellFormat;
.end method

.method public abstract getColumnPageBreaks()[I
.end method

.method public abstract getColumnView(I)Ljxl/CellView;
.end method

.method public abstract getColumnWidth(I)I
.end method

.method public abstract getColumns()I
.end method

.method public abstract getDrawing(I)Ljxl/Image;
.end method

.method public abstract getHyperlinks()[Ljxl/Hyperlink;
.end method

.method public abstract getMergedCells()[Ljxl/Range;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumberOfImages()I
.end method

.method public abstract getRow(I)[Ljxl/Cell;
.end method

.method public abstract getRowHeight(I)I
.end method

.method public abstract getRowPageBreaks()[I
.end method

.method public abstract getRowView(I)Ljxl/CellView;
.end method

.method public abstract getRows()I
.end method

.method public abstract getSettings()Ljxl/SheetSettings;
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isProtected()Z
.end method
