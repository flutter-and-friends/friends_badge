.class public Lcom/allenliu/versionchecklib/v2/ui/UIActivity;
.super Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;
.source "UIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private isDestroy:Z

.field private versionDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->isDestroy:Z

    return-void
.end method

.method static synthetic access$000(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->dealVersionDialogCommit()V

    return-void
.end method

.method static synthetic access$100(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)Landroid/app/Dialog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private dealVersionDialogCommit()V
    .locals 6

    .line 151
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->isSilentDownload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getApkName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomInstallListener()Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/allenliu/versionchecklib/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/io/File;Lcom/allenliu/versionchecklib/v2/callback/CustomInstallListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->checkForceUpdate()V

    goto :goto_1

    :cond_1
    const/16 v0, 0x62

    .line 160
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/AllenEventBusUtil;->sendEventBus(I)V

    .line 162
    :goto_1
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->finish()V

    :cond_2
    return-void
.end method

.method private showVersionDialog()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomVersionDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->showCustomDialog()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->showDefaultDialog()V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->cancelHandler()V

    .line 170
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->checkForceUpdate()V

    .line 171
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    .line 172
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "version activity create"

    .line 28
    invoke-static {p1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->showVersionDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->isDestroy:Z

    const-string v0, "version activity destroy"

    .line 37
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 38
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public receiveEvent(Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x61

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->showVersionDialog()V

    :goto_0
    return-void
.end method

.method public showCustomDialog()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "show customization dialog"

    .line 89
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomVersionDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/allenliu/versionchecklib/v2/callback/CustomVersionDialogListener;->getCustomVersionDialog(Landroid/content/Context;Lcom/allenliu/versionchecklib/v2/builder/UIData;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    sget v1, Lcom/allenliu/versionchecklib/R$id;->versionchecklib_version_dialog_commit:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "view not null"

    .line 95
    invoke-static {v1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$3;

    invoke-direct {v1, p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$3;-><init>(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->throwWrongIdsException()V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    sget v1, Lcom/allenliu/versionchecklib/R$id;->versionchecklib_version_dialog_cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v1, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$4;

    invoke-direct {v1, p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$4;-><init>(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->throwWrongIdsException()V

    .line 122
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public showDefaultDialog()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/UIData;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/UIData;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "\u63d0\u793a"

    const-string v0, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c"

    .line 60
    :goto_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_confirm:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$1;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$1;-><init>(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getForceUpdateListener()Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 68
    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_cancel:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$2;

    invoke-direct {v3, p0}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$2;-><init>(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    .line 81
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
