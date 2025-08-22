.class public Ljxl/biff/RangeImpl;
.super Ljava/lang/Object;
.source "RangeImpl.java"

# interfaces
.implements Ljxl/Range;


# static fields
.field static synthetic class$jxl$biff$RangeImpl:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private column1:I

.field private column2:I

.field private row1:I

.field private row2:I

.field private sheet1:I

.field private sheet2:I

.field private workbook:Ljxl/biff/WorkbookMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Ljxl/biff/RangeImpl;->class$jxl$biff$RangeImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.RangeImpl"

    invoke-static {v0}, Ljxl/biff/RangeImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/RangeImpl;->class$jxl$biff$RangeImpl:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/RangeImpl;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/WorkbookMethods;IIIIII)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Ljxl/biff/RangeImpl;->workbook:Ljxl/biff/WorkbookMethods;

    .line 93
    iput p2, p0, Ljxl/biff/RangeImpl;->sheet1:I

    .line 94
    iput p5, p0, Ljxl/biff/RangeImpl;->sheet2:I

    .line 95
    iput p4, p0, Ljxl/biff/RangeImpl;->row1:I

    .line 96
    iput p7, p0, Ljxl/biff/RangeImpl;->row2:I

    .line 97
    iput p3, p0, Ljxl/biff/RangeImpl;->column1:I

    .line 98
    iput p6, p0, Ljxl/biff/RangeImpl;->column2:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBottomRight()Ljxl/Cell;
    .locals 3

    .line 128
    iget-object v0, p0, Ljxl/biff/RangeImpl;->workbook:Ljxl/biff/WorkbookMethods;

    iget v1, p0, Ljxl/biff/RangeImpl;->sheet2:I

    invoke-interface {v0, v1}, Ljxl/biff/WorkbookMethods;->getReadSheet(I)Ljxl/Sheet;

    move-result-object v0

    .line 130
    iget v1, p0, Ljxl/biff/RangeImpl;->column2:I

    invoke-interface {v0}, Ljxl/Sheet;->getColumns()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Ljxl/biff/RangeImpl;->row2:I

    invoke-interface {v0}, Ljxl/Sheet;->getRows()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 133
    iget v1, p0, Ljxl/biff/RangeImpl;->column2:I

    iget v2, p0, Ljxl/biff/RangeImpl;->row2:I

    invoke-interface {v0, v1, v2}, Ljxl/Sheet;->getCell(II)Ljxl/Cell;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljxl/biff/EmptyCell;

    iget v1, p0, Ljxl/biff/RangeImpl;->column2:I

    iget v2, p0, Ljxl/biff/RangeImpl;->row2:I

    invoke-direct {v0, v1, v2}, Ljxl/biff/EmptyCell;-><init>(II)V

    return-object v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    .line 148
    iget v0, p0, Ljxl/biff/RangeImpl;->sheet1:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    .line 158
    iget v0, p0, Ljxl/biff/RangeImpl;->sheet2:I

    return v0
.end method

.method public getTopLeft()Ljxl/Cell;
    .locals 3

    .line 108
    iget-object v0, p0, Ljxl/biff/RangeImpl;->workbook:Ljxl/biff/WorkbookMethods;

    iget v1, p0, Ljxl/biff/RangeImpl;->sheet1:I

    invoke-interface {v0, v1}, Ljxl/biff/WorkbookMethods;->getReadSheet(I)Ljxl/Sheet;

    move-result-object v0

    .line 110
    iget v1, p0, Ljxl/biff/RangeImpl;->column1:I

    invoke-interface {v0}, Ljxl/Sheet;->getColumns()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Ljxl/biff/RangeImpl;->row1:I

    invoke-interface {v0}, Ljxl/Sheet;->getRows()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 113
    iget v1, p0, Ljxl/biff/RangeImpl;->column1:I

    iget v2, p0, Ljxl/biff/RangeImpl;->row1:I

    invoke-interface {v0, v1, v2}, Ljxl/Sheet;->getCell(II)Ljxl/Cell;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljxl/biff/EmptyCell;

    iget v1, p0, Ljxl/biff/RangeImpl;->column1:I

    iget v2, p0, Ljxl/biff/RangeImpl;->row1:I

    invoke-direct {v0, v1, v2}, Ljxl/biff/EmptyCell;-><init>(II)V

    return-object v0
.end method
