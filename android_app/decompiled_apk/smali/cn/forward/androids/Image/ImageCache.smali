.class public Lcn/forward/androids/Image/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# instance fields
.field private diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

.field private mContext:Landroid/content/Context;

.field private mDiskCacheDir:Ljava/io/File;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheMaxSize:J

.field private mMemoryCacheMaxSize:I

.field private memoryLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6

    .line 36
    new-instance v5, Ljava/io/File;

    const-string v0, "androidsCache"

    invoke-static {p1, v0}, Lcn/forward/androids/Image/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/forward/androids/Image/ImageCache;-><init>(Landroid/content/Context;IJLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/io/File;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcn/forward/androids/Image/ImageCache;->mContext:Landroid/content/Context;

    .line 41
    iput p2, p0, Lcn/forward/androids/Image/ImageCache;->mMemoryCacheMaxSize:I

    .line 42
    iput-wide p3, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheMaxSize:J

    .line 43
    iput-object p5, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    .line 45
    invoke-direct {p0}, Lcn/forward/androids/Image/ImageCache;->initMemoryCache()V

    .line 46
    invoke-direct {p0}, Lcn/forward/androids/Image/ImageCache;->initDiskCache()V

    return-void
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 319
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 327
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initDiskCache()V
    .locals 6

    .line 62
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 68
    :try_start_1
    iget-object v2, p0, Lcn/forward/androids/Image/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcn/forward/androids/Image/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 71
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 74
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :cond_1
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "disk cache dir init failed"

    .line 80
    invoke-static {v1}, Lcn/forward/androids/utils/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_3
    :goto_1
    iget-object v2, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheMaxSize:J

    invoke-static {v2, v1, v3, v4, v5}, Lcn/forward/androids/utils/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcn/forward/androids/utils/cache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 83
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private initMemoryCache()V
    .locals 2

    .line 50
    new-instance v0, Lcn/forward/androids/Image/ImageCache$1;

    iget v1, p0, Lcn/forward/androids/Image/ImageCache;->mMemoryCacheMaxSize:I

    invoke-direct {v0, p0, v1}, Lcn/forward/androids/Image/ImageCache$1;-><init>(Lcn/forward/androids/Image/ImageCache;I)V

    iput-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public clearAllCache()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageCache;->clearAllMemoryCache()V

    .line 91
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageCache;->clearAllDiskCache()V

    return-void
.end method

.method public clearAllDiskCache()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    if-nez v1, :cond_0

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 107
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->delete()V

    .line 108
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->close()V

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 111
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-direct {p0}, Lcn/forward/androids/Image/ImageCache;->initDiskCache()V

    return-void

    :catchall_0
    move-exception v1

    .line 113
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public clearAllMemoryCache()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public closeAllCache()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageCache;->closeMemoryCache()V

    .line 120
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageCache;->closeDiskCache()V

    return-void
.end method

.method public closeDiskCache()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    if-nez v1, :cond_0

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 134
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->close()V

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 137
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public closeMemoryCache()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcn/forward/androids/Image/ImageCache;->clearAllMemoryCache()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    return-void
.end method

.method public flushDiskCache()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 272
    :try_start_1
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Lcn/forward/androids/utils/cache/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 274
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/forward/androids/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 242
    invoke-virtual {p0, p1}, Lcn/forward/androids/Image/ImageCache;->getBitmapMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcn/forward/androids/Image/ImageCache;->getBitmapDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0, v0, p1}, Lcn/forward/androids/Image/ImageCache;->saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getBitmapDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 175
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 182
    :try_start_1
    iget-object v4, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcn/forward/androids/utils/cache/DiskLruCache;->get(Ljava/lang/String;)Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 184
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    .line 185
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 186
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 187
    invoke-virtual {p1, v3}, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-object p1, v2

    :catch_2
    const-string v4, "getBitmapDiskCache:OutOfMemory"

    .line 190
    invoke-static {v4}, Lcn/forward/androids/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x2

    .line 193
    :try_start_4
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 194
    invoke-virtual {p1, v3}, Lcn/forward/androids/utils/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    return-object p1

    :catch_3
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    .line 177
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 202
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public getBitmapMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 150
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDiskCacheDir()Ljava/io/File;
    .locals 1

    .line 307
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getDiskCacheMaxSize()J
    .locals 2

    .line 294
    iget-wide v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheMaxSize:J

    return-wide v0
.end method

.method public getMemoryCacheMaxSize()I
    .locals 1

    .line 282
    iget v0, p0, Lcn/forward/androids/Image/ImageCache;->mMemoryCacheMaxSize:I

    return v0
.end method

.method public getSnapshotMemoryCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 264
    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/Image/ImageCache;->saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/Image/ImageCache;->saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/Image/ImageCache;->saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1, p2, p3}, Lcn/forward/androids/Image/ImageCache;->saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method

.method public saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 206
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v0}, Lcn/forward/androids/Image/ImageCache;->saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method

.method public saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcn/forward/androids/utils/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcn/forward/androids/utils/cache/DiskLruCache$Editor;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p2, v1}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x5a

    .line 225
    invoke-virtual {p1, p3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 226
    invoke-virtual {p2}, Lcn/forward/androids/utils/cache/DiskLruCache$Editor;->commit()V

    .line 227
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 219
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 232
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 164
    invoke-virtual {v0, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDiskCacheMaxSize(J)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    if-nez v1, :cond_0

    .line 300
    monitor-exit v0

    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageCache;->diskLruCache:Lcn/forward/androids/utils/cache/DiskLruCache;

    invoke-virtual {v1, p1, p2}, Lcn/forward/androids/utils/cache/DiskLruCache;->setMaxSize(J)V

    .line 303
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMemoryCacheMaxSize(I)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcn/forward/androids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    :cond_0
    return-void
.end method
