.class abstract Ljxl/biff/formula/BinaryOperator;
.super Ljxl/biff/formula/Operator;
.source "BinaryOperator.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field static synthetic class$jxl$biff$formula$BinaryOperator:Ljava/lang/Class;

.field private static final logger:Lcommon/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Ljxl/biff/formula/BinaryOperator;->class$jxl$biff$formula$BinaryOperator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.BinaryOperator"

    invoke-static {v0}, Ljxl/biff/formula/BinaryOperator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/BinaryOperator;->class$jxl$biff$formula$BinaryOperator:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/BinaryOperator;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 32
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
.method public adjustRelativeCellReferences(II)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    const/4 v1, 0x0

    .line 91
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    return-void
.end method

.method columnInserted(IIZ)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 107
    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    const/4 v1, 0x0

    .line 108
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 124
    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    const/4 v1, 0x0

    .line 125
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    return-void
.end method

.method getBytes()[B
    .locals 7

    .line 170
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 174
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 176
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v4

    .line 179
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 180
    array-length v6, v2

    invoke-static {v2, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v2, v2

    array-length v6, v4

    invoke-static {v4, v1, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    move-object v2, v5

    goto :goto_0

    .line 186
    :cond_0
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 187
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v1, v2

    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getToken()Ljxl/biff/formula/Token;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/biff/formula/Token;->getCode()B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/ParseItem;

    .line 61
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/ParseItem;

    .line 63
    invoke-virtual {p0, v0}, Ljxl/biff/formula/BinaryOperator;->add(Ljxl/biff/formula/ParseItem;)V

    .line 64
    invoke-virtual {p0, p1}, Ljxl/biff/formula/BinaryOperator;->add(Ljxl/biff/formula/ParseItem;)V

    return-void
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    aget-object v1, v0, v1

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 76
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 77
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method abstract getSymbol()Ljava/lang/String;
.end method

.method abstract getToken()Ljxl/biff/formula/Token;
.end method

.method handleImportedCellReferences()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 215
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    const/4 v1, 0x1

    .line 216
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    return-void
.end method

.method public read([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method rowInserted(IIZ)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    const/4 v1, 0x0

    .line 142
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Ljxl/biff/formula/BinaryOperator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 158
    aget-object v1, v0, v1

    invoke-virtual {v1, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    const/4 v1, 0x0

    .line 159
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    return-void
.end method
