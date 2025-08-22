.class Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomBack(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

.field final synthetic val$isFinishLoading:Z


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->val$isFinishLoading:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 253
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$802(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    .line 255
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setLoadVisible(Z)V

    .line 256
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->val$isFinishLoading:Z

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$500(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 260
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 261
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$502(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    .line 262
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->resetBottomView()V

    .line 263
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$5;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setLoadingMore(Z)V

    :cond_0
    return-void
.end method
