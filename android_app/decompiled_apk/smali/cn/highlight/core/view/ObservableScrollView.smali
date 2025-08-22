.class public Lcn/highlight/core/view/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;,
        Lcn/highlight/core/view/ObservableScrollView$OnScrollBottomListener;
    }
.end annotation


# instance fields
.field private _calCount:I

.field private _listener:Lcn/highlight/core/view/ObservableScrollView$OnScrollBottomListener;

.field private downX:I

.field private downY:I

.field private mTouchSlop:I

.field private scrollViewListener:Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/highlight/core/view/ObservableScrollView;->scrollViewListener:Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;

    .line 29
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcn/highlight/core/view/ObservableScrollView;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lcn/highlight/core/view/ObservableScrollView;->scrollViewListener:Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;

    .line 39
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcn/highlight/core/view/ObservableScrollView;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lcn/highlight/core/view/ObservableScrollView;->scrollViewListener:Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;

    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcn/highlight/core/view/ObservableScrollView;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 93
    iget v1, p0, Lcn/highlight/core/view/ObservableScrollView;->downY:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcn/highlight/core/view/ObservableScrollView;->mTouchSlop:I

    if-le v0, v1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/highlight/core/view/ObservableScrollView;->downX:I

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/highlight/core/view/ObservableScrollView;->downY:I

    .line 100
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 7

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcn/highlight/core/view/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcn/highlight/core/view/ObservableScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcn/highlight/core/view/ObservableScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 59
    iget v0, p0, Lcn/highlight/core/view/ObservableScrollView;->_calCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/highlight/core/view/ObservableScrollView;->_calCount:I

    .line 60
    iget v0, p0, Lcn/highlight/core/view/ObservableScrollView;->_calCount:I

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcn/highlight/core/view/ObservableScrollView;->_listener:Lcn/highlight/core/view/ObservableScrollView$OnScrollBottomListener;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Lcn/highlight/core/view/ObservableScrollView$OnScrollBottomListener;->srollToBottom()V

    goto :goto_0

    .line 66
    :cond_0
    iput v0, p0, Lcn/highlight/core/view/ObservableScrollView;->_calCount:I

    .line 69
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/highlight/core/view/ObservableScrollView;->scrollViewListener:Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;

    if-eqz v1, :cond_2

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 70
    invoke-interface/range {v1 .. v6}, Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;->onScrollChanged(Lcn/highlight/core/view/ObservableScrollView;IIII)V

    :cond_2
    return-void
.end method

.method public registerOnScrollViewScrollToBottom(Lcn/highlight/core/view/ObservableScrollView$OnScrollBottomListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/highlight/core/view/ObservableScrollView;->_listener:Lcn/highlight/core/view/ObservableScrollView$OnScrollBottomListener;

    return-void
.end method

.method public setScrollViewListener(Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/highlight/core/view/ObservableScrollView;->scrollViewListener:Lcn/highlight/core/view/ObservableScrollView$ScrollViewListener;

    return-void
.end method

.method public unRegisterOnScrollViewScrollToBottom()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/highlight/core/view/ObservableScrollView;->_listener:Lcn/highlight/core/view/ObservableScrollView$OnScrollBottomListener;

    return-void
.end method
