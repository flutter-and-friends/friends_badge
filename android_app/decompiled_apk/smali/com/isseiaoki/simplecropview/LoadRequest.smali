.class public Lcom/isseiaoki/simplecropview/LoadRequest;
.super Ljava/lang/Object;
.source "LoadRequest.java"


# instance fields
.field private cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

.field private initialFrameRect:Landroid/graphics/RectF;

.field private initialFrameScale:F

.field private sourceUri:Landroid/net/Uri;

.field private useThumbnail:Z


# direct methods
.method public constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    .line 18
    iput-object p2, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->sourceUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public execute(Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameScale:F

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setInitialFrameScale(F)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->sourceUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->useThumbnail:Z

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->loadAsync(Landroid/net/Uri;ZLandroid/graphics/RectF;Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V

    return-void
.end method

.method public executeAsCompletable()Lio/reactivex/Completable;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameScale:F

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setInitialFrameScale(F)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->cropImageView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->sourceUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->useThumbnail:Z

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->loadAsCompletable(Landroid/net/Uri;ZLandroid/graphics/RectF;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public initialFrameRect(Landroid/graphics/RectF;)Lcom/isseiaoki/simplecropview/LoadRequest;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public initialFrameScale(F)Lcom/isseiaoki/simplecropview/LoadRequest;
    .locals 0

    .line 22
    iput p1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->initialFrameScale:F

    return-object p0
.end method

.method public useThumbnail(Z)Lcom/isseiaoki/simplecropview/LoadRequest;
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/LoadRequest;->useThumbnail:Z

    return-object p0
.end method
