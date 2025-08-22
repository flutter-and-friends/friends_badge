.class public interface abstract Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;
.super Ljava/lang/Object;
.source "TouchGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lcn/forward/androids/ScaleGestureDetectorApi27$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/TouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnTouchGestureListener"
.end annotation


# virtual methods
.method public abstract onScrollBegin(Landroid/view/MotionEvent;)V
.end method

.method public abstract onScrollEnd(Landroid/view/MotionEvent;)V
.end method

.method public abstract onUpOrCancel(Landroid/view/MotionEvent;)V
.end method
