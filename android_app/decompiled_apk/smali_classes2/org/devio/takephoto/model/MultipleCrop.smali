.class public Lorg/devio/takephoto/model/MultipleCrop;
.super Ljava/lang/Object;
.source "MultipleCrop.java"


# instance fields
.field private fromType:Lorg/devio/takephoto/model/TImage$FromType;

.field public hasFailed:Z

.field private outUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private tImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;"
        }
    .end annotation
.end field

.field private uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Lorg/devio/takephoto/model/TImage$FromType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/app/Activity;",
            "Lorg/devio/takephoto/model/TImage$FromType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/devio/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 36
    invoke-static {p2, v1}, Lorg/devio/takephoto/uitl/TImageFiles;->getTempFile(Landroid/app/Activity;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    iput-object v0, p0, Lorg/devio/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    .line 39
    invoke-static {v0, p3}, Lorg/devio/takephoto/uitl/TUtils;->getTImagesWithUris(Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    .line 40
    iput-object p3, p0, Lorg/devio/takephoto/model/MultipleCrop;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lorg/devio/takephoto/model/TImage$FromType;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/devio/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    .line 45
    iput-object p2, p0, Lorg/devio/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    .line 46
    invoke-static {p2, p3}, Lorg/devio/takephoto/uitl/TUtils;->getTImagesWithUris(Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    .line 47
    iput-object p3, p0, Lorg/devio/takephoto/model/MultipleCrop;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    return-void
.end method

.method public static of(Ljava/util/ArrayList;Landroid/app/Activity;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/MultipleCrop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/app/Activity;",
            "Lorg/devio/takephoto/model/TImage$FromType;",
            ")",
            "Lorg/devio/takephoto/model/MultipleCrop;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/devio/takephoto/model/MultipleCrop;

    invoke-direct {v0, p0, p1, p2}, Lorg/devio/takephoto/model/MultipleCrop;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Lorg/devio/takephoto/model/TImage$FromType;)V

    return-object v0
.end method

.method public static of(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/MultipleCrop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lorg/devio/takephoto/model/TImage$FromType;",
            ")",
            "Lorg/devio/takephoto/model/MultipleCrop;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/devio/takephoto/model/MultipleCrop;

    invoke-direct {v0, p0, p1, p2}, Lorg/devio/takephoto/model/MultipleCrop;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)V

    return-object v0
.end method


# virtual methods
.method public getOutUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/devio/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/devio/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public gettImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/devio/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCropWithUri(Landroid/net/Uri;Z)Ljava/util/Map;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 82
    iput-boolean v0, p0, Lorg/devio/takephoto/model/MultipleCrop;->hasFailed:Z

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/devio/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 85
    iget-object v1, p0, Lorg/devio/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/devio/takephoto/model/TImage;

    invoke-virtual {v1, p2}, Lorg/devio/takephoto/model/TImage;->setCropped(Z)V

    .line 86
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lorg/devio/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isLast"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public setOutUris(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lorg/devio/takephoto/model/MultipleCrop;->outUris:Ljava/util/ArrayList;

    return-void
.end method

.method public setUris(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lorg/devio/takephoto/model/MultipleCrop;->uris:Ljava/util/ArrayList;

    return-void
.end method

.method public settImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lorg/devio/takephoto/model/MultipleCrop;->tImages:Ljava/util/ArrayList;

    return-void
.end method
