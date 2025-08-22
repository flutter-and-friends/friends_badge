.class Lcn/highlight/core/view/BallPulseViews$1;
.super Ljava/lang/Object;
.source "BallPulseViews.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/core/view/BallPulseViews;->createAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/view/BallPulseViews;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcn/highlight/core/view/BallPulseViews;I)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcn/highlight/core/view/BallPulseViews$1;->this$0:Lcn/highlight/core/view/BallPulseViews;

    iput p2, p0, Lcn/highlight/core/view/BallPulseViews$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/highlight/core/view/BallPulseViews$1;->this$0:Lcn/highlight/core/view/BallPulseViews;

    invoke-static {v0}, Lcn/highlight/core/view/BallPulseViews;->access$000(Lcn/highlight/core/view/BallPulseViews;)[F

    move-result-object v0

    iget v1, p0, Lcn/highlight/core/view/BallPulseViews$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 154
    iget-object p1, p0, Lcn/highlight/core/view/BallPulseViews$1;->this$0:Lcn/highlight/core/view/BallPulseViews;

    invoke-virtual {p1}, Lcn/highlight/core/view/BallPulseViews;->postInvalidate()V

    return-void
.end method
