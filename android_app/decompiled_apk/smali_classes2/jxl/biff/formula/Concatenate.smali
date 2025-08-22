.class Ljxl/biff/formula/Concatenate;
.super Ljxl/biff/formula/BinaryOperator;
.source "Concatenate.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljxl/biff/formula/BinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method getPrecedence()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    const-string v0, "&"

    return-object v0
.end method

.method getToken()Ljxl/biff/formula/Token;
    .locals 1

    .line 51
    sget-object v0, Ljxl/biff/formula/Token;->CONCAT:Ljxl/biff/formula/Token;

    return-object v0
.end method
