.class public Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/utils/AnimatorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorSetWrap"
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x12cL


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

.field private mAnimatorsThen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRepeat:I

.field private mHasInitThenAnim:Z

.field private mIsCanceled:Z

.field private mIsPlaying:Z

.field private mRepeatCount:I

.field private mRepeatSchedule:Ljava/util/concurrent/ScheduledExecutorService;

.field private mTimeInterpolator:Landroid/animation/TimeInterpolator;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-static {}, Lcn/forward/androids/utils/AnimatorUtil;->access$000()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;-><init>(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/animation/TimeInterpolator;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorsThen:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mIsPlaying:Z

    .line 56
    iput-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mHasInitThenAnim:Z

    .line 58
    iput v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatCount:I

    .line 67
    iput v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatCount:I

    .line 68
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 69
    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static synthetic access$100(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$200(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mIsCanceled:Z

    return p0
.end method

.method static synthetic access$400(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->shutdownRepeat()V

    return-void
.end method

.method static synthetic access$500(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatSchedule:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$502(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatSchedule:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic access$700(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)I
    .locals 0

    .line 44
    iget p0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatCount:I

    return p0
.end method

.method static synthetic access$800(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)I
    .locals 0

    .line 44
    iget p0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mCurrentRepeat:I

    return p0
.end method

.method static synthetic access$808(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)I
    .locals 2

    .line 44
    iget v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mCurrentRepeat:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mCurrentRepeat:I

    return v0
.end method

.method private beforeStart()V
    .locals 2

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mIsCanceled:Z

    .line 390
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->handleRepeat()V

    .line 392
    iget-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mHasInitThenAnim:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mHasInitThenAnim:Z

    .line 396
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorsThen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 397
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 398
    iget-object v1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorsThen:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 399
    iget-object v1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    return-void
.end method

.method private getAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .line 428
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private handleRepeat()V
    .locals 2

    .line 302
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->shutdownRepeat()V

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mCurrentRepeat:I

    .line 304
    iget v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatCount:I

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    invoke-direct {v1, p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;-><init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private shutdownRepeat()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatSchedule:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 293
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatSchedule:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public after(J)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public after(Landroid/animation/Animator;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 233
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public varargs after(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 0

    .line 221
    invoke-static {p1, p6, p7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 222
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 223
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_0

    .line 225
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    :cond_0
    iget-object p2, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public varargs after(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 216
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->after(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs after(Landroid/view/View;JLjava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 211
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->after(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs after(Landroid/view/View;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 206
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->after(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public after(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 238
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-direct {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public before(Landroid/animation/Animator;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 195
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public varargs before(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 0

    .line 183
    invoke-static {p1, p6, p7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_0

    .line 187
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    :cond_0
    iget-object p2, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public varargs before(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 178
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->before(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs before(Landroid/view/View;JLjava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 173
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->before(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs before(Landroid/view/View;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 168
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->before(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public before(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 200
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-direct {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mIsCanceled:Z

    .line 422
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->shutdownRepeat()V

    .line 423
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const v0, 0x7fffffff

    .line 424
    iput v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mCurrentRepeat:I

    return-void
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatCount:I

    return v0
.end method

.method public play(Landroid/animation/Animator;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public varargs play(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mIsPlaying:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mIsPlaying:Z

    .line 106
    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mView:Landroid/view/View;

    .line 108
    invoke-static {p1, p6, p7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_0

    .line 112
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    :cond_0
    iget-object p2, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorsThen:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object p2, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "AnimatorSetWrap.play()\u65b9\u6cd5\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs play(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 92
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->play(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs play(Landroid/view/View;JLjava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 88
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->play(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs play(Landroid/view/View;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 83
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->play(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public play(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public removeAllListeners()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public removeListner(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 432
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public setRepeatCount(I)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 0

    .line 73
    iput p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mRepeatCount:I

    return-object p0
.end method

.method public start()V
    .locals 1

    .line 404
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->beforeStart()V

    .line 405
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public start(J)V
    .locals 1

    .line 409
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->beforeStart()V

    .line 410
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 411
    iget-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startDelay(J)V
    .locals 1

    .line 415
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->beforeStart()V

    .line 416
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 417
    iget-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public then(Landroid/animation/Animator;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 279
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorsThen:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs then(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 0

    .line 268
    invoke-static {p1, p6, p7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 269
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 270
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_0

    .line 272
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->then(Landroid/animation/Animator;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    return-object p0
.end method

.method public varargs then(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 260
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->then(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs then(Landroid/view/View;JLjava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 255
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->then(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs then(Landroid/view/View;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 250
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->then(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorsThen:Ljava/util/ArrayList;

    invoke-direct {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public with(Landroid/animation/Animator;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public varargs with(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 0

    .line 146
    invoke-static {p1, p6, p7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_0

    .line 150
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    :cond_0
    iget-object p2, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method public varargs with(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 141
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->with(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs with(Landroid/view/View;JLjava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 137
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->with(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public varargs with(Landroid/view/View;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 8

    .line 132
    iget-object v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->with(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;Landroid/animation/TimeInterpolator;Ljava/lang/String;[F)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;
    .locals 1

    .line 162
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    invoke-direct {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->mAnimatorSetBuilder:Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method
