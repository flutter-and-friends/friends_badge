.class public Lcn/forward/androids/Image/ImageLoaderConfig;
.super Ljava/lang/Object;
.source "ImageLoaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY_GENERATOR:Lcn/forward/androids/Image/ImageCacheKeyGenerator;

.field private static sDefaultConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

.field private static sDefaultImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;


# instance fields
.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAutoRotate:Z

.field private mCacheKeyGenerator:Lcn/forward/androids/Image/ImageCacheKeyGenerator;

.field private mExtractThumbnail:Z

.field private mImageCache:Lcn/forward/androids/Image/ImageCache;

.field private mImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

.field private mLoadFailedDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoadOriginal:Z

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mNeedCache:Z

.field private mPriority:Lcn/forward/androids/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcn/forward/androids/Image/ImageLoaderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;-><init>(Lcn/forward/androids/Image/ImageCache;)V

    sput-object v0, Lcn/forward/androids/Image/ImageLoaderConfig;->sDefaultConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    .line 19
    new-instance v0, Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    invoke-direct {v0}, Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;-><init>()V

    sput-object v0, Lcn/forward/androids/Image/ImageLoaderConfig;->sDefaultImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    .line 20
    new-instance v0, Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    invoke-direct {v0}, Lcn/forward/androids/Image/ImageCacheKeyGenerator;-><init>()V

    sput-object v0, Lcn/forward/androids/Image/ImageLoaderConfig;->DEFAULT_KEY_GENERATOR:Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcn/forward/androids/Image/ImageLoaderConfig;-><init>(Lcn/forward/androids/Image/ImageCache;)V

    return-void
.end method

.method public constructor <init>(Lcn/forward/androids/Image/ImageCache;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mNeedCache:Z

    .line 37
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 39
    sget-object v0, Lcn/forward/androids/Image/ImageLoaderConfig;->sDefaultImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    iput-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    .line 41
    sget-object v0, Lcn/forward/androids/Priority;->DEFAULT:Lcn/forward/androids/Priority;

    iput-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mPriority:Lcn/forward/androids/Priority;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mExtractThumbnail:Z

    .line 48
    sget-object v0, Lcn/forward/androids/Image/ImageLoaderConfig;->DEFAULT_KEY_GENERATOR:Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    iput-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mCacheKeyGenerator:Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    .line 64
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    return-void
.end method

.method public static getDefaultConfig()Lcn/forward/androids/Image/ImageLoaderConfig;
    .locals 1

    .line 144
    sget-object v0, Lcn/forward/androids/Image/ImageLoaderConfig;->sDefaultConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    return-object v0
.end method

.method public static getDefaultImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;
    .locals 1

    .line 51
    sget-object v0, Lcn/forward/androids/Image/ImageLoaderConfig;->sDefaultImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    return-object v0
.end method

.method public static setDefaultConfig(Lcn/forward/androids/Image/ImageLoaderConfig;)V
    .locals 0

    .line 148
    sput-object p0, Lcn/forward/androids/Image/ImageLoaderConfig;->sDefaultConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    return-void
.end method

.method public static setDefaultImageSetter(Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)V
    .locals 0

    .line 55
    sput-object p0, Lcn/forward/androids/Image/ImageLoaderConfig;->sDefaultImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    return-void
.end method


# virtual methods
.method public clone()Lcn/forward/androids/Image/ImageLoaderConfig;
    .locals 2

    .line 220
    new-instance v0, Lcn/forward/androids/Image/ImageLoaderConfig;

    iget-object v1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    invoke-direct {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;-><init>(Lcn/forward/androids/Image/ImageCache;)V

    .line 221
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 222
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->isAutoRotate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setAutoRotate(Z)V

    .line 223
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 224
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setImageSetter(Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)V

    .line 225
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->isLoadOriginal()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setLoadOriginal(Z)V

    .line 228
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setMaxHeight(I)V

    .line 229
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setMaxWidth(I)V

    .line 230
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getPriority()Lcn/forward/androids/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setPriority(Lcn/forward/androids/Priority;)V

    .line 231
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->isNeedCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setNeedCache(Z)V

    .line 232
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageCache()Lcn/forward/androids/Image/ImageCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setImageCache(Lcn/forward/androids/Image/ImageCache;)V

    .line 233
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->getCacheKeyGenerator()Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setCacheKeyGenerator(Lcn/forward/androids/Image/ImageCacheKeyGenerator;)V

    .line 234
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->isExtractThumbnail()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->setExtractThumbnail(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageLoaderConfig;->clone()Lcn/forward/androids/Image/ImageLoaderConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getCacheKeyGenerator()Lcn/forward/androids/Image/ImageCacheKeyGenerator;
    .locals 1

    .line 243
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mCacheKeyGenerator:Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    return-object v0
.end method

.method public getImageCache()Lcn/forward/androids/Image/ImageCache;
    .locals 1

    .line 161
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    return-object v0
.end method

.method public getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    return-object v0
.end method

.method public getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 128
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mLoadFailedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLoadingDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 77
    iget v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 69
    iget v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mMaxWidth:I

    return v0
.end method

.method public getPriority()Lcn/forward/androids/Priority;
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mPriority:Lcn/forward/androids/Priority;

    return-object v0
.end method

.method public isAutoRotate()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mAutoRotate:Z

    return v0
.end method

.method public isExtractThumbnail()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mExtractThumbnail:Z

    return v0
.end method

.method public isLoadOriginal()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mLoadOriginal:Z

    return v0
.end method

.method public isNeedCache()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mNeedCache:Z

    return v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setAutoRotate(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mAutoRotate:Z

    return-void
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public setCacheKeyGenerator(Lcn/forward/androids/Image/ImageCacheKeyGenerator;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mCacheKeyGenerator:Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    return-void
.end method

.method public setExtractThumbnail(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mExtractThumbnail:Z

    return-void
.end method

.method public setImageCache(Lcn/forward/androids/Image/ImageCache;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    return-void
.end method

.method public setImageSetter(Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mImageSetter:Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    return-void
.end method

.method public setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mLoadFailedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadOriginal(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mLoadOriginal:Z

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mMaxWidth:I

    return-void
.end method

.method public setNeedCache(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mNeedCache:Z

    return-void
.end method

.method public setPriority(Lcn/forward/androids/Priority;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderConfig;->mPriority:Lcn/forward/androids/Priority;

    return-void
.end method
