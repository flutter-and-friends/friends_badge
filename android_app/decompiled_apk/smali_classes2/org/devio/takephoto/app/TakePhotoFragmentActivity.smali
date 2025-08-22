.class public Lorg/devio/takephoto/app/TakePhotoFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "TakePhotoFragmentActivity.java"

# interfaces
.implements Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;
.implements Lorg/devio/takephoto/permission/InvokeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private invokeParam:Lorg/devio/takephoto/model/InvokeParam;

.field private takePhoto:Lorg/devio/takephoto/app/TakePhoto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->takePhoto:Lorg/devio/takephoto/app/TakePhoto;

    if-nez v0, :cond_0

    .line 64
    invoke-static {p0}, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;->of(Lorg/devio/takephoto/permission/InvokeListener;)Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;

    move-result-object v0

    new-instance v1, Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-direct {v1, p0, p0}, Lorg/devio/takephoto/app/TakePhotoImpl;-><init>(Landroid/app/Activity;Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;)V

    invoke-virtual {v0, v1}, Lorg/devio/takephoto/permission/TakePhotoInvocationHandler;->bind(Lorg/devio/takephoto/app/TakePhoto;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/app/TakePhoto;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->takePhoto:Lorg/devio/takephoto/app/TakePhoto;

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->takePhoto:Lorg/devio/takephoto/app/TakePhoto;

    return-object v0
.end method

.method public invoke(Lorg/devio/takephoto/model/InvokeParam;)Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;
    .locals 2

    .line 87
    invoke-static {p0}, Lorg/devio/takephoto/model/TContextWrap;->of(Landroid/app/Activity;)Lorg/devio/takephoto/model/TContextWrap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/InvokeParam;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/devio/takephoto/permission/PermissionManager;->checkPermission(Lorg/devio/takephoto/model/TContextWrap;Ljava/lang/reflect/Method;)Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    move-result-object v0

    .line 88
    sget-object v1, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v1, v0}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->invokeParam:Lorg/devio/takephoto/model/InvokeParam;

    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/devio/takephoto/app/TakePhoto;->onActivityResult(IILandroid/content/Intent;)V

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/devio/takephoto/app/TakePhoto;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 53
    invoke-static {p1, p2, p3}, Lorg/devio/takephoto/permission/PermissionManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->invokeParam:Lorg/devio/takephoto/model/InvokeParam;

    invoke-static {p0, p1, p2, p0}, Lorg/devio/takephoto/permission/PermissionManager;->handlePermissionsResult(Landroid/app/Activity;Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;Lorg/devio/takephoto/model/InvokeParam;Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/devio/takephoto/app/TakePhoto;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public takeCancel()V
    .locals 3

    .line 81
    sget-object v0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/devio/takephoto/R$string;->msg_operation_canceled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V
    .locals 2

    .line 76
    sget-object p1, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takeSuccess(Lorg/devio/takephoto/model/TResult;)V
    .locals 3

    .line 71
    sget-object v0, Lorg/devio/takephoto/app/TakePhotoFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeSuccess\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TResult;->getImage()Lorg/devio/takephoto/model/TImage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TImage;->getCompressPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
