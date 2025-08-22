.class Lcn/highlight/core/view/SlideSwitch$2;
.super Ljava/lang/Object;
.source "SlideSwitch.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$toRight:Z


# direct methods
.method constructor <init>(Lcn/highlight/core/view/SlideSwitch;ZLandroid/os/Handler;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    iput-boolean p2, p0, Lcn/highlight/core/view/SlideSwitch$2;->val$toRight:Z

    iput-object p3, p0, Lcn/highlight/core/view/SlideSwitch$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 222
    iget-boolean v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->val$toRight:Z

    const-wide/16 v1, 0x3

    const/high16 v3, 0x437f0000    # 255.0f

    if-eqz v0, :cond_2

    .line 223
    :goto_0
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$100(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v0

    iget-object v4, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v4}, Lcn/highlight/core/view/SlideSwitch;->access$200(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v4

    if-gt v0, v4, :cond_0

    .line 224
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$100(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget-object v5, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v5}, Lcn/highlight/core/view/SlideSwitch;->access$200(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v0, v4}, Lcn/highlight/core/view/SlideSwitch;->access$302(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 225
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$400(Lcn/highlight/core/view/SlideSwitch;)V

    .line 226
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$100(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-static {v0, v4}, Lcn/highlight/core/view/SlideSwitch;->access$102(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 228
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcn/highlight/core/view/SlideSwitch;->access$302(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 234
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$200(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/highlight/core/view/SlideSwitch;->access$102(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 235
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/highlight/core/view/SlideSwitch;->access$502(Lcn/highlight/core/view/SlideSwitch;Z)Z

    .line 236
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$000(Lcn/highlight/core/view/SlideSwitch;)Lcn/highlight/core/view/SlideSwitch$SlideListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    :cond_1
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$200(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/highlight/core/view/SlideSwitch;->access$602(Lcn/highlight/core/view/SlideSwitch;I)I

    goto :goto_2

    .line 241
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$100(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v0

    iget-object v4, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v4}, Lcn/highlight/core/view/SlideSwitch;->access$700(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 242
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$100(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget-object v5, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v5}, Lcn/highlight/core/view/SlideSwitch;->access$200(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v0, v4}, Lcn/highlight/core/view/SlideSwitch;->access$302(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 243
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$400(Lcn/highlight/core/view/SlideSwitch;)V

    .line 244
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$100(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v0, v4}, Lcn/highlight/core/view/SlideSwitch;->access$102(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 246
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/core/view/SlideSwitch;->access$302(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 252
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$700(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v2

    invoke-static {v0, v2}, Lcn/highlight/core/view/SlideSwitch;->access$102(Lcn/highlight/core/view/SlideSwitch;I)I

    .line 253
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0, v1}, Lcn/highlight/core/view/SlideSwitch;->access$502(Lcn/highlight/core/view/SlideSwitch;Z)Z

    .line 254
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$000(Lcn/highlight/core/view/SlideSwitch;)Lcn/highlight/core/view/SlideSwitch$SlideListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    :cond_4
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch$2;->this$0:Lcn/highlight/core/view/SlideSwitch;

    invoke-static {v0}, Lcn/highlight/core/view/SlideSwitch;->access$700(Lcn/highlight/core/view/SlideSwitch;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/highlight/core/view/SlideSwitch;->access$602(Lcn/highlight/core/view/SlideSwitch;I)I

    :goto_2
    return-void
.end method
