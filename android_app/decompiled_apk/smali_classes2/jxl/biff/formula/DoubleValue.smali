.class Ljxl/biff/formula/DoubleValue;
.super Ljxl/biff/formula/NumberValue;
.source "DoubleValue.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field static synthetic class$jxl$biff$formula$DoubleValue:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Ljxl/biff/formula/DoubleValue;->class$jxl$biff$formula$DoubleValue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.DoubleValue"

    invoke-static {v0}, Ljxl/biff/formula/DoubleValue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/DoubleValue;->class$jxl$biff$formula$DoubleValue:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/DoubleValue;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    return-void
.end method

.method constructor <init>(D)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    .line 56
    iput-wide p1, p0, Ljxl/biff/formula/DoubleValue;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/biff/formula/DoubleValue;->value:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    sget-object v0, Ljxl/biff/formula/DoubleValue;->logger:Lcommon/Logger;

    invoke-virtual {v0, p1, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Ljxl/biff/formula/DoubleValue;->value:D

    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 34
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
.method getBytes()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 99
    sget-object v1, Ljxl/biff/formula/Token;->DOUBLE:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 101
    iget-wide v1, p0, Ljxl/biff/formula/DoubleValue;->value:D

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 113
    iget-wide v0, p0, Ljxl/biff/formula/DoubleValue;->value:D

    return-wide v0
.end method

.method handleImportedCellReferences()V
    .locals 0

    return-void
.end method

.method public read([BI)I
    .locals 0

    .line 86
    invoke-static {p1, p2}, Ljxl/biff/DoubleHelper;->getIEEEDouble([BI)D

    move-result-wide p1

    iput-wide p1, p0, Ljxl/biff/formula/DoubleValue;->value:D

    const/16 p1, 0x8

    return p1
.end method
