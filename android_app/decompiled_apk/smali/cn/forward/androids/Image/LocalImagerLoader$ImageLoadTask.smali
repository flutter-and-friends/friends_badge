.class Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;
.super Lcn/forward/androids/SimpleAsyncTask;
.source "LocalImagerLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/Image/LocalImagerLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/forward/androids/SimpleAsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROGRESS_LOADING:I = 0x1

.field private static final PROGRESS_LOAD_STARTED:I


# instance fields
.field private mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mPath:Ljava/lang/String;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;IILcn/forward/androids/Image/ImageLoaderConfig;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcn/forward/androids/SimpleAsyncTask;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 151
    iput-object p3, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    .line 152
    iput p4, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxWidth:I

    .line 153
    iput p5, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxHeight:I

    .line 154
    iput-object p6, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    .line 155
    iput-object p7, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mKey:Ljava/lang/String;

    .line 156
    iput-object p8, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    return-void
.end method

.method private abort()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v2}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/forward/androids/Image/LocalImagerLoader;->access$000(Landroid/view/View;Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;)Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;

    move-result-object v0

    if-eq p0, v0, :cond_3

    :cond_1
    :goto_0
    return v1

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private start()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 180
    invoke-direct {p0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->abort()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 184
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    const-string v1, "assets/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 194
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    .line 195
    invoke-virtual {v2}, Lcn/forward/androids/Image/ImageLoaderConfig;->isLoadOriginal()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxWidth:I

    :goto_1
    iget-object v4, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v4}, Lcn/forward/androids/Image/ImageLoaderConfig;->isLoadOriginal()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget v3, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxHeight:I

    :goto_2
    iget-object v4, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    .line 196
    invoke-virtual {v4}, Lcn/forward/androids/Image/ImageLoaderConfig;->isNeedCache()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v4}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageCache()Lcn/forward/androids/Image/ImageCache;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v0

    :goto_3
    iget-object v5, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mKey:Ljava/lang/String;

    iget-object v6, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    .line 197
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_4

    :cond_6
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 194
    :goto_4
    invoke-static/range {v1 .. v6}, Lcn/forward/androids/Image/LocalImagerLoader;->getBitmapFromDisk(Ljava/io/FileDescriptor;IILcn/forward/androids/Image/ImageCache;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    invoke-direct {p0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->abort()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_7

    .line 230
    :try_start_3
    invoke-static {p1}, Lcn/forward/androids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :cond_7
    if-eqz v1, :cond_b

    .line 205
    :try_start_4
    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v2}, Lcn/forward/androids/Image/ImageLoaderConfig;->isExtractThumbnail()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 207
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 208
    iget v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxWidth:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_5

    .line 210
    :cond_8
    iget v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxHeight:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_5
    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_9

    .line 213
    iget v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxWidth:I

    iget v3, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxHeight:I

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 218
    :cond_9
    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v2}, Lcn/forward/androids/Image/ImageLoaderConfig;->isAutoRotate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 220
    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcn/forward/androids/utils/ImageUtils;->rotateBitmapByExif(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 222
    :cond_a
    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v2}, Lcn/forward/androids/Image/ImageLoaderConfig;->isNeedCache()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 223
    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v2}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageCache()Lcn/forward/androids/Image/ImageCache;

    move-result-object v2

    iget-object v3, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcn/forward/androids/Image/ImageCache;->saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 230
    :cond_b
    :try_start_5
    invoke-static {p1}, Lcn/forward/androids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v1

    :catchall_0
    move-object p1, v0

    .line 228
    :catchall_1
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open file failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/forward/androids/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 230
    :try_start_7
    invoke-static {p1}, Lcn/forward/androids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_2
    move-exception v1

    invoke-static {p1}, Lcn/forward/androids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcn/forward/androids/Image/ImageLoaderConfig;
    .locals 1

    .line 326
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 322
    iget v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 318
    iget v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mMaxWidth:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 310
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 242
    invoke-direct {p0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->abort()Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    .line 243
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {p1, v0, v2, v1}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadFailed(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;I)V

    :cond_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    const/4 v2, -0x3

    if-eqz v0, :cond_4

    .line 249
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 252
    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 253
    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/forward/androids/Image/LocalImagerLoader;->access$100(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 254
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    if-eqz v0, :cond_6

    .line 255
    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v0, v1, v2, p1}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadCompleted(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {p1}, Lcn/forward/androids/Image/ImageLoaderConfig;->getImageSetter()Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object p1

    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v1}, Lcn/forward/androids/Image/ImageLoaderConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/forward/androids/Image/ImageLoaderConfig$ImageSetter;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    if-eqz p1, :cond_6

    .line 260
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {p1, v0, v1, v2}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadFailed(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;I)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    if-eqz p1, :cond_6

    .line 265
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {p1, v0, v2, v1}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadFailed(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 270
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    if-eqz v0, :cond_6

    .line 271
    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {v0, v1, v2, p1}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadCompleted(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 274
    :cond_5
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    if-eqz p1, :cond_6

    .line 275
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {p1, v0, v1, v2}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadFailed(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 10

    .line 292
    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 295
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    return-void

    .line 301
    :cond_2
    iget-object v3, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    iget-object v4, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v5, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v0, 0x2

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoading(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;JJ)V

    goto :goto_0

    .line 297
    :cond_3
    iget-object p1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mLoaderListener:Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;

    iget-object v0, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->mConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {p1, v0, v1}, Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;->onLoadStarted(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;)V

    :goto_0
    return-void
.end method

.method public updateProgress(JJ)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcn/forward/androids/Image/LocalImagerLoader$ImageLoadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
