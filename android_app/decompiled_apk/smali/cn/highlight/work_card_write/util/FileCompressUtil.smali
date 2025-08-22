.class public Lcn/highlight/work_card_write/util/FileCompressUtil;
.super Ljava/lang/Object;
.source "FileCompressUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;
    }
.end annotation


# static fields
.field private static instance:Lcn/highlight/work_card_write/util/FileCompressUtil;


# instance fields
.field private savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcn/highlight/work_card_write/util/FileCompressUtil;->savePath:Ljava/lang/String;

    return-void
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 4

    .line 167
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    const-string p0, "0B"

    return-object p0

    :cond_0
    const-wide/16 v1, 0x400

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x100000

    cmp-long v3, p0, v1

    if-gez v3, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x40000000

    cmp-long v3, p0, v1

    if-gez v3, :cond_3

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcn/highlight/work_card_write/util/FileCompressUtil;
    .locals 2

    .line 36
    sget-object v0, Lcn/highlight/work_card_write/util/FileCompressUtil;->instance:Lcn/highlight/work_card_write/util/FileCompressUtil;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcn/highlight/work_card_write/util/FileCompressUtil;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcn/highlight/work_card_write/util/FileCompressUtil;->instance:Lcn/highlight/work_card_write/util/FileCompressUtil;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcn/highlight/work_card_write/util/FileCompressUtil;

    invoke-direct {v1}, Lcn/highlight/work_card_write/util/FileCompressUtil;-><init>()V

    sput-object v1, Lcn/highlight/work_card_write/util/FileCompressUtil;->instance:Lcn/highlight/work_card_write/util/FileCompressUtil;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/util/FileCompressUtil;->instance:Lcn/highlight/work_card_write/util/FileCompressUtil;

    return-object v0
.end method

.method static synthetic lambda$compressImg$0(Ljava/lang/String;)Z
    .locals 1

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$compressImgSync$1(Ljava/lang/String;)Z
    .locals 1

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setSavePath()V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/WC/Compress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/util/FileCompressUtil;->savePath:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u538b\u7f29\u6587\u4ef6\u4fdd\u5b58\u8def\u5f84:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/highlight/work_card_write/util/FileCompressUtil;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearCompressPath()V
    .locals 1

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcn/highlight/work_card_write/util/FileCompressUtil;->setSavePath()V

    .line 192
    iget-object v0, p0, Lcn/highlight/work_card_write/util/FileCompressUtil;->savePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/file/FileUtil;->makeDir(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcn/highlight/work_card_write/util/FileCompressUtil;->savePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/file/FileUtil;->deletePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public compressImg(Landroid/content/Context;Ljava/lang/String;Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcn/highlight/work_card_write/util/FileCompressUtil;->setSavePath()V

    .line 71
    invoke-static {p2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const-string p2, ""

    .line 73
    invoke-interface {p3, p1, p2}, Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;->onCompressImg(ZLjava/lang/String;)V

    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-static {p1}, Ltop/zibin/luban/Luban;->with(Landroid/content/Context;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p2}, Ltop/zibin/luban/Luban$Builder;->load(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    const/16 v0, 0x64

    .line 79
    invoke-virtual {p1, v0}, Ltop/zibin/luban/Luban$Builder;->ignoreBy(I)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/util/FileCompressUtil;->savePath:Ljava/lang/String;

    .line 80
    invoke-virtual {p1, v0}, Ltop/zibin/luban/Luban$Builder;->setTargetDir(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    sget-object v0, Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;->INSTANCE:Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$RCfwrTgr4dsWieVIPp897u7L1So;

    .line 81
    invoke-virtual {p1, v0}, Ltop/zibin/luban/Luban$Builder;->filter(Ltop/zibin/luban/CompressionPredicate;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    new-instance v0, Lcn/highlight/work_card_write/util/FileCompressUtil$1;

    invoke-direct {v0, p0, p2, p3}, Lcn/highlight/work_card_write/util/FileCompressUtil$1;-><init>(Lcn/highlight/work_card_write/util/FileCompressUtil;Ljava/lang/String;Lcn/highlight/work_card_write/util/FileCompressUtil$OnCompressImgListener;)V

    .line 82
    invoke-virtual {p1, v0}, Ltop/zibin/luban/Luban$Builder;->setCompressListener(Ltop/zibin/luban/OnCompressListener;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ltop/zibin/luban/Luban$Builder;->launch()V

    return-void
.end method

.method public compressImgSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 123
    invoke-direct {p0}, Lcn/highlight/work_card_write/util/FileCompressUtil;->setSavePath()V

    .line 124
    invoke-static {p2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 127
    :try_start_0
    invoke-static {p1}, Ltop/zibin/luban/Luban;->with(Landroid/content/Context;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1, p2}, Ltop/zibin/luban/Luban$Builder;->load(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    const/16 p3, 0x64

    .line 129
    invoke-virtual {p1, p3}, Ltop/zibin/luban/Luban$Builder;->ignoreBy(I)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 130
    invoke-virtual {p1, p3}, Ltop/zibin/luban/Luban$Builder;->setFocusAlpha(Z)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    iget-object p3, p0, Lcn/highlight/work_card_write/util/FileCompressUtil;->savePath:Ljava/lang/String;

    .line 131
    invoke-virtual {p1, p3}, Ltop/zibin/luban/Luban$Builder;->setTargetDir(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    sget-object p3, Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$JnreGmukc2sPibyekCzaSILKkbs;->INSTANCE:Lcn/highlight/work_card_write/util/-$$Lambda$FileCompressUtil$JnreGmukc2sPibyekCzaSILKkbs;

    .line 132
    invoke-virtual {p1, p3}, Ltop/zibin/luban/Luban$Builder;->filter(Ltop/zibin/luban/CompressionPredicate;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ltop/zibin/luban/Luban$Builder;->get()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p3, 0x0

    .line 134
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u56fe\u7247\u539f\u5927\u5c0f\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/util/FileCompressUtil;->formatFileSize(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;)V

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u56fe\u7247\u538b\u7f29\u540e\u5927\u5c0f\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/util/FileCompressUtil;->formatFileSize(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p2
.end method

.method public getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 231
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getBitmapToDatabase(Landroid/graphics/Bitmap;)[B
    .locals 6

    .line 243
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    const/16 v2, 0x64

    :goto_0
    if-lez v2, :cond_1

    .line 246
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 247
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 248
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 249
    array-length v4, v3

    div-int/lit16 v4, v4, 0x400

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1e

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 255
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 206
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, p3, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object p1, v0

    .line 211
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_0

    .line 215
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    :cond_1
    :goto_3
    throw p2
.end method
