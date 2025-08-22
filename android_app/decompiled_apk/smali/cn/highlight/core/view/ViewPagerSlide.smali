.class public Lcn/highlight/core/view/ViewPagerSlide;
.super Landroidx/viewpager/widget/ViewPager;
.source "ViewPagerSlide.java"


# instance fields
.field private isSlide:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcn/highlight/core/view/ViewPagerSlide;->isSlide:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcn/highlight/core/view/ViewPagerSlide;->isSlide:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 31
    iget-boolean p1, p0, Lcn/highlight/core/view/ViewPagerSlide;->isSlide:Z

    return p1
.end method

.method public setSlide(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcn/highlight/core/view/ViewPagerSlide;->isSlide:Z

    return-void
.end method
