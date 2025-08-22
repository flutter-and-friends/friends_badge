.class public Lcn/highlight/core/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field autoFocusManager:Lcn/highlight/core/zxing/camera/AutoFocusManager;

.field camera:Landroid/hardware/Camera;

.field final configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

.field final context:Landroid/content/Context;

.field initialized:Z

.field final previewCallback:Lcn/highlight/core/zxing/camera/PreviewCallback;

.field previewing:Z

.field requestedCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcn/highlight/core/zxing/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->requestedCameraId:I

    .line 63
    iput-object p1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 64
    new-instance v0, Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcn/highlight/core/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    .line 65
    new-instance p1, Lcn/highlight/core/zxing/camera/PreviewCallback;

    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    invoke-direct {p1, v0}, Lcn/highlight/core/zxing/camera/PreviewCallback;-><init>(Lcn/highlight/core/zxing/camera/CameraConfigurationManager;)V

    iput-object p1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewCallback:Lcn/highlight/core/zxing/camera/PreviewCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public offLight()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    .line 231
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 81
    iget v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->requestedCameraId:I

    if-ltz v0, :cond_0

    .line 82
    iget v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcn/highlight/core/zxing/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcn/highlight/core/zxing/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 90
    iput-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    goto :goto_1

    .line 88
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 92
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 94
    iget-boolean p1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->initialized:Z

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 95
    iput-boolean v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->initialized:Z

    .line 96
    iget-object p1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    invoke-virtual {p1, v0}, Lcn/highlight/core/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 99
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcn/highlight/core/zxing/camera/CameraManager;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcn/highlight/core/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 107
    :catch_0
    :try_start_2
    sget-object v2, Lcn/highlight/core/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v2, Lcn/highlight/core/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting to saved camera params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 111
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 112
    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :try_start_3
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 115
    iget-object p1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->configManager:Lcn/highlight/core/zxing/camera/CameraConfigurationManager;

    invoke-virtual {p1, v0, v1}, Lcn/highlight/core/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 118
    :catch_1
    :try_start_4
    sget-object p1, Lcn/highlight/core/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openLight()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "torch"

    .line 221
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 181
    iget-boolean v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewCallback:Lcn/highlight/core/zxing/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcn/highlight/core/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 183
    iget-object p1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewCallback:Lcn/highlight/core/zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 0

    monitor-enter p0

    .line 196
    :try_start_0
    iput p1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 147
    iget-boolean v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewing:Z

    .line 150
    new-instance v0, Lcn/highlight/core/zxing/camera/AutoFocusManager;

    iget-object v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, v1, v2}, Lcn/highlight/core/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->autoFocusManager:Lcn/highlight/core/zxing/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->autoFocusManager:Lcn/highlight/core/zxing/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->autoFocusManager:Lcn/highlight/core/zxing/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/camera/AutoFocusManager;->stop()V

    .line 160
    iput-object v1, p0, Lcn/highlight/core/zxing/camera/CameraManager;->autoFocusManager:Lcn/highlight/core/zxing/camera/AutoFocusManager;

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 164
    iget-object v0, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewCallback:Lcn/highlight/core/zxing/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/highlight/core/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 165
    iput-boolean v2, p0, Lcn/highlight/core/zxing/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
