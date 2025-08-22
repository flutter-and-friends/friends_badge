.class Lcn/forward/androids/views/ScrollPickerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/views/ScrollPickerView;->autoScrollFast(IJFLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/forward/androids/views/ScrollPickerView;


# direct methods
.method constructor <init>(Lcn/forward/androids/views/ScrollPickerView;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$2;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 538
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 539
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$2;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/forward/androids/views/ScrollPickerView;->access$302(Lcn/forward/androids/views/ScrollPickerView;Z)Z

    return-void
.end method
