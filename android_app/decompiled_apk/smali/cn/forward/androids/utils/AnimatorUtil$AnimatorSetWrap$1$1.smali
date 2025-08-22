.class Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$1;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->onAnimationEnd(Landroid/animation/Animator;)V
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

    .line 323
    iput-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$1;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 328
    iget-object p1, p0, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1$1;->this$1:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;

    iget-object p1, p1, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap$1;->this$0:Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;

    invoke-virtual {p1}, Lcn/forward/androids/utils/AnimatorUtil$AnimatorSetWrap;->cancel()V

    return-void
.end method
