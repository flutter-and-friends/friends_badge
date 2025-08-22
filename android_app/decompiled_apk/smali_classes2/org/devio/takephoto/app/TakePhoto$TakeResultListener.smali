.class public interface abstract Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;
.super Ljava/lang/Object;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/app/TakePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TakeResultListener"
.end annotation


# virtual methods
.method public abstract takeCancel()V
.end method

.method public abstract takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V
.end method

.method public abstract takeSuccess(Lorg/devio/takephoto/model/TResult;)V
.end method
