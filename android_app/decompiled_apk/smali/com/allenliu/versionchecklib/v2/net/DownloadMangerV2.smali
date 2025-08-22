.class public Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;
.super Ljava/lang/Object;
.source "DownloadMangerV2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->handleFailed(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    .line 30
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$1;

    invoke-direct {v1, p3}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$1;-><init>(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

    invoke-direct {v0, p1, p2, p3}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "you must set download url for download function using"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static handleFailed(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 2

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$5;

    invoke-direct {v1, p0}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$5;-><init>(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static response(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 11

    .line 76
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 88
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    .line 89
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 95
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v5, 0x0

    .line 97
    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v7, p2

    add-long/2addr v5, v7

    long-to-double v7, v5

    long-to-double v9, v3

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v9

    double-to-int p2, v7

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$3;

    invoke-direct {v7, p3, p2}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$3;-><init>(Lcom/allenliu/versionchecklib/callback/DownloadListener;I)V

    invoke-virtual {v1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 113
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$4;

    invoke-direct {v0, p3, p0}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$4;-><init>(Lcom/allenliu/versionchecklib/callback/DownloadListener;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 127
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_4

    :catch_0
    move-object p1, v1

    :catch_1
    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    goto :goto_4

    :catch_2
    move-object p1, v1

    .line 122
    :goto_2
    :try_start_4
    invoke-static {p3}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->handleFailed(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_3

    .line 127
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p1, :cond_8

    .line 129
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 131
    :catch_3
    invoke-static {p3}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->handleFailed(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 127
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz p1, :cond_6

    .line 129
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 131
    :catch_4
    invoke-static {p3}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->handleFailed(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    .line 134
    :cond_6
    :goto_5
    throw p0

    .line 136
    :cond_7
    invoke-static {p3}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->handleFailed(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    :cond_8
    :goto_6
    return-void
.end method
