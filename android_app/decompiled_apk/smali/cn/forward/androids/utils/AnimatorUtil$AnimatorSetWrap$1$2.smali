.class Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->repeat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;


# direct methods
.method constructor <init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "hzw"

    const-string v1, "animator schedule"

    .line 346
    invoke-static {v0, v1}, Lcn/forward/androids/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$300(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$400(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)V

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$200(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil;->isVisibleOnScreen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$400(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)V

    .line 355
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$200(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$1;

    invoke-direct {v1, p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$1;-><init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$200(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$2;

    invoke-direct {v1, p0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$2;-><init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 375
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$700(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)I

    move-result v0

    if-lez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$808(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)I

    .line 377
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$800(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)I

    move-result v0

    iget-object v1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v1, v1, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$700(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 378
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$400(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)V

    :cond_2
    return-void
.end method
