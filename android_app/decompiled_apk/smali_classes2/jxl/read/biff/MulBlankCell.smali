.class Ljxl/read/biff/MulBlankCell;
.super Ljava/lang/Object;
.source "MulBlankCell.java"

# interfaces
.implements Ljxl/Cell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field static synthetic class$jxl$read$biff$MulBlankCell:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private cellFormat:Ljxl/format/CellFormat;

.field private column:I

.field private features:Ljxl/CellFeatures;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Ljxl/read/biff/MulBlankCell;->class$jxl$read$biff$MulBlankCell:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.MulBlankCell"

    invoke-static {v0}, Ljxl/read/biff/MulBlankCell;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/MulBlankCell;->class$jxl$read$biff$MulBlankCell:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/MulBlankCell;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Ljxl/read/biff/MulBlankCell;->row:I

    .line 96
    iput p2, p0, Ljxl/read/biff/MulBlankCell;->column:I

    .line 97
    iput p3, p0, Ljxl/read/biff/MulBlankCell;->xfIndex:I

    .line 98
    iput-object p4, p0, Ljxl/read/biff/MulBlankCell;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 99
    iput-object p5, p0, Ljxl/read/biff/MulBlankCell;->sheet:Ljxl/read/biff/SheetImpl;

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 39
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
.method public getCellFeatures()Ljxl/CellFeatures;
    .locals 1

    .line 190
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 2

    .line 150
    iget-boolean v0, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/MulBlankCell;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/MulBlankCell;->cellFormat:Ljxl/format/CellFormat;

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Ljxl/read/biff/MulBlankCell;->initialized:Z

    .line 156
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->cellFormat:Ljxl/format/CellFormat;

    return-object v0
.end method

.method public final getColumn()I
    .locals 1

    .line 120
    iget v0, p0, Ljxl/read/biff/MulBlankCell;->column:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getRow()I
    .locals 1

    .line 110
    iget v0, p0, Ljxl/read/biff/MulBlankCell;->row:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 140
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method

.method public isHidden()Z
    .locals 3

    .line 166
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->sheet:Ljxl/read/biff/SheetImpl;

    iget v1, p0, Ljxl/read/biff/MulBlankCell;->column:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->sheet:Ljxl/read/biff/SheetImpl;

    iget v2, p0, Ljxl/read/biff/MulBlankCell;->row:I

    invoke-virtual {v0, v2}, Ljxl/read/biff/SheetImpl;->getRowInfo(I)Ljxl/read/biff/RowRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .locals 2

    .line 200
    iget-object v0, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Ljxl/read/biff/MulBlankCell;->logger:Lcommon/Logger;

    const-string v1, "current cell features not null - overwriting"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 205
    :cond_0
    iput-object p1, p0, Ljxl/read/biff/MulBlankCell;->features:Ljxl/CellFeatures;

    return-void
.end method
