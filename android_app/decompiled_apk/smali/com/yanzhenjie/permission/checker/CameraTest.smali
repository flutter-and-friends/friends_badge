.class Lcom/yanzhenjie/permission/checker/CameraTest;
.super Ljava/lang/Object;
.source "CameraTest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionTest;


# static fields
.field private static final PREVIEW_CALLBACK:Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/yanzhenjie/permission/checker/CameraTest$1;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/CameraTest$1;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/checker/CameraTest;->PREVIEW_CALLBACK:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yanzhenjie/permission/checker/CameraTest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public test()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 40
    sget-object v3, Lcom/yanzhenjie/permission/checker/CameraTest;->PREVIEW_CALLBACK:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 41
    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 49
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 50
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_0
    return v0

    :catchall_0
    move-object v2, v1

    .line 44
    :catchall_1
    :try_start_2
    iget-object v3, p0, Lcom/yanzhenjie/permission/checker/CameraTest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.camera"

    .line 45
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    xor-int/2addr v0, v3

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 49
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 50
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_1
    return v0

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 49
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 50
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 52
    :cond_2
    throw v0
.end method
