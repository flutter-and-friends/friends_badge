.class final Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;
.super Lcom/allenliu/versionchecklib/core/http/FileCallBack;
.source "DownloadMangerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 0

    .line 40
    iput-object p3, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-direct {p0, p1, p2}, Lcom/allenliu/versionchecklib/core/http/FileCallBack;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->access$000(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    return-void
.end method

.method public onDownloading(I)V
    .locals 2

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;

    invoke-direct {v1, p0, p1}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;-><init>(Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 43
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;

    invoke-direct {p3, p0, p1}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;-><init>(Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
