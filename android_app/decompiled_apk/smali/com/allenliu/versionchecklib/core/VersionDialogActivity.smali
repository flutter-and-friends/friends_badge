.class public Lcom/allenliu/versionchecklib/core/VersionDialogActivity;
.super Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;
.source "VersionDialogActivity.java"

# interfaces
.implements Lcom/allenliu/versionchecklib/callback/DownloadListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x123

.field public static instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;


# instance fields
.field private apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

.field private cancelListener:Lcom/allenliu/versionchecklib/callback/DialogDismissListener;

.field private commitListener:Lcom/allenliu/versionchecklib/callback/CommitClickListener;

.field private downloadUrl:Ljava/lang/String;

.field protected failDialog:Landroid/app/Dialog;

.field isDestroy:Z

.field protected loadingDialog:Landroid/app/Dialog;

.field private loadingView:Landroid/view/View;

.field private title:Ljava/lang/String;

.field private updateMsg:Ljava/lang/String;

.field protected versionDialog:Landroid/app/Dialog;

.field private versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    return-void
.end method

.method static synthetic access$000(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)Lcom/allenliu/versionchecklib/callback/CommitClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->commitListener:Lcom/allenliu/versionchecklib/callback/CommitClickListener;

    return-object p0
.end method

.method private dismissAllDialog()V
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dismiss all dialog"

    .line 347
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VERSION_PARAMS_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 96
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showVersionDialog()V

    :cond_0
    return-void
.end method

.method private retryDownload(Landroid/content/Intent;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->dismissAllDialog()V

    const-string v0, "VERSION_PARAMS_KEY"

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    const-string v0, "downloadUrl"

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->requestPermissionAndDownloadFile()V

    return-void
.end method


# virtual methods
.method public dealAPK()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/core/VersionParams;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/allenliu/versionchecklib/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/io/File;)V

    .line 212
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showLoadingDialog(I)V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->requestPermissionAndDownloadFile()V

    :goto_0
    return-void
.end method

.method protected downloadFile()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showLoadingDialog(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {v0, v1, p0}, Lcom/allenliu/versionchecklib/core/DownloadManager;->downloadAPK(Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    return-void
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionParamBundle()Landroid/os/Bundle;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getParamBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVersionParams()Lcom/allenliu/versionchecklib/core/VersionParams;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    return-object v0
.end method

.method public getVersionTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionUpdateMsg()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    return-object v0
.end method

.method public onCheckerDownloadFail()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloadFail()V

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->dismissAllDialog()V

    .line 319
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showFailDialog()V

    return-void
.end method

.method public onCheckerDownloadSuccess(Ljava/io/File;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloadSuccess(Ljava/io/File;)V

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->dismissAllDialog()V

    return-void
.end method

.method public onCheckerDownloading(I)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showLoadingDialog(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    if-eqz v0, :cond_2

    .line 302
    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloading(I)V

    :cond_2
    return-void
.end method

.method public onCheckerStartDownload()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sput-object p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    .line 60
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isRetry"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->retryDownload(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->initialize()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    const/4 v0, 0x0

    .line 336
    sput-object v0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    .line 337
    invoke-super {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 361
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 362
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->cancelListener:Lcom/allenliu/versionchecklib/callback/DialogDismissListener;

    if-eqz v0, :cond_2

    .line 364
    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/DialogDismissListener;->dialogDismiss(Landroid/content/DialogInterface;)V

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    .line 367
    invoke-static {}, Lcom/allenliu/versionchecklib/core/AllenChecker;->cancelMission()V

    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "isRetry"

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->retryDownload(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x123

    if-eq p1, p2, :cond_0

    return-void

    .line 271
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadFile()V

    goto :goto_0

    .line 278
    :cond_1
    sget p1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_write_permission_deny:I

    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 279
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected requestPermissionAndDownloadFile()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 232
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x123

    if-eqz v1, :cond_0

    .line 243
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 252
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadFile()V

    :goto_0
    return-void
.end method

.method public setApkDownloadListener(Lcom/allenliu/versionchecklib/callback/APKDownloadListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    return-void
.end method

.method public setCommitClickListener(Lcom/allenliu/versionchecklib/callback/CommitClickListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->commitListener:Lcom/allenliu/versionchecklib/callback/CommitClickListener;

    return-void
.end method

.method public setDialogDimissListener(Lcom/allenliu/versionchecklib/callback/DialogDismissListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->cancelListener:Lcom/allenliu/versionchecklib/callback/DialogDismissListener;

    return-void
.end method

.method public showCustomDialog()V
    .locals 0

    return-void
.end method

.method public showDefaultDialog()V
    .locals 0

    return-void
.end method

.method public showFailDialog()V
    .locals 4

    .line 156
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadFailDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_fail_retry:I

    invoke-virtual {p0, v2}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_confirm:I

    invoke-virtual {p0, v2}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;

    invoke-direct {v3, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_cancel:I

    .line 166
    invoke-virtual {p0, v2}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    .line 167
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 169
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showLoadingDialog(I)V
    .locals 6

    const-string v0, "show default downloading dialog"

    .line 132
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 135
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/allenliu/versionchecklib/R$layout;->downloading_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    .line 136
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    .line 137
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 138
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$3;

    invoke-direct {v3, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$3;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    sget v3, Lcom/allenliu/versionchecklib/R$id;->pb:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 148
    iget-object v3, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    sget v4, Lcom/allenliu/versionchecklib/R$id;->tv_progress:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 149
    sget v4, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_progress:I

    invoke-virtual {p0, v4}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 151
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method protected showVersionDialog()V
    .locals 3

    .line 108
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_confirm:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$2;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_cancel:I

    .line 116
    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$1;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    .line 123
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 124
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 125
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 126
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
