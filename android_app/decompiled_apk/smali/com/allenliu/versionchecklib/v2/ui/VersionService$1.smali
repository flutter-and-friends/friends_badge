.class Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;
.super Ljava/lang/Object;
.source "VersionService.java"

# interfaces
.implements Lcom/allenliu/versionchecklib/callback/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startDownloadApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckerDownloadFail()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$000(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkDownloadListener()Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkDownloadListener()Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloadFail()V

    .line 246
    :cond_1
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x66

    .line 247
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/AllenEventBusUtil;->sendEventBus(I)V

    .line 248
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadFailDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$400(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$100(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->showDownloadFailedNotification()V

    goto :goto_0

    .line 253
    :cond_3
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onCheckerDownloadSuccess(Ljava/io/File;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$000(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$100(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->showDownloadCompleteNotifcation(Ljava/io/File;)V

    .line 232
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkDownloadListener()Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkDownloadListener()Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloadSuccess(Ljava/io/File;)V

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$300(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V

    :cond_2
    return-void
.end method

.method public onCheckerDownloading(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$000(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$100(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->updateNotification(I)V

    .line 220
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0, p1}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$200(Lcom/allenliu/versionchecklib/v2/ui/VersionService;I)V

    .line 222
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkDownloadListener()Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkDownloadListener()Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloading(I)V

    :cond_1
    return-void
.end method

.method public onCheckerStartDownload()V
    .locals 1

    const-string v0, "start download apk"

    .line 260
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$100(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->showNotification()V

    .line 263
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->access$500(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V

    :cond_0
    return-void
.end method
