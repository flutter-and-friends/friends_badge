.class Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;
.super Ljava/lang/Object;
.source "DoodleOnTouchGestureListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->limitBound(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;


# direct methods
.method constructor <init>(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;->this$0:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 543
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 544
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 545
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;->this$0:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-static {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->access$100(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)Lcn/highlight/lib_doodle/DoodleView;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;->this$0:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-static {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->access$500(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;->this$0:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-static {v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->access$600(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F

    move-result v3

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;->this$0:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-static {v4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->access$500(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleTranslation(FF)V

    return-void
.end method
