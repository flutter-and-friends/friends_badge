.class public abstract Lcom/allenliu/versionchecklib/core/AVersionService;
.super Landroid/app/Service;
.source "AVersionService.java"

# interfaces
.implements Lcom/allenliu/versionchecklib/callback/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allenliu/versionchecklib/core/AVersionService$VersionBroadCastReceiver;
    }
.end annotation


# static fields
.field public static final PERMISSION_ACTION:Ljava/lang/String; = "com.allenliu.versionchecklib.filepermisssion.action"

.field public static final VERSION_PARAMS_EXTRA_KEY:Ljava/lang/String; = "VERSION_PARAMS_EXTRA_KEY"

.field public static final VERSION_PARAMS_KEY:Ljava/lang/String; = "VERSION_PARAMS_KEY"


# instance fields
.field downloadUrl:Ljava/lang/String;

.field paramBundle:Landroid/os/Bundle;

.field stringCallback:Lokhttp3/Callback;

.field title:Ljava/lang/String;

.field updateMsg:Ljava/lang/String;

.field protected versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    new-instance v0, Lcom/allenliu/versionchecklib/core/AVersionService$1;

    invoke-direct {v0, p0}, Lcom/allenliu/versionchecklib/core/AVersionService$1;-><init>(Lcom/allenliu/versionchecklib/core/AVersionService;)V

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->stringCallback:Lokhttp3/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/allenliu/versionchecklib/core/AVersionService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->pauseRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/allenliu/versionchecklib/core/AVersionService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->requestVersionUrlSync()V

    return-void
.end method

.method static synthetic access$200(Lcom/allenliu/versionchecklib/core/AVersionService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->silentDownload()V

    return-void
.end method

.method private goToVersionDialog()V
    .locals 3

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/core/VersionParams;->getCustomDownloadActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->updateMsg:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "text"

    .line 192
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->downloadUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "downloadUrl"

    .line 194
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "title"

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->paramBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 198
    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v2, v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->setParamBundle(Landroid/os/Bundle;)V

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    const-string v2, "VERSION_PARAMS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/core/AVersionService;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->stopSelf()V

    return-void
.end method

.method private pauseRequest()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getPauseRequestTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u7248\u672c\u63a5\u53e3\u5931\u8d25\uff0c\u4e0b\u6b21\u8bf7\u6c42\u5c06\u5728"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms\u540e\u5f00\u59cb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 112
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/allenliu/versionchecklib/core/AVersionService$2;

    invoke-direct {v3, p0}, Lcom/allenliu/versionchecklib/core/AVersionService$2;-><init>(Lcom/allenliu/versionchecklib/core/AVersionService;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private requestVersionUrl()V
    .locals 3

    .line 122
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getRequestMethod()Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    move-result-object v1

    .line 125
    sget-object v2, Lcom/allenliu/versionchecklib/core/AVersionService$3;->$SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod:[I

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v1}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->postJson(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v1}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->post(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v1}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->get(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 136
    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->stringCallback:Lokhttp3/Callback;

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private requestVersionUrlSync()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->requestVersionUrl()V

    return-void
.end method

.method private silentDownload()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->downloadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, v1, p0}, Lcom/allenliu/versionchecklib/core/DownloadManager;->downloadAPK(Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    return-void
.end method

.method private verfiyAndDeleteAPK()V
    .locals 6

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/allenliu/versionchecklib/core/DownloadManager;->checkAPKIsExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u5220\u9664\u672c\u5730apk"

    .line 66
    invoke-static {v1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCheckerDownloadFail()V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->stopSelf()V

    return-void
.end method

.method public onCheckerDownloadSuccess(Ljava/io/File;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->goToVersionDialog()V

    return-void
.end method

.method public onCheckerDownloading(I)V
    .locals 0

    return-void
.end method

.method public onCheckerStartDownload()V
    .locals 0

    return-void
.end method

.method public abstract onResponses(Lcom/allenliu/versionchecklib/core/AVersionService;Ljava/lang/String;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "VERSION_PARAMS_KEY"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 45
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->verfiyAndDeleteAPK()V

    .line 46
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isOnlyDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/core/VersionParams;->getUpdateMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v3}, Lcom/allenliu/versionchecklib/core/VersionParams;->getParamBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/allenliu/versionchecklib/core/AVersionService;->showVersionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->requestVersionUrlSync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public setVersionParams(Lcom/allenliu/versionchecklib/core/VersionParams;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    return-void
.end method

.method public showVersionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/allenliu/versionchecklib/core/AVersionService;->showVersionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public showVersionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->downloadUrl:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->title:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->updateMsg:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->paramBundle:Landroid/os/Bundle;

    .line 152
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    new-instance p1, Lcom/allenliu/versionchecklib/core/AVersionService$VersionBroadCastReceiver;

    invoke-direct {p1, p0}, Lcom/allenliu/versionchecklib/core/AVersionService$VersionBroadCastReceiver;-><init>(Lcom/allenliu/versionchecklib/core/AVersionService;)V

    .line 154
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.allenliu.versionchecklib.filepermisssion.action"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/allenliu/versionchecklib/core/AVersionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/AVersionService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->goToVersionDialog()V

    :goto_0
    return-void
.end method
