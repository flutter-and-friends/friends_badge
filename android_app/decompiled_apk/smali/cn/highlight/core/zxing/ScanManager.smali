.class public Lcn/highlight/core/zxing/ScanManager;
.super Ljava/lang/Object;
.source "ScanManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final TAG:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field public beepManager:Lcn/highlight/core/zxing/utils/BeepManager;

.field cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

.field handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

.field inactivityTimer:Lcn/highlight/core/zxing/utils/InactivityTimer;

.field isHasSurface:Z

.field isOpenLight:Z

.field listener:Lcn/highlight/core/zxing/ScanListener;

.field mCropRect:Landroid/graphics/Rect;

.field photoScanHandler:Lcn/highlight/core/zxing/decode/PhotoScanHandler;

.field scanContainer:Landroid/view/View;

.field scanCropView:Landroid/view/View;

.field scanLine:Landroid/widget/ImageView;

.field private scanMode:I

.field scanPreview:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/SurfaceView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;ILcn/highlight/core/zxing/ScanListener;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v0, Lcn/highlight/core/zxing/ScanManager;->isHasSurface:Z

    const/4 v3, 0x0

    .line 46
    iput-object v3, v0, Lcn/highlight/core/zxing/ScanManager;->mCropRect:Landroid/graphics/Rect;

    .line 49
    iput-object v3, v0, Lcn/highlight/core/zxing/ScanManager;->scanPreview:Landroid/view/SurfaceView;

    .line 53
    const-class v3, Lcn/highlight/core/zxing/ScanManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/highlight/core/zxing/ScanManager;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v2, v0, Lcn/highlight/core/zxing/ScanManager;->isOpenLight:Z

    move-object v2, p1

    .line 72
    iput-object v2, v0, Lcn/highlight/core/zxing/ScanManager;->activity:Landroid/app/Activity;

    move-object v2, p2

    .line 73
    iput-object v2, v0, Lcn/highlight/core/zxing/ScanManager;->scanPreview:Landroid/view/SurfaceView;

    move-object v2, p3

    .line 74
    iput-object v2, v0, Lcn/highlight/core/zxing/ScanManager;->scanContainer:Landroid/view/View;

    move-object/from16 v2, p4

    .line 75
    iput-object v2, v0, Lcn/highlight/core/zxing/ScanManager;->scanCropView:Landroid/view/View;

    .line 76
    iput-object v1, v0, Lcn/highlight/core/zxing/ScanManager;->scanLine:Landroid/widget/ImageView;

    move-object/from16 v2, p7

    .line 77
    iput-object v2, v0, Lcn/highlight/core/zxing/ScanManager;->listener:Lcn/highlight/core/zxing/ScanListener;

    move/from16 v2, p6

    .line 78
    iput v2, v0, Lcn/highlight/core/zxing/ScanManager;->scanMode:I

    .line 80
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const v10, 0x3f666666

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1194

    .line 82
    invoke-virtual {v11, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, -0x1

    .line 83
    invoke-virtual {v11, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v11, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 85
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/core/zxing/ScanListener;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isHasSurface:Z

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->mCropRect:Landroid/graphics/Rect;

    .line 49
    iput-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->scanPreview:Landroid/view/SurfaceView;

    .line 53
    const-class v1, Lcn/highlight/core/zxing/ScanManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isOpenLight:Z

    .line 95
    iput-object p1, p0, Lcn/highlight/core/zxing/ScanManager;->listener:Lcn/highlight/core/zxing/ScanListener;

    return-void
.end method


# virtual methods
.method public getCameraManager()Lcn/highlight/core/zxing/camera/CameraManager;
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 213
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    return-object v0
.end method

.method getStatusBarHeight()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 273
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public handleDecode(Lcn/highlight/core/zxing/Result;Landroid/os/Bundle;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->inactivityTimer:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/InactivityTimer;->onActivity()V

    .line 225
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->beepManager:Lcn/highlight/core/zxing/utils/BeepManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/BeepManager;->playBeepSoundAndVibrate()V

    .line 226
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "width"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p1}, Lcn/highlight/core/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->listener:Lcn/highlight/core/zxing/ScanListener;

    invoke-interface {v0, p1, p2}, Lcn/highlight/core/zxing/ScanListener;->scanResult(Lcn/highlight/core/zxing/Result;Landroid/os/Bundle;)V

    return-void
.end method

.method public handleDecodeError(Ljava/lang/Exception;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->listener:Lcn/highlight/core/zxing/ScanListener;

    invoke-interface {v0, p1}, Lcn/highlight/core/zxing/ScanListener;->scanError(Ljava/lang/Exception;)V

    return-void
.end method

.method initCamera(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "\u76f8\u673a\u6253\u5f00\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u88ab\u7981\u6b62\u4e86\u8be5\u6743\u9650\uff01"

    if-eqz p1, :cond_2

    .line 167
    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v1}, Lcn/highlight/core/zxing/camera/CameraManager;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object p1, p0, Lcn/highlight/core/zxing/ScanManager;->TAG:Ljava/lang/String;

    const-string v0, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {p1, v0}, Lcn/highlight/core/utils/LogManage;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcn/highlight/core/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 175
    iget-object p1, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    if-nez p1, :cond_1

    .line 176
    new-instance p1, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    iget v2, p0, Lcn/highlight/core/zxing/ScanManager;->scanMode:I

    invoke-direct {p1, p0, v1, v2}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;-><init>(Lcn/highlight/core/zxing/ScanManager;Lcn/highlight/core/zxing/camera/CameraManager;I)V

    iput-object p1, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    const-string p1, "hongliang1"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler new\u6210\u529f\uff01:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/core/zxing/ScanManager;->initCrop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 188
    iget-object p1, p0, Lcn/highlight/core/zxing/ScanManager;->listener:Lcn/highlight/core/zxing/ScanListener;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/highlight/core/zxing/ScanListener;->scanError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    iget-object p1, p0, Lcn/highlight/core/zxing/ScanManager;->listener:Lcn/highlight/core/zxing/ScanListener;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/highlight/core/zxing/ScanListener;->scanError(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method initCrop()V
    .locals 8

    .line 240
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 241
    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v1}, Lcn/highlight/core/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 245
    iget-object v3, p0, Lcn/highlight/core/zxing/ScanManager;->scanCropView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 247
    aget v3, v2, v3

    const/4 v4, 0x1

    .line 248
    aget v2, v2, v4

    invoke-virtual {p0}, Lcn/highlight/core/zxing/ScanManager;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 250
    iget-object v4, p0, Lcn/highlight/core/zxing/ScanManager;->scanCropView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 251
    iget-object v5, p0, Lcn/highlight/core/zxing/ScanManager;->scanCropView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 254
    iget-object v6, p0, Lcn/highlight/core/zxing/ScanManager;->scanContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 255
    iget-object v7, p0, Lcn/highlight/core/zxing/ScanManager;->scanContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    mul-int v3, v3, v0

    .line 258
    div-int/2addr v3, v6

    mul-int v2, v2, v1

    .line 260
    div-int/2addr v2, v7

    mul-int v4, v4, v0

    .line 263
    div-int/2addr v4, v6

    mul-int v5, v5, v1

    .line 265
    div-int/2addr v5, v7

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    add-int/2addr v5, v2

    invoke-direct {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public isScanning()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->isScanning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->inactivityTimer:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/InactivityTimer;->shutdown()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    .line 129
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->inactivityTimer:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/InactivityTimer;->onPause()V

    .line 130
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->beepManager:Lcn/highlight/core/zxing/utils/BeepManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/BeepManager;->close()V

    .line 131
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/camera/CameraManager;->closeDriver()V

    .line 132
    iget-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isHasSurface:Z

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 106
    new-instance v0, Lcn/highlight/core/zxing/utils/InactivityTimer;

    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/highlight/core/zxing/utils/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->inactivityTimer:Lcn/highlight/core/zxing/utils/InactivityTimer;

    .line 107
    new-instance v0, Lcn/highlight/core/zxing/utils/BeepManager;

    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/highlight/core/zxing/utils/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->beepManager:Lcn/highlight/core/zxing/utils/BeepManager;

    .line 108
    new-instance v0, Lcn/highlight/core/zxing/camera/CameraManager;

    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/highlight/core/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    .line 111
    iget-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isHasSurface:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/highlight/core/zxing/ScanManager;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->inactivityTimer:Lcn/highlight/core/zxing/utils/InactivityTimer;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/utils/InactivityTimer;->onResume()V

    return-void
.end method

.method public reScan()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->handler:Lcn/highlight/core/zxing/utils/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 330
    sget v1, Lcn/highlight/core/R$id;->restart_preview:I

    invoke-virtual {v0, v1}, Lcn/highlight/core/zxing/utils/CaptureActivityHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public scanningImage(Ljava/lang/String;)V
    .locals 3

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->listener:Lcn/highlight/core/zxing/ScanListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "photo url is null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/highlight/core/zxing/ScanListener;->scanError(Ljava/lang/Exception;)V

    .line 294
    :cond_0
    new-instance v0, Lcn/highlight/core/zxing/decode/PhotoScanHandler;

    invoke-direct {v0, p0}, Lcn/highlight/core/zxing/decode/PhotoScanHandler;-><init>(Lcn/highlight/core/zxing/ScanManager;)V

    iput-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->photoScanHandler:Lcn/highlight/core/zxing/decode/PhotoScanHandler;

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/highlight/core/zxing/ScanManager$1;

    invoke-direct {v1, p0, p1}, Lcn/highlight/core/zxing/ScanManager$1;-><init>(Lcn/highlight/core/zxing/ScanManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Lcn/highlight/core/utils/LogManage;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isHasSurface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isHasSurface:Z

    .line 149
    invoke-virtual {p0, p1}, Lcn/highlight/core/zxing/ScanManager;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcn/highlight/core/zxing/ScanManager;->isHasSurface:Z

    return-void
.end method

.method public switchLight()V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isOpenLight:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/camera/CameraManager;->offLight()V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager;->cameraManager:Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/camera/CameraManager;->openLight()V

    .line 201
    :goto_0
    iget-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isOpenLight:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/highlight/core/zxing/ScanManager;->isOpenLight:Z

    return-void
.end method
