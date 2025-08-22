.class public Lcn/forward/androids/TouchGestureDetector;
.super Ljava/lang/Object;
.source "TouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/TouchGestureDetector$OnTouchGestureListener;,
        Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;,
        Lcn/forward/androids/TouchGestureDetector$OnTouchGestureListenerProxy;
    }
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mIsScrollAfterScaled:Z

.field private final mOnTouchGestureListener:Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;

.field private final mScaleGestureDetectorApi27:Lcn/forward/androids/ScaleGestureDetectorApi27;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcn/forward/androids/TouchGestureDetector;->mIsScrollAfterScaled:Z

    .line 20
    new-instance v0, Lcn/forward/androids/TouchGestureDetector$OnTouchGestureListenerProxy;

    invoke-direct {v0, p0, p2}, Lcn/forward/androids/TouchGestureDetector$OnTouchGestureListenerProxy;-><init>(Lcn/forward/androids/TouchGestureDetector;Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;)V

    iput-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mOnTouchGestureListener:Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;

    .line 21
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mOnTouchGestureListener:Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcn/forward/androids/TouchGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 22
    iget-object p2, p0, Lcn/forward/androids/TouchGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mOnTouchGestureListener:Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 23
    new-instance p2, Lcn/forward/androids/ScaleGestureDetectorApi27;

    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mOnTouchGestureListener:Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-direct {p2, p1, v0}, Lcn/forward/androids/ScaleGestureDetectorApi27;-><init>(Landroid/content/Context;Lcn/forward/androids/ScaleGestureDetectorApi27$OnScaleGestureListener;)V

    iput-object p2, p0, Lcn/forward/androids/TouchGestureDetector;->mScaleGestureDetectorApi27:Lcn/forward/androids/ScaleGestureDetectorApi27;

    .line 25
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    .line 26
    iget-object p1, p0, Lcn/forward/androids/TouchGestureDetector;->mScaleGestureDetectorApi27:Lcn/forward/androids/ScaleGestureDetectorApi27;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/forward/androids/ScaleGestureDetectorApi27;->setQuickScaleEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/forward/androids/TouchGestureDetector;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcn/forward/androids/TouchGestureDetector;->mIsScrollAfterScaled:Z

    return p0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/view/GestureDetector;->isLongpressEnabled()Z

    move-result v0

    return v0
.end method

.method public isScrollAfterScaled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcn/forward/androids/TouchGestureDetector;->mIsScrollAfterScaled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mOnTouchGestureListener:Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;->onUpOrCancel(Landroid/view/MotionEvent;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mScaleGestureDetectorApi27:Lcn/forward/androids/ScaleGestureDetectorApi27;

    invoke-virtual {v0, p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    iget-object v1, p0, Lcn/forward/androids/TouchGestureDetector;->mScaleGestureDetectorApi27:Lcn/forward/androids/ScaleGestureDetectorApi27;

    invoke-virtual {v1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    iget-object v1, p0, Lcn/forward/androids/TouchGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public setIsScrollAfterScaled(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcn/forward/androids/TouchGestureDetector;->mIsScrollAfterScaled:Z

    return-void
.end method

.method public setScaleMinSpan(I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mScaleGestureDetectorApi27:Lcn/forward/androids/ScaleGestureDetectorApi27;

    invoke-virtual {v0, p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->setMinSpan(I)V

    return-void
.end method

.method public setScaleSpanSlop(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/forward/androids/TouchGestureDetector;->mScaleGestureDetectorApi27:Lcn/forward/androids/ScaleGestureDetectorApi27;

    invoke-virtual {v0, p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->setSpanSlop(I)V

    return-void
.end method
