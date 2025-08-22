.class Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animOverScrollTop(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

.field final synthetic val$overHeight:I

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;II)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->val$overHeight:I

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->val$time:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 346
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$200(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->showRefreshingWhenOverScroll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadToRefresh()V

    .line 348
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1102(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    .line 349
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1202(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->val$overHeight:I

    const/4 v3, 0x0

    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;->val$time:I

    mul-int/lit8 p1, p1, 0x2

    int-to-long v4, p1

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1300(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    new-instance v7, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8$1;

    invoke-direct {v7, p0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8$1;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$8;)V

    invoke-virtual/range {v1 .. v7}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
