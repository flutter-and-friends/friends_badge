.class public Lorg/devio/takephoto/compress/CompressImageImpl;
.super Ljava/lang/Object;
.source "CompressImageImpl.java"

# interfaces
.implements Lorg/devio/takephoto/compress/CompressImage;


# instance fields
.field private compressImageUtil:Lorg/devio/takephoto/compress/CompressImageUtil;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lorg/devio/takephoto/compress/CompressImage$CompressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/devio/takephoto/compress/CompressConfig;",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;",
            "Lorg/devio/takephoto/compress/CompressImage$CompressListener;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/devio/takephoto/compress/CompressImageUtil;

    invoke-direct {v0, p1, p2}, Lorg/devio/takephoto/compress/CompressImageUtil;-><init>(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;)V

    iput-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->compressImageUtil:Lorg/devio/takephoto/compress/CompressImageUtil;

    .line 36
    iput-object p3, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    .line 37
    iput-object p4, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    return-void
.end method

.method static synthetic access$000(Lorg/devio/takephoto/compress/CompressImageImpl;Lorg/devio/takephoto/model/TImage;Z[Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/devio/takephoto/compress/CompressImageImpl;->continueCompress(Lorg/devio/takephoto/model/TImage;Z[Ljava/lang/String;)V

    return-void
.end method

.method private compress(Lorg/devio/takephoto/model/TImage;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, v1, v0}, Lorg/devio/takephoto/compress/CompressImageImpl;->continueCompress(Lorg/devio/takephoto/model/TImage;Z[Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->compressImageUtil:Lorg/devio/takephoto/compress/CompressImageUtil;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/devio/takephoto/compress/CompressImageImpl$1;

    invoke-direct {v2, p0, p1}, Lorg/devio/takephoto/compress/CompressImageImpl$1;-><init>(Lorg/devio/takephoto/compress/CompressImageImpl;Lorg/devio/takephoto/model/TImage;)V

    invoke-virtual {v0, v1, v2}, Lorg/devio/takephoto/compress/CompressImageUtil;->compress(Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    return-void

    :cond_2
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, v1, v0}, Lorg/devio/takephoto/compress/CompressImageImpl;->continueCompress(Lorg/devio/takephoto/model/TImage;Z[Ljava/lang/String;)V

    return-void
.end method

.method private varargs continueCompress(Lorg/devio/takephoto/model/TImage;Z[Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-virtual {p1, p2}, Lorg/devio/takephoto/model/TImage;->setCompressed(Z)V

    .line 82
    iget-object p2, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 83
    iget-object p2, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 85
    invoke-direct {p0, p3}, Lorg/devio/takephoto/compress/CompressImageImpl;->handleCompressCallBack([Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object p2, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/devio/takephoto/model/TImage;

    invoke-direct {p0, p1}, Lorg/devio/takephoto/compress/CompressImageImpl;->compress(Lorg/devio/takephoto/model/TImage;)V

    :goto_1
    return-void
.end method

.method private varargs handleCompressCallBack([Ljava/lang/String;)V
    .locals 3

    .line 92
    array-length v0, p1

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object p1, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/model/TImage;

    .line 98
    invoke-virtual {v0}, Lorg/devio/takephoto/model/TImage;->isCompressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object p1, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TImage;->getCompressPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is compress failures"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_2
    iget-object p1, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static of(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lorg/devio/takephoto/compress/CompressImage$CompressListener;)Lorg/devio/takephoto/compress/CompressImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/devio/takephoto/compress/CompressConfig;",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;",
            "Lorg/devio/takephoto/compress/CompressImage$CompressListener;",
            ")",
            "Lorg/devio/takephoto/compress/CompressImage;"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lorg/devio/takephoto/compress/CompressConfig;->getLubanOptions()Lorg/devio/takephoto/model/LubanOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lorg/devio/takephoto/compress/CompressWithLuBan;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/devio/takephoto/compress/CompressWithLuBan;-><init>(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lorg/devio/takephoto/compress/CompressImage$CompressListener;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lorg/devio/takephoto/compress/CompressImageImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/devio/takephoto/compress/CompressImageImpl;-><init>(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lorg/devio/takephoto/compress/CompressImage$CompressListener;)V

    return-object v0
.end method


# virtual methods
.method public compress()V
    .locals 3

    .line 42
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    const-string v2, " images is null"

    invoke-interface {v0, v1, v2}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/devio/takephoto/model/TImage;

    if-nez v1, :cond_2

    .line 47
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    const-string v2, " There are pictures of compress  is null."

    invoke-interface {v0, v1, v2}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_3
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl;->images:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/model/TImage;

    invoke-direct {p0, v0}, Lorg/devio/takephoto/compress/CompressImageImpl;->compress(Lorg/devio/takephoto/model/TImage;)V

    return-void
.end method
