.class Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$2;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;


# direct methods
.method constructor <init>(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$2;->this$2:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$2;->this$2:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$100(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 371
    iget-object v0, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2$2;->this$2:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$2;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object v0, v0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-static {v0}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->access$100(Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
