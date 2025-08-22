.class public Lcom/allenliu/versionchecklib/v2/ui/VersionService;
.super Landroid/app/Service;
.source "VersionService.java"


# static fields
.field public static builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;


# instance fields
.field private builderHelper:Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;

.field private executors:Ljava/util/concurrent/ExecutorService;

.field private isServiceAlive:Z

.field private notificationHelper:Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->isServiceAlive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->isServiceAlive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->notificationHelper:Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/allenliu/versionchecklib/v2/ui/VersionService;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->updateDownloadingDialogProgress(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->install()V

    return-void
.end method

.method static synthetic access$400(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->showDownloadFailedDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->showDownloadingDialog()V

    return-void
.end method

.method private downloadAPK()V
    .locals 2

    .line 120
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isDirectDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    .line 122
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/AllenEventBusUtil;->sendEventBus(I)V

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->requestPermissionAndDownload()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->showVersionDialog()V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;)V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private getDownloadFilePath()Ljava/lang/String;
    .locals 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v3}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v3}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 302
    invoke-static {p0}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->createSimpleNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startForeground(ILandroid/app/Notification;)V

    .line 304
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-eqz v0, :cond_1

    .line 305
    iput-boolean v1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->isServiceAlive:Z

    .line 306
    new-instance v0, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-direct {v0, v2, v3}, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;-><init>(Landroid/content/Context;Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;)V

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builderHelper:Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;

    .line 307
    new-instance v0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-direct {v0, v2, v3}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;-><init>(Landroid/content/Context;Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;)V

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->notificationHelper:Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    .line 309
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->notificationHelper:Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->getServiceNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startForeground(ILandroid/app/Notification;)V

    .line 310
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->executors:Ljava/util/concurrent/ExecutorService;

    .line 311
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService$2;

    invoke-direct {v1, p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService$2;-><init>(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 319
    :cond_1
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private install()V
    .locals 3

    const/16 v0, 0x65

    .line 180
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/AllenEventBusUtil;->sendEventBus(I)V

    .line 181
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->showVersionDialog()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomInstallListener()Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/allenliu/versionchecklib/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/io/File;Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;)V

    .line 186
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builderHelper:Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->checkForceUpdate()V

    :goto_0
    return-void
.end method

.method private requestPermissionAndDownload()V
    .locals 2

    .line 172
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showDownloadFailedDialog()V
    .locals 2

    .line 164
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showDownloadingDialog()V
    .locals 2

    .line 148
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showVersionDialog()V
    .locals 2

    .line 140
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startDownloadApk()V
    .locals 6

    .line 197
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getNewestVersionCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/allenliu/versionchecklib/core/DownloadManager;->checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isForceRedownload()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "using cache"

    .line 199
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->install()V

    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builderHelper:Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->checkAndDeleteAPK()V

    .line 204
    sget-object v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 205
    sget-object v2, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 206
    sget-object v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/UIData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v5}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v5}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;

    invoke-direct {v3, p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService$1;-><init>(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V

    invoke-static {v1, v0, v2, v3}, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    return-void

    .line 209
    :cond_3
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must set a download url for download function using"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateDownloadingDialogProgress(I)V
    .locals 2

    .line 156
    new-instance v0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;-><init>()V

    const/16 v1, 0x64

    .line 157
    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setEventType(I)Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setData(Ljava/lang/Object;)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    const/4 p1, 0x1

    .line 159
    invoke-virtual {v0, p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setSuccessful(Z)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    .line 160
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "version service destroy"

    .line 79
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builderHelper:Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;

    .line 82
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->notificationHelper:Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->onDestroy()V

    .line 84
    :cond_0
    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->notificationHelper:Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->isServiceAlive:Z

    .line 86
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->executors:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->stopForeground(Z)V

    .line 89
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onHandleWork()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->downloadAPK()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "version service create"

    .line 70
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->init()V

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public receiveEvent(Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 272
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_2

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->startDownloadApk()V

    goto :goto_0

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builderHelper:Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;

    if-eqz p1, :cond_3

    .line 282
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/v2/ui/BuilderHelper;->checkForceUpdate()V

    goto :goto_0

    .line 274
    :cond_2
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->requestPermissionAndDownload()V

    :cond_3
    :goto_0
    return-void
.end method
