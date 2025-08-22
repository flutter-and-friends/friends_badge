.class Ljxl/biff/formula/VariableArgFunction;
.super Ljxl/biff/formula/Operator;
.source "VariableArgFunction.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field static synthetic class$jxl$biff$formula$VariableArgFunction:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private arguments:I

.field private function:Ljxl/biff/formula/Function;

.field private readFromSheet:Z

.field private settings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Ljxl/biff/formula/VariableArgFunction;->class$jxl$biff$formula$VariableArgFunction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.VariableArgFunction"

    invoke-static {v0}, Ljxl/biff/formula/VariableArgFunction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/VariableArgFunction;->class$jxl$biff$formula$VariableArgFunction:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/VariableArgFunction;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Ljxl/biff/formula/VariableArgFunction;->readFromSheet:Z

    .line 67
    iput-object p1, p0, Ljxl/biff/formula/VariableArgFunction;->settings:Ljxl/WorkbookSettings;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 78
    iput-object p1, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    .line 79
    iput p2, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Ljxl/biff/formula/VariableArgFunction;->readFromSheet:Z

    .line 81
    iput-object p3, p0, Ljxl/biff/formula/VariableArgFunction;->settings:Ljxl/WorkbookSettings;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 38
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

.method private handleSpecialCases()V
    .locals 3

    .line 332
    iget-object v0, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    sget-object v1, Ljxl/biff/formula/Function;->SUMPRODUCT:Ljxl/biff/formula/Function;

    if-ne v0, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 337
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 339
    aget-object v2, v0, v1

    instance-of v2, v2, Ljxl/biff/formula/Area;

    if-eqz v2, :cond_0

    .line 341
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->setAlternateCode()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 3

    .line 173
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 177
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 3

    .line 193
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 196
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 3

    .line 212
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 215
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getBytes()[B
    .locals 7

    .line 286
    invoke-direct {p0}, Ljxl/biff/formula/VariableArgFunction;->handleSpecialCases()V

    .line 289
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    move-object v3, v2

    const/4 v2, 0x0

    .line 292
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 294
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 297
    array-length v5, v3

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 298
    array-length v6, v3

    invoke-static {v3, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v3, v3

    array-length v6, v4

    invoke-static {v4, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_0

    .line 304
    :cond_0
    array-length v0, v3

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 305
    array-length v2, v3

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    array-length v1, v3

    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->useAlternateCode()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    invoke-virtual {v2}, Ljxl/biff/formula/Token;->getCode()B

    move-result v2

    goto :goto_1

    :cond_1
    sget-object v2, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    invoke-virtual {v2}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v2

    :goto_1
    aput-byte v2, v0, v1

    .line 308
    array-length v1, v3

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 309
    iget-object v1, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    invoke-virtual {v1}, Ljxl/biff/formula/Function;->getCode()I

    move-result v1

    array-length v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method getFunction()Ljxl/biff/formula/Function;
    .locals 1

    .line 276
    iget-object v0, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    return-object v0
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 3

    .line 113
    iget v0, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    new-array v1, v0, [Ljxl/biff/formula/ParseItem;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/formula/ParseItem;

    .line 119
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_1
    iget v0, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    if-ge p1, v0, :cond_1

    .line 124
    aget-object v0, v1, p1

    invoke-virtual {p0, v0}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method getPrecedence()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 4

    .line 130
    iget-object v0, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    iget-object v1, p0, Ljxl/biff/formula/VariableArgFunction;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0, v1}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    iget v0, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    if-lez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 136
    iget-boolean v1, p0, Ljxl/biff/formula/VariableArgFunction;->readFromSheet:Z

    const/16 v2, 0x2c

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 139
    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 141
    :goto_0
    iget v1, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    if-ge v3, v1, :cond_1

    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget v1, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 153
    iget v1, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    add-int/lit8 v1, v1, -0x2

    :goto_1
    if-ltz v1, :cond_1

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x29

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method handleImportedCellReferences()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 265
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 267
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 94
    aget-byte v0, p1, p2

    iput v0, p0, Ljxl/biff/formula/VariableArgFunction;->arguments:I

    add-int/lit8 v0, p2, 0x1

    .line 95
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    .line 96
    invoke-static {p1}, Ljxl/biff/formula/Function;->getFunction(I)Ljxl/biff/formula/Function;

    move-result-object p2

    iput-object p2, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    .line 98
    iget-object p2, p0, Ljxl/biff/formula/VariableArgFunction;->function:Ljxl/biff/formula/Function;

    sget-object v0, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 100
    :cond_0
    new-instance p2, Ljxl/biff/formula/FormulaException;

    sget-object v0, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_FUNCTION:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p2, v0, p1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;I)V

    throw p2
.end method

.method rowInserted(IIZ)V
    .locals 3

    .line 231
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 232
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 234
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 3

    .line 250
    invoke-virtual {p0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 253
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
