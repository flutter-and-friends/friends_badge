.class Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/ScrollPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingOnGestureListener"
.end annotation


# instance fields
.field private mIsScrollingLastTime:Z

.field final synthetic this$0:Lcn/forward/androids/views/ScrollPickerView;


# direct methods
.method private constructor <init>(Lcn/forward/androids/views/ScrollPickerView;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 643
    iput-boolean p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->mIsScrollingLastTime:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/forward/androids/views/ScrollPickerView;Lcn/forward/androids/views/ScrollPickerView$1;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;-><init>(Lcn/forward/androids/views/ScrollPickerView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 646
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {v0}, Lcn/forward/androids/views/ScrollPickerView;->access$500(Lcn/forward/androids/views/ScrollPickerView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {v0}, Lcn/forward/androids/views/ScrollPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {v0}, Lcn/forward/androids/views/ScrollPickerView;->isScrolling()Z

    move-result v0

    iput-boolean v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->mIsScrollingLastTime:Z

    .line 654
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {v0}, Lcn/forward/androids/views/ScrollPickerView;->cancelScroll()V

    .line 655
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Lcn/forward/androids/views/ScrollPickerView;->access$602(Lcn/forward/androids/views/ScrollPickerView;F)F

    .line 656
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Lcn/forward/androids/views/ScrollPickerView;->access$702(Lcn/forward/androids/views/ScrollPickerView;F)F

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 664
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$800(Lcn/forward/androids/views/ScrollPickerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 665
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {p1}, Lcn/forward/androids/views/ScrollPickerView;->cancelScroll()V

    .line 666
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$900(Lcn/forward/androids/views/ScrollPickerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 667
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$1000(Lcn/forward/androids/views/ScrollPickerView;)F

    move-result p2

    invoke-static {p1, p2, p3}, Lcn/forward/androids/views/ScrollPickerView;->access$1100(Lcn/forward/androids/views/ScrollPickerView;FF)V

    goto :goto_0

    .line 669
    :cond_0
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$1000(Lcn/forward/androids/views/ScrollPickerView;)F

    move-result p2

    invoke-static {p1, p2, p4}, Lcn/forward/androids/views/ScrollPickerView;->access$1100(Lcn/forward/androids/views/ScrollPickerView;FF)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 677
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcn/forward/androids/views/ScrollPickerView;->access$602(Lcn/forward/androids/views/ScrollPickerView;F)F

    .line 678
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Lcn/forward/androids/views/ScrollPickerView;->access$702(Lcn/forward/androids/views/ScrollPickerView;F)F

    .line 680
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {p1}, Lcn/forward/androids/views/ScrollPickerView;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 681
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$1300(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/forward/androids/views/ScrollPickerView;->access$1202(Lcn/forward/androids/views/ScrollPickerView;I)I

    .line 682
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$700(Lcn/forward/androids/views/ScrollPickerView;)F

    move-result p1

    goto :goto_0

    .line 684
    :cond_0
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$1400(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/forward/androids/views/ScrollPickerView;->access$1202(Lcn/forward/androids/views/ScrollPickerView;I)I

    .line 685
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$600(Lcn/forward/androids/views/ScrollPickerView;)F

    move-result p1

    .line 687
    :goto_0
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {v0}, Lcn/forward/androids/views/ScrollPickerView;->access$1500(Lcn/forward/androids/views/ScrollPickerView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->mIsScrollingLastTime:Z

    if-nez v0, :cond_3

    .line 688
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {v0}, Lcn/forward/androids/views/ScrollPickerView;->access$1200(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {v0}, Lcn/forward/androids/views/ScrollPickerView;->access$1200(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result v0

    iget-object v1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {v1}, Lcn/forward/androids/views/ScrollPickerView;->access$1600(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 689
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-virtual {p1}, Lcn/forward/androids/views/ScrollPickerView;->performClick()Z

    goto :goto_1

    .line 690
    :cond_1
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {v0}, Lcn/forward/androids/views/ScrollPickerView;->access$1200(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 691
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$1600(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result v1

    .line 692
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    const-wide/16 v2, 0x96

    invoke-static {}, Lcn/forward/androids/views/ScrollPickerView;->access$1700()Lcn/forward/androids/views/ScrollPickerView$SlotInterpolator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/forward/androids/views/ScrollPickerView;->autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V

    goto :goto_1

    .line 694
    :cond_2
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$1600(Lcn/forward/androids/views/ScrollPickerView;)I

    move-result p1

    neg-int v1, p1

    .line 695
    iget-object v0, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    const-wide/16 v2, 0x96

    invoke-static {}, Lcn/forward/androids/views/ScrollPickerView;->access$1700()Lcn/forward/androids/views/ScrollPickerView$SlotInterpolator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/forward/androids/views/ScrollPickerView;->autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V

    goto :goto_1

    .line 698
    :cond_3
    iget-object p1, p0, Lcn/forward/androids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Lcn/forward/androids/views/ScrollPickerView;

    invoke-static {p1}, Lcn/forward/androids/views/ScrollPickerView;->access$1800(Lcn/forward/androids/views/ScrollPickerView;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
