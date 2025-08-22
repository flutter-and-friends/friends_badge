.class public Ljxl/read/biff/SharedNumberFormulaRecord;
.super Ljxl/read/biff/BaseSharedFormulaRecord;
.source "SharedNumberFormulaRecord.java"

# interfaces
.implements Ljxl/NumberCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/NumberFormulaCell;


# static fields
.field static synthetic class$jxl$read$biff$SharedNumberFormulaRecord:Ljava/lang/Class;

.field private static defaultFormat:Ljava/text/DecimalFormat;

.field private static logger:Lcommon/Logger;


# instance fields
.field private format:Ljava/text/NumberFormat;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget-object v0, Ljxl/read/biff/SharedNumberFormulaRecord;->class$jxl$read$biff$SharedNumberFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.SharedNumberFormulaRecord"

    invoke-static {v0}, Ljxl/read/biff/SharedNumberFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedNumberFormulaRecord;->class$jxl$read$biff$SharedNumberFormulaRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedNumberFormulaRecord;->logger:Lcommon/Logger;

    .line 68
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/SharedNumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;DLjxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 7

    .line 89
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 90
    iput-wide p3, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->value:D

    .line 91
    sget-object p1, Ljxl/read/biff/SharedNumberFormulaRecord;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object p1, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->format:Ljava/text/NumberFormat;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 51
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

    .line 127
    iget-wide v0, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getFormulaData()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getTokens()[B

    move-result-object v2

    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getExternalSheet()Ljxl/biff/formula/ExternalSheet;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getNameTable()Ljxl/biff/WorkbookMethods;

    move-result-object v5

    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 160
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 161
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    .line 163
    array-length v1, v0

    const/16 v2, 0x16

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 166
    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getRow()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 167
    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getColumn()I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v3, v1, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 168
    invoke-virtual {p0}, Ljxl/read/biff/SharedNumberFormulaRecord;->getXFIndex()I

    move-result v3

    const/4 v5, 0x4

    invoke-static {v3, v1, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 169
    iget-wide v5, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->value:D

    const/4 v3, 0x6

    invoke-static {v5, v6, v1, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 172
    array-length v5, v0

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    array-length v0, v0

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 176
    array-length v0, v1

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    .line 177
    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 190
    iget-object v0, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 137
    sget-object v0, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 117
    iget-wide v0, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->value:D

    return-wide v0
.end method

.method final setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Ljxl/read/biff/SharedNumberFormulaRecord;->format:Ljava/text/NumberFormat;

    :cond_0
    return-void
.end method
