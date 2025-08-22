.class Lcn/highlight/core/utils/BaseTimer$1;
.super Landroid/os/Handler;
.source "BaseTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/utils/BaseTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/utils/BaseTimer;


# direct methods
.method constructor <init>(Lcn/highlight/core/utils/BaseTimer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 29
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-static {v0}, Lcn/highlight/core/utils/BaseTimer;->access$000(Lcn/highlight/core/utils/BaseTimer;)Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-static {v0}, Lcn/highlight/core/utils/BaseTimer;->access$000(Lcn/highlight/core/utils/BaseTimer;)Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/core/utils/BaseTimer$TimerCallBack;->callback()V

    .line 32
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/core/utils/BaseTimer;->access$102(Lcn/highlight/core/utils/BaseTimer;Z)Z

    .line 33
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-static {v0}, Lcn/highlight/core/utils/BaseTimer;->access$200(Lcn/highlight/core/utils/BaseTimer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-static {v0}, Lcn/highlight/core/utils/BaseTimer;->access$300(Lcn/highlight/core/utils/BaseTimer;)J

    move-result-wide v1

    iget-object v3, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-static {v3}, Lcn/highlight/core/utils/BaseTimer;->access$000(Lcn/highlight/core/utils/BaseTimer;)Lcn/highlight/core/utils/BaseTimer$TimerCallBack;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/highlight/core/utils/BaseTimer;->startTimer(JLcn/highlight/core/utils/BaseTimer$TimerCallBack;)V

    .line 35
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer$1;->this$0:Lcn/highlight/core/utils/BaseTimer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/highlight/core/utils/BaseTimer;->access$202(Lcn/highlight/core/utils/BaseTimer;Z)Z

    .line 37
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
