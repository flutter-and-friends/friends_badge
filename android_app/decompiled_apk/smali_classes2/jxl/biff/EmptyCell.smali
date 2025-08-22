.class public Ljxl/biff/EmptyCell;
.super Ljava/lang/Object;
.source "EmptyCell.java"

# interfaces
.implements Ljxl/write/WritableCell;


# instance fields
.field private col:I

.field private row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Ljxl/biff/EmptyCell;->row:I

    .line 56
    iput p1, p0, Ljxl/biff/EmptyCell;->col:I

    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .locals 1

    .line 187
    new-instance v0, Ljxl/biff/EmptyCell;

    invoke-direct {v0, p1, p2}, Ljxl/biff/EmptyCell;-><init>(II)V

    return-object v0
.end method

.method public getCellFeatures()Ljxl/CellFeatures;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 76
    iget v0, p0, Ljxl/biff/EmptyCell;->col:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 66
    iget v0, p0, Ljxl/biff/EmptyCell;->row:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 86
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method

.method public getWritableCellFeatures()Ljxl/write/WritableCellFeatures;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlignment(Ljxl/format/Alignment;)V
    .locals 0

    return-void
.end method

.method public setBorder(Ljxl/write/Border;Ljxl/write/BorderLineStyle;)V
    .locals 0

    return-void
.end method

.method public setCellFeatures(Ljxl/write/WritableCellFeatures;)V
    .locals 0

    return-void
.end method

.method public setCellFormat(Ljxl/CellFormat;)V
    .locals 0

    return-void
.end method

.method public setCellFormat(Ljxl/format/CellFormat;)V
    .locals 0

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    return-void
.end method

.method public setVerticalAlignment(Ljxl/write/VerticalAlignment;)V
    .locals 0

    return-void
.end method
