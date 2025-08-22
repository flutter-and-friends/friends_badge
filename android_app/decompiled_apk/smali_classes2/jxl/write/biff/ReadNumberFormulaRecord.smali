.class Ljxl/write/biff/ReadNumberFormulaRecord;
.super Ljxl/write/biff/ReadFormulaRecord;
.source "ReadNumberFormulaRecord.java"

# interfaces
.implements Ljxl/NumberFormulaCell;


# static fields
.field static synthetic class$jxl$write$biff$ReadNumberFormulaRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Ljxl/write/biff/ReadNumberFormulaRecord;->class$jxl$write$biff$ReadNumberFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.ReadNumberFormulaRecord"

    invoke-static {v0}, Ljxl/write/biff/ReadNumberFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ReadNumberFormulaRecord;->class$jxl$write$biff$ReadNumberFormulaRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/ReadNumberFormulaRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ljxl/write/biff/ReadFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

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
.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 70
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/NumberFormulaCell;

    invoke-interface {v0}, Ljxl/NumberFormulaCell;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 59
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/NumberFormulaCell;

    invoke-interface {v0}, Ljxl/NumberFormulaCell;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method protected handleFormulaException()[B
    .locals 6

    .line 83
    invoke-super {p0}, Ljxl/write/biff/ReadFormulaRecord;->getCellData()[B

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    .line 87
    new-instance v2, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v4

    invoke-direct {v2, v3, v1, v1, v4}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 93
    :try_start_0
    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->parse()V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 97
    sget-object v3, Ljxl/write/biff/ReadNumberFormulaRecord;->logger:Lcommon/Logger;

    invoke-virtual {v1}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 99
    :goto_0
    invoke-virtual {v2}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v1

    .line 100
    array-length v2, v1

    const/16 v3, 0x10

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 101
    array-length v4, v1

    const/16 v5, 0xe

    invoke-static {v4, v2, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 102
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    .line 106
    aget-byte v3, v2, v1

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 108
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 110
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    array-length v0, v0

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    invoke-virtual {p0}, Ljxl/write/biff/ReadNumberFormulaRecord;->getValue()D

    move-result-wide v2

    const/4 v0, 0x6

    invoke-static {v2, v3, v1, v0}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    return-object v1
.end method
