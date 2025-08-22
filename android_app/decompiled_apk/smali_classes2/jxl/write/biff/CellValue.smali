.class public abstract Ljxl/write/biff/CellValue;
.super Ljxl/biff/WritableRecordData;
.source "CellValue.java"

# interfaces
.implements Ljxl/write/WritableCell;


# static fields
.field static synthetic class$jxl$write$biff$CellValue:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private column:I

.field private copied:Z

.field private features:Ljxl/write/WritableCellFeatures;

.field private format:Ljxl/biff/XFRecord;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private referenced:Z

.field private row:I

.field private sheet:Ljxl/write/biff/WritableSheetImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Ljxl/write/biff/CellValue;->class$jxl$write$biff$CellValue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.CellValue"

    invoke-static {v0}, Ljxl/write/biff/CellValue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/CellValue;->class$jxl$write$biff$CellValue:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/CellValue;->logger:Lcommon/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;II)V
    .locals 1

    .line 111
    sget-object v0, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {p0, p1, p2, p3, v0}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 148
    iput p3, p0, Ljxl/write/biff/CellValue;->row:I

    .line 149
    iput p2, p0, Ljxl/write/biff/CellValue;->column:I

    .line 150
    check-cast p4, Ljxl/biff/XFRecord;

    iput-object p4, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 152
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 166
    iput p3, p0, Ljxl/write/biff/CellValue;->row:I

    .line 167
    iput p2, p0, Ljxl/write/biff/CellValue;->column:I

    .line 168
    iget-object p1, p4, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    iput-object p1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 170
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 173
    iget-object p1, p4, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz p1, :cond_0

    .line 175
    new-instance p2, Ljxl/write/WritableCellFeatures;

    invoke-direct {p2, p1}, Ljxl/write/WritableCellFeatures;-><init>(Ljxl/CellFeatures;)V

    iput-object p2, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 176
    iget-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {p1, p0}, Ljxl/write/WritableCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;Ljxl/Cell;)V
    .locals 2

    .line 124
    invoke-interface {p2}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {p2}, Ljxl/Cell;->getRow()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 127
    invoke-interface {p2}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    iput-object p1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 129
    invoke-interface {p2}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    new-instance p1, Ljxl/write/WritableCellFeatures;

    invoke-interface {p2}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object p2

    invoke-direct {p1, p2}, Ljxl/write/WritableCellFeatures;-><init>(Ljxl/CellFeatures;)V

    iput-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 132
    iget-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {p1, p0}, Ljxl/write/WritableCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    :cond_0
    return-void
.end method

.method private addCellFormat()V
    .locals 3

    .line 465
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v0

    .line 466
    iget-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v0, v1}, Ljxl/write/biff/Styles;->getFormat(Ljxl/biff/XFRecord;)Ljxl/biff/XFRecord;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 470
    :try_start_0
    iget-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    iget-object v1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v2, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v1, v2}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    sget-object v1, Ljxl/write/biff/CellValue;->logger:Lcommon/Logger;

    const-string v2, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v1, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v0}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 56
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
.method public final addCellFeatures()V
    .locals 10

    .line 534
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    iget-boolean v1, p0, Ljxl/write/biff/CellValue;->copied:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 541
    iput-boolean v3, p0, Ljxl/write/biff/CellValue;->copied:Z

    return-void

    .line 562
    :cond_1
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 564
    new-instance v0, Ljxl/biff/drawing/Comment;

    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getComment()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljxl/write/biff/CellValue;->column:I

    iget v4, p0, Ljxl/write/biff/CellValue;->row:I

    invoke-direct {v0, v1, v2, v4}, Ljxl/biff/drawing/Comment;-><init>(Ljava/lang/String;II)V

    .line 566
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getCommentWidth()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setWidth(D)V

    .line 567
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getCommentHeight()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setHeight(D)V

    .line 568
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 569
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 570
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1, v0}, Ljxl/write/WritableCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    .line 573
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDataValidation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 577
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    iget v5, p0, Ljxl/write/biff/CellValue;->column:I

    iget v6, p0, Ljxl/write/biff/CellValue;->row:I

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Ljxl/biff/DVParser;->setCell(IILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 585
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->printStackTrace()V

    .line 586
    invoke-static {v3}, Lcommon/Assert;->verify(Z)V

    .line 588
    :goto_0
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p0}, Ljxl/write/biff/WritableSheetImpl;->addValidationCell(Ljxl/write/biff/CellValue;)V

    .line 589
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDropDown()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 595
    :cond_3
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    if-nez v0, :cond_4

    .line 597
    new-instance v0, Ljxl/biff/drawing/ComboBox;

    invoke-direct {v0}, Ljxl/biff/drawing/ComboBox;-><init>()V

    .line 598
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 599
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 600
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->setComboBox(Ljxl/biff/drawing/ComboBox;)V

    .line 603
    :cond_4
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFeatures;->setComboBox(Ljxl/biff/drawing/ComboBox;)V

    :cond_5
    return-void
.end method

.method columnInserted(Ljxl/Sheet;II)V
    .locals 0

    return-void
.end method

.method columnRemoved(Ljxl/Sheet;II)V
    .locals 0

    return-void
.end method

.method decrementColumn()V
    .locals 3

    .line 384
    iget v0, p0, Ljxl/write/biff/CellValue;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->column:I

    .line 386
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 392
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    :cond_0
    return-void
.end method

.method decrementRow()V
    .locals 3

    .line 340
    iget v0, p0, Ljxl/write/biff/CellValue;->row:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->row:I

    .line 342
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 348
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    .line 351
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDropDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    sget-object v0, Ljxl/write/biff/CellValue;->logger:Lcommon/Logger;

    const-string v1, "need to change value for drop down drawing"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getCellFeatures()Ljxl/CellFeatures;
    .locals 1

    .line 490
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 1

    .line 312
    iget-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 221
    iget v0, p0, Ljxl/write/biff/CellValue;->column:I

    return v0
.end method

.method public getData()[B
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 257
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 258
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 259
    iget-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 211
    iget v0, p0, Ljxl/write/biff/CellValue;->row:I

    return v0
.end method

.method protected getSheet()Ljxl/write/biff/WritableSheetImpl;
    .locals 1

    .line 453
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    return-object v0
.end method

.method public getWritableCellFeatures()Ljxl/write/WritableCellFeatures;
    .locals 1

    .line 500
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    return-object v0
.end method

.method final getXFIndex()I
    .locals 1

    .line 302
    iget-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v0

    return v0
.end method

.method incrementColumn()V
    .locals 3

    .line 364
    iget v0, p0, Ljxl/write/biff/CellValue;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->column:I

    .line 366
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 372
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    :cond_0
    return-void
.end method

.method incrementRow()V
    .locals 3

    .line 321
    iget v0, p0, Ljxl/write/biff/CellValue;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->row:I

    .line 323
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 329
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    :cond_0
    return-void
.end method

.method public isHidden()Z
    .locals 3

    .line 232
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    invoke-virtual {v0, v1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 239
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    iget v2, p0, Ljxl/write/biff/CellValue;->row:I

    invoke-virtual {v0, v2}, Ljxl/write/biff/WritableSheetImpl;->getRowInfo(I)Ljxl/write/biff/RowRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method final isReferenced()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    return v0
.end method

.method public final removeComment(Ljxl/biff/drawing/Comment;)V
    .locals 1

    .line 614
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p1}, Ljxl/write/biff/WritableSheetImpl;->removeDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    return-void
.end method

.method rowInserted(Ljxl/Sheet;II)V
    .locals 0

    return-void
.end method

.method rowRemoved(Ljxl/Sheet;II)V
    .locals 0

    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .locals 0

    const/4 p2, 0x1

    .line 276
    iput-boolean p2, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 277
    iput-object p3, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    .line 278
    iput-object p1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 280
    invoke-direct {p0}, Ljxl/write/biff/CellValue;->addCellFormat()V

    .line 281
    invoke-virtual {p0}, Ljxl/write/biff/CellValue;->addCellFeatures()V

    return-void
.end method

.method public setCellFeatures(Ljxl/write/WritableCellFeatures;)V
    .locals 2

    .line 510
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Ljxl/write/biff/CellValue;->logger:Lcommon/Logger;

    const-string v1, "current cell features not null - overwriting"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 515
    :cond_0
    iput-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 516
    invoke-virtual {p1, p0}, Ljxl/write/WritableCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    .line 520
    iget-boolean p1, p0, Ljxl/write/biff/CellValue;->referenced:Z

    if-eqz p1, :cond_1

    .line 522
    invoke-virtual {p0}, Ljxl/write/biff/CellValue;->addCellFeatures()V

    :cond_1
    return-void
.end method

.method public setCellFormat(Ljxl/format/CellFormat;)V
    .locals 0

    .line 187
    check-cast p1, Ljxl/biff/XFRecord;

    iput-object p1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 192
    iget-boolean p1, p0, Ljxl/write/biff/CellValue;->referenced:Z

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object p1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    .line 201
    invoke-direct {p0}, Ljxl/write/biff/CellValue;->addCellFormat()V

    return-void
.end method

.method final setCopied(Z)V
    .locals 0

    .line 626
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    return-void
.end method
