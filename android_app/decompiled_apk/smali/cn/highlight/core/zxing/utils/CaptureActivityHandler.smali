.class public Lcn/highlight/core/zxing/utils/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;
    }
.end annotation


# instance fields
.field final cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

.field final decodeThread:Lcn/highlight/core/zxing/decode/DecodeThread;

.field final scanManager:Lcn/highlight/core/zxing/ScanManager;

.field state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;


# direct methods
.method public constructor <init>(Lcn/highlight/core/zxing/ScanManager;Lcn/highlight/core/zxing/camera/CameraManager;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    .line 48
    new-instance v0, Lcn/highlight/core/zxing/decode/DecodeThread;

    invoke-direct {v0, p1, p3}, Lcn/highlight/core/zxing/decode/DecodeThread;-><init>(Lcn/highlight/core/zxing/ScanManager;I)V

    iput-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->decodeThread:Lcn/highlight/core/zxing/decode/DecodeThread;

    .line 49
    iget-object p1, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->decodeThread:Lcn/highlight/core/zxing/decode/DecodeThread;

    invoke-virtual {p1}, Lcn/highlight/core/zxing/decode/DecodeThread;->start()V

    .line 50
    sget-object p1, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->SUCCESS:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    iput-object p1, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    .line 53
    iput-object p2, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    .line 54
    invoke-virtual {p2}, Lcn/highlight/core/zxing/camera/CameraManager;->startPreview()V

    .line 55
    invoke-virtual {p0}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcn/highlight/core/R$id;->restart_preview:I

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 62
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcn/highlight/core/R$id;->decode_succeeded:I

    if-ne v0, v1, :cond_1

    .line 63
    sget-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->SUCCESS:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    iput-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    .line 64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    .line 66
    new-instance v1, Lcn/highlight/core/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcn/highlight/core/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 67
    iget-object p1, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    invoke-virtual {p1, v1, v0}, Lcn/highlight/core/zxing/ScanManager;->handleDecode(Lcn/highlight/core/zxing/Result;Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcn/highlight/core/R$id;->decode_failed:I

    if-ne v0, v1, :cond_2

    .line 70
    sget-object p1, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->PREVIEW:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    iput-object p1, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    .line 71
    iget-object p1, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->decodeThread:Lcn/highlight/core/zxing/decode/DecodeThread;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcn/highlight/core/R$id;->decode:I

    invoke-virtual {p1, v0, v1}, Lcn/highlight/core/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 72
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcn/highlight/core/R$id;->decode_error:I

    if-ne v0, v1, :cond_3

    .line 73
    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcn/highlight/core/zxing/ScanManager;->handleDecodeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 74
    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    sget p1, Lcn/highlight/core/R$id;->return_scan_result:I

    :goto_0
    return-void
.end method

.method public isScanning()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    sget-object v1, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->PREVIEW:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public quitSynchronously()V
    .locals 3

    .line 80
    sget-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->DONE:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    iput-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    .line 81
    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/camera/CameraManager;->stopPreview()V

    .line 82
    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->decodeThread:Lcn/highlight/core/zxing/decode/DecodeThread;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcn/highlight/core/R$id;->quit:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->decodeThread:Lcn/highlight/core/zxing/decode/DecodeThread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcn/highlight/core/zxing/decode/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    sget v0, Lcn/highlight/core/R$id;->decode_succeeded:I

    invoke-virtual {p0, v0}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->removeMessages(I)V

    .line 94
    sget v0, Lcn/highlight/core/R$id;->decode_failed:I

    invoke-virtual {p0, v0}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method

.method restartPreviewAndDecode()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    sget-object v1, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->SUCCESS:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 99
    sget-object v0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;->PREVIEW:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    iput-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->state:Lcn/highlight/core/zxing/utils/CaptureActivityHandler$State;

    .line 100
    iget-object v0, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    iget-object v1, p0, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->decodeThread:Lcn/highlight/core/zxing/decode/DecodeThread;

    invoke-virtual {v1}, Lcn/highlight/core/zxing/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcn/highlight/core/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcn/highlight/core/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method
