.class public Lcom/geek/banner/widget/BannerScroller;
.super Landroid/widget/Scroller;
.source "BannerScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x320

    .line 18
    iput p1, p0, Lcom/geek/banner/widget/BannerScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x320

    .line 18
    iput p1, p0, Lcom/geek/banner/widget/BannerScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    const/16 p1, 0x320

    .line 18
    iput p1, p0, Lcom/geek/banner/widget/BannerScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/geek/banner/widget/BannerScroller;->mDuration:I

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .line 39
    iget v5, p0, Lcom/geek/banner/widget/BannerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 34
    iget v5, p0, Lcom/geek/banner/widget/BannerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
