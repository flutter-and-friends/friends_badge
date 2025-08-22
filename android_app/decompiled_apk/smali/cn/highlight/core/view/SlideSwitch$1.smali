.class Lcn/highlight/core/view/SlideSwitch$1;
.super Landroid/os/Handler;
.source "SlideSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/core/view/SlideSwitch;->moveToDest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/view/SlideSwitch;


# direct methods
.method constructor <init>(Lcn/highlight/core/view/SlideSwitch;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcn/highlight/core/view/SlideSwitch$1;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 210
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 211
    iget-object p1, p0, Lcn/highlight/core/view/SlideSwitch$1;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {p1}, Lcn/highlight/core/view/SlideSwitch;->access$000(Lcn/highlight/core/view/SlideSwitch;)Lcn/highlight/core/view/SlideSwitch$SlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/highlight/core/view/SlideSwitch$SlideListener;->open()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcn/highlight/core/view/SlideSwitch$1;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {p1}, Lcn/highlight/core/view/SlideSwitch;->access$000(Lcn/highlight/core/view/SlideSwitch;)Lcn/highlight/core/view/SlideSwitch$SlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/highlight/core/view/SlideSwitch$SlideListener;->close()V

    :goto_0
    return-void
.end method
