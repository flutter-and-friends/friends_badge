.class final Ljxl/read/biff/SheetReader;
.super Ljava/lang/Object;
.source "SheetReader.java"


# static fields
.field static synthetic class$jxl$read$biff$SheetReader:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private cells:[[Ljxl/Cell;

.field private charts:Ljava/util/ArrayList;

.field private columnBreaks:[I

.field private columnInfosArray:Ljava/util/ArrayList;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawings:Ljava/util/ArrayList;

.field private excelFile:Ljxl/read/biff/File;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hyperlinks:Ljava/util/ArrayList;

.field private mergedCells:[Ljxl/Range;

.field private nineteenFour:Z

.field private numCols:I

.field private numRows:I

.field private outOfBoundsCells:Ljava/util/ArrayList;

.field private plsRecord:Ljxl/read/biff/PLSRecord;

.field private rowBreaks:[I

.field private rowProperties:Ljava/util/ArrayList;

.field private settings:Ljxl/SheetSettings;

.field private sharedFormulas:Ljava/util/ArrayList;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private sheetBof:Ljxl/read/biff/BOFRecord;

.field private startPosition:I

.field private workbook:Ljxl/read/biff/WorkbookParser;

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    sget-object v0, Ljxl/read/biff/SheetReader;->class$jxl$read$biff$SheetReader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.SheetReader"

    invoke-static {v0}, Ljxl/read/biff/SheetReader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetReader;->class$jxl$read$biff$SheetReader:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    .line 262
    iput-object p2, p0, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 263
    iput-object p3, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 264
    iput-object p4, p0, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    .line 265
    iput-object p5, p0, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    .line 267
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    .line 269
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    .line 271
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    .line 272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    .line 274
    iput-boolean p6, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    .line 275
    iput-object p7, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    .line 276
    iput p8, p0, Ljxl/read/biff/SheetReader;->startPosition:I

    .line 277
    iput-object p9, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    .line 278
    new-instance p1, Ljxl/SheetSettings;

    invoke-direct {p1, p9}, Ljxl/SheetSettings;-><init>(Ljxl/Sheet;)V

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    .line 279
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method private addCell(Ljxl/Cell;)V
    .locals 4

    .line 291
    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    if-ge v0, v1, :cond_1

    .line 293
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 298
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " already contains data"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 301
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aput-object p1, v0, v1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private addCellComment(IILjava/lang/String;DD)V
    .locals 14

    move-object v0, p0

    .line 1437
    iget-object v1, v0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v1, v1, p2

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 1440
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cell at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static/range {p1 .. p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " not present - adding a blank"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1442
    new-instance v1, Ljxl/read/biff/MulBlankCell;

    const/4 v5, 0x0

    iget-object v6, v0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v7, v0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v2, v1

    move/from16 v3, p2

    move v4, p1

    invoke-direct/range {v2 .. v7}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1447
    new-instance v2, Ljxl/CellFeatures;

    invoke-direct {v2}, Ljxl/CellFeatures;-><init>()V

    move-object v8, v2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    .line 1448
    invoke-virtual/range {v8 .. v13}, Ljxl/CellFeatures;->setReadComment(Ljava/lang/String;DD)V

    .line 1449
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1450
    invoke-direct {p0, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    return-void

    .line 1455
    :cond_0
    instance-of v2, v1, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v2, :cond_2

    .line 1457
    check-cast v1, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1458
    invoke-interface {v1}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1462
    new-instance v2, Ljxl/CellFeatures;

    invoke-direct {v2}, Ljxl/CellFeatures;-><init>()V

    .line 1463
    invoke-interface {v1, v2}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    :cond_1
    move-object v3, v2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 1466
    invoke-virtual/range {v3 .. v8}, Ljxl/CellFeatures;->setReadComment(Ljava/lang/String;DD)V

    goto :goto_0

    .line 1470
    :cond_2
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Not able to add comment to cell type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static/range {p1 .. p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V
    .locals 6

    move v1, p2

    :goto_0
    if-gt v1, p4, :cond_5

    move v2, p1

    :goto_1
    if-gt v2, p3, :cond_4

    const/4 p2, 0x0

    .line 1497
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v3, v0

    if-le v3, v1, :cond_0

    aget-object v3, v0, v1

    array-length v3, v3

    if-le v3, v2, :cond_0

    .line 1499
    aget-object p2, v0, v1

    aget-object p2, p2, v2

    :cond_0
    if-nez p2, :cond_1

    .line 1504
    sget-object p1, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Cell at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " not present - adding a blank"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1507
    new-instance p1, Ljxl/read/biff/MulBlankCell;

    const/4 v3, 0x0

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1512
    new-instance p2, Ljxl/CellFeatures;

    invoke-direct {p2}, Ljxl/CellFeatures;-><init>()V

    .line 1513
    invoke-virtual {p2, p5}, Ljxl/CellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1514
    invoke-virtual {p1, p2}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1515
    invoke-direct {p0, p1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    return-void

    .line 1520
    :cond_1
    instance-of v0, p2, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v0, :cond_3

    .line 1522
    check-cast p2, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1523
    invoke-interface {p2}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1527
    new-instance v0, Ljxl/CellFeatures;

    invoke-direct {v0}, Ljxl/CellFeatures;-><init>()V

    .line 1528
    invoke-interface {p2, v0}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1531
    :cond_2
    invoke-virtual {v0, p5}, Ljxl/CellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_2

    .line 1535
    :cond_3
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Not able to add comment to cell type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " at "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z
    .locals 3

    .line 1173
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    if-nez v2, :cond_0

    .line 1175
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/SharedFormulaRecord;

    .line 1176
    invoke-virtual {v2, p1}, Ljxl/read/biff/SharedFormulaRecord;->add(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 78
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

.method private handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V
    .locals 10

    if-nez p2, :cond_0

    .line 1556
    sget-object p1, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string p2, "Object record is not associated with a drawing  record - ignoring"

    invoke-virtual {p1, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1564
    :try_start_0
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_2

    .line 1566
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_1

    .line 1568
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1571
    :cond_1
    new-instance p3, Ljxl/biff/drawing/Drawing;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v5

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/Drawing;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/Sheet;)V

    .line 1576
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1581
    :cond_2
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8

    .line 1583
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_3

    .line 1585
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1588
    :cond_3
    new-instance v1, Ljxl/biff/drawing/Comment;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1594
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1595
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-ne p2, v2, :cond_4

    .line 1597
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1598
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1599
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1601
    :cond_4
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v2, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcommon/Assert;->verify(Z)V

    .line 1602
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1603
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1605
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1606
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-static {v3}, Lcommon/Assert;->verify(Z)V

    .line 1607
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1608
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1610
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1611
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v2, :cond_7

    .line 1613
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1614
    invoke-virtual {v1, p2}, Ljxl/biff/drawing/Comment;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1617
    :cond_7
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/Comment;->getObjectId()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1622
    :cond_8
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_a

    .line 1624
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_9

    .line 1626
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1629
    :cond_9
    new-instance p3, Ljxl/biff/drawing/ComboBox;

    iget-object v4, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v5

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1634
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1639
    :cond_a
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne p3, v1, :cond_10

    .line 1641
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_b

    .line 1643
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1646
    :cond_b
    new-instance p3, Ljxl/biff/drawing/Button;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1652
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1653
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-ne p2, v1, :cond_c

    .line 1655
    new-instance p2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1656
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1657
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1659
    :cond_c
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne p2, v1, :cond_d

    const/4 p2, 0x1

    goto :goto_1

    :cond_d
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Lcommon/Assert;->verify(Z)V

    .line 1660
    new-instance p2, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {p2, p1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1661
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1663
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1664
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_e

    const/4 v3, 0x1

    :cond_e
    invoke-static {v3}, Lcommon/Assert;->verify(Z)V

    .line 1665
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1666
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1668
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p1

    .line 1669
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p2

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne p2, v1, :cond_f

    .line 1671
    new-instance p2, Ljxl/biff/ContinueRecord;

    invoke-direct {p2, p1}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1672
    invoke-virtual {p3, p2}, Ljxl/biff/drawing/Button;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1675
    :cond_f
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1681
    :cond_10
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object p3

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq p3, v1, :cond_13

    .line 1683
    sget-object p3, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " on sheet \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" not supported - omitting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1687
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez p3, :cond_11

    .line 1689
    new-instance p3, Ljxl/biff/drawing/DrawingData;

    invoke-direct {p3}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1692
    :cond_11
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 1694
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    if-eqz p3, :cond_12

    .line 1696
    iget-object p3, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {p3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V
    :try_end_0
    .catch Ljxl/biff/drawing/DrawingDataException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    return-void

    :catch_0
    move-exception p1

    .line 1705
    sget-object p2, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/DrawingDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "...disabling drawings for the remainder of the workbook"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1707
    iget-object p1, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/WorkbookSettings;->setDrawingsDisabled(Z)V

    :cond_13
    return-void
.end method

.method private handleOutOfBoundsCells()V
    .locals 7

    .line 1725
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1726
    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1729
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1731
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/Cell;

    .line 1732
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1733
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1736
    :cond_0
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Some cells exceeded the specified bounds.  Resizing sheet dimensions from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Ljxl/read/biff/SheetReader;->numCols:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, p0, Ljxl/read/biff/SheetReader;->numRows:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1742
    iget v2, p0, Ljxl/read/biff/SheetReader;->numCols:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    const/4 v2, 0x0

    .line 1744
    :goto_1
    iget v4, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v2, v4, :cond_1

    .line 1746
    new-array v4, v1, [Ljxl/Cell;

    .line 1747
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v5, v5, v2

    .line 1748
    array-length v6, v5

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1749
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1754
    :cond_1
    iget v2, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-le v0, v2, :cond_2

    .line 1756
    new-array v2, v0, [[Ljxl/Cell;

    .line 1757
    iget-object v4, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v5, v4

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1758
    iput-object v2, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    .line 1761
    iget v3, p0, Ljxl/read/biff/SheetReader;->numRows:I

    :goto_2
    if-ge v3, v0, :cond_2

    .line 1763
    new-array v4, v1, [Ljxl/Cell;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1767
    :cond_2
    iput v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1768
    iput v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1771
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1773
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/Cell;

    .line 1774
    invoke-direct {p0, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_3

    .line 1777
    :cond_3
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;
    .locals 12

    .line 1195
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    .line 1196
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getFilePos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/File;->setPos(I)V

    .line 1198
    new-instance v1, Ljxl/read/biff/FormulaRecord;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v4

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v8, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    sget-object v9, Ljxl/read/biff/FormulaRecord;->ignoreSharedFormula:Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;

    iget-object v10, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v11, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v3, v1

    move-object v7, v8

    invoke-direct/range {v3 .. v11}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    .line 1209
    :try_start_0
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object p1

    .line 1212
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/read/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v2, v3, :cond_0

    .line 1214
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljxl/read/biff/NumberFormulaRecord;

    .line 1215
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    new-instance p1, Ljxl/read/biff/DateFormulaRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v8, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    .line 1226
    :cond_0
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v2, v0}, Ljxl/read/biff/File;->setPos(I)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1233
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getColumn()I

    move-result v3

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getRow()I

    move-result v1

    invoke-static {v3, v1}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final getAutoFilter()Ljxl/biff/AutoFilter;
    .locals 1

    .line 1319
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method final getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .locals 1

    .line 1419
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method final getCells()[[Ljxl/Cell;
    .locals 1

    .line 1269
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    return-object v0
.end method

.method final getCharts()Ljava/util/ArrayList;
    .locals 1

    .line 1329
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getColumnBreaks()[I
    .locals 1

    .line 1389
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    return-object v0
.end method

.method final getColumnInfosArray()Ljava/util/ArrayList;
    .locals 1

    .line 1289
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getConditionalFormats()Ljava/util/ArrayList;
    .locals 1

    .line 1309
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getDataValidation()Ljxl/biff/DataValidation;
    .locals 1

    .line 1349
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method getDrawingData()Ljxl/biff/drawing/DrawingData;
    .locals 1

    .line 1716
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    return-object v0
.end method

.method final getDrawings()Ljava/util/ArrayList;
    .locals 1

    .line 1339
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getHyperlinks()Ljava/util/ArrayList;
    .locals 1

    .line 1299
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getMergedCells()[Ljxl/Range;
    .locals 1

    .line 1359
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    return-object v0
.end method

.method final getNumCols()I
    .locals 1

    .line 1259
    iget v0, p0, Ljxl/read/biff/SheetReader;->numCols:I

    return v0
.end method

.method final getNumRows()I
    .locals 1

    .line 1249
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    return v0
.end method

.method final getPLS()Ljxl/read/biff/PLSRecord;
    .locals 1

    .line 1409
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    return-object v0
.end method

.method final getRowBreaks()[I
    .locals 1

    .line 1379
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    return-object v0
.end method

.method final getRowProperties()Ljava/util/ArrayList;
    .locals 1

    .line 1279
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getSettings()Ljxl/SheetSettings;
    .locals 1

    .line 1369
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method final getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 1399
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method final read()V
    .locals 30

    move-object/from16 v9, p0

    .line 328
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget v1, v9, Ljxl/read/biff/SheetReader;->startPosition:I

    invoke-virtual {v0, v1}, Ljxl/read/biff/File;->setPos(I)V

    .line 353
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 356
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    :goto_0
    if-eqz v15, :cond_65

    .line 360
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v1

    .line 363
    sget-object v2, Ljxl/biff/Type;->UNKNOWN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 365
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string v14, "Biff code zero found"

    invoke-virtual {v2, v14}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v2

    const/16 v14, 0xa

    if-ne v2, v14, :cond_0

    .line 370
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string v14, "Biff code zero found - trying a dimension record."

    invoke-virtual {v2, v14}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 371
    sget-object v2, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    invoke-virtual {v0, v2}, Ljxl/read/biff/Record;->setType(Ljxl/biff/Type;)V

    goto :goto_1

    .line 375
    :cond_0
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string v14, "Biff code zero found - Ignoring."

    invoke-virtual {v2, v14}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 379
    :cond_1
    :goto_1
    sget-object v2, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3

    .line 383
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_2

    .line 389
    :cond_2
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    sget-object v2, Ljxl/read/biff/DimensionRecord;->biff7:Ljxl/read/biff/DimensionRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/DimensionRecord$Biff7;)V

    .line 391
    :goto_2
    invoke-virtual {v1}, Ljxl/read/biff/DimensionRecord;->getNumberOfRows()I

    move-result v0

    iput v0, v9, Ljxl/read/biff/SheetReader;->numRows:I

    .line 392
    invoke-virtual {v1}, Ljxl/read/biff/DimensionRecord;->getNumberOfColumns()I

    move-result v0

    iput v0, v9, Ljxl/read/biff/SheetReader;->numCols:I

    .line 393
    iget v0, v9, Ljxl/read/biff/SheetReader;->numRows:I

    iget v1, v9, Ljxl/read/biff/SheetReader;->numCols:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljxl/Cell;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljxl/Cell;

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    goto :goto_3

    .line 395
    :cond_3
    sget-object v2, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    if-ne v1, v2, :cond_5

    .line 397
    new-instance v1, Ljxl/read/biff/LabelSSTRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v14, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v14, v12}, Ljxl/read/biff/LabelSSTRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 401
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_4
    :goto_3
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v27, v15

    move-object v15, v3

    :goto_4
    move-object v10, v4

    move-object v11, v6

    goto/16 :goto_1f

    .line 403
    :cond_5
    sget-object v2, Ljxl/biff/Type;->RK:Ljxl/biff/Type;

    if-eq v1, v2, :cond_62

    sget-object v2, Ljxl/biff/Type;->RK2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_6

    goto/16 :goto_1e

    .line 418
    :cond_6
    sget-object v2, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_7

    .line 420
    new-instance v1, Ljxl/read/biff/HyperlinkRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v12}, Ljxl/read/biff/HyperlinkRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;Ljxl/WorkbookSettings;)V

    .line 421
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 423
    :cond_7
    sget-object v2, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_9

    .line 425
    new-instance v1, Ljxl/read/biff/MergedCellsRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/MergedCellsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;)V

    .line 426
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    if-nez v0, :cond_8

    .line 428
    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    goto :goto_3

    .line 432
    :cond_8
    array-length v0, v0

    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [Ljxl/Range;

    .line 434
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v12, v2

    invoke-static {v2, v13, v0, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v12, v12

    invoke-virtual {v1}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v1

    array-length v1, v1

    invoke-static {v2, v13, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    iput-object v0, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    goto :goto_3

    .line 443
    :cond_9
    sget-object v2, Ljxl/biff/Type;->MULRK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_b

    .line 445
    new-instance v1, Ljxl/read/biff/MulRKRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/MulRKRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 448
    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getNumberOfColumns()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_4

    .line 452
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulRKRecord;->getXFIndex(I)I

    move-result v12

    .line 454
    new-instance v14, Ljxl/read/biff/NumberValue;

    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getRow()I

    move-result v17

    invoke-virtual {v1}, Ljxl/read/biff/MulRKRecord;->getFirstColumn()I

    move-result v16

    add-int v18, v16, v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/MulRKRecord;->getRKNumber(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljxl/read/biff/RKHelper;->getDouble(I)D

    move-result-wide v19

    iget-object v13, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move/from16 v27, v0

    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v16, v14

    move/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v0

    invoke-direct/range {v16 .. v23}, Ljxl/read/biff/NumberValue;-><init>(IIDILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 463
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, v12}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 465
    new-instance v0, Ljxl/read/biff/DateRecord;

    iget-object v13, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move-object/from16 v22, v1

    iget-boolean v1, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    move-object/from16 v23, v3

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move/from16 v18, v12

    move-object/from16 v19, v13

    move/from16 v20, v1

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 470
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_6

    :cond_a
    move-object/from16 v22, v1

    move-object/from16 v23, v3

    .line 474
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, v12}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljxl/read/biff/NumberValue;->setNumberFormat(Ljava/text/NumberFormat;)V

    .line 475
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v22

    move-object/from16 v3, v23

    move/from16 v0, v27

    const/4 v13, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v23, v3

    .line 479
    sget-object v2, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_d

    .line 481
    new-instance v1, Ljxl/read/biff/NumberRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/NumberRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 483
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/NumberRecord;->getXFIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 485
    new-instance v0, Ljxl/read/biff/DateRecord;

    invoke-virtual {v1}, Ljxl/read/biff/NumberRecord;->getXFIndex()I

    move-result v18

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v3, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v12, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v12

    invoke-direct/range {v16 .. v21}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 489
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 493
    :cond_c
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 496
    :cond_d
    sget-object v2, Ljxl/biff/Type;->BOOLERR:Ljxl/biff/Type;

    if-ne v1, v2, :cond_f

    .line 498
    new-instance v1, Ljxl/read/biff/BooleanRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/BooleanRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 500
    invoke-virtual {v1}, Ljxl/read/biff/BooleanRecord;->isError()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 502
    new-instance v0, Ljxl/read/biff/ErrorRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BooleanRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v1, v2, v3}, Ljxl/read/biff/ErrorRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 504
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 508
    :cond_e
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_7

    .line 511
    :cond_f
    sget-object v2, Ljxl/biff/Type;->PRINTGRIDLINES:Ljxl/biff/Type;

    if-ne v1, v2, :cond_11

    .line 513
    new-instance v1, Ljxl/read/biff/PrintGridLinesRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PrintGridLinesRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 514
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PrintGridLinesRecord;->getPrintGridLines()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPrintGridLines(Z)V

    :cond_10
    :goto_7
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v27, v15

    move-object/from16 v15, v23

    goto/16 :goto_4

    .line 516
    :cond_11
    sget-object v2, Ljxl/biff/Type;->PRINTHEADERS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_12

    .line 518
    new-instance v1, Ljxl/read/biff/PrintHeadersRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PrintHeadersRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 519
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PrintHeadersRecord;->getPrintHeaders()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPrintHeaders(Z)V

    goto :goto_7

    .line 521
    :cond_12
    sget-object v2, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_14

    .line 525
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 527
    new-instance v1, Ljxl/read/biff/Window2Record;

    invoke-direct {v1, v0}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_8

    .line 531
    :cond_13
    new-instance v1, Ljxl/read/biff/Window2Record;

    sget-object v2, Ljxl/read/biff/Window2Record;->biff7:Ljxl/read/biff/Window2Record$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/Window2Record$Biff7;)V

    .line 534
    :goto_8
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/Window2Record;->getShowGridLines()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setShowGridLines(Z)V

    .line 535
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/Window2Record;->getDisplayZeroValues()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setDisplayZeroValues(Z)V

    .line 536
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setSelected(Z)V

    .line 537
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/Window2Record;->isPageBreakPreview()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageBreakPreviewMode(Z)V

    move-object/from16 v25, v1

    move-object v14, v7

    move-object v2, v10

    move-object v7, v11

    move-object/from16 v3, v23

    goto/16 :goto_22

    .line 539
    :cond_14
    sget-object v2, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_15

    .line 541
    new-instance v1, Ljxl/read/biff/PaneRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PaneRecord;-><init>(Ljxl/read/biff/Record;)V

    if-eqz v25, :cond_10

    .line 543
    invoke-virtual/range {v25 .. v25}, Ljxl/read/biff/Window2Record;->getFrozen()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 546
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PaneRecord;->getRowsVisible()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalFreeze(I)V

    .line 547
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PaneRecord;->getColumnsVisible()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setHorizontalFreeze(I)V

    goto/16 :goto_7

    .line 550
    :cond_15
    sget-object v2, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_16

    goto/16 :goto_7

    .line 554
    :cond_16
    sget-object v2, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1a

    .line 556
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 558
    new-instance v1, Ljxl/biff/drawing/NoteRecord;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/NoteRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 561
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/drawing/Comment;

    if-nez v0, :cond_17

    .line 566
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " cannot find comment for note id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "...ignoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_9

    .line 571
    :cond_17
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/Comment;->setNote(Ljxl/biff/drawing/NoteRecord;)V

    .line 573
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v2

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getWidth()D

    move-result-wide v13

    invoke-virtual {v0}, Ljxl/biff/drawing/Comment;->getHeight()D

    move-result-wide v16

    move-object/from16 v1, p0

    move/from16 v27, v15

    move-object/from16 v15, v23

    move-object/from16 v28, v10

    move-object v10, v4

    move-object v4, v12

    move-object v12, v5

    move-object/from16 v29, v11

    move-object v11, v6

    move-wide v5, v13

    move-object v14, v7

    move-object v13, v8

    move-wide/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SheetReader;->addCellComment(IILjava/lang/String;DD)V

    goto :goto_a

    :cond_18
    :goto_9
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move/from16 v27, v15

    move-object/from16 v15, v23

    move-object v10, v4

    move-object v11, v6

    :cond_19
    :goto_a
    move-object/from16 v2, v28

    move-object/from16 v7, v29

    goto/16 :goto_1f

    :cond_1a
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move/from16 v27, v15

    move-object/from16 v15, v23

    move-object v10, v4

    move-object v11, v6

    .line 583
    sget-object v2, Ljxl/biff/Type;->ARRAY:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1b

    :goto_b
    goto :goto_a

    .line 587
    :cond_1b
    sget-object v2, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1c

    .line 589
    new-instance v1, Ljxl/read/biff/ProtectRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ProtectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 590
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/ProtectRecord;->isProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setProtected(Z)V

    goto :goto_a

    .line 592
    :cond_1c
    sget-object v2, Ljxl/biff/Type;->SHAREDFORMULA:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1e

    if-nez v14, :cond_1d

    .line 596
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string v2, "Shared template formula is null - trying most recent formula template"

    invoke-virtual {v1, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 598
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SharedFormulaRecord;

    if-eqz v1, :cond_1d

    .line 603
    invoke-virtual {v1}, Ljxl/read/biff/SharedFormulaRecord;->getTemplateFormula()Ljxl/read/biff/BaseSharedFormulaRecord;

    move-result-object v7

    move-object/from16 v18, v7

    goto :goto_c

    :cond_1d
    move-object/from16 v18, v14

    .line 607
    :goto_c
    new-instance v1, Ljxl/read/biff/SharedFormulaRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Ljxl/read/biff/SharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/BaseSharedFormulaRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    .line 609
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    move/from16 v15, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    const/4 v14, 0x0

    goto/16 :goto_22

    .line 612
    :cond_1e
    sget-object v2, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    if-eq v1, v2, :cond_5d

    sget-object v2, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    if-ne v1, v2, :cond_1f

    goto/16 :goto_1b

    .line 679
    :cond_1f
    sget-object v2, Ljxl/biff/Type;->LABEL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_21

    .line 683
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 685
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    goto :goto_d

    .line 689
    :cond_20
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v21, Ljxl/read/biff/LabelRecord;->biff7:Ljxl/read/biff/LabelRecord$Biff7;

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-direct/range {v16 .. v21}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/LabelRecord$Biff7;)V

    .line 692
    :goto_d
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_a

    .line 694
    :cond_21
    sget-object v2, Ljxl/biff/Type;->RSTRING:Ljxl/biff/Type;

    if-ne v1, v2, :cond_22

    .line 699
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 700
    new-instance v1, Ljxl/read/biff/RStringRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v21, Ljxl/read/biff/RStringRecord;->biff7:Ljxl/read/biff/RStringRecord$Biff7;

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-direct/range {v16 .. v21}, Ljxl/read/biff/RStringRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/RStringRecord$Biff7;)V

    .line 703
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_a

    .line 705
    :cond_22
    sget-object v2, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    if-ne v1, v2, :cond_23

    goto/16 :goto_b

    .line 709
    :cond_23
    sget-object v2, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    if-ne v1, v2, :cond_24

    .line 711
    new-instance v1, Ljxl/read/biff/PasswordRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PasswordRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 712
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/PasswordRecord;->getPasswordHash()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setPasswordHash(I)V

    goto/16 :goto_a

    .line 714
    :cond_24
    sget-object v2, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    if-ne v1, v2, :cond_26

    .line 716
    new-instance v1, Ljxl/read/biff/RowRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/RowRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 719
    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->isDefaultHeight()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 724
    :cond_25
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 727
    :cond_26
    sget-object v2, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_27

    .line 729
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v1

    if-nez v1, :cond_19

    .line 731
    new-instance v1, Ljxl/read/biff/BlankCell;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/BlankCell;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 732
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_a

    .line 735
    :cond_27
    sget-object v2, Ljxl/biff/Type;->MULBLANK:Ljxl/biff/Type;

    if-ne v1, v2, :cond_28

    .line 737
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v1

    if-nez v1, :cond_19

    .line 739
    new-instance v1, Ljxl/read/biff/MulBlankRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/MulBlankRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 742
    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getNumberOfColumns()I

    move-result v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_19

    .line 746
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulBlankRecord;->getXFIndex(I)I

    move-result v6

    .line 748
    new-instance v8, Ljxl/read/biff/MulBlankCell;

    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getRow()I

    move-result v4

    invoke-virtual {v1}, Ljxl/read/biff/MulBlankRecord;->getFirstColumn()I

    move-result v3

    add-int v5, v3, v2

    iget-object v7, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v16, v3

    move-object v3, v8

    move/from16 v17, v0

    move-object v0, v8

    move-object/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 755
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v17

    goto :goto_e

    .line 759
    :cond_28
    sget-object v2, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_29

    .line 761
    new-instance v1, Ljxl/read/biff/SCLRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SCLRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 762
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SCLRecord;->getZoomFactor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setZoomFactor(I)V

    goto/16 :goto_a

    .line 764
    :cond_29
    sget-object v2, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    if-ne v1, v2, :cond_2a

    .line 766
    new-instance v1, Ljxl/read/biff/ColumnInfoRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 767
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 769
    :cond_2a
    sget-object v2, Ljxl/biff/Type;->HEADER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_2c

    .line 772
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 774
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_f

    .line 778
    :cond_2b
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/HeaderRecord;->biff7:Ljxl/read/biff/HeaderRecord$Biff7;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/HeaderRecord$Biff7;)V

    .line 781
    :goto_f
    new-instance v0, Ljxl/HeaderFooter;

    invoke-virtual {v1}, Ljxl/read/biff/HeaderRecord;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 782
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    goto/16 :goto_a

    .line 784
    :cond_2c
    sget-object v2, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_2e

    .line 787
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 789
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_10

    .line 793
    :cond_2d
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/FooterRecord;->biff7:Ljxl/read/biff/FooterRecord$Biff7;

    invoke-direct {v1, v0, v2, v3}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/FooterRecord$Biff7;)V

    .line 796
    :goto_10
    new-instance v0, Ljxl/HeaderFooter;

    invoke-virtual {v1}, Ljxl/read/biff/FooterRecord;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 797
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    goto/16 :goto_a

    .line 799
    :cond_2e
    sget-object v2, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    if-ne v1, v2, :cond_30

    .line 801
    new-instance v1, Ljxl/read/biff/SetupRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SetupRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 802
    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 804
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    goto :goto_11

    .line 808
    :cond_2f
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 810
    :goto_11
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getPaperSize()I

    move-result v2

    invoke-static {v2}, Ljxl/format/PaperSize;->getPaperSize(I)Ljxl/format/PaperSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 811
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getHeaderMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 812
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFooterMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljxl/SheetSettings;->setFooterMargin(D)V

    .line 813
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getScaleFactor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setScaleFactor(I)V

    .line 814
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getPageStart()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPageStart(I)V

    .line 815
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFitWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setFitWidth(I)V

    .line 816
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getFitHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setFitHeight(I)V

    .line 817
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getHorizontalPrintResolution()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setHorizontalPrintResolution(I)V

    .line 819
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getVerticalPrintResolution()I

    move-result v2

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalPrintResolution(I)V

    .line 820
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SetupRecord;->getCopies()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setCopies(I)V

    .line 822
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    if-eqz v0, :cond_19

    .line 824
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/biff/WorkspaceInformationRecord;->getFitToPages()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljxl/SheetSettings;->setFitToPages(Z)V

    goto/16 :goto_a

    .line 827
    :cond_30
    sget-object v2, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_31

    .line 829
    new-instance v1, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {v1, v0}, Ljxl/biff/WorkspaceInformationRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    goto/16 :goto_a

    .line 831
    :cond_31
    sget-object v2, Ljxl/biff/Type;->DEFCOLWIDTH:Ljxl/biff/Type;

    if-ne v1, v2, :cond_32

    .line 833
    new-instance v1, Ljxl/read/biff/DefaultColumnWidthRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DefaultColumnWidthRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 834
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/DefaultColumnWidthRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDefaultColumnWidth(I)V

    goto/16 :goto_a

    .line 836
    :cond_32
    sget-object v2, Ljxl/biff/Type;->DEFAULTROWHEIGHT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_33

    .line 838
    new-instance v1, Ljxl/read/biff/DefaultRowHeightRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/DefaultRowHeightRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 839
    invoke-virtual {v1}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v0

    if-eqz v0, :cond_19

    .line 841
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setDefaultRowHeight(I)V

    goto/16 :goto_a

    .line 844
    :cond_33
    sget-object v2, Ljxl/biff/Type;->CONDFMT:Ljxl/biff/Type;

    if-ne v1, v2, :cond_34

    .line 846
    new-instance v1, Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ConditionalFormatRangeRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v6, v1

    move-object v4, v10

    :goto_12
    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    :goto_13
    move/from16 v15, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    goto/16 :goto_22

    .line 848
    :cond_34
    sget-object v2, Ljxl/biff/Type;->CF:Ljxl/biff/Type;

    if-ne v1, v2, :cond_35

    .line 850
    new-instance v1, Ljxl/biff/ConditionalFormatRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ConditionalFormatRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 851
    new-instance v0, Ljxl/biff/ConditionalFormat;

    invoke-direct {v0, v11, v1}, Ljxl/biff/ConditionalFormat;-><init>(Ljxl/biff/ConditionalFormatRangeRecord;Ljxl/biff/ConditionalFormatRecord;)V

    .line 852
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    move/from16 v15, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    const/4 v6, 0x0

    goto/16 :goto_22

    .line 855
    :cond_35
    sget-object v2, Ljxl/biff/Type;->FILTERMODE:Ljxl/biff/Type;

    if-ne v1, v2, :cond_36

    .line 857
    new-instance v1, Ljxl/biff/FilterModeRecord;

    invoke-direct {v1, v0}, Ljxl/biff/FilterModeRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v4, v1

    :goto_14
    move-object v6, v11

    goto :goto_12

    .line 859
    :cond_36
    sget-object v2, Ljxl/biff/Type;->AUTOFILTERINFO:Ljxl/biff/Type;

    if-ne v1, v2, :cond_37

    .line 861
    new-instance v1, Ljxl/biff/AutoFilterInfoRecord;

    invoke-direct {v1, v0}, Ljxl/biff/AutoFilterInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v3, v1

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    goto :goto_13

    .line 863
    :cond_37
    sget-object v2, Ljxl/biff/Type;->AUTOFILTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_39

    .line 865
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getAutoFilterDisabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 867
    new-instance v1, Ljxl/biff/AutoFilterRecord;

    invoke-direct {v1, v0}, Ljxl/biff/AutoFilterRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 869
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    if-nez v0, :cond_38

    .line 871
    new-instance v0, Ljxl/biff/AutoFilter;

    invoke-direct {v0, v10, v15}, Ljxl/biff/AutoFilter;-><init>(Ljxl/biff/FilterModeRecord;Ljxl/biff/AutoFilterInfoRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 876
    :cond_38
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    invoke-virtual {v0, v1}, Ljxl/biff/AutoFilter;->add(Ljxl/biff/AutoFilterRecord;)V

    move-object v4, v10

    goto :goto_14

    .line 879
    :cond_39
    sget-object v2, Ljxl/biff/Type;->LEFTMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3a

    .line 881
    new-instance v1, Ljxl/read/biff/LeftMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/LeftMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 882
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setLeftMargin(D)V

    goto/16 :goto_a

    .line 884
    :cond_3a
    sget-object v2, Ljxl/biff/Type;->RIGHTMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3b

    .line 886
    new-instance v1, Ljxl/read/biff/RightMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/RightMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 887
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setRightMargin(D)V

    goto/16 :goto_a

    .line 889
    :cond_3b
    sget-object v2, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3c

    .line 891
    new-instance v1, Ljxl/read/biff/TopMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/TopMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 892
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setTopMargin(D)V

    goto/16 :goto_a

    .line 894
    :cond_3c
    sget-object v2, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3d

    .line 896
    new-instance v1, Ljxl/read/biff/BottomMarginRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/BottomMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 897
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/SheetSettings;->setBottomMargin(D)V

    goto/16 :goto_a

    .line 899
    :cond_3d
    sget-object v2, Ljxl/biff/Type;->HORIZONTALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_3f

    .line 903
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 905
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_15

    .line 909
    :cond_3e
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/HorizontalPageBreaksRecord;->biff7:Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;)V

    .line 912
    :goto_15
    invoke-virtual {v1}, Ljxl/read/biff/HorizontalPageBreaksRecord;->getRowBreaks()[I

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    goto/16 :goto_a

    .line 914
    :cond_3f
    sget-object v2, Ljxl/biff/Type;->VERTICALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_41

    .line 918
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 920
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_16

    .line 924
    :cond_40
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/VerticalPageBreaksRecord;->biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    invoke-direct {v1, v0, v2}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;)V

    .line 927
    :goto_16
    invoke-virtual {v1}, Ljxl/read/biff/VerticalPageBreaksRecord;->getColumnBreaks()[I

    move-result-object v0

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    goto/16 :goto_a

    .line 929
    :cond_41
    sget-object v2, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    if-ne v1, v2, :cond_42

    .line 931
    new-instance v1, Ljxl/read/biff/PLSRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/PLSRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    goto/16 :goto_a

    .line 933
    :cond_42
    sget-object v2, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    if-ne v1, v2, :cond_49

    .line 935
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v1

    if-nez v1, :cond_47

    .line 937
    new-instance v1, Ljxl/biff/DataValidityListRecord;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 938
    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_45

    if-eqz v13, :cond_44

    if-nez v12, :cond_44

    .line 943
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v0, :cond_43

    .line 945
    new-instance v0, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v0}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 948
    :cond_43
    new-instance v0, Ljxl/biff/drawing/Drawing2;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v3

    invoke-direct {v0, v13, v2, v3}, Ljxl/biff/drawing/Drawing2;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;)V

    .line 950
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    move-object/from16 v7, v29

    const/4 v13, 0x0

    goto :goto_17

    .line 958
    :cond_44
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    move-object/from16 v7, v29

    goto :goto_17

    .line 961
    :cond_45
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v7, v29

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 963
    new-instance v0, Ljxl/biff/DataValidation;

    invoke-direct {v0, v1}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    goto :goto_17

    .line 967
    :cond_46
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "object id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " referenced "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " by data validity list record not found - ignoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :goto_17
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    move/from16 v15, v27

    move-object/from16 v2, v28

    goto/16 :goto_22

    :cond_47
    move-object/from16 v7, v29

    :cond_48
    :goto_18
    move-object/from16 v2, v28

    goto/16 :goto_1f

    :cond_49
    move-object/from16 v7, v29

    .line 972
    sget-object v2, Ljxl/biff/Type;->HCENTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4a

    .line 974
    new-instance v1, Ljxl/read/biff/CentreRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 975
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setHorizontalCentre(Z)V

    goto :goto_18

    .line 977
    :cond_4a
    sget-object v2, Ljxl/biff/Type;->VCENTER:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4b

    .line 979
    new-instance v1, Ljxl/read/biff/CentreRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 980
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setVerticalCentre(Z)V

    goto :goto_18

    .line 982
    :cond_4b
    sget-object v2, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    if-ne v1, v2, :cond_4d

    .line 984
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v1

    if-nez v1, :cond_48

    .line 986
    new-instance v6, Ljxl/biff/DataValiditySettingsRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v2

    invoke-direct {v6, v0, v1, v1, v2}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 991
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_4c

    .line 993
    invoke-virtual {v0, v6}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 994
    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v3

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v4

    invoke-virtual {v6}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/SheetReader;->addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V

    goto :goto_18

    .line 1002
    :cond_4c
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string v1, "cannot add data validity settings"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_18

    .line 1006
    :cond_4d
    sget-object v2, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    if-ne v1, v2, :cond_50

    .line 1008
    new-instance v1, Ljxl/biff/drawing/ObjRecord;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/ObjRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1010
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    move-object/from16 v2, v28

    if-nez v0, :cond_4e

    .line 1012
    invoke-direct {v9, v1, v13, v2}, Ljxl/read/biff/SheetReader;->handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V

    .line 1013
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_4e
    invoke-virtual {v1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v0

    sget-object v3, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v0, v3, :cond_4f

    move-object v4, v10

    move-object v6, v11

    move-object v3, v15

    move/from16 v15, v27

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto/16 :goto_22

    :cond_4f
    move-object v5, v1

    move-object v4, v10

    move-object v6, v11

    goto/16 :goto_20

    :cond_50
    move-object/from16 v2, v28

    .line 1023
    sget-object v3, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-ne v1, v3, :cond_53

    .line 1025
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_64

    if-eqz v13, :cond_51

    .line 1031
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v13}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 1033
    :cond_51
    new-instance v1, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    if-eqz v26, :cond_52

    .line 1037
    invoke-virtual {v1}, Ljxl/biff/drawing/MsoDrawingRecord;->setFirst()V

    move-object v8, v1

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v3, v15

    move/from16 v15, v27

    const/16 v26, 0x0

    goto/16 :goto_22

    :cond_52
    move-object v8, v1

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    goto/16 :goto_21

    .line 1042
    :cond_53
    sget-object v3, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    if-ne v1, v3, :cond_54

    .line 1044
    new-instance v1, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    goto/16 :goto_1f

    .line 1046
    :cond_54
    sget-object v3, Ljxl/biff/Type;->CALCMODE:Ljxl/biff/Type;

    if-ne v1, v3, :cond_55

    .line 1048
    new-instance v1, Ljxl/read/biff/CalcModeRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/CalcModeRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1049
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/CalcModeRecord;->isAutomatic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setAutomaticFormulaCalculation(Z)V

    goto/16 :goto_1f

    .line 1051
    :cond_55
    sget-object v3, Ljxl/biff/Type;->SAVERECALC:Ljxl/biff/Type;

    if-ne v1, v3, :cond_56

    .line 1053
    new-instance v1, Ljxl/read/biff/SaveRecalcRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/SaveRecalcRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1054
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/read/biff/SaveRecalcRecord;->getRecalculateOnSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setRecalculateFormulasBeforeSave(Z)V

    goto/16 :goto_1f

    .line 1056
    :cond_56
    sget-object v3, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v1, v3, :cond_5c

    .line 1058
    new-instance v1, Ljxl/read/biff/BOFRecord;

    invoke-direct {v1, v0}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1059
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcommon/Assert;->verify(Z)V

    .line 1061
    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v3}, Ljxl/read/biff/File;->getPos()I

    move-result v3

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getLength()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/lit8 v20, v3, -0x4

    .line 1065
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 1066
    :goto_19
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v0

    sget-object v3, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    iget v3, v3, Ljxl/biff/Type;->value:I

    if-eq v0, v3, :cond_57

    .line 1068
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    goto :goto_19

    .line 1071
    :cond_57
    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1073
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-nez v0, :cond_58

    .line 1075
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string v1, "only biff8 charts are supported"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_1a

    .line 1079
    :cond_58
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v0, :cond_59

    .line 1081
    new-instance v0, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v0}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1084
    :cond_59
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1086
    new-instance v0, Ljxl/biff/drawing/Chart;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v3}, Ljxl/read/biff/File;->getPos()I

    move-result v21

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v16, v0

    move-object/from16 v17, v13

    move-object/from16 v18, v12

    move-object/from16 v19, v1

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    invoke-direct/range {v16 .. v23}, Ljxl/biff/drawing/Chart;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;IILjxl/read/biff/File;Ljxl/WorkbookSettings;)V

    .line 1089
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 1093
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/Chart;)V

    :cond_5a
    :goto_1a
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1105
    :cond_5b
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_64

    const/16 v27, 0x0

    goto/16 :goto_1f

    :cond_5c
    const/4 v4, 0x1

    .line 1110
    sget-object v0, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v1, v0, :cond_64

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move-object v3, v15

    const/4 v15, 0x0

    goto/16 :goto_22

    :cond_5d
    :goto_1b
    move-object/from16 v2, v28

    move-object/from16 v7, v29

    const/4 v4, 0x1

    .line 614
    new-instance v1, Ljxl/read/biff/FormulaRecord;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    .line 622
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->isShared()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 625
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 628
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v24

    if-eqz v24, :cond_5e

    move-object v0, v14

    :cond_5e
    if-nez v24, :cond_61

    if-eqz v14, :cond_61

    .line 644
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v1

    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto/16 :goto_1d

    .line 649
    :cond_5f
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v3

    .line 653
    :try_start_0
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v4, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v4, :cond_60

    .line 655
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljxl/read/biff/NumberFormulaRecord;

    .line 656
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual/range {v17 .. v17}, Ljxl/read/biff/NumberFormulaRecord;->getXFIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 658
    new-instance v0, Ljxl/read/biff/DateFormulaRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v6, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v22}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    move-object v3, v0

    .line 667
    :cond_60
    invoke-direct {v9, v3}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1c

    :catch_0
    move-exception v0

    .line 673
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-static {v5, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :goto_1c
    move-object v0, v14

    :cond_61
    :goto_1d
    move-object v14, v0

    goto :goto_1f

    :cond_62
    :goto_1e
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    move-object v7, v11

    move/from16 v27, v15

    move-object v15, v3

    move-object v10, v4

    move-object v11, v6

    .line 405
    new-instance v1, Ljxl/read/biff/RKRecord;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v0, v3, v4}, Ljxl/read/biff/RKRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 407
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 409
    new-instance v0, Ljxl/read/biff/DateRecord;

    invoke-virtual {v1}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result v18

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v4, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 411
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    goto :goto_1f

    .line 415
    :cond_63
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_64
    :goto_1f
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    :goto_20
    move-object v8, v13

    :goto_21
    move-object v3, v15

    move/from16 v15, v27

    :goto_22
    move-object v10, v2

    move-object v11, v7

    move-object v7, v14

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_65
    move-object v12, v5

    move-object v14, v7

    move-object v13, v8

    move-object v2, v10

    .line 1117
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->restorePos()V

    .line 1120
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 1122
    invoke-direct/range {p0 .. p0}, Ljxl/read/biff/SheetReader;->handleOutOfBoundsCells()V

    .line 1126
    :cond_66
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1128
    :cond_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/SharedFormulaRecord;

    .line 1132
    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v4, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    invoke-virtual {v1, v3, v4}, Ljxl/read/biff/SharedFormulaRecord;->getFormulas(Ljxl/biff/FormattingRecords;Z)[Ljxl/Cell;

    move-result-object v1

    const/4 v3, 0x0

    .line 1134
    :goto_23
    array-length v4, v1

    if-ge v3, v4, :cond_67

    .line 1136
    aget-object v4, v1, v3

    invoke-direct {v9, v4}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_68
    if-nez v24, :cond_69

    if-eqz v14, :cond_69

    .line 1144
    invoke-direct {v9, v14}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v0

    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    :cond_69
    if-eqz v13, :cond_6a

    .line 1149
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1151
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V

    .line 1155
    :cond_6a
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1157
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Lcommon/Logger;

    const-string v1, "Not all comments have a corresponding Note record"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_6b
    return-void
.end method
