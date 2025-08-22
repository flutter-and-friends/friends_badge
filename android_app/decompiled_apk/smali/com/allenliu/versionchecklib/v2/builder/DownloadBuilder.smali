.class public Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
.super Ljava/lang/Object;
.source "DownloadBuilder.java"


# instance fields
.field private apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

.field private apkName:Ljava/lang/String;

.field private customDownloadFailedListener:Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;

.field private customDownloadingDialogListener:Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;

.field private customInstallListener:Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;

.field private customVersionDialogListener:Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;

.field private downloadAPKPath:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private forceUpdateListener:Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

.field private isDirectDownload:Z

.field private isForceRedownload:Z

.field private isShowDownloadFailDialog:Z

.field private isShowDownloadingDialog:Z

.field private isShowNotification:Z

.field private isSilentDownload:Z

.field private newestVersionCode:Ljava/lang/Integer;

.field private notificationBuilder:Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

.field private onCancelListener:Lcom/allenliu/versionchecklib/callback/OnCancelListener;

.field private requestVersionBuilder:Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;

.field private versionBundle:Lcom/allenliu/versionchecklib/v2/builder/UIData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not be instantiated from outside"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;Lcom/allenliu/versionchecklib/v2/builder/UIData;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->requestVersionBuilder:Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;

    .line 67
    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->versionBundle:Lcom/allenliu/versionchecklib/v2/builder/UIData;

    .line 68
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->initialize()V

    return-void
.end method

.method private checkWhetherNeedRequestVersion()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getRequestVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload:Z

    .line 56
    invoke-static {}, Lcom/allenliu/versionchecklib/utils/FileHelper;->getDownloadApkCachePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->downloadAPKPath:Ljava/lang/String;

    .line 57
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isForceRedownload:Z

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadingDialog:Z

    .line 59
    iput-boolean v1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowNotification:Z

    .line 60
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isDirectDownload:Z

    .line 61
    iput-boolean v1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadFailDialog:Z

    .line 62
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->create()Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->notificationBuilder:Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    return-void
.end method


# virtual methods
.method public download(Landroid/content/Context;)V
    .locals 0

    .line 274
    sput-object p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->enqueueWork(Landroid/content/Context;)V

    return-void
.end method

.method public executeMission(Landroid/content/Context;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->apkName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->apkName:Ljava/lang/String;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->notificationBuilder:Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getIcon()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 258
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 259
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 260
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->notificationBuilder:Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    invoke-virtual {v1, v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->setIcon(I)Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 265
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->checkWhetherNeedRequestVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;->getInstance()Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;->requestVersion(Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;Landroid/content/Context;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->download(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public getApkDownloadListener()Lcom/allenliu/versionchecklib/callback/APKDownloadListener;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    return-object v0
.end method

.method public getApkName()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomDownloadFailedListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customDownloadFailedListener:Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;

    return-object v0
.end method

.method public getCustomDownloadingDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customDownloadingDialogListener:Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;

    return-object v0
.end method

.method public getCustomInstallListener()Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customInstallListener:Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;

    return-object v0
.end method

.method public getCustomVersionDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customVersionDialogListener:Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;

    return-object v0
.end method

.method public getDownloadAPKPath()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->downloadAPKPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdateListener()Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->forceUpdateListener:Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    return-object v0
.end method

.method public getNewestVersionCode()Ljava/lang/Integer;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->newestVersionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationBuilder()Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->notificationBuilder:Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    return-object v0
.end method

.method public getOnCancelListener()Lcom/allenliu/versionchecklib/callback/OnCancelListener;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->onCancelListener:Lcom/allenliu/versionchecklib/callback/OnCancelListener;

    return-object v0
.end method

.method public getRequestVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->requestVersionBuilder:Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;

    return-object v0
.end method

.method public getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->versionBundle:Lcom/allenliu/versionchecklib/v2/builder/UIData;

    return-object v0
.end method

.method public isDirectDownload()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isDirectDownload:Z

    return v0
.end method

.method public isForceRedownload()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isForceRedownload:Z

    return v0
.end method

.method public isShowDownloadFailDialog()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadFailDialog:Z

    return v0
.end method

.method public isShowDownloadingDialog()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadingDialog:Z

    return v0
.end method

.method public isShowNotification()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowNotification:Z

    return v0
.end method

.method public isSilentDownload()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload:Z

    return v0
.end method

.method public setApkDownloadListener(Lcom/allenliu/versionchecklib/callback/APKDownloadListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    return-object p0
.end method

.method public setApkName(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->apkName:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomDownloadFailedListener(Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customDownloadFailedListener:Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;

    return-object p0
.end method

.method public setCustomDownloadInstallListener(Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customInstallListener:Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;

    return-object p0
.end method

.method public setCustomDownloadingDialogListener(Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customDownloadingDialogListener:Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;

    return-object p0
.end method

.method public setCustomVersionDialogListener(Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->customVersionDialogListener:Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;

    return-object p0
.end method

.method public setDirectDownload(Z)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isDirectDownload:Z

    return-object p0
.end method

.method public setDownloadAPKPath(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->downloadAPKPath:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setForceRedownload(Z)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isForceRedownload:Z

    return-object p0
.end method

.method public setForceUpdateListener(Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->forceUpdateListener:Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    return-object p0
.end method

.method public setNewestVersionCode(Ljava/lang/Integer;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->newestVersionCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotificationBuilder(Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->notificationBuilder:Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    return-object p0
.end method

.method public setOnCancelListener(Lcom/allenliu/versionchecklib/callback/OnCancelListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->onCancelListener:Lcom/allenliu/versionchecklib/callback/OnCancelListener;

    return-object p0
.end method

.method public setShowDownloadFailDialog(Z)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadFailDialog:Z

    return-object p0
.end method

.method public setShowDownloadingDialog(Z)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowDownloadingDialog:Z

    return-object p0
.end method

.method public setShowNotification(Z)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowNotification:Z

    return-object p0
.end method

.method public setSilentDownload(Z)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload:Z

    return-object p0
.end method

.method public setVersionBundle(Lcom/allenliu/versionchecklib/v2/builder/UIData;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->versionBundle:Lcom/allenliu/versionchecklib/v2/builder/UIData;

    return-object p0
.end method
