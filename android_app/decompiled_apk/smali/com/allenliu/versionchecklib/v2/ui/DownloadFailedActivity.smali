.class public Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;
.super Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;
.source "DownloadFailedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private downloadFailedDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)Landroid/app/Dialog;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->retryDownload()V

    return-void
.end method

.method private retryDownload()V
    .locals 1

    const/16 v0, 0x62

    .line 93
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/AllenEventBusUtil;->sendEventBus(I)V

    .line 94
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->finish()V

    return-void
.end method

.method private showDowloadFailedDialog()V
    .locals 1

    const/16 v0, 0x66

    .line 70
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/AllenEventBusUtil;->sendEventBus(I)V

    .line 72
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomDownloadFailedListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "show customization failed dialog"

    .line 73
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->showCustomDialog()V

    goto :goto_0

    :cond_0
    const-string v0, "show default failed dialog"

    .line 76
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->showDefaultDialog()V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "on cancel"

    .line 84
    invoke-static {p1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->cancelHandler()V

    .line 87
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->checkForceUpdate()V

    .line 88
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->showDowloadFailedDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public showCustomDialog()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomDownloadFailedListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadFailedListener;->getCustomDownloadFailed(Landroid/content/Context;Lcom/allenliu/versionchecklib/v2/builder/UIData;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    .line 47
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    sget v1, Lcom/allenliu/versionchecklib/R$id;->versionchecklib_failed_dialog_retry:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$3;

    invoke-direct {v1, p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$3;-><init>(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    sget v1, Lcom/allenliu/versionchecklib/R$id;->versionchecklib_failed_dialog_cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v1, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$4;

    invoke-direct {v1, p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$4;-><init>(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public showDefaultDialog()V
    .locals 3

    .line 27
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_fail_retry:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_confirm:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$2;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$2;-><init>(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_cancel:I

    .line 32
    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$1;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$1;-><init>(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    .line 38
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 40
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->downloadFailedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
