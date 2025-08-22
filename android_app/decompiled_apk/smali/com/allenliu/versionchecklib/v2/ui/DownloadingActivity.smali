.class public Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;
.super Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;
.source "DownloadingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final PROGRESS:Ljava/lang/String; = "progress"


# instance fields
.field private currentProgress:I

.field private downloadingDialog:Landroid/app/Dialog;

.field protected isDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    .line 27
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->isDestroy:Z

    return-void
.end method

.method private destroy()V
    .locals 1

    const-string v0, "loading activity destroy"

    .line 126
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->finish()V

    return-void
.end method

.method private destroyWithOutDismiss()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showLoadingDialog()V
    .locals 1

    const-string v0, "show loading"

    .line 151
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->isDestroy:Z

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomDownloadingDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->showCustomDialog()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->showDefaultDialog()V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method

.method private updateProgress()V
    .locals 5

    .line 136
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->isDestroy:Z

    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomDownloadingDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomDownloadingDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    iget v2, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;->updateUI(Landroid/app/Dialog;ILcom/allenliu/versionchecklib/v2/builder/UIData;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    sget v1, Lcom/allenliu/versionchecklib/R$id;->pb:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 141
    iget v1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 142
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    sget v1, Lcom/allenliu/versionchecklib/R$id;->tv_progress:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_progress:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->onCancel(Z)V

    return-void
.end method

.method public onCancel(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 39
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 40
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->cancelHandler()V

    .line 41
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->checkForceUpdate()V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "loading activity create"

    .line 32
    invoke-static {p1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->showLoadingDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onPause()V

    .line 106
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->destroyWithOutDismiss()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->isDestroy:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->isDestroy:Z

    .line 114
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public receiveEvent(Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->destroy()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->onCancel(Z)V

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 57
    iput p1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    .line 58
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->updateProgress()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showCustomDialog()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getCustomDownloadingDialogListener()Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;

    move-result-object v0

    iget v1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getVersionBundle()Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/allenliu/versionchecklib/v2/callback/CustomDownloadingDialogListener;->getCustomDownloadingDialog(Landroid/content/Context;ILcom/allenliu/versionchecklib/v2/builder/UIData;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    .line 90
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    sget v1, Lcom/allenliu/versionchecklib/R$id;->versionchecklib_loading_dialog_cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity$1;

    invoke-direct {v1, p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity$1;-><init>(Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public showDefaultDialog()V
    .locals 6

    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$layout;->downloading_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    .line 73
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getForceUpdateListener()Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    sget v1, Lcom/allenliu/versionchecklib/R$id;->pb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 80
    sget v4, Lcom/allenliu/versionchecklib/R$id;->tv_progress:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    sget v4, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_progress:I

    invoke-virtual {p0, v4}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->currentProgress:I

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 83
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->downloadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
