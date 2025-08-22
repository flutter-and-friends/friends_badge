.class public Lcom/isseiaoki/simplecropview/SaveRequest;
.super Ljava/lang/Object;
.source "SaveRequest.java"


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private compressQuality:I

.field private cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

.field private image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->compressQuality:I

    .line 16
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    .line 17
    iput-object p2, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method private build()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 34
    :cond_0
    iget v0, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->compressQuality:I

    if-ltz v0, :cond_1

    .line 35
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setCompressQuality(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public compressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/isseiaoki/simplecropview/SaveRequest;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public compressQuality(I)Lcom/isseiaoki/simplecropview/SaveRequest;
    .locals 0

    .line 26
    iput p1, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->compressQuality:I

    return-object p0
.end method

.method public execute(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/SaveRequest;->build()V

    .line 41
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->saveAsync(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V

    return-void
.end method

.method public executeAsSingle(Landroid/net/Uri;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/SaveRequest;->build()V

    .line 46
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/SaveRequest;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->saveAsSingle(Landroid/graphics/Bitmap;Landroid/net/Uri;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
