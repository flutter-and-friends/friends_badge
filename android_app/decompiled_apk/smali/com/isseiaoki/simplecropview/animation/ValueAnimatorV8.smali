.class public Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;
.super Ljava/lang/Object;
.source "ValueAnimatorV8.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x96

.field private static final FRAME_RATE:I = 0x1e

.field private static final UPDATE_SPAN:I


# instance fields
.field private animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

.field duration:J

.field isAnimationStarted:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private final runnable:Ljava/lang/Runnable;

.field service:Ljava/util/concurrent/ScheduledExecutorService;

.field start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x42055555

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->UPDATE_SPAN:I

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->isAnimationStarted:Z

    .line 19
    new-instance v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$1;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$1;-><init>(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    .line 33
    new-instance v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8$2;-><init>(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->runnable:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method


# virtual methods
.method public addAnimatorListener(Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->isAnimationStarted:Z

    .line 66
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 67
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationFinished()V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->isAnimationStarted:Z

    return v0
.end method

.method public startAnimation(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 53
    iput-wide p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x96

    .line 55
    iput-wide p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->duration:J

    :goto_0
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->isAnimationStarted:Z

    .line 58
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->animatorListener:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;

    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;->onAnimationStarted()V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->start:J

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->service:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    sget p1, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;->UPDATE_SPAN:I

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
