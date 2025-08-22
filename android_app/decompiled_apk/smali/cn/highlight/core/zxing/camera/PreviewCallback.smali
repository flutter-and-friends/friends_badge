.class public Lcn/highlight/core/zxing/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field final configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

.field previewHandler:Landroid/os/Handler;

.field previewMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcn/highlight/core/zxing/camera/PreviewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/zxing/camera/PreviewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/highlight/core/zxing/camera/CameraConfigurationManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/highlight/core/zxing/camera/PreviewCallback;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 44
    iget-object p2, p0, Lcn/highlight/core/zxing/camera/PreviewCallback;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    invoke-virtual {p2}, Lcn/highlight/core/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object p2

    .line 45
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 47
    iget v1, p0, Lcn/highlight/core/zxing/camera/PreviewCallback;->previewMessage:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcn/highlight/core/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    goto :goto_0

    .line 51
    :cond_0
    sget-object p1, Lcn/highlight/core/zxing/camera/PreviewCallback;->TAG:Ljava/lang/String;

    const-string p2, "Got preview callback, but no handler or resolution available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/highlight/core/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 39
    iput p2, p0, Lcn/highlight/core/zxing/camera/PreviewCallback;->previewMessage:I

    return-void
.end method
