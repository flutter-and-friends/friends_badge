.class Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomHideByVy(I)V
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

    .line 310
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$1002(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    .line 314
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setLoadVisible(Z)V

    .line 315
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result p1

    if-nez p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setLoadingMore(Z)V

    .line 317
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onLoadmoreCanceled()V

    .line 318
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$7;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->resetBottomView()V

    :cond_0
    return-void
.end method
