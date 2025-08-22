.class Ljxl/biff/formula/StringFunction;
.super Ljxl/biff/formula/StringParseItem;
.source "StringFunction.java"


# static fields
.field static synthetic class$jxl$biff$formula$StringFunction:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private function:Ljxl/biff/formula/Function;

.field private functionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/formula/StringFunction;->class$jxl$biff$formula$StringFunction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.StringFunction"

    invoke-static {v0}, Ljxl/biff/formula/StringFunction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringFunction;->class$jxl$biff$formula$StringFunction:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringFunction;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljxl/biff/formula/StringParseItem;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/formula/StringFunction;->functionString:Ljava/lang/String;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 35
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
.method getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;
    .locals 1

    .line 65
    iget-object v0, p0, Ljxl/biff/formula/StringFunction;->function:Ljxl/biff/formula/Function;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Ljxl/biff/formula/StringFunction;->functionString:Ljava/lang/String;

    invoke-static {v0, p1}, Ljxl/biff/formula/Function;->getFunction(Ljava/lang/String;Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/formula/StringFunction;->function:Ljxl/biff/formula/Function;

    .line 69
    :cond_0
    iget-object p1, p0, Ljxl/biff/formula/StringFunction;->function:Ljxl/biff/formula/Function;

    return-object p1
.end method
