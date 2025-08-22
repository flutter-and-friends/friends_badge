.class public interface abstract Lorg/devio/takephoto/app/TakePhoto;
.super Ljava/lang/Object;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;
    }
.end annotation


# virtual methods
.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCrop(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation
.end method

.method public abstract onCrop(Lorg/devio/takephoto/model/MultipleCrop;Lorg/devio/takephoto/model/CropOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation
.end method

.method public abstract onEnableCompress(Lorg/devio/takephoto/compress/CompressConfig;Z)V
.end method

.method public abstract onPickFromCapture(Landroid/net/Uri;)V
.end method

.method public abstract onPickFromCaptureWithCrop(Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
.end method

.method public abstract onPickFromDocuments()V
.end method

.method public abstract onPickFromDocumentsWithCrop(Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
.end method

.method public abstract onPickFromGallery()V
.end method

.method public abstract onPickFromGalleryWithCrop(Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
.end method

.method public abstract onPickMultiple(I)V
.end method

.method public abstract onPickMultipleWithCrop(ILorg/devio/takephoto/model/CropOptions;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract permissionNotify(Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;)V
.end method

.method public abstract setTakePhotoOptions(Lorg/devio/takephoto/model/TakePhotoOptions;)V
.end method
