.class public Lcn/highlight/work_card_write/activity/LauncherActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method

.method private step1()V
    .locals 1

    .line 49
    sget-boolean v0, Lcn/highlight/work_card_write/Constants;->isPermissionsPass:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->step2()V

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$LauncherActivity$b5I3-TJt1JrYIE9C1axvnZBVYzA;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$LauncherActivity$b5I3-TJt1JrYIE9C1axvnZBVYzA;-><init>(Lcn/highlight/work_card_write/activity/LauncherActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->setOnPermissionsGetListener(Lcn/highlight/work_card_write/base/BaseActivity$OnPermissionsGetListener;)V

    .line 58
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->checkAllPermissions()V

    return-void
.end method

.method private step2()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/MyApplication;->setupDatabase(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcn/highlight/work_card_write/util/DBManagerUtil;->setDB_NAME(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->step3()V

    return-void
.end method

.method private step3()V
    .locals 2

    const-string v0, "first_use"

    const/4 v1, 0x1

    .line 74
    invoke-static {p0, v0, v1}, Lcn/highlight/core/utils/SpUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-class v0, Lcn/highlight/work_card_write/activity/IdentityActivity;

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->launchActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 77
    :cond_0
    const-class v0, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->launchActivity(Ljava/lang/Class;)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    sget-object v0, Lcom/gyf/barlibrary/BarHide;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/barlibrary/BarHide;

    invoke-virtual {p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->hideBar(Lcom/gyf/barlibrary/BarHide;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    return-void
.end method

.method public synthetic lambda$step1$0$LauncherActivity(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->step2()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onResume()V

    .line 41
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LauncherActivity;->step1()V

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c001d

    return v0
.end method
