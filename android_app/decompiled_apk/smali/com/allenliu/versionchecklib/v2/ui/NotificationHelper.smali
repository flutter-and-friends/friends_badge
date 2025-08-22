.class public Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field private static final channelid:Ljava/lang/String; = "version_service_id"


# instance fields
.field private contentText:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentProgress:I

.field private isDownloadSuccess:Z

.field private isFailed:Z

.field manager:Landroid/app/NotificationManager;

.field notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 37
    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isDownloadSuccess:Z

    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isFailed:Z

    .line 39
    iput v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->currentProgress:I

    .line 44
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    .line 46
    iput v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->currentProgress:I

    return-void
.end method

.method private createNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 7

    .line 123
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getNotificationBuilder()Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    move-result-object v0

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    const-string v3, "0"

    const/4 v4, 0x0

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_0

    .line 125
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v5, "ALLEN_NOTIFICATION"

    invoke-direct {v1, v3, v5, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v5, -0x10000

    .line 127
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 128
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 129
    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 130
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 132
    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v1, v5, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v5}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getNotificationBuilder()Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getIcon()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 136
    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    sget v6, Lcom/allenliu/versionchecklib/R$string;->app_name:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getContentTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getContentTitle()Ljava/lang/String;

    move-result-object v5

    .line 139
    :cond_1
    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    sget v6, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_downloading:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getTicker()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getTicker()Ljava/lang/String;

    move-result-object v5

    .line 144
    :cond_2
    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 146
    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    sget v6, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_progress:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->contentText:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getContentText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 148
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getContentText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->contentText:Ljava/lang/String;

    .line 149
    :cond_3
    iget-object v5, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->contentText:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_4
    return-object v1
.end method

.method public static createSimpleNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    .line 191
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "version_service_id"

    const-string v2, "MyApp"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    .line 193
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 194
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, ""

    .line 195
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getServiceNotification()Landroid/app/Notification;
    .locals 6

    .line 169
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    const-string v2, "version_service_id"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    sget v3, Lcom/allenliu/versionchecklib/R$string;->app_name:I

    .line 170
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    sget v3, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_version_service_runing:I

    .line 171
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    .line 172
    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getNotificationBuilder()Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/NotificationBuilder;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 174
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 175
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    const-string v5, "version_service_name"

    invoke-direct {v3, v2, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 176
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 178
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 179
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 185
    :cond_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public showDownloadCompleteNotifcation(Ljava/io/File;)V
    .locals 5

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isDownloadSuccess:Z

    .line 84
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowNotification()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 89
    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".versionProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/allenliu/versionchecklib/core/VersionFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const-string v2, "application/vnd.android.package-archive"

    .line 96
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 99
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 100
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    sget v3, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_finish:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 101
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    invoke-virtual {p1, v1, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 103
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showDownloadFailedNotification()V
    .locals 5

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isDownloadSuccess:Z

    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isFailed:Z

    .line 109
    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    const-class v4, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 111
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v0, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    sget v4, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_fail:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 115
    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public showNotification()V
    .locals 3

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isDownloadSuccess:Z

    .line 71
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isFailed:Z

    .line 72
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    .line 74
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 75
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public updateNotification(I)V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->versionBuilder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->currentProgress:I

    sub-int v0, p1, v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isDownloadSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->isFailed:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->contentText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 59
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 61
    iput p1, p0, Lcom/allenliu/versionchecklib/v2/ui/NotificationHelper;->currentProgress:I

    :cond_0
    return-void
.end method
