.class public abstract Ljxl/read/biff/CellValue;
.super Ljxl/biff/RecordData;
.source "CellValue.java"

# interfaces
.implements Ljxl/Cell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field static synthetic class$jxl$read$biff$CellValue:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private column:I

.field private features:Ljxl/CellFeatures;

.field private format:Ljxl/biff/XFRecord;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Ljxl/read/biff/CellValue;->class$jxl$read$biff$CellValue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.CellValue"

    invoke-static {v0}, Ljxl/read/biff/CellValue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CellValue;->class$jxl$read$biff$CellValue:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CellValue;->logger:Lcommon/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 3

    .line 93
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 94
    invoke-virtual {p0}, Ljxl/read/biff/CellValue;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 95
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/CellValue;->row:I

    const/4 v1, 0x2

    .line 96
    aget-byte v1, p1, v1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/CellValue;->column:I

    const/4 v1, 0x4

    .line 97
    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    .line 98
    iput-object p3, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    .line 99
    iput-object p2, p0, Ljxl/read/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 100
    iput-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 41
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

    .line 192
    iget-object v0, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 2

    .line 142
    iget-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Ljxl/read/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/CellValue;->format:Ljxl/biff/XFRecord;

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Ljxl/read/biff/CellValue;->initialized:Z

    .line 148
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/CellValue;->format:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public final getColumn()I
    .locals 1

    .line 120
    iget v0, p0, Ljxl/read/biff/CellValue;->column:I

    return v0
.end method

.method public final getRow()I
    .locals 1

    .line 110
    iget v0, p0, Ljxl/read/biff/CellValue;->row:I

    return v0
.end method

.method protected getSheet()Ljxl/read/biff/SheetImpl;
    .locals 1

    .line 182
    iget-object v0, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    return-object v0
.end method

.method public final getXFIndex()I
    .locals 1

    .line 131
    iget v0, p0, Ljxl/read/biff/CellValue;->xfIndex:I

    return v0
.end method

.method public isHidden()Z
    .locals 3

    .line 158
    iget-object v0, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    iget v1, p0, Ljxl/read/biff/CellValue;->column:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 165
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/CellValue;->sheet:Ljxl/read/biff/SheetImpl;

    iget v2, p0, Ljxl/read/biff/CellValue;->row:I

    invoke-virtual {v0, v2}, Ljxl/read/biff/SheetImpl;->getRowInfo(I)Ljxl/read/biff/RowRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .locals 2

    .line 202
    iget-object v0, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Ljxl/read/biff/CellValue;->logger:Lcommon/Logger;

    const-string v1, "current cell features not null - overwriting"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 207
    :cond_0
    iput-object p1, p0, Ljxl/read/biff/CellValue;->features:Ljxl/CellFeatures;

    return-void
.end method
