.class public final Ljxl/biff/IndexMapping;
.super Ljava/lang/Object;
.source "IndexMapping.java"


# static fields
.field static synthetic class$jxl$biff$IndexMapping:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private newIndices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Ljxl/biff/IndexMapping;->class$jxl$biff$IndexMapping:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.IndexMapping"

    invoke-static {v0}, Ljxl/biff/IndexMapping;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/IndexMapping;->class$jxl$biff$IndexMapping:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/IndexMapping;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-array p1, p1, [I

    iput-object p1, p0, Ljxl/biff/IndexMapping;->newIndices:[I

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
.method public getNewIndex(I)I
    .locals 1

    .line 68
    iget-object v0, p0, Ljxl/biff/IndexMapping;->newIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public setMapping(II)V
    .locals 1

    .line 58
    iget-object v0, p0, Ljxl/biff/IndexMapping;->newIndices:[I

    aput p2, v0, p1

    return-void
.end method
