.class public Lnet/lucode/hackware/magicindicator/MagicIndicator;
.super Landroid/widget/FrameLayout;
.source "MagicIndicator.java"


# instance fields
.field private mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getNavigator()Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;
    .locals 1

    .line 45
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 27
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onDetachFromMagicIndicator()V

    .line 55
    :cond_1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    .line 56
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->removeAllViews()V

    .line 57
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 58
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-interface {p1}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onAttachToMagicIndicator()V

    :cond_2
    return-void
.end method
