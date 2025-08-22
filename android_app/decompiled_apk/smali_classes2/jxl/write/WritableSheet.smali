.class public interface abstract Ljxl/write/WritableSheet;
.super Ljava/lang/Object;
.source "WritableSheet.java"

# interfaces
.implements Ljxl/Sheet;


# virtual methods
.method public abstract addCell(Ljxl/write/WritableCell;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract addHyperlink(Ljxl/write/WritableHyperlink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract addImage(Ljxl/write/WritableImage;)V
.end method

.method public abstract addRowPageBreak(I)V
.end method

.method public abstract getImage(I)Ljxl/write/WritableImage;
.end method

.method public abstract getNumberOfImages()I
.end method

.method public abstract getWritableCell(II)Ljxl/write/WritableCell;
.end method

.method public abstract getWritableCell(Ljava/lang/String;)Ljxl/write/WritableCell;
.end method

.method public abstract getWritableHyperlinks()[Ljxl/write/WritableHyperlink;
.end method

.method public abstract insertColumn(I)V
.end method

.method public abstract insertRow(I)V
.end method

.method public abstract mergeCells(IIII)Ljxl/Range;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract removeColumn(I)V
.end method

.method public abstract removeHyperlink(Ljxl/write/WritableHyperlink;)V
.end method

.method public abstract removeHyperlink(Ljxl/write/WritableHyperlink;Z)V
.end method

.method public abstract removeImage(Ljxl/write/WritableImage;)V
.end method

.method public abstract removeRow(I)V
.end method

.method public abstract setColumnView(II)V
.end method

.method public abstract setColumnView(IILjxl/format/CellFormat;)V
.end method

.method public abstract setColumnView(ILjxl/CellView;)V
.end method

.method public abstract setFooter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPageSetup(Ljxl/format/PageOrientation;)V
.end method

.method public abstract setPageSetup(Ljxl/format/PageOrientation;DD)V
.end method

.method public abstract setPageSetup(Ljxl/format/PageOrientation;Ljxl/format/PaperSize;DD)V
.end method

.method public abstract setProtected(Z)V
.end method

.method public abstract setRowView(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract setRowView(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract setRowView(ILjxl/CellView;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract setRowView(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract unmergeCells(Ljxl/Range;)V
.end method
