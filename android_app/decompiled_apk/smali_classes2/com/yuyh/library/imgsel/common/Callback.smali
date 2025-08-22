.class public interface abstract Lcom/yuyh/library/imgsel/common/Callback;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract onCameraShot(Ljava/io/File;)V
.end method

.method public abstract onImageSelected(Ljava/lang/String;)V
.end method

.method public abstract onImageUnselected(Ljava/lang/String;)V
.end method

.method public abstract onPreviewChanged(IIZ)V
.end method

.method public abstract onSingleImageSelected(Ljava/lang/String;)V
.end method
