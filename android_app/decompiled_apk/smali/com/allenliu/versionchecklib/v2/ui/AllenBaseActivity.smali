.class public abstract Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AllenBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private setRootView(Landroid/app/Activity;)V
    .locals 4

    const v0, 0x1020002

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 71
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 73
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private transparentStatusBar(Landroid/app/Activity;)V
    .locals 3

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelHandler()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getOnCancelListener()Lcom/allenliu/versionchecklib/callback/OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getOnCancelListener()Lcom/allenliu/versionchecklib/callback/OnCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/allenliu/versionchecklib/callback/OnCancelListener;->onCancel()V

    :cond_0
    return-void
.end method

.method protected checkForceUpdate()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getForceUpdateListener()Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getForceUpdateListener()Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/allenliu/versionchecklib/v2/callback/ForceUpdateListener;->onShouldForceUpdate()V

    .line 101
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0, v0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected getVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 1

    .line 91
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->finish()V

    .line 93
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 33
    :cond_0
    invoke-virtual {p0, p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->setTransparent(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public receiveEvent(Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public setTransparent(Landroid/app/Activity;)V
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->transparentStatusBar(Landroid/app/Activity;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public abstract showCustomDialog()V
.end method

.method public abstract showDefaultDialog()V
.end method

.method protected throwWrongIdsException()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "customize dialog must use the specify id that lib gives"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
