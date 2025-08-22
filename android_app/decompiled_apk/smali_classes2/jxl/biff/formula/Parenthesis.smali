.class Ljxl/biff/formula/Parenthesis;
.super Ljxl/biff/formula/Operator;
.source "Parenthesis.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    return-void
.end method

.method columnInserted(IIZ)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    return-void
.end method

.method getBytes()[B
    .locals 4

    .line 172
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    .line 176
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 177
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    array-length v0, v0

    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getToken()Ljxl/biff/formula/Token;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    aput-byte v1, v2, v0

    return-object v2
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/ParseItem;

    .line 55
    invoke-virtual {p0, p1}, Ljxl/biff/formula/Parenthesis;->add(Ljxl/biff/formula/ParseItem;)V

    return-void
.end method

.method getPrecedence()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/16 v1, 0x28

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 62
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    const/16 v0, 0x29

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method getToken()Ljxl/biff/formula/Token;
    .locals 1

    .line 161
    sget-object v0, Ljxl/biff/formula/Token;->PARENTHESIS:Ljxl/biff/formula/Token;

    return-object v0
.end method

.method handleImportedCellReferences()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
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

    .line 123
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 2

    .line 139
    invoke-virtual {p0}, Ljxl/biff/formula/Parenthesis;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    return-void
.end method
