.class Ljxl/read/biff/SharedFormulaRecord;
.super Ljava/lang/Object;
.source "SharedFormulaRecord.java"


# static fields
.field static synthetic class$jxl$read$biff$SharedFormulaRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private firstCol:I

.field private firstRow:I

.field private formulas:Ljava/util/ArrayList;

.field private lastCol:I

.field private lastRow:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

.field private tokens:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Ljxl/read/biff/SharedFormulaRecord;->class$jxl$read$biff$SharedFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.SharedFormulaRecord"

    invoke-static {v0}, Ljxl/read/biff/SharedFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedFormulaRecord;->class$jxl$read$biff$SharedFormulaRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedFormulaRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/BaseSharedFormulaRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p5, p0, Ljxl/read/biff/SharedFormulaRecord;->sheet:Ljxl/read/biff/SheetImpl;

    .line 106
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p3, 0x0

    .line 108
    aget-byte p4, p1, p3

    const/4 p5, 0x1

    aget-byte p5, p1, p5

    invoke-static {p4, p5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p4

    iput p4, p0, Ljxl/read/biff/SharedFormulaRecord;->firstRow:I

    const/4 p4, 0x2

    .line 109
    aget-byte p4, p1, p4

    const/4 p5, 0x3

    aget-byte p5, p1, p5

    invoke-static {p4, p5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p4

    iput p4, p0, Ljxl/read/biff/SharedFormulaRecord;->lastRow:I

    const/4 p4, 0x4

    .line 110
    aget-byte p4, p1, p4

    and-int/lit16 p4, p4, 0xff

    iput p4, p0, Ljxl/read/biff/SharedFormulaRecord;->firstCol:I

    const/4 p4, 0x5

    .line 111
    aget-byte p4, p1, p4

    and-int/lit16 p4, p4, 0xff

    iput p4, p0, Ljxl/read/biff/SharedFormulaRecord;->lastCol:I

    .line 113
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    .line 115
    iput-object p2, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 117
    array-length p2, p1

    const/16 p4, 0xa

    sub-int/2addr p2, p4

    new-array p2, p2, [B

    iput-object p2, p0, Ljxl/read/biff/SharedFormulaRecord;->tokens:[B

    .line 118
    iget-object p2, p0, Ljxl/read/biff/SharedFormulaRecord;->tokens:[B

    array-length p5, p2

    invoke-static {p1, p4, p2, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 42
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
.method public add(Ljxl/read/biff/BaseSharedFormulaRecord;)Z
    .locals 2

    .line 131
    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getRow()I

    move-result v0

    .line 132
    iget v1, p0, Ljxl/read/biff/SharedFormulaRecord;->firstRow:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Ljxl/read/biff/SharedFormulaRecord;->lastRow:I

    if-gt v0, v1, :cond_0

    .line 134
    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getColumn()I

    move-result v0

    .line 135
    iget v1, p0, Ljxl/read/biff/SharedFormulaRecord;->firstCol:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Ljxl/read/biff/SharedFormulaRecord;->lastCol:I

    if-gt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getFormulas(Ljxl/biff/FormattingRecords;Z)[Ljxl/Cell;
    .locals 11

    .line 156
    iget-object v0, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/Cell;

    .line 160
    iget-object v1, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 162
    sget-object p1, Ljxl/read/biff/SharedFormulaRecord;->logger:Lcommon/Logger;

    const-string p2, "Shared formula template formula is null"

    invoke-virtual {p1, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    new-array p1, v2, [Ljxl/Cell;

    return-object p1

    .line 166
    :cond_0
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->tokens:[B

    invoke-virtual {v1, v3}, Ljxl/read/biff/BaseSharedFormulaRecord;->setTokens([B)V

    .line 170
    iget-object v1, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getType()Ljxl/CellType;

    move-result-object v1

    sget-object v3, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v1, v3, :cond_1

    .line 172
    iget-object v1, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    check-cast v1, Ljxl/read/biff/SharedNumberFormulaRecord;

    .line 174
    invoke-virtual {v1}, Ljxl/read/biff/SharedNumberFormulaRecord;->getNumberFormat()Ljava/text/NumberFormat;

    .line 176
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    invoke-virtual {v3}, Ljxl/read/biff/BaseSharedFormulaRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    new-instance v9, Ljxl/read/biff/SharedDateFormulaRecord;

    iget-object v7, p0, Ljxl/read/biff/SharedFormulaRecord;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SharedNumberFormulaRecord;->getFilePos()I

    move-result v8

    move-object v3, v9

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v8}, Ljxl/read/biff/SharedDateFormulaRecord;-><init>(Ljxl/read/biff/SharedNumberFormulaRecord;Ljxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;I)V

    iput-object v9, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 180
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    invoke-virtual {v1}, Ljxl/read/biff/SharedNumberFormulaRecord;->getTokens()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljxl/read/biff/BaseSharedFormulaRecord;->setTokens([B)V

    .line 184
    :cond_1
    iget-object v1, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    aput-object v1, v0, v2

    .line 188
    :goto_0
    iget-object v1, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 190
    iget-object v1, p0, Ljxl/read/biff/SharedFormulaRecord;->formulas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 193
    invoke-virtual {v1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v3, v4, :cond_2

    .line 195
    move-object v6, v1

    check-cast v6, Ljxl/read/biff/SharedNumberFormulaRecord;

    .line 197
    invoke-virtual {v1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    new-instance v1, Ljxl/read/biff/SharedDateFormulaRecord;

    iget-object v9, p0, Ljxl/read/biff/SharedFormulaRecord;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SharedNumberFormulaRecord;->getFilePos()I

    move-result v10

    move-object v5, v1

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v5 .. v10}, Ljxl/read/biff/SharedDateFormulaRecord;-><init>(Ljxl/read/biff/SharedNumberFormulaRecord;Ljxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;I)V

    .line 208
    :cond_2
    iget-object v3, p0, Ljxl/read/biff/SharedFormulaRecord;->tokens:[B

    invoke-virtual {v1, v3}, Ljxl/read/biff/BaseSharedFormulaRecord;->setTokens([B)V

    add-int/lit8 v2, v2, 0x1

    .line 209
    aput-object v1, v0, v2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getTemplateFormula()Ljxl/read/biff/BaseSharedFormulaRecord;
    .locals 1

    .line 222
    iget-object v0, p0, Ljxl/read/biff/SharedFormulaRecord;->templateFormula:Ljxl/read/biff/BaseSharedFormulaRecord;

    return-object v0
.end method
