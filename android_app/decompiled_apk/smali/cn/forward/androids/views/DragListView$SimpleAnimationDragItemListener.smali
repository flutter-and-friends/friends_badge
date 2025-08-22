.class public abstract Lcn/forward/androids/views/DragListView$SimpleAnimationDragItemListener;
.super Ljava/lang/Object;
.source "DragListView.java"

# interfaces
.implements Lcn/forward/androids/views/DragListView$DragItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleAnimationDragItemListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExchange(IILandroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p3, :cond_1

    if-le p1, p2, :cond_0

    .line 370
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 371
    :goto_0
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xc8

    .line 372
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 373
    invoke-virtual {p3}, Landroid/view/View;->clearAnimation()V

    .line 374
    invoke-virtual {p3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    .line 375
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p4, :cond_2

    const/4 p1, 0x4

    .line 378
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onRelease(ILandroid/view/View;III)V
    .locals 0

    const/4 p1, 0x0

    .line 347
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 348
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x5

    if-le p1, p3, :cond_0

    .line 349
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p3, 0x3f000000    # 0.5f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p3, 0x96

    .line 350
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 351
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 352
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public startDrag(ILandroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 360
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
