.class public interface abstract Lcn/forward/androids/views/DragListView$DragItemListener;
.super Ljava/lang/Object;
.source "DragListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragItemListener"
.end annotation


# virtual methods
.method public abstract afterDrawingCache(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract beforeDrawingCache(Landroid/view/View;)V
.end method

.method public abstract canDrag(Landroid/view/View;II)Z
.end method

.method public abstract canExchange(II)Z
.end method

.method public abstract onExchange(IILandroid/view/View;Landroid/view/View;)V
.end method

.method public abstract onRelease(ILandroid/view/View;III)V
.end method

.method public abstract startDrag(ILandroid/view/View;)V
.end method
