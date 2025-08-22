.class Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;
.super Landroid/os/Handler;
.source "OverScrollDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTouchSlop()I

    move-result v0

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1, v2}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$002(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;I)I

    goto/16 :goto_1

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    const/4 v3, -0x1

    invoke-static {p1, v3}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$002(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;I)I

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$008(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)I

    .line 108
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object p1

    .line 110
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    iget-object v3, v3, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->allowOverScroll()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {v3}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)F

    move-result v3

    const v4, 0x453b8000    # 3000.0f

    const/4 v5, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 112
    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/utils/ScrollingUtil;->isViewToTop(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 113
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getAnimProcessor()Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    move-result-object p1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)F

    move-result v0

    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {v3}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$000(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animOverScrollTop(FI)V

    .line 114
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1, v5}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$102(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;F)F

    .line 115
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1, v2}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$002(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;I)I

    goto :goto_0

    .line 117
    :cond_3
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {v3}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)F

    move-result v3

    const v4, -0x3ac48000    # -3000.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 118
    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/utils/ScrollingUtil;->isViewToBottom(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getAnimProcessor()Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;

    move-result-object p1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$100(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)F

    move-result v0

    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {v3}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$000(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/lcodecore/tkrefreshlayout/processor/AnimProcessor;->animOverScrollBottom(FI)V

    .line 120
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1, v5}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$102(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;F)F

    .line 121
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1, v2}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$002(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;I)I

    .line 127
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$000(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)I

    move-result p1

    if-ge p1, v2, :cond_5

    .line 128
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;->this$0:Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->access$200(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    return-void
.end method
