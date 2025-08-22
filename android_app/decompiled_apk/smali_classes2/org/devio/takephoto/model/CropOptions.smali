.class public Lorg/devio/takephoto/model/CropOptions;
.super Ljava/lang/Object;
.source "CropOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/devio/takephoto/model/CropOptions$Builder;
    }
.end annotation


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private outputX:I

.field private outputY:I

.field private withOwnCrop:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/devio/takephoto/model/CropOptions$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/devio/takephoto/model/CropOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectX()I
    .locals 1

    .line 24
    iget v0, p0, Lorg/devio/takephoto/model/CropOptions;->aspectX:I

    return v0
.end method

.method public getAspectY()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/devio/takephoto/model/CropOptions;->aspectY:I

    return v0
.end method

.method public getOutputX()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/devio/takephoto/model/CropOptions;->outputX:I

    return v0
.end method

.method public getOutputY()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/devio/takephoto/model/CropOptions;->outputY:I

    return v0
.end method

.method public isWithOwnCrop()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/devio/takephoto/model/CropOptions;->withOwnCrop:Z

    return v0
.end method

.method public setAspectX(I)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/devio/takephoto/model/CropOptions;->aspectX:I

    return-void
.end method

.method public setAspectY(I)V
    .locals 0

    .line 36
    iput p1, p0, Lorg/devio/takephoto/model/CropOptions;->aspectY:I

    return-void
.end method

.method public setOutputX(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/devio/takephoto/model/CropOptions;->outputX:I

    return-void
.end method

.method public setOutputY(I)V
    .locals 0

    .line 52
    iput p1, p0, Lorg/devio/takephoto/model/CropOptions;->outputY:I

    return-void
.end method

.method public setWithOwnCrop(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/devio/takephoto/model/CropOptions;->withOwnCrop:Z

    return-void
.end method
