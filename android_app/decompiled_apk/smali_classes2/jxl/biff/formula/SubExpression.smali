.class abstract Ljxl/biff/formula/SubExpression;
.super Ljxl/biff/formula/Operand;
.source "SubExpression.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# instance fields
.field private length:I

.field private subExpression:[Ljxl/biff/formula/ParseItem;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 99
    iget v0, p0, Ljxl/biff/formula/SubExpression;->length:I

    return v0
.end method

.method public getOperands(Ljava/util/Stack;)V
    .locals 0

    return-void
.end method

.method getPrecedence()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected getSubExpression()[Ljxl/biff/formula/ParseItem;
    .locals 1

    .line 114
    iget-object v0, p0, Ljxl/biff/formula/SubExpression;->subExpression:[Ljxl/biff/formula/ParseItem;

    return-object v0
.end method

.method public read([BI)I
    .locals 1

    .line 57
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/formula/SubExpression;->length:I

    const/4 p1, 0x2

    return p1
.end method

.method protected final setLength(I)V
    .locals 0

    .line 104
    iput p1, p0, Ljxl/biff/formula/SubExpression;->length:I

    return-void
.end method

.method public setSubExpression([Ljxl/biff/formula/ParseItem;)V
    .locals 0

    .line 109
    iput-object p1, p0, Ljxl/biff/formula/SubExpression;->subExpression:[Ljxl/biff/formula/ParseItem;

    return-void
.end method
