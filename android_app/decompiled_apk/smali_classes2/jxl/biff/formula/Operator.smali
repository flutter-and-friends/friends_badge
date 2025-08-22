.class abstract Ljxl/biff/formula/Operator;
.super Ljxl/biff/formula/ParseItem;
.source "Operator.java"


# instance fields
.field private operands:[Ljxl/biff/formula/ParseItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljxl/biff/formula/ParseItem;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/formula/ParseItem;

    .line 41
    iput-object v0, p0, Ljxl/biff/formula/Operator;->operands:[Ljxl/biff/formula/ParseItem;

    return-void
.end method


# virtual methods
.method protected add(Ljxl/biff/formula/ParseItem;)V
    .locals 4

    .line 60
    invoke-virtual {p1, p0}, Ljxl/biff/formula/ParseItem;->setParent(Ljxl/biff/formula/ParseItem;)V

    .line 63
    iget-object v0, p0, Ljxl/biff/formula/Operator;->operands:[Ljxl/biff/formula/ParseItem;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/formula/ParseItem;

    .line 64
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v0, p0, Ljxl/biff/formula/Operator;->operands:[Ljxl/biff/formula/ParseItem;

    array-length v0, v0

    aput-object p1, v1, v0

    .line 66
    iput-object v1, p0, Ljxl/biff/formula/Operator;->operands:[Ljxl/biff/formula/ParseItem;

    return-void
.end method

.method public abstract getOperands(Ljava/util/Stack;)V
.end method

.method protected getOperands()[Ljxl/biff/formula/ParseItem;
    .locals 1

    .line 79
    iget-object v0, p0, Ljxl/biff/formula/Operator;->operands:[Ljxl/biff/formula/ParseItem;

    return-object v0
.end method

.method abstract getPrecedence()I
.end method

.method protected setOperandAlternateCode()V
    .locals 3

    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Ljxl/biff/formula/Operator;->operands:[Ljxl/biff/formula/ParseItem;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 51
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->setAlternateCode()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
