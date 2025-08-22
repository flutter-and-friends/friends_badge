.class public Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;
.super Ljava/lang/Object;
.source "ValueAnimatorV14.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x96


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14$1;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14$1;-><init>(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 29
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    .line 30
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 31
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addAnimatorListener(Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationFinished()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationFinished()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationStarted()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationUpdated(F)V

    return-void
.end method

.method public startAnimation(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
