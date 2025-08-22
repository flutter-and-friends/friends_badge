.class Ljxl/read/biff/StringFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "StringFormulaRecord.java"

# interfaces
.implements Ljxl/LabelCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/StringFormulaCell;


# static fields
.field static synthetic class$jxl$read$biff$StringFormulaRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Ljxl/read/biff/StringFormulaRecord;->class$jxl$read$biff$StringFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.StringFormulaRecord"

    invoke-static {v0}, Ljxl/read/biff/StringFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/StringFormulaRecord;->class$jxl$read$biff$StringFormulaRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/StringFormulaRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 137
    iput-object p3, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 138
    iput-object p4, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 140
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    const-string p1, ""

    .line 141
    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p3, p6}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 97
    iput-object p4, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 98
    iput-object p5, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 100
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    .line 102
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result p1

    .line 107
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 109
    :goto_0
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object p6

    sget-object v0, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const/4 v1, 0x4

    if-eq p6, v0, :cond_0

    if-ge p5, v1, :cond_0

    .line 111
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p3

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    if-ge p5, v1, :cond_1

    const/4 p4, 0x1

    .line 114
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, " @ "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcommon/Assert;->verify(ZLjava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1, p7}, Ljxl/read/biff/StringFormulaRecord;->readString([BLjxl/WorkbookSettings;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 49
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

.method private readString([BLjxl/WorkbookSettings;)V
    .locals 7

    const/4 v0, 0x0

    .line 154
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, ""

    .line 158
    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v3, 0x2

    .line 162
    aget-byte v4, p1, v3

    const/4 v5, 0x3

    and-int/lit8 v6, v4, 0xf

    if-eq v6, v4, :cond_1

    .line 170
    aget-byte v1, p1, v0

    invoke-static {v1, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 171
    aget-byte v4, p1, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x2

    :cond_4
    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x4

    :cond_5
    and-int/2addr v4, v2

    if-nez v4, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 196
    invoke-static {p1, v1, v3, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    goto :goto_3

    .line 200
    :cond_7
    invoke-static {p1, v1, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    :goto_3
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    array-length v1, v0

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    new-array v4, v1, [B

    const/4 v1, 0x0

    .line 265
    array-length v3, v4

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v6, p0, Ljxl/read/biff/StringFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v7, p0, Ljxl/read/biff/StringFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v8

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 269
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 270
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    .line 273
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Ljxl/read/biff/StringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 249
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 244
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Ljxl/read/biff/StringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 231
    sget-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    return-object v0
.end method
