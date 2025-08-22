.class Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 408
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 409
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$200(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1700(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;F)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 413
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 414
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 415
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onPullDownReleasing(F)V

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isOpenFloatRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 419
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$10;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1800(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;I)V

    :cond_1
    return-void
.end method
