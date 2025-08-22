.class final Lcom/allenliu/versionchecklib/core/DownloadManager$1;
.super Lcom/allenliu/versionchecklib/core/http/FileCallBack;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/DownloadManager;->downloadAPK(Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic val$finalManager:Landroid/app/NotificationManager;

.field final synthetic val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;Lcom/allenliu/versionchecklib/core/VersionParams;Landroidx/core/app/NotificationCompat$Builder;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p3, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    iput-object p4, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-object p5, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object p6, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalManager:Landroid/app/NotificationManager;

    iput-object p7, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/allenliu/versionchecklib/core/http/FileCallBack;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/core/VersionParams;->getCustomDownloadActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "isRetry"

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    const-string v2, "VERSION_PARAMS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$url:Ljava/lang/String;

    const-string v2, "downloadUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 153
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    const-string v0, "file download failed"

    .line 155
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-interface {v0}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadFail()V

    return-void
.end method

.method public onDownloading(I)V
    .locals 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloading(I)V

    .line 129
    invoke-static {}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$100()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 130
    invoke-static {p1}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$102(I)I

    .line 131
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$000()Z

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 133
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_progress:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$100()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v0, 0x64

    invoke-static {}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$100()I

    move-result v1

    invoke-virtual {p1, v0, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 136
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 96
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-interface {p2, p1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadSuccess(Ljava/io/File;)V

    const/4 p2, 0x1

    .line 97
    invoke-static {p2}, Lcom/allenliu/versionchecklib/core/DownloadManager;->access$002(Z)Z

    .line 98
    iget-object p3, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {p3}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 99
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 102
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".versionProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/allenliu/versionchecklib/core/VersionFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string p2, "APK download Success"

    .line 108
    invoke-static {p2}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    const-string p2, "application/vnd.android.package-archive"

    .line 110
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 113
    iget-object p3, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_finish:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 115
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 p3, 0x64

    invoke-virtual {p2, p3, p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalManager:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 117
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalManager:Landroid/app/NotificationManager;

    iget-object p3, p0, Lcom/allenliu/versionchecklib/core/DownloadManager$1;->val$finalBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 120
    :cond_1
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->getGlobalContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/allenliu/versionchecklib/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
