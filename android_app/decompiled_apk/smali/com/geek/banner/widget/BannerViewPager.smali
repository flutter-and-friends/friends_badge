.class public Lcom/geek/banner/widget/BannerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "BannerViewPager.java"


# instance fields
.field private childCenterXAbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private childIndex:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableMzEffects:Z

.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/geek/banner/widget/BannerViewPager;->childCenterXAbs:Ljava/util/ArrayList;

    .line 22
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/geek/banner/widget/BannerViewPager;->childIndex:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/geek/banner/widget/BannerViewPager;->mScrollable:Z

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/geek/banner/widget/BannerViewPager;->mEnableMzEffects:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/geek/banner/widget/BannerViewPager;->childCenterXAbs:Ljava/util/ArrayList;

    .line 22
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/geek/banner/widget/BannerViewPager;->childIndex:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/geek/banner/widget/BannerViewPager;->mScrollable:Z

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/geek/banner/widget/BannerViewPager;->mEnableMzEffects:Z

    return-void
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 94
    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 5

    .line 67
    iget-boolean v0, p0, Lcom/geek/banner/widget/BannerViewPager;->mEnableMzEffects:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/geek/banner/widget/BannerViewPager;->childIndex:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/widget/BannerViewPager;->childCenterXAbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Lcom/geek/banner/widget/BannerViewPager;->childIndex:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 71
    invoke-direct {p0, p0}, Lcom/geek/banner/widget/BannerViewPager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 73
    invoke-virtual {p0, v1}, Lcom/geek/banner/widget/BannerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/geek/banner/widget/BannerViewPager;->getViewCenterX(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/geek/banner/widget/BannerViewPager;->childIndex:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/geek/banner/widget/BannerViewPager;->childCenterXAbs:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v3, p0, Lcom/geek/banner/widget/BannerViewPager;->childIndex:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/geek/banner/widget/BannerViewPager;->childCenterXAbs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/geek/banner/widget/BannerViewPager;->childIndex:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/geek/banner/widget/BannerViewPager;->childCenterXAbs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 87
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/geek/banner/widget/BannerViewPager;->mScrollable:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/geek/banner/widget/BannerViewPager;->mScrollable:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEnableMzEffects(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/geek/banner/widget/BannerViewPager;->mEnableMzEffects:Z

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/geek/banner/widget/BannerViewPager;->mScrollable:Z

    return-void
.end method
