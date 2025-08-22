.class public Lorg/devio/takephoto/model/CropOptions$Builder;
.super Ljava/lang/Object;
.source "CropOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/model/CropOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private options:Lorg/devio/takephoto/model/CropOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/devio/takephoto/model/CropOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/devio/takephoto/model/CropOptions;-><init>(Lorg/devio/takephoto/model/CropOptions$1;)V

    iput-object v0, p0, Lorg/devio/takephoto/model/CropOptions$Builder;->options:Lorg/devio/takephoto/model/CropOptions;

    return-void
.end method


# virtual methods
.method public create()Lorg/devio/takephoto/model/CropOptions;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/devio/takephoto/model/CropOptions$Builder;->options:Lorg/devio/takephoto/model/CropOptions;

    return-object v0
.end method

.method public setAspectX(I)Lorg/devio/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/devio/takephoto/model/CropOptions$Builder;->options:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/CropOptions;->setAspectX(I)V

    return-object p0
.end method

.method public setAspectY(I)Lorg/devio/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/devio/takephoto/model/CropOptions$Builder;->options:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/CropOptions;->setAspectY(I)V

    return-object p0
.end method

.method public setOutputX(I)Lorg/devio/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/devio/takephoto/model/CropOptions$Builder;->options:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/CropOptions;->setOutputX(I)V

    return-object p0
.end method

.method public setOutputY(I)Lorg/devio/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/devio/takephoto/model/CropOptions$Builder;->options:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/CropOptions;->setOutputY(I)V

    return-object p0
.end method

.method public setWithOwnCrop(Z)Lorg/devio/takephoto/model/CropOptions$Builder;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/devio/takephoto/model/CropOptions$Builder;->options:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/CropOptions;->setWithOwnCrop(Z)V

    return-object p0
.end method
