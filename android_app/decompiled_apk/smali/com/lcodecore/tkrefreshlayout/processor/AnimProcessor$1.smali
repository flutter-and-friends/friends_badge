.class Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animHeadToRefresh()V
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

    .line 136
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$002(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    .line 142
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setRefreshVisible(Z)V

    .line 147
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$200(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setRefreshing(Z)V

    .line 150
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onRefresh()V

    .line 151
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$202(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;Z)Z

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setRefreshing(Z)V

    .line 155
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onRefresh()V

    :cond_2
    :goto_0
    return-void
.end method
