.class Lcom/codbking/widget/view/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/codbking/widget/view/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codbking/widget/view/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codbking/widget/view/WheelView;


# direct methods
.method constructor <init>(Lcom/codbking/widget/view/WheelView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0}, Lcom/codbking/widget/view/WheelView;->access$000(Lcom/codbking/widget/view/WheelView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0}, Lcom/codbking/widget/view/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 166
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0, v1}, Lcom/codbking/widget/view/WheelView;->access$002(Lcom/codbking/widget/view/WheelView;Z)Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0, v1}, Lcom/codbking/widget/view/WheelView;->access$202(Lcom/codbking/widget/view/WheelView;I)I

    .line 170
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0}, Lcom/codbking/widget/view/WheelView;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0}, Lcom/codbking/widget/view/WheelView;->access$200(Lcom/codbking/widget/view/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0}, Lcom/codbking/widget/view/WheelView;->access$300(Lcom/codbking/widget/view/WheelView;)Lcom/codbking/widget/view/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v1}, Lcom/codbking/widget/view/WheelView;->access$200(Lcom/codbking/widget/view/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/codbking/widget/view/WheelScroller;->scroll(II)V

    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0, p1}, Lcom/codbking/widget/view/WheelView;->access$100(Lcom/codbking/widget/view/WheelView;I)V

    .line 153
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {p1}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result p1

    .line 154
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0}, Lcom/codbking/widget/view/WheelView;->access$200(Lcom/codbking/widget/view/WheelView;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0, p1}, Lcom/codbking/widget/view/WheelView;->access$202(Lcom/codbking/widget/view/WheelView;I)I

    .line 156
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {p1}, Lcom/codbking/widget/view/WheelView;->access$300(Lcom/codbking/widget/view/WheelView;)Lcom/codbking/widget/view/WheelScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codbking/widget/view/WheelScroller;->stopScrolling()V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0}, Lcom/codbking/widget/view/WheelView;->access$200(Lcom/codbking/widget/view/WheelView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {v0, p1}, Lcom/codbking/widget/view/WheelView;->access$202(Lcom/codbking/widget/view/WheelView;I)I

    .line 159
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-static {p1}, Lcom/codbking/widget/view/WheelView;->access$300(Lcom/codbking/widget/view/WheelView;)Lcom/codbking/widget/view/WheelScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codbking/widget/view/WheelScroller;->stopScrolling()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codbking/widget/view/WheelView;->access$002(Lcom/codbking/widget/view/WheelView;Z)Z

    .line 147
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView$1;->this$0:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0}, Lcom/codbking/widget/view/WheelView;->notifyScrollingListenersAboutStart()V

    return-void
.end method
