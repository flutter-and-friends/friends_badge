.class public Lcom/yuyh/library/imgsel/widget/CustomViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomViewPager.java"


# instance fields
.field private isLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    return-void
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 26
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setLocked(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    return-void
.end method

.method public toggleLock()V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/widget/CustomViewPager;->isLocked:Z

    return-void
.end method
