.class public Lcn/forward/androids/Image/LocalImagerLoader;
.super Ljava/lang/Object;
.source "LocalImagerLoader.java"

# interfaces
.implements Lcn/forward/androids/Image/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcn/forward/androids/Image/LocalImagerLoader;->getLoadTaskFromContainer(Landroid/view/View;Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcn/forward/androids/Image/LocalImagerLoader;->animationDisplay(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static animationDisplay(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/animation/Animation;

    const-string v1, "clone"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 378
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static cancelUselessImageLoadTask(Landroid/view/View;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;)Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;
    .locals 2

    .line 343
    invoke-virtual {p2}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object p2

    invoke-static {p0, p2}, Lcn/forward/androids/Image/LocalImagerLoader;->getLoadTaskFromContainer(Landroid/view/View;Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 350
    invoke-virtual {p0, p1}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->cancel(Z)Z

    :cond_1
    return-object p2
.end method

.method public static getBitmapFromDisk(Ljava/io/FileDescriptor;IILcn/forward/androids/Image/ImageCache;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p3, :cond_0

    .line 102
    invoke-virtual {p3, p4}, Lcn/forward/androids/Image/ImageCache;->getBitmapDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 112
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 115
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v4, v4, v3

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 116
    invoke-static {v4, p1}, Lcn/forward/androids/utils/ImageUtils;->computeBitmapSimple(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 118
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 119
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 121
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p3, p0, p4, p5}, Lcn/forward/androids/Image/ImageCache;->saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    :cond_1
    return-object p0

    :catchall_0
    const-string p0, "get bitmap error"

    .line 123
    invoke-static {p0}, Lcn/forward/androids/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getLoadTaskFromContainer(Landroid/view/View;Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;
    .locals 0

    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p1, p0}, Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;->getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 360
    instance-of p1, p0, Lcn/forward/androids/Image/AsyncDrawable;

    if-eqz p1, :cond_0

    .line 361
    check-cast p0, Lcn/forward/androids/Image/AsyncDrawable;

    .line 362
    invoke-virtual {p0}, Lcn/forward/androids/Image/AsyncDrawable;->getBitmapWorkerTask()Lcn/forward/androids/SimpleAsyncTask;

    move-result-object p0

    .line 363
    instance-of p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    if-eqz p1, :cond_0

    .line 364
    check-cast p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public load(Landroid/view/View;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p1

    move-object/from16 v4, p2

    move-object/from16 v11, p3

    move-object/from16 v9, p4

    if-eqz v11, :cond_9

    const-string v1, "/"

    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    const-string v1, "assets/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v12

    .line 47
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getMaxWidth()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getMaxHeight()I

    move-result v2

    invoke-static {v10, v1, v2}, Lcn/forward/androids/utils/ImageUtils;->optimizeMaxSizeByView(Landroid/view/View;II)[I

    move-result-object v1

    .line 48
    aget v5, v1, v12

    const/4 v13, 0x1

    .line 49
    aget v6, v1, v13

    .line 50
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->isNeedCache()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getCacheKeyGenerator()Lcn/forward/androids/Image/ImageCacheKeyGenerator;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v11}, Lcn/forward/androids/Image/ImageCacheKeyGenerator;->generateCacheKey([ILjava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    .line 53
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->isNeedCache()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageCache()Lcn/forward/androids/Image/ImageCache;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcn/forward/androids/Image/ImageCache;->getBitmapMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {v9, v4, v11}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadStarted(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;)V

    :cond_2
    if-eqz v10, :cond_3

    .line 62
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_3
    if-eqz v9, :cond_4

    .line 66
    invoke-virtual {v9, v4, v11, v1}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadCompleted(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Landroid/graphics/Bitmap;)V

    :cond_4
    return v13

    :cond_5
    if-eqz v10, :cond_7

    .line 74
    invoke-static/range {p1 .. p3}, Lcn/forward/androids/Image/LocalImagerLoader;->cancelUselessImageLoadTask(Landroid/view/View;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;)Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    move-result-object v1

    if-nez v1, :cond_6

    .line 75
    new-instance v14, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    iget-object v2, v0, Lcn/forward/androids/Image/LocalImagerLoader;->mContext:Landroid/content/Context;

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;IILcn/forward/androids/Image/ImageLoaderConfig;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object v1

    new-instance v2, Lcn/forward/androids/Image/AsyncDrawable;

    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3, v14}, Lcn/forward/androids/Image/AsyncDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcn/forward/androids/SimpleAsyncTask;)V

    invoke-virtual {v1, v10, v2}, Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getPriority()Lcn/forward/androids/Priority;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->executePriority(Lcn/forward/androids/Priority;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;

    goto :goto_1

    :cond_6
    if-eqz v9, :cond_8

    const/4 v1, -0x1

    .line 80
    invoke-virtual {v9, v4, v11, v1}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadFailed(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;I)V

    goto :goto_1

    .line 84
    :cond_7
    new-instance v10, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    iget-object v2, v0, Lcn/forward/androids/Image/LocalImagerLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object v1, v10

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;IILcn/forward/androids/Image/ImageLoaderConfig;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Lcn/forward/androids/Image/ImageLoaderConfig;->getPriority()Lcn/forward/androids/Priority;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->executePriority(Lcn/forward/androids/Priority;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;

    :cond_8
    :goto_1
    return v13

    .line 40
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImageLoaderConfig is null!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public load(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/forward/androids/Image/LocalImagerLoader;->load(Landroid/view/View;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z

    move-result p1

    return p1
.end method
