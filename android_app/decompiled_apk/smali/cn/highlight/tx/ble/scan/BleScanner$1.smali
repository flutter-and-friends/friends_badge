.class Lcn/highlight/tx/ble/scan/BleScanner$1;
.super Lcn/highlight/tx/ble/scan/BleScanPresenter;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/ble/scan/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/scan/BleScanner;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/scan/BleScanner;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-direct {p0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->ismNeedConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    .line 48
    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;->onLeScan(Lcn/highlight/tx/ble/data/BleDevice;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/highlight/tx/ble/callback/BleScanCallback;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleScanCallback;->onLeScan(Lcn/highlight/tx/ble/data/BleDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScanFinished(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/tx/ble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->ismNeedConnect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    .line 72
    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;

    if-eqz p1, :cond_2

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 79
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/tx/ble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;->onScanFinished(Lcn/highlight/tx/ble/data/BleDevice;)V

    .line 82
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcn/highlight/tx/ble/scan/BleScanner$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcn/highlight/tx/ble/scan/BleScanner$1$1;-><init>(Lcn/highlight/tx/ble/scan/BleScanner$1;Ljava/util/List;Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 75
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;->onScanFinished(Lcn/highlight/tx/ble/data/BleDevice;)V

    goto :goto_1

    .line 90
    :cond_3
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/highlight/tx/ble/callback/BleScanCallback;

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleScanCallback;->onScanFinished(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1}, Lcn/highlight/tx/ble/callback/BleScanPresenterImp;->onScanStarted(Z)V

    :cond_0
    return-void
.end method

.method public onScanning(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanner;

    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->getBleScanPresenterImp()Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcn/highlight/tx/ble/callback/BleScanPresenterImp;->onScanning(Lcn/highlight/tx/ble/data/BleDevice;)V

    :cond_0
    return-void
.end method
