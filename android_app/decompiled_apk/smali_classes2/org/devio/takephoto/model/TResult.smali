.class public Lorg/devio/takephoto/model/TResult;
.super Ljava/lang/Object;
.source "TResult.java"


# instance fields
.field private image:Lorg/devio/takephoto/model/TImage;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/devio/takephoto/model/TResult;->images:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/devio/takephoto/model/TImage;

    iput-object p1, p0, Lorg/devio/takephoto/model/TResult;->image:Lorg/devio/takephoto/model/TImage;

    :cond_0
    return-void
.end method

.method public static of(Ljava/util/ArrayList;)Lorg/devio/takephoto/model/TResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;)",
            "Lorg/devio/takephoto/model/TResult;"
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/devio/takephoto/model/TResult;

    invoke-direct {v0, p0}, Lorg/devio/takephoto/model/TResult;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;
    .locals 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p0, Lorg/devio/takephoto/model/TResult;

    invoke-direct {p0, v0}, Lorg/devio/takephoto/model/TResult;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public getImage()Lorg/devio/takephoto/model/TImage;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/devio/takephoto/model/TResult;->image:Lorg/devio/takephoto/model/TImage;

    return-object v0
.end method

.method public getImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/devio/takephoto/model/TResult;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setImage(Lorg/devio/takephoto/model/TImage;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/devio/takephoto/model/TResult;->image:Lorg/devio/takephoto/model/TImage;

    return-void
.end method

.method public setImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lorg/devio/takephoto/model/TResult;->images:Ljava/util/ArrayList;

    return-void
.end method
