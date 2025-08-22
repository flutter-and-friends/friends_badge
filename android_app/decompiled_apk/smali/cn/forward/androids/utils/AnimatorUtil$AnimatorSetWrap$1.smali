.class Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->handleRepeat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mEnd:J

.field mStart:J

.field final synthetic this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;


# direct methods
.method constructor <init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->repeat()V

    return-void
.end method

.method private repeat()V
    .locals 9

    .line 337
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$200(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$300(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$502(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 343
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$500(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;

    invoke-direct {v2, p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;-><init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;)V

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->mEnd:J

    iget-wide v7, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->mStart:J

    sub-long/2addr v5, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 338
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$400(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->mEnd:J

    .line 319
    iget-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$100(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    .line 323
    iget-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$200(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$1;

    invoke-direct {v0, p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$1;-><init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->repeat()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->mStart:J

    return-void
.end method
