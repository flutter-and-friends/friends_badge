.class public abstract Lcn/highlight/work_card_write/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

.field protected rootView:Landroid/view/View;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initViews(Landroid/os/Bundle;)V
.end method

.method public launchActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f01001e

    const v1, 0x7f01001f

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseFragment;->setLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->rootView:Landroid/view/View;

    .line 40
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->rootView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->unbinder:Lbutterknife/Unbinder;

    .line 41
    invoke-virtual {p0, p3}, Lcn/highlight/work_card_write/base/BaseFragment;->initViews(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseFragment;->initData()V

    .line 43
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->register(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseFragment;->unbinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/gyf/barlibrary/ImmersionBar;->destroy()V

    .line 105
    :cond_1
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    :cond_0
    return-void
.end method

.method protected setImmersionBar(ZZLjava/lang/String;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/gyf/barlibrary/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    .line 75
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {v0, p1}, Lcom/gyf/barlibrary/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/barlibrary/ImmersionBar;

    .line 76
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->transparentStatusBar()Lcom/gyf/barlibrary/ImmersionBar;

    .line 77
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarAlpha(F)Lcom/gyf/barlibrary/ImmersionBar;

    .line 78
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarColor(Ljava/lang/String;)Lcom/gyf/barlibrary/ImmersionBar;

    .line 82
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    const p3, 0x3e4ccccd

    invoke-virtual {p1, p2, p3}, Lcom/gyf/barlibrary/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/barlibrary/ImmersionBar;

    .line 83
    iget-object p1, p0, Lcn/highlight/work_card_write/base/BaseFragment;->mImmersionBar:Lcom/gyf/barlibrary/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    return-void
.end method

.method protected abstract setLayoutId()I
.end method
