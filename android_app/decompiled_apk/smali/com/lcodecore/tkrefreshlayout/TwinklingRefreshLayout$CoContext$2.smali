.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;
.super Ljava/lang/Object;
.source "TwinklingRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->startLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;->this$1:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;->this$1:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setStatePBU()V

    .line 1012
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;->this$1:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;->this$1:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->this$0:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;->this$1:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setLoadingMore(Z)V

    .line 1014
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext$2;->this$1:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->access$1100(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animBottomToLoad()V

    :cond_0
    return-void
.end method
