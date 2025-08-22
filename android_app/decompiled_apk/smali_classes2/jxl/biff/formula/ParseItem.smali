.class abstract Ljxl/biff/formula/ParseItem;
.super Ljava/lang/Object;
.source "ParseItem.java"


# static fields
.field static synthetic class$jxl$biff$formula$ParseItem:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private alternateCode:Z

.field private parent:Ljxl/biff/formula/ParseItem;

.field private valid:Z

.field private volatileFunction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Ljxl/biff/formula/ParseItem;->class$jxl$biff$formula$ParseItem:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.ParseItem"

    invoke-static {v0}, Ljxl/biff/formula/ParseItem;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ParseItem;->class$jxl$biff$formula$ParseItem:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ParseItem;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    .line 59
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->valid:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 30
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
.method abstract adjustRelativeCellReferences(II)V
.end method

.method abstract columnInserted(IIZ)V
.end method

.method abstract columnRemoved(IIZ)V
.end method

.method abstract getBytes()[B
.end method

.method abstract getString(Ljava/lang/StringBuffer;)V
.end method

.method abstract handleImportedCellReferences()V
.end method

.method final isValid()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->valid:Z

    return v0
.end method

.method final isVolatile()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    return v0
.end method

.method abstract rowInserted(IIZ)V
.end method

.method abstract rowRemoved(IIZ)V
.end method

.method protected setAlternateCode()V
    .locals 1

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    return-void
.end method

.method protected final setInvalid()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->valid:Z

    .line 89
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->setInvalid()V

    :cond_0
    return-void
.end method

.method protected setParent(Ljxl/biff/formula/ParseItem;)V
    .locals 0

    .line 68
    iput-object p1, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    return-void
.end method

.method protected setVolatile()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    .line 77
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->setVolatile()V

    :cond_0
    return-void
.end method

.method protected final useAlternateCode()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    return v0
.end method
