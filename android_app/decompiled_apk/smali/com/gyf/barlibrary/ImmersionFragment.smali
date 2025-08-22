.class public abstract Lcom/gyf/barlibrary/ImmersionFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImmersionFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected immersionEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract immersionInit()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onResume()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/gyf/barlibrary/ImmersionFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gyf/barlibrary/ImmersionFragment;->immersionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/gyf/barlibrary/ImmersionFragment;->immersionInit()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/gyf/barlibrary/ImmersionFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/gyf/barlibrary/ImmersionFragment;->onResume()V

    :cond_0
    return-void
.end method
