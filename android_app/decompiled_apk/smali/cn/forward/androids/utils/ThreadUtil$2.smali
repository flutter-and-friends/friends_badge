.class Lcn/forward/androids/utils/ThreadUtil$2;
.super Ljava/lang/Object;
.source "ThreadUtil.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/utils/ThreadUtil;->runOnIdleTime(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/forward/androids/utils/ThreadUtil;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcn/forward/androids/utils/ThreadUtil;Ljava/lang/Runnable;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/forward/androids/utils/ThreadUtil$2;->this$0:Lcn/forward/androids/utils/ThreadUtil;

    iput-object p2, p0, Lcn/forward/androids/utils/ThreadUtil$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return v0
.end method
