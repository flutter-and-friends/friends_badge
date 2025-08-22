.class public Lcn/highlight/core/view/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# static fields
.field private static final size:I = 0x4


# instance fields
.field private mRoot:Landroid/view/View;

.field private normal:Landroid/graphics/Rect;

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public animation()V
    .locals 5

    .line 93
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 95
    iget-object v1, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v0, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 98
    iget-object v0, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public commOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget v0, p0, Lcn/highlight/core/view/CustomScrollView;->y:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 64
    div-int/lit8 v0, v0, 0x4

    .line 68
    iput p1, p0, Lcn/highlight/core/view/CustomScrollView;->y:F

    .line 70
    invoke-virtual {p0}, Lcn/highlight/core/view/CustomScrollView;->isNeedMove()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 76
    :cond_1
    iget-object p1, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v0

    .line 79
    iget-object v1, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcn/highlight/core/view/CustomScrollView;->isNeedAnimation()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 55
    invoke-virtual {p0}, Lcn/highlight/core/view/CustomScrollView;->animation()V

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/highlight/core/view/CustomScrollView;->y:F

    :cond_4
    :goto_0
    return-void
.end method

.method public isNeedAnimation()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/highlight/core/view/CustomScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNeedMove()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/highlight/core/view/CustomScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 109
    invoke-virtual {p0}, Lcn/highlight/core/view/CustomScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 31
    invoke-virtual {p0}, Lcn/highlight/core/view/CustomScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcn/highlight/core/view/CustomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/highlight/core/view/CustomScrollView;->mRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcn/highlight/core/view/CustomScrollView;->commOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
