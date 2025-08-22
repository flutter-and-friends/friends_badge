.class public Lcn/highlight/lib_doodle/DoodleTouchDetector;
.super Lcn/forward/androids/TouchGestureDetector;
.source "DoodleTouchDetector.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodleTouchDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcn/forward/androids/TouchGestureDetector;-><init>(Landroid/content/Context;Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleTouchDetector;->setScaleSpanSlop(I)V

    .line 12
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleTouchDetector;->setScaleMinSpan(I)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleTouchDetector;->setIsLongpressEnabled(Z)V

    .line 15
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleTouchDetector;->setIsScrollAfterScaled(Z)V

    return-void
.end method
