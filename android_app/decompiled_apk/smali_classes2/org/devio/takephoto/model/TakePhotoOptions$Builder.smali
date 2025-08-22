.class public Lorg/devio/takephoto/model/TakePhotoOptions$Builder;
.super Ljava/lang/Object;
.source "TakePhotoOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/model/TakePhotoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private options:Lorg/devio/takephoto/model/TakePhotoOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/devio/takephoto/model/TakePhotoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/devio/takephoto/model/TakePhotoOptions;-><init>(Lorg/devio/takephoto/model/TakePhotoOptions$1;)V

    iput-object v0, p0, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;->options:Lorg/devio/takephoto/model/TakePhotoOptions;

    return-void
.end method


# virtual methods
.method public create()Lorg/devio/takephoto/model/TakePhotoOptions;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;->options:Lorg/devio/takephoto/model/TakePhotoOptions;

    return-object v0
.end method

.method public setCorrectImage(Z)Lorg/devio/takephoto/model/TakePhotoOptions$Builder;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;->options:Lorg/devio/takephoto/model/TakePhotoOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/TakePhotoOptions;->setCorrectImage(Z)V

    return-object p0
.end method

.method public setWithOwnGallery(Z)Lorg/devio/takephoto/model/TakePhotoOptions$Builder;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;->options:Lorg/devio/takephoto/model/TakePhotoOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/TakePhotoOptions;->setWithOwnGallery(Z)V

    return-object p0
.end method
