.class Ljxl/biff/formula/Plus;
.super Ljxl/biff/formula/StringOperator;
.source "Plus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljxl/biff/formula/StringOperator;-><init>()V

    return-void
.end method


# virtual methods
.method getBinaryOperator()Ljxl/biff/formula/Operator;
    .locals 1

    .line 43
    new-instance v0, Ljxl/biff/formula/Add;

    invoke-direct {v0}, Ljxl/biff/formula/Add;-><init>()V

    return-object v0
.end method

.method getUnaryOperator()Ljxl/biff/formula/Operator;
    .locals 1

    .line 51
    new-instance v0, Ljxl/biff/formula/UnaryPlus;

    invoke-direct {v0}, Ljxl/biff/formula/UnaryPlus;-><init>()V

    return-object v0
.end method

.method handleImportedCellReferences()V
    .locals 0

    return-void
.end method
