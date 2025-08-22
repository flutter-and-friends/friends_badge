.class public Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;
.super Ljava/lang/Object;
.source "BuilderHelper.java"


# instance fields
.field private builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    return-void
.end method


# virtual methods
.method public checkAndDeleteAPK()V
    .locals 6

    .line 33
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->context:Landroid/content/Context;

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/allenliu/versionchecklib/core/DownloadManager;->checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u5220\u9664\u672c\u5730apk"

    .line 35
    invoke-static {v1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public checkForceUpdate()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getForceUpdateListener()Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getForceUpdateListener()Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;->onShouldForceUpdate()V

    .line 46
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
