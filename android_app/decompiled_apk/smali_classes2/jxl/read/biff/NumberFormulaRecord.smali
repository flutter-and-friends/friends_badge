.class Ljxl/read/biff/NumberFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "NumberFormulaRecord.java"

# interfaces
.implements Ljxl/NumberCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/NumberFormulaCell;


# static fields
.field static synthetic class$jxl$read$biff$NumberFormulaRecord:Ljava/lang/Class;

.field private static final defaultFormat:Ljava/text/DecimalFormat;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private format:Ljava/text/NumberFormat;

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Ljxl/read/biff/NumberFormulaRecord;->class$jxl$read$biff$NumberFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.NumberFormulaRecord"

    invoke-static {v0}, Ljxl/read/biff/NumberFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/NumberFormulaRecord;->class$jxl$read$biff$NumberFormulaRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/NumberFormulaRecord;->logger:Lcommon/Logger;

    .line 62
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/NumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 100
    iput-object p3, p0, Ljxl/read/biff/NumberFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 101
    iput-object p4, p0, Ljxl/read/biff/NumberFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 102
    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    .line 104
    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getXFIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    .line 106
    iget-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    if-nez p1, :cond_0

    .line 108
    sget-object p1, Ljxl/read/biff/NumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    .line 111
    :cond_0
    iget-object p1, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    const/4 p2, 0x6

    invoke-static {p1, p2}, Ljxl/biff/DoubleHelper;->getIEEEDouble([BI)D

    move-result-wide p1

    iput-wide p1, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 47
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
.method public getContents()Ljava/lang/String;
    .locals 3

    .line 131
    iget-wide v0, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    array-length v1, v0

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    new-array v4, v1, [B

    const/4 v1, 0x0

    .line 175
    array-length v3, v4

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v6, p0, Ljxl/read/biff/NumberFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v7, p0, Ljxl/read/biff/NumberFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v8

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 179
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 180
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->formulaString:Ljava/lang/String;

    .line 183
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljxl/read/biff/NumberFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 159
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 154
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 194
    iget-object v0, p0, Ljxl/read/biff/NumberFormulaRecord;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 141
    sget-object v0, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 121
    iget-wide v0, p0, Ljxl/read/biff/NumberFormulaRecord;->value:D

    return-wide v0
.end method
