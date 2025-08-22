.class abstract Ljxl/biff/formula/NumberValue;
.super Ljxl/biff/formula/Operand;
.source "NumberValue.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Ljxl/biff/formula/NumberValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public abstract getValue()D
.end method
