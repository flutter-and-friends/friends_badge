.class public Lorg/devio/takephoto/compress/CompressImageUtil;
.super Ljava/lang/Object;
.source "CompressImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;
    }
.end annotation


# instance fields
.field private config:Lorg/devio/takephoto/compress/CompressConfig;

.field private context:Landroid/content/Context;

.field mhHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->mhHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->context:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 30
    invoke-static {}, Lorg/devio/takephoto/compress/CompressConfig;->ofDefaultConfig()Lorg/devio/takephoto/compress/CompressConfig;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->config:Lorg/devio/takephoto/compress/CompressConfig;

    return-void
.end method

.method static synthetic access$000(Lorg/devio/takephoto/compress/CompressImageUtil;)Lorg/devio/takephoto/compress/CompressConfig;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->config:Lorg/devio/takephoto/compress/CompressConfig;

    return-object p0
.end method

.method static synthetic access$100(Lorg/devio/takephoto/compress/CompressImageUtil;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/devio/takephoto/compress/CompressImageUtil;->getThumbnailFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/devio/takephoto/compress/CompressImageUtil;ZLjava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/devio/takephoto/compress/CompressImageUtil;->sendMsg(ZLjava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    return-void
.end method

.method private compressImageByPixel(Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "\u8981\u538b\u7f29\u7684\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 105
    invoke-direct {p0, v0, p1, v1, p2}, Lorg/devio/takephoto/compress/CompressImageUtil;->sendMsg(ZLjava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    return-void

    .line 108
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 109
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 111
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 113
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 114
    iget-object v4, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v4}, Lorg/devio/takephoto/compress/CompressConfig;->getMaxPixel()I

    move-result v4

    int-to-float v4, v4

    if-lt v0, v3, :cond_1

    int-to-float v5, v0

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    .line 117
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    if-ge v0, v3, :cond_2

    int-to-float v0, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 120
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 123
    :goto_1
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 124
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 125
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 126
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 127
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v1}, Lorg/devio/takephoto/compress/CompressConfig;->isEnableQualityCompress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-direct {p0, v0, p1, p2}, Lorg/devio/takephoto/compress/CompressImageUtil;->compressImageByQuality(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    goto :goto_2

    .line 131
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/devio/takephoto/compress/CompressImageUtil;->getThumbnailFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 132
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;->onCompressSuccess(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private compressImageByQuality(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "\u50cf\u7d20\u538b\u7f29\u5931\u8d25,bitmap is null"

    .line 56
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/devio/takephoto/compress/CompressImageUtil;->sendMsg(ZLjava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/devio/takephoto/compress/CompressImageUtil$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/devio/takephoto/compress/CompressImageUtil$1;-><init>(Lorg/devio/takephoto/compress/CompressImageUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getThumbnailFile(Ljava/io/File;)Ljava/io/File;
    .locals 1

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/devio/takephoto/uitl/TFileUtils;->getPhotoCacheDir(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private sendMsg(ZLjava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 8

    .line 146
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->mhHandler:Landroid/os/Handler;

    new-instance v7, Lorg/devio/takephoto/compress/CompressImageUtil$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/devio/takephoto/compress/CompressImageUtil$2;-><init>(Lorg/devio/takephoto/compress/CompressImageUtil;ZLorg/devio/takephoto/compress/CompressImageUtil$CompressListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public compress(Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageUtil;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v0}, Lorg/devio/takephoto/compress/CompressConfig;->isEnablePixelCompress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/compress/CompressImageUtil;->compressImageByPixel(Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\u56fe\u7247\u538b\u7f29\u5931\u8d25,%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;->onCompressFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/devio/takephoto/compress/CompressImageUtil;->compressImageByQuality(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    :goto_0
    return-void
.end method
