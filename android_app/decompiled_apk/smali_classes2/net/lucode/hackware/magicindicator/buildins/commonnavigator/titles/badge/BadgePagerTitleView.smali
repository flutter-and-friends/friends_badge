.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;
.super Landroid/widget/FrameLayout;
.source "BadgePagerTitleView.java"

# interfaces
.implements Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;


# instance fields
.field private mAutoCancelBadge:Z

.field private mBadgeView:Landroid/view/View;

.field private mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

.field private mXBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

.field private mYBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mAutoCancelBadge:Z

    return-void
.end method


# virtual methods
.method public getBadgeView()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    return-object v0
.end method

.method public getContentBottom()I
    .locals 2

    .line 168
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentBottom()I

    move-result v0

    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->getBottom()I

    move-result v0

    return v0
.end method

.method public getContentLeft()I
    .locals 2

    .line 144
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of v0, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    check-cast v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    invoke-interface {v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentRight()I
    .locals 2

    .line 160
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of v0, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    check-cast v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    invoke-interface {v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 2

    .line 152
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentTop()I

    move-result v0

    return v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->getTop()I

    move-result v0

    return v0
.end method

.method public getInnerPagerTitleView()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
    .locals 1

    .line 59
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    return-object v0
.end method

.method public getXBadgeRule()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;
    .locals 1

    .line 175
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mXBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    return-object v0
.end method

.method public getYBadgeRule()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;
    .locals 1

    .line 195
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mYBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    return-object v0
.end method

.method public isAutoCancelBadge()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mAutoCancelBadge:Z

    return v0
.end method

.method public onDeselected(II)V
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onDeselected(II)V

    :cond_0
    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onEnter(IIFZ)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 101
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    if-eqz p2, :cond_3

    const/16 p2, 0xe

    new-array p2, p2, [I

    .line 103
    check-cast p1, Landroid/view/View;

    const/4 p3, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    aput p4, p2, p3

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    const/4 p4, 0x1

    aput p3, p2, p4

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    const/4 p4, 0x2

    aput p3, p2, p4

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    const/4 p5, 0x3

    aput p3, p2, p5

    .line 108
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of v0, p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    .line 109
    check-cast p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    .line 110
    invoke-interface {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentLeft()I

    move-result v0

    aput v0, p2, v5

    .line 111
    invoke-interface {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentTop()I

    move-result v0

    aput v0, p2, v2

    .line 112
    invoke-interface {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentRight()I

    move-result v0

    aput v0, p2, v4

    .line 113
    invoke-interface {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentBottom()I

    move-result p3

    aput p3, p2, v3

    goto :goto_1

    :cond_0
    const/4 p3, 0x4

    :goto_0
    if-ge p3, v1, :cond_1

    add-int/lit8 v0, p3, -0x4

    .line 116
    aget v0, p2, v0

    aput v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/2addr p3, p4

    aput p3, p2, v1

    const/16 p3, 0x9

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p4

    aput p1, p2, p3

    const/16 p1, 0xa

    .line 121
    aget p3, p2, v5

    div-int/2addr p3, p4

    aput p3, p2, p1

    const/16 p1, 0xb

    .line 122
    aget p3, p2, v2

    div-int/2addr p3, p4

    aput p3, p2, p1

    const/16 p1, 0xc

    .line 123
    aget p3, p2, v4

    aget v0, p2, p4

    aget v1, p2, v4

    sub-int/2addr v0, v1

    div-int/2addr v0, p4

    add-int/2addr p3, v0

    aput p3, p2, p1

    const/16 p1, 0xd

    .line 124
    aget p3, p2, v3

    aget p5, p2, p5

    aget v0, p2, v3

    sub-int/2addr p5, v0

    div-int/2addr p5, p4

    add-int/2addr p3, p5

    aput p3, p2, p1

    .line 127
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mXBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->getAnchor()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->ordinal()I

    move-result p1

    aget p1, p2, p1

    .line 129
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mXBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->getOffset()I

    move-result p3

    add-int/2addr p1, p3

    .line 131
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 133
    :cond_2
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mYBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->getAnchor()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->ordinal()I

    move-result p1

    aget p1, p2, p1

    .line 135
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mYBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    invoke-virtual {p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->getOffset()I

    move-result p2

    add-int/2addr p1, p2

    .line 137
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 1

    .line 46
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onLeave(IIFZ)V

    :cond_0
    return-void
.end method

.method public onSelected(II)V
    .locals 1

    .line 29
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onSelected(II)V

    .line 32
    :cond_0
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mAutoCancelBadge:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setBadgeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setAutoCancelBadge(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mAutoCancelBadge:Z

    return-void
.end method

.method public setBadgeView(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->removeAllViews()V

    .line 88
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 89
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    :cond_1
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 93
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setInnerPagerTitleView(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-ne v0, p1, :cond_0

    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    .line 67
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->removeAllViews()V

    .line 68
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 69
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mInnerPagerTitleView:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_1
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 73
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mBadgeView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setXBadgeRule(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->getAnchor()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    move-result-object v0

    .line 181
    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->LEFT:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->RIGHT:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CONTENT_LEFT:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CONTENT_RIGHT:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CENTER_X:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->LEFT_EDGE_CENTER_X:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->RIGHT_EDGE_CENTER_X:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x badge rule is wrong."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mXBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    return-void
.end method

.method public setYBadgeRule(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;->getAnchor()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    move-result-object v0

    .line 201
    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->TOP:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->BOTTOM:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CONTENT_TOP:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CONTENT_BOTTOM:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->CENTER_Y:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->TOP_EDGE_CENTER_Y:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;->BOTTOM_EDGE_CENTER_Y:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeAnchor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "y badge rule is wrong."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->mYBadgeRule:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgeRule;

    return-void
.end method
