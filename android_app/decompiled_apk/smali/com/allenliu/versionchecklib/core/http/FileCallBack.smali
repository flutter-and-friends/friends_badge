.class public abstract Lcom/allenliu/versionchecklib/core/http/FileCallBack;
.super Ljava/lang/Object;
.source "FileCallBack.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private handler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->path:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->name:Ljava/lang/String;

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloading(I)V
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/allenliu/versionchecklib/core/http/FileCallBack$1;

    invoke-direct {p2, p0}, Lcom/allenliu/versionchecklib/core/http/FileCallBack$1;-><init>(Lcom/allenliu/versionchecklib/core/http/FileCallBack;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 52
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 59
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    .line 62
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 68
    :goto_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v5, 0x0

    .line 70
    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 71
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 73
    invoke-virtual {v4, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v1

    add-long/2addr v5, v9

    long-to-double v9, v5

    long-to-double v7, v7

    div-double/2addr v9, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v9, v9, v7

    double-to-int v1, v9

    .line 77
    iget-object v7, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/allenliu/versionchecklib/core/http/FileCallBack$2;

    invoke-direct {v8, p0, v1}, Lcom/allenliu/versionchecklib/core/http/FileCallBack$2;-><init>(Lcom/allenliu/versionchecklib/core/http/FileCallBack;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 86
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;-><init>(Lcom/allenliu/versionchecklib/core/http/FileCallBack;Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 106
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 108
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v1

    goto :goto_7

    :catch_1
    move-exception p1

    move-object v4, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v2, v1

    move-object v4, v2

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v4, v1

    .line 95
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/allenliu/versionchecklib/core/http/FileCallBack$4;

    invoke-direct {p2, p0}, Lcom/allenliu/versionchecklib/core/http/FileCallBack$4;-><init>(Lcom/allenliu/versionchecklib/core/http/FileCallBack;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_4

    .line 106
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 108
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 110
    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    return-void

    :catchall_3
    move-exception p1

    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_6

    .line 106
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_4
    move-exception p2

    goto :goto_9

    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 108
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    .line 110
    :goto_9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    :cond_7
    :goto_a
    throw p1
.end method

.method public abstract onSuccess(Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V
.end method
