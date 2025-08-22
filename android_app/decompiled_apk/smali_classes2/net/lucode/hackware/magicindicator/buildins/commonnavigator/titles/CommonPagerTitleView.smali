.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;
.super Landroid/widget/FrameLayout;
.source "CommonPagerTitleView.java"

# interfaces
.implements Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;,
        Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;
    }
.end annotation


# instance fields
.field private mContentPositionDataProvider:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;

.field private mOnPagerTitleChangeListener:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getContentBottom()I
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mContentPositionDataProvider:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;->getContentBottom()I

    move-result v0

    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->getBottom()I

    move-result v0

    return v0
.end method

.method public getContentLeft()I
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mContentPositionDataProvider:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;->getContentLeft()I

    move-result v0

    return v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentPositionDataProvider()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;
    .locals 1

    .line 117
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mContentPositionDataProvider:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;

    return-object v0
.end method

.method public getContentRight()I
    .locals 1

    .line 70
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mContentPositionDataProvider:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;->getContentRight()I

    move-result v0

    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mContentPositionDataProvider:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;->getContentTop()I

    move-result v0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->getTop()I

    move-result v0

    return v0
.end method

.method public getOnPagerTitleChangeListener()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;
    .locals 1

    .line 109
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mOnPagerTitleChangeListener:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;

    return-object v0
.end method

.method public onDeselected(II)V
    .locals 1

    .line 33
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mOnPagerTitleChangeListener:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;->onDeselected(II)V

    :cond_0
    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mOnPagerTitleChangeListener:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;->onEnter(IIFZ)V

    :cond_0
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 1

    .line 40
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mOnPagerTitleChangeListener:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;->onLeave(IIFZ)V

    :cond_0
    return-void
.end method

.method public onSelected(II)V
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mOnPagerTitleChangeListener:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;->onSelected(II)V

    :cond_0
    return-void
.end method

.method public setContentPositionDataProvider(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mContentPositionDataProvider:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$ContentPositionDataProvider;

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->removeAllViews()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 97
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setOnPagerTitleChangeListener(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->mOnPagerTitleChangeListener:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$OnPagerTitleChangeListener;

    return-void
.end method
