.class Ljxl/biff/formula/IntegerValue;
.super Ljxl/biff/formula/NumberValue;
.source "IntegerValue.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field static synthetic class$jxl$biff$formula$IntegerValue:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private outOfRange:Z

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Ljxl/biff/formula/IntegerValue;->class$jxl$biff$formula$IntegerValue:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.IntegerValue"

    invoke-static {v0}, Ljxl/biff/formula/IntegerValue;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/IntegerValue;->class$jxl$biff$formula$IntegerValue:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/IntegerValue;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Ljxl/biff/formula/IntegerValue;->outOfRange:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljxl/biff/formula/NumberValue;-><init>()V

    .line 61
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    sget-object v0, Ljxl/biff/formula/IntegerValue;->logger:Lcommon/Logger;

    invoke-virtual {v0, p1, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D

    .line 69
    :goto_0
    iget-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D

    double-to-int p1, v0

    int-to-short p1, p1

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_1
    iput-boolean p1, p0, Ljxl/biff/formula/IntegerValue;->outOfRange:Z

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
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 95
    sget-object v1, Ljxl/biff/formula/Token;->INTEGER:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 97
    iget-wide v1, p0, Ljxl/biff/formula/IntegerValue;->value:D

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 109
    iget-wide v0, p0, Ljxl/biff/formula/IntegerValue;->value:D

    return-wide v0
.end method

.method handleImportedCellReferences()V
    .locals 0

    return-void
.end method

.method isOutOfRange()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Ljxl/biff/formula/IntegerValue;->outOfRange:Z

    return v0
.end method

.method public read([BI)I
    .locals 1

    .line 82
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Ljxl/biff/formula/IntegerValue;->value:D

    const/4 p1, 0x2

    return p1
.end method
