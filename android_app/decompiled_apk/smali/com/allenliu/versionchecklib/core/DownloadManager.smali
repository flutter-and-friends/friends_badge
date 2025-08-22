.class public Lcom/allenliu/versionchecklib/core/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static isDownloadSuccess:Z = false

.field private static lastProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/allenliu/versionchecklib/core/DownloadManager;->isDownloadSuccess:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/allenliu/versionchecklib/core/DownloadManager;->isDownloadSuccess:Z

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 41
    sget v0, Lcom/allenliu/versionchecklib/core/DownloadManager;->lastProgress:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 41
    sput p0, Lcom/allenliu/versionchecklib/core/DownloadManager;->lastProgress:I

    return p0
.end method

.method public static checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-static {p0, p1, v0}, Lcom/allenliu/versionchecklib/core/DownloadManager;->checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 5

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 215
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730\u5b89\u88c5\u5305\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n \u5f53\u524dapp\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq p0, v0, :cond_1

    if-eqz p2, :cond_0

    .line 221
    iget p0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private static createNotification(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const-string v2, "0"

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    .line 239
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v4, "ALLEN_NOTIFICATION"

    invoke-direct {v0, v2, v4, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 240
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v4, -0x10000

    .line 241
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 242
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const-string v4, "notification"

    .line 243
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 244
    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 248
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 252
    sget v4, Lcom/allenliu/versionchecklib/R$string;->app_name:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 255
    sget v4, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_downloading:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 256
    sget v4, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_progress:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 258
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 259
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    .line 260
    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    return-object v0
.end method

.method public static downloadAPK(Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 13

    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/allenliu/versionchecklib/core/DownloadManager;->lastProgress:I

    .line 48
    sput-boolean v0, Lcom/allenliu/versionchecklib/core/DownloadManager;->isDownloadSuccess:Z

    if-eqz p0, :cond_9

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/allenliu/versionchecklib/core/DownloadManager;->checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 59
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadSuccess(Ljava/io/File;)V

    :cond_1
    return-void

    .line 62
    :cond_2
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/allenliu/versionchecklib/core/DownloadManager;->silentDownloadAPK(Landroid/content/Context;Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/allenliu/versionchecklib/core/DownloadManager;->silentDownloadAPK(Landroid/content/Context;Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    :goto_0
    return-void

    .line 69
    :cond_4
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload()Z

    move-result v2

    if-nez v2, :cond_6

    .line 71
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/allenliu/versionchecklib/core/DownloadManager;->checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    .line 73
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadSuccess(Ljava/io/File;)V

    .line 74
    :cond_5
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/allenliu/versionchecklib/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/io/File;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 80
    invoke-interface {p2}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerStartDownload()V

    .line 84
    :cond_7
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 85
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/NotificationManager;

    .line 86
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allenliu/versionchecklib/core/DownloadManager;->createNotification(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object v10, v1

    move-object v11, v2

    goto :goto_1

    :cond_8
    move-object v10, v2

    move-object v11, v10

    .line 92
    :goto_1
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/core/DownloadManager$1;

    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v2

    move-object v8, p2

    move-object v9, p1

    move-object v12, p0

    invoke-direct/range {v5 .. v12}, Lcom/allenliu/versionchecklib/core/DownloadManager$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;Lcom/allenliu/versionchecklib/core/VersionParams;Landroidx/core/app/NotificationCompat$Builder;Landroid/app/NotificationManager;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private static silentDownloadAPK(Landroid/content/Context;Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 5

    .line 165
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 167
    invoke-interface {p3}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerStartDownload()V

    .line 168
    :cond_0
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/allenliu/versionchecklib/core/DownloadManager$2;

    invoke-virtual {p2}, Lcom/allenliu/versionchecklib/core/VersionParams;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0, p3}, Lcom/allenliu/versionchecklib/core/DownloadManager$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
