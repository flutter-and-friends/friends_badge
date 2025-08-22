.class Lcn/highlight/core/zxing/utils/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/zxing/utils/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/zxing/utils/InactivityTimer;


# direct methods
.method constructor <init>(Lcn/highlight/core/zxing/utils/InactivityTimer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/highlight/core/zxing/utils/InactivityTimer$PowerStatusReceiver;->this$0:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "plugged"

    .line 100
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcn/highlight/core/zxing/utils/InactivityTimer$PowerStatusReceiver;->this$0:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-virtual {p1}, Lcn/highlight/core/zxing/utils/InactivityTimer;->onActivity()V

    goto :goto_1

    .line 104
    :cond_1
    iget-object p1, p0, Lcn/highlight/core/zxing/utils/InactivityTimer$PowerStatusReceiver;->this$0:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-virtual {p1}, Lcn/highlight/core/zxing/utils/InactivityTimer;->cancel()V

    :cond_2
    :goto_1
    return-void
.end method
