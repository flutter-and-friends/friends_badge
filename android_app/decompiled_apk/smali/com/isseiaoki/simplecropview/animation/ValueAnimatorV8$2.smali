.class Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;
.super Ljava/lang/Object;
.source "ValueAnimatorV8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    iget-wide v2, v2, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->start:J

    sub-long/2addr v0, v2

    .line 36
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    iget-wide v2, v2, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->duration:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 37
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->isAnimationStarted:Z

    .line 38
    invoke-static {v0}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->access$000(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationFinished()V

    .line 39
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->access$100(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)Landroid/view/animation/Interpolator;

    move-result-object v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    iget-wide v3, v1, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->duration:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;->this$0:Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->access$000(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationUpdated(F)V

    return-void
.end method
