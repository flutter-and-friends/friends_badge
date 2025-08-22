.class final Lcom/allenliu/versionchecklib/core/DownloadManager$2;
.super Lcom/allenliu/versionchecklib/core/http/FileCallBack;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/DownloadManager;->silentDownloadAPK(Landroid/content/Context;Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
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

    .line 168
    iput-object p3, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-direct {p0, p1, p2}, Lcom/allenliu/versionchecklib/core/http/FileCallBack;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .locals 1

    const-string v0, "file silent download failed"

    .line 190
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-interface {v0}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadFail()V

    return-void
.end method

.method public onDownloading(I)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silent downloadProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$100()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 183
    invoke-static {p1}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$102(I)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloading(I)V

    return-void
.end method

.method public onSuccess(Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 173
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-interface {p2, p1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadSuccess(Ljava/io/File;)V

    return-void
.end method
