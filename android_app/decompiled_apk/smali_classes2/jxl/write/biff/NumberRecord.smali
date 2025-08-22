.class public abstract Ljxl/write/biff/NumberRecord;
.super Ljxl/write/biff/CellValue;
.source "NumberRecord.java"


# static fields
.field private static defaultFormat:Ljava/text/DecimalFormat;


# instance fields
.field private format:Ljava/text/NumberFormat;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/biff/NumberRecord;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method protected constructor <init>(IID)V
    .locals 1

    .line 62
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    .line 63
    iput-wide p3, p0, Ljxl/write/biff/NumberRecord;->value:D

    return-void
.end method

.method protected constructor <init>(IIDLjxl/format/CellFormat;)V
    .locals 1

    .line 77
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p5}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 78
    iput-wide p3, p0, Ljxl/write/biff/NumberRecord;->value:D

    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/NumberRecord;)V
    .locals 1

    .line 101
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 102
    iget-wide p1, p3, Ljxl/write/biff/NumberRecord;->value:D

    iput-wide p1, p0, Ljxl/write/biff/NumberRecord;->value:D

    return-void
.end method

.method protected constructor <init>(Ljxl/NumberCell;)V
    .locals 2

    .line 88
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 89
    invoke-interface {p1}, Ljxl/NumberCell;->getValue()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/write/biff/NumberRecord;->value:D

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 3

    .line 139
    iget-object v0, p0, Ljxl/write/biff/NumberRecord;->format:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Ljxl/write/biff/NumberRecord;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/NumberRecord;->format:Ljava/text/NumberFormat;

    .line 142
    iget-object v0, p0, Ljxl/write/biff/NumberRecord;->format:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Ljxl/write/biff/NumberRecord;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object v0, p0, Ljxl/write/biff/NumberRecord;->format:Ljava/text/NumberFormat;

    .line 147
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/NumberRecord;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/write/biff/NumberRecord;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .line 122
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 123
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 124
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-wide v2, p0, Ljxl/write/biff/NumberRecord;->value:D

    array-length v0, v0

    invoke-static {v2, v3, v1, v0}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    return-object v1
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 112
    sget-object v0, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 157
    iget-wide v0, p0, Ljxl/write/biff/NumberRecord;->value:D

    return-wide v0
.end method

.method public setValue(D)V
    .locals 0

    .line 167
    iput-wide p1, p0, Ljxl/write/biff/NumberRecord;->value:D

    return-void
.end method
