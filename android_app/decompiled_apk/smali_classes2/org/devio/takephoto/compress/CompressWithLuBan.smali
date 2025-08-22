.class public Lorg/devio/takephoto/compress/CompressWithLuBan;
.super Ljava/lang/Object;
.source "CompressWithLuBan.java"

# interfaces
.implements Lorg/devio/takephoto/compress/CompressImage;


# instance fields
.field private context:Landroid/content/Context;

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

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

.field private options:Lorg/devio/takephoto/model/LubanOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lorg/devio/takephoto/compress/CompressImage$CompressListener;)V
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p2}, Lorg/devio/takephoto/compress/CompressConfig;->getLubanOptions()Lorg/devio/takephoto/model/LubanOptions;

    move-result-object p2

    iput-object p2, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->options:Lorg/devio/takephoto/model/LubanOptions;

    .line 34
    iput-object p3, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    .line 35
    iput-object p4, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    .line 36
    iput-object p1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/devio/takephoto/compress/CompressWithLuBan;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/devio/takephoto/compress/CompressWithLuBan;)Lorg/devio/takephoto/compress/CompressImage$CompressListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    return-object p0
.end method

.method static synthetic access$200(Lorg/devio/takephoto/compress/CompressWithLuBan;Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/devio/takephoto/compress/CompressWithLuBan;->handleCompressCallBack(Ljava/util/List;)V

    return-void
.end method

.method private compressMulti()V
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lme/shaohui/advancedluban/Luban;->compress(Landroid/content/Context;Ljava/util/List;)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    const/4 v1, 0x4

    .line 88
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->putGear(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->options:Lorg/devio/takephoto/model/LubanOptions;

    .line 89
    invoke-virtual {v1}, Lorg/devio/takephoto/model/LubanOptions;->getMaxSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->setMaxSize(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->options:Lorg/devio/takephoto/model/LubanOptions;

    .line 90
    invoke-virtual {v1}, Lorg/devio/takephoto/model/LubanOptions;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->setMaxHeight(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->options:Lorg/devio/takephoto/model/LubanOptions;

    .line 91
    invoke-virtual {v1}, Lorg/devio/takephoto/model/LubanOptions;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->setMaxWidth(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    new-instance v1, Lorg/devio/takephoto/compress/CompressWithLuBan$2;

    invoke-direct {v1, p0}, Lorg/devio/takephoto/compress/CompressWithLuBan$2;-><init>(Lorg/devio/takephoto/compress/CompressWithLuBan;)V

    .line 92
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->launch(Lme/shaohui/advancedluban/OnMultiCompressListener;)V

    return-void
.end method

.method private compressOne()V
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v0, v1}, Lme/shaohui/advancedluban/Luban;->compress(Landroid/content/Context;Ljava/io/File;)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    const/4 v1, 0x4

    .line 61
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->putGear(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->options:Lorg/devio/takephoto/model/LubanOptions;

    .line 62
    invoke-virtual {v1}, Lorg/devio/takephoto/model/LubanOptions;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->setMaxHeight(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->options:Lorg/devio/takephoto/model/LubanOptions;

    .line 63
    invoke-virtual {v1}, Lorg/devio/takephoto/model/LubanOptions;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->setMaxWidth(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->options:Lorg/devio/takephoto/model/LubanOptions;

    .line 64
    invoke-virtual {v1}, Lorg/devio/takephoto/model/LubanOptions;->getMaxSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->setMaxSize(I)Lme/shaohui/advancedluban/Luban;

    move-result-object v0

    new-instance v1, Lorg/devio/takephoto/compress/CompressWithLuBan$1;

    invoke-direct {v1, p0}, Lorg/devio/takephoto/compress/CompressWithLuBan$1;-><init>(Lorg/devio/takephoto/compress/CompressWithLuBan;)V

    .line 65
    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/Luban;->launch(Lme/shaohui/advancedluban/OnCompressListener;)V

    return-void
.end method

.method private handleCompressCallBack(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v2, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/devio/takephoto/model/TImage;

    const/4 v3, 0x1

    .line 113
    invoke-virtual {v2, v3}, Lorg/devio/takephoto/model/TImage;->setCompressed(Z)V

    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/devio/takephoto/model/TImage;->setCompressPath(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressSuccess(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public compress()V
    .locals 4

    .line 41
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/devio/takephoto/model/TImage;

    if-nez v1, :cond_1

    .line 47
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    const-string v2, " There are pictures of compress  is null."

    invoke-interface {v0, v1, v2}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    iget-object v2, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->files:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lorg/devio/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 53
    invoke-direct {p0}, Lorg/devio/takephoto/compress/CompressWithLuBan;->compressOne()V

    goto :goto_1

    .line 55
    :cond_3
    invoke-direct {p0}, Lorg/devio/takephoto/compress/CompressWithLuBan;->compressMulti()V

    :goto_1
    return-void

    .line 42
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->listener:Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan;->images:Ljava/util/ArrayList;

    const-string v2, " images is null"

    invoke-interface {v0, v1, v2}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
