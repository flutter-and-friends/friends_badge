.class public Ldevlight/io/library/ntb/NavigationTabBar$ResizeViewPagerScroller;
.super Landroid/widget/Scroller;
.source "NavigationTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevlight/io/library/ntb/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResizeViewPagerScroller"
.end annotation


# instance fields
.field final synthetic this$0:Ldevlight/io/library/ntb/NavigationTabBar;


# direct methods
.method constructor <init>(Ldevlight/io/library/ntb/NavigationTabBar;Landroid/content/Context;)V
    .locals 0

    .line 1894
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar$ResizeViewPagerScroller;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    .line 1895
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {p0, p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 7

    .line 1905
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar$ResizeViewPagerScroller;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget v6, v0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimationDuration:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 1900
    iget-object p5, p0, Ldevlight/io/library/ntb/NavigationTabBar$ResizeViewPagerScroller;->this$0:Ldevlight/io/library/ntb/NavigationTabBar;

    iget v5, p5, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimationDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
