.class public interface abstract Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;
.super Ljava/lang/Object;
.source "EasyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/EasyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMultiSelectListener"
.end annotation


# virtual methods
.method public abstract onOutOfMax(I)V
.end method

.method public abstract onSelected(IZ)V
.end method

.method public abstract onSelected(Lcn/forward/androids/views/EasyAdapter$SelectionMode;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/forward/androids/views/EasyAdapter$SelectionMode;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
