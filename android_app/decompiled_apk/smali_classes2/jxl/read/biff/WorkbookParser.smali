.class public Ljxl/read/biff/WorkbookParser;
.super Ljxl/Workbook;
.source "WorkbookParser.java"

# interfaces
.implements Ljxl/biff/formula/ExternalSheet;
.implements Ljxl/biff/WorkbookMethods;


# static fields
.field static synthetic class$jxl$read$biff$WorkbookParser:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private addInFunctions:Ljava/util/ArrayList;

.field private bofs:I

.field private boundsheets:Ljava/util/ArrayList;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private containsMacros:Z

.field private countryRecord:Ljxl/read/biff/CountryRecord;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private excelFile:Ljxl/read/biff/File;

.field private externSheet:Ljxl/read/biff/ExternalSheetRecord;

.field private fonts:Ljxl/biff/Fonts;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private lastSheet:Ljxl/read/biff/SheetImpl;

.field private lastSheetIndex:I

.field private msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

.field private nameTable:Ljava/util/ArrayList;

.field private namedRecords:Ljava/util/HashMap;

.field private nineteenFour:Z

.field private settings:Ljxl/WorkbookSettings;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheets:Ljava/util/ArrayList;

.field private supbooks:Ljava/util/ArrayList;

.field private wbProtected:Z

.field private workbookBof:Ljxl/read/biff/BOFRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Ljxl/read/biff/WorkbookParser;->class$jxl$read$biff$WorkbookParser:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.WorkbookParser"

    invoke-static {v0}, Ljxl/read/biff/WorkbookParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/WorkbookParser;->class$jxl$read$biff$WorkbookParser:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/WorkbookParser;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/File;Ljxl/WorkbookSettings;)V
    .locals 2

    .line 183
    invoke-direct {p0}, Ljxl/Workbook;-><init>()V

    .line 184
    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    .line 185
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    .line 186
    new-instance p1, Ljxl/biff/Fonts;

    invoke-direct {p1}, Ljxl/biff/Fonts;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    .line 187
    new-instance p1, Ljxl/biff/FormattingRecords;

    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    invoke-direct {p1, v1}, Ljxl/biff/FormattingRecords;-><init>(Ljxl/biff/Fonts;)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    .line 190
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    const/4 p1, -0x1

    .line 191
    iput p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    .line 193
    iput-boolean p1, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    .line 194
    iput-object p2, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 63
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
.method final addSheet(Ljxl/Sheet;)V
    .locals 1

    .line 528
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1

    .line 509
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->clear()V

    .line 513
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->clear()V

    .line 515
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    return-void
.end method

.method public containsMacros()Z
    .locals 1

    .line 1165
    iget-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    return v0
.end method

.method public findByName(Ljava/lang/String;)[Ljxl/Range;
    .locals 11

    .line 1016
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/NameRecord;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1023
    :cond_0
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object p1

    .line 1025
    array-length v0, p1

    new-array v0, v0, [Ljxl/Range;

    const/4 v1, 0x0

    .line 1027
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1029
    new-instance v2, Ljxl/biff/RangeImpl;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {p0, v3}, Ljxl/read/biff/WorkbookParser;->getExternalSheetIndex(I)I

    move-result v5

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v6

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v7

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {p0, v3}, Ljxl/read/biff/WorkbookParser;->getLastExternalSheetIndex(I)I

    move-result v8

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v9

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v10

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Ljxl/biff/RangeImpl;-><init>(Ljxl/biff/WorkbookMethods;IIIIII)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findCellByName(Ljava/lang/String;)Ljxl/Cell;
    .locals 3

    .line 974
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/NameRecord;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 981
    :cond_0
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object p1

    const/4 v0, 0x0

    .line 984
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    invoke-virtual {p0, v1}, Ljxl/read/biff/WorkbookParser;->getExternalSheetIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljxl/read/biff/WorkbookParser;->getSheet(I)Ljxl/Sheet;

    move-result-object v1

    .line 985
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v2

    .line 986
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result p1

    .line 990
    invoke-interface {v1}, Ljxl/Sheet;->getColumns()I

    move-result v0

    if-gt v2, v0, :cond_2

    invoke-interface {v1}, Ljxl/Sheet;->getRows()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 995
    :cond_1
    invoke-interface {v1, v2, p1}, Ljxl/Sheet;->getCell(II)Ljxl/Cell;

    move-result-object p1

    return-object p1

    .line 992
    :cond_2
    :goto_0
    new-instance v0, Ljxl/biff/EmptyCell;

    invoke-direct {v0, v2, p1}, Ljxl/biff/EmptyCell;-><init>(II)V

    return-object v0
.end method

.method public getAddInFunctionNames()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1196
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .locals 1

    .line 1175
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method public getCell(Ljava/lang/String;)Ljxl/Cell;
    .locals 1

    .line 959
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/read/biff/WorkbookParser;->getSheet(Ljava/lang/String;)Ljxl/Sheet;

    move-result-object v0

    .line 960
    invoke-interface {v0, p1}, Ljxl/Sheet;->getCell(Ljava/lang/String;)Ljxl/Cell;

    move-result-object p1

    return-object p1
.end method

.method public getCompoundFile()Ljxl/read/biff/CompoundFile;
    .locals 1

    .line 1155
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getCompoundFile()Ljxl/read/biff/CompoundFile;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRecord()Ljxl/read/biff/CountryRecord;
    .locals 1

    .line 1185
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->countryRecord:Ljxl/read/biff/CountryRecord;

    return-object v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 1141
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getExternalSheetIndex(I)I
    .locals 1

    .line 320
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 325
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 327
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result p1

    return p1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getExternalSheetName(I)Ljava/lang/String;
    .locals 8

    .line 366
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/BoundsheetRecord;

    .line 370
    invoke-virtual {p1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 373
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 374
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SupbookRecord;

    .line 376
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v1, p1}, Ljxl/read/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result v1

    .line 377
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v2, p1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result p1

    .line 381
    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v2

    sget-object v3, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    const-string v4, "#REF"

    const-string v5, "\'"

    const v6, 0xffff

    if-ne v2, v3, :cond_6

    if-ne v1, v6, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/BoundsheetRecord;

    .line 391
    invoke-virtual {v0}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ne p1, v6, :cond_2

    goto :goto_1

    .line 400
    :cond_2
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/BoundsheetRecord;

    .line 401
    invoke-virtual {v2}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-ne v1, p1, :cond_3

    goto :goto_2

    .line 404
    :cond_3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/16 p1, 0x27

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "\'\'"

    invoke-static {v0, v5, v1}, Ljxl/biff/StringHelper;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/16 v1, 0x20

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    .line 416
    :cond_6
    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v2

    sget-object v3, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v2, v3, :cond_9

    .line 419
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "["

    .line 423
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v1, v6, :cond_7

    goto :goto_5

    .line 426
    :cond_7
    invoke-virtual {v0, v1}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq p1, v1, :cond_8

    .line 429
    invoke-virtual {v0, p1}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "[UNKNOWN]"

    return-object p1
.end method

.method public getExternalSheetRecord()Ljxl/read/biff/ExternalSheetRecord;
    .locals 1

    .line 900
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    return-object v0
.end method

.method public getFonts()Ljxl/biff/Fonts;
    .locals 1

    .line 945
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    return-object v0
.end method

.method public getFormattingRecords()Ljxl/biff/FormattingRecords;
    .locals 1

    .line 889
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    return-object v0
.end method

.method public getIndex(Ljxl/Sheet;)I
    .locals 5

    .line 1207
    invoke-interface {p1}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1211
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v2, v1, :cond_1

    .line 1213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/read/biff/BoundsheetRecord;

    .line 1215
    invoke-virtual {v4}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getLastExternalSheetIndex(I)I
    .locals 1

    .line 344
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 349
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 351
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result p1

    return p1
.end method

.method public getLastExternalSheetIndex(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLastExternalSheetName(I)Ljava/lang/String;
    .locals 7

    .line 449
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/BoundsheetRecord;

    .line 453
    invoke-virtual {p1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 456
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/read/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 457
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SupbookRecord;

    .line 459
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    invoke-virtual {v1, p1}, Ljxl/read/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result p1

    .line 461
    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v1

    sget-object v2, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    const-string v3, "#REF"

    const v4, 0xffff

    if-ne v1, v2, :cond_2

    if-ne p1, v4, :cond_1

    return-object v3

    .line 470
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/BoundsheetRecord;

    .line 471
    invoke-virtual {p1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 474
    :cond_2
    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v1

    sget-object v2, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v1, v2, :cond_4

    .line 477
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljxl/read/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "\'"

    .line 479
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "["

    .line 481
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne p1, v4, :cond_3

    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {v0, p1}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "[UNKNOWN]"

    return-object p1
.end method

.method public getMsoDrawingGroupRecord()Ljxl/biff/drawing/MsoDrawingGroupRecord;
    .locals 1

    .line 911
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 1117
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1118
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/NameRecord;

    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 1

    .line 1129
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/read/biff/NameRecord;

    if-eqz p1, :cond_0

    .line 1131
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord;->getIndex()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNameRecords()[Ljxl/read/biff/NameRecord;
    .locals 2

    .line 934
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/NameRecord;

    .line 935
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/read/biff/NameRecord;

    return-object v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 500
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRangeNames()[Ljava/lang/String;
    .locals 4

    .line 1049
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1050
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 1051
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getReadSheet(I)Ljxl/Sheet;
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Ljxl/read/biff/WorkbookParser;->getSheet(I)Ljxl/Sheet;

    move-result-object p1

    return-object p1
.end method

.method public getSettings()Ljxl/WorkbookSettings;
    .locals 1

    .line 1084
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getSheet(I)Ljxl/Sheet;
    .locals 2

    .line 234
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    if-eqz v0, :cond_0

    iget v1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->clear()V

    .line 244
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 250
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SheetImpl;

    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    .line 251
    iput p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheetIndex:I

    .line 252
    iget-object p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {p1}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 254
    iget-object p1, p0, Ljxl/read/biff/WorkbookParser;->lastSheet:Ljxl/read/biff/SheetImpl;

    return-object p1
.end method

.method public getSheet(Ljava/lang/String;)Ljxl/Sheet;
    .locals 4

    .line 268
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 271
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/BoundsheetRecord;

    .line 275
    invoke-virtual {v3}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {p0, v2}, Ljxl/read/biff/WorkbookParser;->getSheet(I)Ljxl/Sheet;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getSheetNames()[Ljava/lang/String;
    .locals 3

    .line 295
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 298
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 300
    iget-object v2, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/BoundsheetRecord;

    .line 301
    invoke-virtual {v2}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSheets()[Ljxl/Sheet;
    .locals 2

    .line 207
    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v0

    new-array v0, v0, [Ljxl/Sheet;

    .line 208
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/Sheet;

    return-object v0
.end method

.method public getSupbookRecords()[Ljxl/read/biff/SupbookRecord;
    .locals 2

    .line 922
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/SupbookRecord;

    .line 923
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/read/biff/SupbookRecord;

    return-object v0
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .locals 1

    .line 1064
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public isProtected()Z
    .locals 1

    .line 1074
    iget-boolean v0, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    return v0
.end method

.method protected parse()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;,
            Ljxl/read/biff/PasswordException;
        }
    .end annotation

    .line 541
    new-instance v0, Ljxl/read/biff/BOFRecord;

    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 542
    iput-object v0, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 543
    iget v1, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    .line 545
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    new-instance v0, Ljxl/read/biff/BiffException;

    sget-object v1, Ljxl/read/biff/BiffException;->unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v0

    .line 550
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isWorkbookGlobals()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 556
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    .line 557
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v5, v4

    .line 560
    :cond_2
    :goto_1
    iget v6, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    if-ne v6, v2, :cond_20

    .line 562
    iget-object v5, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    .line 564
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->SST:Ljxl/biff/Type;

    if-ne v6, v7, :cond_4

    .line 566
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 567
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    .line 568
    :goto_2
    invoke-virtual {v6}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_3

    .line 570
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    goto :goto_2

    .line 575
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljxl/read/biff/Record;

    .line 576
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljxl/read/biff/Record;

    .line 578
    new-instance v7, Ljxl/read/biff/SSTRecord;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v7, v5, v6, v8}, Ljxl/read/biff/SSTRecord;-><init>(Ljxl/read/biff/Record;[Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    iput-object v7, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    goto :goto_1

    .line 580
    :cond_4
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->FILEPASS:Ljxl/biff/Type;

    if-eq v6, v7, :cond_1f

    .line 584
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    if-ne v6, v7, :cond_7

    .line 588
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 590
    new-instance v6, Ljxl/read/biff/NameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-direct {v6, v5, v7, v8}, Ljxl/read/biff/NameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;I)V

    goto :goto_3

    .line 595
    :cond_5
    new-instance v6, Ljxl/read/biff/NameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    sget-object v9, Ljxl/read/biff/NameRecord;->biff7:Ljxl/read/biff/NameRecord$Biff7;

    invoke-direct {v6, v5, v7, v8, v9}, Ljxl/read/biff/NameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;ILjxl/read/biff/NameRecord$Biff7;)V

    .line 599
    :goto_3
    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->isGlobal()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 601
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->namedRecords:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->nameTable:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 606
    :cond_6
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 609
    :cond_7
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    if-ne v6, v7, :cond_9

    .line 613
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 615
    new-instance v6, Ljxl/biff/FontRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/biff/FontRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    goto :goto_4

    .line 619
    :cond_8
    new-instance v6, Ljxl/biff/FontRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v8, Ljxl/biff/FontRecord;->biff7:Ljxl/biff/FontRecord$Biff7;

    invoke-direct {v6, v5, v7, v8}, Ljxl/biff/FontRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FontRecord$Biff7;)V

    .line 621
    :goto_4
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {v7, v6}, Ljxl/biff/Fonts;->addFont(Ljxl/biff/FontRecord;)V

    goto/16 :goto_1

    .line 623
    :cond_9
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->PALETTE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_a

    .line 625
    new-instance v6, Ljxl/biff/PaletteRecord;

    invoke-direct {v6, v5}, Ljxl/biff/PaletteRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 626
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v7, v6}, Ljxl/biff/FormattingRecords;->setPalette(Ljxl/biff/PaletteRecord;)V

    goto/16 :goto_1

    .line 628
    :cond_a
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->NINETEENFOUR:Ljxl/biff/Type;

    if-ne v6, v7, :cond_b

    .line 630
    new-instance v6, Ljxl/read/biff/NineteenFourRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/NineteenFourRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 631
    invoke-virtual {v6}, Ljxl/read/biff/NineteenFourRecord;->is1904()Z

    move-result v6

    iput-boolean v6, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    goto/16 :goto_1

    .line 633
    :cond_b
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_d

    .line 636
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 638
    new-instance v6, Ljxl/biff/FormatRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/FormatRecord;->biff8:Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/FormatRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V

    goto :goto_5

    .line 642
    :cond_c
    new-instance v6, Ljxl/biff/FormatRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/FormatRecord;->biff7:Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/FormatRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V

    .line 646
    :goto_5
    :try_start_0
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v7, v6}, Ljxl/biff/FormattingRecords;->addFormat(Ljxl/biff/DisplayFormat;)V
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    .line 650
    invoke-virtual {v6}, Ljxl/biff/NumFormatRecordsException;->printStackTrace()V

    .line 652
    invoke-virtual {v6}, Ljxl/biff/NumFormatRecordsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcommon/Assert;->verify(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 655
    :cond_d
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->XF:Ljxl/biff/Type;

    if-ne v6, v7, :cond_f

    .line 658
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 660
    new-instance v6, Ljxl/biff/XFRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/XFRecord;->biff8:Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/XFRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V

    goto :goto_6

    .line 664
    :cond_e
    new-instance v6, Ljxl/biff/XFRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v9, Ljxl/biff/XFRecord;->biff7:Ljxl/biff/XFRecord$BiffType;

    invoke-direct {v6, v5, v7, v9}, Ljxl/biff/XFRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/XFRecord$BiffType;)V

    .line 669
    :goto_6
    :try_start_1
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v7, v6}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_1
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v6

    .line 674
    invoke-virtual {v6}, Ljxl/biff/NumFormatRecordsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcommon/Assert;->verify(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 677
    :cond_f
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->BOUNDSHEET:Ljxl/biff/Type;

    if-ne v6, v7, :cond_12

    .line 681
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 683
    new-instance v6, Ljxl/read/biff/BoundsheetRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/BoundsheetRecord;-><init>(Ljxl/read/biff/Record;)V

    goto :goto_7

    .line 687
    :cond_10
    new-instance v6, Ljxl/read/biff/BoundsheetRecord;

    sget-object v7, Ljxl/read/biff/BoundsheetRecord;->biff7:Ljxl/read/biff/BoundsheetRecord$Biff7;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/BoundsheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/BoundsheetRecord$Biff7;)V

    .line 690
    :goto_7
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->isSheet()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 692
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 694
    :cond_11
    invoke-virtual {v6}, Ljxl/read/biff/BoundsheetRecord;->isChart()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v7}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 696
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 699
    :cond_12
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->EXTERNSHEET:Ljxl/biff/Type;

    if-ne v6, v7, :cond_14

    .line 701
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 703
    new-instance v6, Ljxl/read/biff/ExternalSheetRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    goto/16 :goto_1

    .line 707
    :cond_13
    new-instance v6, Ljxl/read/biff/ExternalSheetRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    sget-object v8, Ljxl/read/biff/ExternalSheetRecord;->biff7:Ljxl/read/biff/ExternalSheetRecord$Biff7;

    invoke-direct {v6, v5, v7, v8}, Ljxl/read/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/ExternalSheetRecord$Biff7;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->externSheet:Ljxl/read/biff/ExternalSheetRecord;

    goto/16 :goto_1

    .line 711
    :cond_14
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CODEPAGE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_15

    .line 713
    new-instance v6, Ljxl/read/biff/CodepageRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/CodepageRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 714
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/read/biff/CodepageRecord;->getCharacterSet()I

    move-result v6

    invoke-virtual {v7, v6}, Ljxl/WorkbookSettings;->setCharacterSet(I)V

    goto/16 :goto_1

    .line 716
    :cond_15
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    if-ne v6, v7, :cond_17

    .line 718
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    .line 719
    :goto_8
    invoke-virtual {v6}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_16

    .line 721
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljxl/read/biff/Record;->addContinueRecord(Ljxl/read/biff/Record;)V

    .line 722
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    goto :goto_8

    .line 725
    :cond_16
    new-instance v6, Ljxl/read/biff/SupbookRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/SupbookRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    .line 726
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 728
    :cond_17
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->EXTERNNAME:Ljxl/biff/Type;

    if-ne v6, v7, :cond_18

    .line 730
    new-instance v6, Ljxl/read/biff/ExternalNameRecord;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v6, v5, v7}, Ljxl/read/biff/ExternalNameRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    .line 732
    invoke-virtual {v6}, Ljxl/read/biff/ExternalNameRecord;->isAddInFunction()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 734
    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->addInFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljxl/read/biff/ExternalNameRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 737
    :cond_18
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    if-ne v6, v7, :cond_19

    .line 739
    new-instance v6, Ljxl/read/biff/ProtectRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/ProtectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 740
    invoke-virtual {v6}, Ljxl/read/biff/ProtectRecord;->isProtected()Z

    move-result v6

    iput-boolean v6, p0, Ljxl/read/biff/WorkbookParser;->wbProtected:Z

    goto/16 :goto_1

    .line 742
    :cond_19
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->OBJPROJ:Ljxl/biff/Type;

    if-ne v6, v7, :cond_1a

    .line 744
    iput-boolean v2, p0, Ljxl/read/biff/WorkbookParser;->containsMacros:Z

    goto/16 :goto_1

    .line 746
    :cond_1a
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->COUNTRY:Ljxl/biff/Type;

    if-ne v6, v7, :cond_1b

    .line 748
    new-instance v6, Ljxl/read/biff/CountryRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/CountryRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->countryRecord:Ljxl/read/biff/CountryRecord;

    goto/16 :goto_1

    .line 750
    :cond_1b
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->MSODRAWINGGROUP:Ljxl/biff/Type;

    if-ne v6, v7, :cond_1d

    .line 752
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 754
    new-instance v6, Ljxl/biff/drawing/MsoDrawingGroupRecord;

    invoke-direct {v6, v5}, Ljxl/biff/drawing/MsoDrawingGroupRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    .line 756
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-nez v6, :cond_1c

    .line 758
    new-instance v6, Ljxl/biff/drawing/DrawingGroup;

    sget-object v7, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    invoke-direct {v6, v7}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/Origin;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 761
    :cond_1c
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->msoDrawingGroup:Ljxl/biff/drawing/MsoDrawingGroupRecord;

    invoke-virtual {v6, v7}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/MsoDrawingGroupRecord;)V

    .line 763
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    .line 764
    :goto_9
    invoke-virtual {v6}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v6, v7, :cond_2

    .line 766
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v7}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/read/biff/Record;)V

    .line 767
    iget-object v6, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v6}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v6

    goto :goto_9

    .line 771
    :cond_1d
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    if-ne v6, v7, :cond_1e

    .line 773
    new-instance v6, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-direct {v6, v5}, Ljxl/read/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v6, p0, Ljxl/read/biff/WorkbookParser;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    goto/16 :goto_1

    .line 775
    :cond_1e
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v6

    sget-object v7, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v6, v7, :cond_2

    .line 777
    iget v6, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    sub-int/2addr v6, v2

    iput v6, p0, Ljxl/read/biff/WorkbookParser;->bofs:I

    goto/16 :goto_1

    .line 582
    :cond_1f
    new-instance v0, Ljxl/read/biff/PasswordException;

    invoke-direct {v0}, Ljxl/read/biff/PasswordException;-><init>()V

    throw v0

    .line 782
    :cond_20
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 784
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    .line 786
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v0, v1, :cond_21

    .line 788
    new-instance v0, Ljxl/read/biff/BOFRecord;

    invoke-direct {v0, v5}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v10, v0

    goto :goto_a

    :cond_21
    move-object v10, v4

    :goto_a
    if-eqz v10, :cond_27

    .line 793
    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v0

    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 795
    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_b

    .line 797
    :cond_22
    new-instance v0, Ljxl/read/biff/BiffException;

    sget-object v1, Ljxl/read/biff/BiffException;->unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v0

    .line 800
    :cond_23
    :goto_b
    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 803
    new-instance v0, Ljxl/read/biff/SheetImpl;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v9, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v11, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v12, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    move-object v6, v0

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ljxl/read/biff/SheetImpl;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V

    .line 811
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/BoundsheetRecord;

    .line 813
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljxl/read/biff/SheetImpl;->setName(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->setHidden(Z)V

    .line 815
    invoke-virtual {p0, v0}, Ljxl/read/biff/WorkbookParser;->addSheet(Ljxl/Sheet;)V

    goto :goto_d

    .line 817
    :cond_24
    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 820
    new-instance v0, Ljxl/read/biff/SheetImpl;

    iget-object v7, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    iget-object v8, p0, Ljxl/read/biff/WorkbookParser;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v9, p0, Ljxl/read/biff/WorkbookParser;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v11, p0, Ljxl/read/biff/WorkbookParser;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v12, p0, Ljxl/read/biff/WorkbookParser;->nineteenFour:Z

    move-object v6, v0

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ljxl/read/biff/SheetImpl;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V

    .line 828
    iget-object v1, p0, Ljxl/read/biff/WorkbookParser;->boundsheets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljxl/read/biff/WorkbookParser;->getNumberOfSheets()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/BoundsheetRecord;

    .line 830
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljxl/read/biff/SheetImpl;->setName(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v1}, Ljxl/read/biff/BoundsheetRecord;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/read/biff/SheetImpl;->setHidden(Z)V

    .line 832
    invoke-virtual {p0, v0}, Ljxl/read/biff/WorkbookParser;->addSheet(Ljxl/Sheet;)V

    goto :goto_d

    .line 836
    :cond_25
    sget-object v0, Ljxl/read/biff/WorkbookParser;->logger:Lcommon/Logger;

    const-string v1, "BOF is unrecognized"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 839
    :goto_c
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-eq v0, v1, :cond_26

    .line 841
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    goto :goto_c

    .line 851
    :cond_26
    :goto_d
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 853
    iget-object v0, p0, Ljxl/read/biff/WorkbookParser;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    .line 855
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v0, v1, :cond_21

    .line 857
    new-instance v10, Ljxl/read/biff/BOFRecord;

    invoke-direct {v10, v5}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    goto/16 :goto_a

    .line 863
    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 865
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/NameRecord;

    .line 867
    invoke-virtual {v1}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    if-nez v3, :cond_29

    .line 869
    sget-object v1, Ljxl/read/biff/WorkbookParser;->logger:Lcommon/Logger;

    const-string v3, "Usage of a local non-builtin name"

    invoke-virtual {v1, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_e

    .line 871
    :cond_29
    invoke-virtual {v1}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    sget-object v4, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    if-ne v3, v4, :cond_28

    .line 875
    iget-object v3, p0, Ljxl/read/biff/WorkbookParser;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljxl/read/biff/NameRecord;->getSheetRef()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/SheetImpl;

    .line 876
    invoke-virtual {v3, v1}, Ljxl/read/biff/SheetImpl;->addLocalName(Ljxl/read/biff/NameRecord;)V

    goto :goto_e

    :cond_2a
    return-void

    .line 552
    :cond_2b
    new-instance v0, Ljxl/read/biff/BiffException;

    sget-object v1, Ljxl/read/biff/BiffException;->expectedGlobals:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v0
.end method
