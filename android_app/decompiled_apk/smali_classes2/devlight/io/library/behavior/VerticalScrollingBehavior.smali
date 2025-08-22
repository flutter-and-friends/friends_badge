.class abstract Ldevlight/io/library/behavior/VerticalScrollingBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "VerticalScrollingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mOverScrollDirection:I

.field private mScrollDirection:I

.field private mTotalDy:I

.field private mTotalDyUnconsumed:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    .line 19
    iput v0, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDy:I

    .line 21
    iput v0, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mOverScrollDirection:I

    .line 23
    iput v0, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mScrollDirection:I

    return-void
.end method


# virtual methods
.method public getOverScrollDirection()I
    .locals 1

    .line 40
    iget v0, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mOverScrollDirection:I

    return v0
.end method

.method public getScrollDirection()I
    .locals 1

    .line 45
    iget v0, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mScrollDirection:I

    return v0
.end method

.method public onApplyWindowInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroidx/core/view/WindowInsetsCompat;",
            ")",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onDirectionNestedPreScroll()V
.end method

.method protected abstract onNestedDirectionFling()Z
.end method

.method public onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .line 103
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    const/4 p1, 0x0

    cmpl-float p1, p5, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 104
    :goto_0
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mScrollDirection:I

    .line 105
    invoke-virtual {p0}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onNestedDirectionFling()Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 113
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .line 89
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    const/4 p1, 0x0

    if-lez p5, :cond_0

    .line 90
    iget p2, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDy:I

    if-gez p2, :cond_0

    .line 91
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDy:I

    const/4 p1, 0x1

    .line 92
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mScrollDirection:I

    goto :goto_0

    :cond_0
    if-gez p5, :cond_1

    .line 93
    iget p2, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDy:I

    if-lez p2, :cond_1

    .line 94
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDy:I

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mScrollDirection:I

    .line 97
    :cond_1
    :goto_0
    iget p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDy:I

    add-int/2addr p1, p5

    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDy:I

    .line 98
    invoke-virtual {p0}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onDirectionNestedPreScroll()V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .line 74
    invoke-super/range {p0 .. p7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    const/4 p1, 0x0

    if-lez p7, :cond_0

    .line 75
    iget p2, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    if-gez p2, :cond_0

    .line 76
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    const/4 p1, 0x1

    .line 77
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mOverScrollDirection:I

    goto :goto_0

    :cond_0
    if-gez p7, :cond_1

    .line 78
    iget p2, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    if-lez p2, :cond_1

    .line 79
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mOverScrollDirection:I

    .line 83
    :cond_1
    :goto_0
    iget p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    add-int/2addr p1, p7

    iput p1, p0, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    .line 84
    invoke-virtual {p0}, Ldevlight/io/library/behavior/VerticalScrollingBehavior;->onNestedVerticalOverScroll()V

    return-void
.end method

.method public onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 64
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected abstract onNestedVerticalOverScroll()V
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
