.class Ljxl/biff/formula/RangeSeparator;
.super Ljxl/biff/formula/BinaryOperator;
.source "RangeSeparator.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljxl/biff/formula/BinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 5

    .line 72
    invoke-virtual {p0}, Ljxl/biff/formula/RangeSeparator;->setVolatile()V

    .line 73
    invoke-virtual {p0}, Ljxl/biff/formula/RangeSeparator;->setOperandAlternateCode()V

    .line 75
    invoke-super {p0}, Ljxl/biff/formula/BinaryOperator;->getBytes()[B

    move-result-object v0

    .line 77
    array-length v1, v0

    const/4 v2, 0x3

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 78
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    sget-object v2, Ljxl/biff/formula/Token;->MEM_FUNC:Ljxl/biff/formula/Token;

    invoke-virtual {v2}, Ljxl/biff/formula/Token;->getCode()B

    move-result v2

    aput-byte v2, v1, v4

    .line 82
    array-length v0, v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v1
.end method

.method getPrecedence()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    return-object v0
.end method

.method getToken()Ljxl/biff/formula/Token;
    .locals 1

    .line 50
    sget-object v0, Ljxl/biff/formula/Token;->RANGE:Ljxl/biff/formula/Token;

    return-object v0
.end method
