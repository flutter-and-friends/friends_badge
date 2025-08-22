.class Ljxl/biff/drawing/BStoreContainer;
.super Ljxl/biff/drawing/EscherContainer;
.source "BStoreContainer.java"


# static fields
.field static synthetic class$jxl$biff$drawing$BStoreContainer:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private numBlips:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Ljxl/biff/drawing/BStoreContainer;->class$jxl$biff$drawing$BStoreContainer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.BStoreContainer"

    invoke-static {v0}, Ljxl/biff/drawing/BStoreContainer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/BStoreContainer;->class$jxl$biff$drawing$BStoreContainer:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/BStoreContainer;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 48
    invoke-virtual {p0}, Ljxl/biff/drawing/BStoreContainer;->getInstance()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 32
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
.method public getDrawing(I)Ljxl/biff/drawing/BlipStoreEntry;
    .locals 1

    .line 88
    invoke-virtual {p0}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 89
    aget-object p1, v0, p1

    check-cast p1, Ljxl/biff/drawing/BlipStoreEntry;

    return-object p1
.end method

.method public getNumBlips()I
    .locals 1

    .line 77
    iget v0, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    return v0
.end method

.method setNumBlips(I)V
    .locals 0

    .line 66
    iput p1, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    .line 67
    iget p1, p0, Ljxl/biff/drawing/BStoreContainer;->numBlips:I

    invoke-virtual {p0, p1}, Ljxl/biff/drawing/BStoreContainer;->setInstance(I)V

    return-void
.end method
