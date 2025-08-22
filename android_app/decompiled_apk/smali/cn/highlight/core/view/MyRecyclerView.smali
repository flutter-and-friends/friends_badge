.class public Lcn/highlight/core/view/MyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "MyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;
    }
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field private mItemScrollChangeListener:Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 32
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcn/highlight/core/view/MyRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/core/view/MyRecyclerView;->mCurrentView:Landroid/view/View;

    .line 36
    iget-object p1, p0, Lcn/highlight/core/view/MyRecyclerView;->mItemScrollChangeListener:Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;

    if-eqz p1, :cond_0

    .line 37
    iget-object p2, p0, Lcn/highlight/core/view/MyRecyclerView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcn/highlight/core/view/MyRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;->onChange(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 1

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcn/highlight/core/view/MyRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcn/highlight/core/view/MyRecyclerView;->mItemScrollChangeListener:Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcn/highlight/core/view/MyRecyclerView;->mCurrentView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 54
    iput-object p1, p0, Lcn/highlight/core/view/MyRecyclerView;->mCurrentView:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcn/highlight/core/view/MyRecyclerView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcn/highlight/core/view/MyRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;->onChange(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setOnItemScrollChangeListener(Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/highlight/core/view/MyRecyclerView;->mItemScrollChangeListener:Lcn/highlight/core/view/MyRecyclerView$OnItemScrollChangeListener;

    return-void
.end method
