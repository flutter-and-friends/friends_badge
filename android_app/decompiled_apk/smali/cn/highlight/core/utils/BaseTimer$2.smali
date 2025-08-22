.class Lcn/highlight/core/utils/BaseTimer$2;
.super Ljava/lang/Object;
.source "BaseTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 42
    iput-object p1, p0, Lcn/highlight/core/utils/BaseTimer$2;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/highlight/core/utils/BaseTimer$2;->this$0:Lcn/highlight/core/utils/BaseTimer;

    invoke-static {v0}, Lcn/highlight/core/utils/BaseTimer;->access$400(Lcn/highlight/core/utils/BaseTimer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
