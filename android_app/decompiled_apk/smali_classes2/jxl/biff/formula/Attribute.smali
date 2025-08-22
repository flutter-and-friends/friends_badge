.class Ljxl/biff/formula/Attribute;
.super Ljxl/biff/formula/Operator;
.source "Attribute.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static final GOTO_MASK:I = 0x8

.field private static final IF_MASK:I = 0x2

.field private static final SUM_MASK:I = 0x10

.field static synthetic class$jxl$biff$formula$Attribute:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private ifConditions:Ljxl/biff/formula/VariableArgFunction;

.field private options:I

.field private settings:Ljxl/WorkbookSettings;

.field private word:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Ljxl/biff/formula/Attribute;->class$jxl$biff$formula$Attribute:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.Attribute"

    invoke-static {v0}, Ljxl/biff/formula/Attribute;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Attribute;->class$jxl$biff$formula$Attribute:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Attribute;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 71
    iput-object p1, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    .line 82
    iput-object p2, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    .line 84
    iget-object p2, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, p2}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p2

    sget-object v0, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    if-ne p2, v0, :cond_0

    .line 86
    iget p1, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Ljxl/biff/formula/Attribute;->options:I

    goto :goto_0

    .line 88
    :cond_0
    iget-object p2, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, p2}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    sget-object p2, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    if-ne p1, p2, :cond_1

    .line 90
    iget p1, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljxl/biff/formula/Attribute;->options:I

    :cond_1
    :goto_0
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

.method private getIf()[B
    .locals 12

    .line 263
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 268
    array-length v1, v0

    const/4 v2, 0x0

    .line 271
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v3

    .line 274
    array-length v4, v3

    .line 275
    array-length v5, v3

    add-int/lit8 v5, v5, 0x4

    new-array v5, v5, [B

    .line 276
    array-length v6, v3

    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    sget-object v3, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v3}, Ljxl/biff/formula/Token;->getCode()B

    move-result v3

    aput-byte v3, v5, v4

    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x2

    .line 279
    aput-byte v6, v5, v3

    add-int/2addr v4, v6

    const/4 v3, 0x1

    .line 283
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v7

    .line 284
    array-length v8, v5

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 285
    array-length v9, v5

    invoke-static {v5, v2, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    array-length v5, v5

    array-length v9, v7

    invoke-static {v7, v2, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    array-length v5, v8

    .line 291
    array-length v7, v8

    add-int/lit8 v7, v7, 0x4

    new-array v7, v7, [B

    .line 292
    array-length v9, v8

    invoke-static {v8, v2, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    sget-object v8, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v8}, Ljxl/biff/formula/Token;->getCode()B

    move-result v8

    aput-byte v8, v7, v5

    add-int/lit8 v8, v5, 0x1

    const/16 v9, 0x8

    .line 295
    aput-byte v9, v7, v8

    add-int/2addr v5, v6

    const/4 v8, 0x3

    if-le v1, v6, :cond_0

    .line 302
    array-length v10, v7

    sub-int/2addr v10, v4

    sub-int/2addr v10, v6

    invoke-static {v10, v7, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v10, v1, -0x1

    .line 306
    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    .line 307
    array-length v10, v7

    array-length v11, v0

    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 308
    array-length v11, v7

    invoke-static {v7, v2, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    array-length v7, v7

    array-length v11, v0

    invoke-static {v0, v2, v10, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    array-length v0, v10

    .line 314
    array-length v7, v10

    add-int/lit8 v7, v7, 0x4

    new-array v7, v7, [B

    .line 315
    array-length v11, v10

    invoke-static {v10, v2, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    sget-object v10, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v10}, Ljxl/biff/formula/Token;->getCode()B

    move-result v10

    aput-byte v10, v7, v0

    add-int/lit8 v10, v0, 0x1

    .line 318
    aput-byte v9, v7, v10

    add-int/2addr v0, v6

    .line 319
    aput-byte v8, v7, v0

    .line 323
    :cond_0
    array-length v0, v7

    .line 324
    array-length v9, v7

    add-int/lit8 v9, v9, 0x4

    new-array v9, v9, [B

    .line 325
    array-length v10, v7

    invoke-static {v7, v2, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    sget-object v7, Ljxl/biff/formula/Token;->FUNCTIONVARARG:Ljxl/biff/formula/Token;

    invoke-virtual {v7}, Ljxl/biff/formula/Token;->getCode()B

    move-result v7

    aput-byte v7, v9, v0

    add-int/lit8 v7, v0, 0x1

    int-to-byte v10, v1

    .line 328
    aput-byte v10, v9, v7

    add-int/lit8 v7, v0, 0x2

    .line 329
    aput-byte v3, v9, v7

    add-int/2addr v0, v8

    .line 330
    aput-byte v2, v9, v0

    .line 333
    array-length v0, v9

    sub-int/2addr v0, v3

    if-ge v1, v8, :cond_1

    sub-int v1, v0, v4

    add-int/lit8 v1, v1, -0x5

    .line 338
    invoke-static {v1, v9, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_1
    sub-int/2addr v0, v5

    sub-int/2addr v0, v6

    .line 343
    invoke-static {v0, v9, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v9
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 3

    .line 370
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 379
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 381
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 3

    .line 399
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 408
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 410
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 3

    .line 428
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 437
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 439
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method getBytes()[B
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 224
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isSum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v2

    .line 230
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 232
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 235
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 236
    array-length v6, v1

    invoke-static {v1, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    array-length v1, v1

    array-length v6, v4

    invoke-static {v4, v0, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    move-object v1, v5

    goto :goto_0

    .line 242
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 243
    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    array-length v0, v1

    sget-object v3, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v3}, Ljxl/biff/formula/Token;->getCode()B

    move-result v3

    aput-byte v3, v2, v0

    .line 245
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    aput-byte v1, v2, v0

    move-object v1, v2

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    invoke-direct {p0}, Ljxl/biff/formula/Attribute;->getIf()[B

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 2

    .line 169
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/ParseItem;

    .line 172
    invoke-virtual {p0, p1}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/ParseItem;

    .line 177
    invoke-virtual {p0, p1}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method getPrecedence()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 6

    .line 188
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/16 v4, 0x28

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 191
    sget-object v1, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    iget-object v5, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v1, v5}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 194
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 198
    sget-object v0, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    iget-object v1, p0, Ljxl/biff/formula/Attribute;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v0, v1}, Ljxl/biff/formula/Function;->getName(Ljxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 204
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1

    .line 206
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    const/16 v1, 0x2c

    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 210
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 3

    .line 510
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 519
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 521
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public isFunction()Z
    .locals 1

    .line 129
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoto()Z
    .locals 1

    .line 159
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIf()Z
    .locals 1

    .line 149
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSum()Z
    .locals 1

    .line 139
    iget v0, p0, Ljxl/biff/formula/Attribute;->options:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read([BI)I
    .locals 1

    .line 117
    aget-byte v0, p1, p2

    iput v0, p0, Ljxl/biff/formula/Attribute;->options:I

    add-int/lit8 v0, p2, 0x1

    .line 118
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/formula/Attribute;->word:I

    const/4 p1, 0x3

    return p1
.end method

.method rowInserted(IIZ)V
    .locals 3

    .line 457
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 466
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 468
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 3

    .line 486
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->isIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    invoke-virtual {v0}, Ljxl/biff/formula/VariableArgFunction;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0}, Ljxl/biff/formula/Attribute;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 495
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 497
    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V
    .locals 0

    .line 101
    iput-object p1, p0, Ljxl/biff/formula/Attribute;->ifConditions:Ljxl/biff/formula/VariableArgFunction;

    .line 105
    iget p1, p0, Ljxl/biff/formula/Attribute;->options:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljxl/biff/formula/Attribute;->options:I

    return-void
.end method
