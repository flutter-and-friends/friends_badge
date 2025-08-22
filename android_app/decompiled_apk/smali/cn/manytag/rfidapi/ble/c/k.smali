.class Lcn/manytag/rfidapi/ble/c/k;
.super Lcn/manytag/rfidapi/ble/c/a;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/c/j;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/c/j;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->b()Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/h;->b(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->b()Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/BleScanCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/BleScanCallback;->onLeScan(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->b()Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/h;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/callback/h;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcn/manytag/rfidapi/ble/c/l;

    invoke-direct {v2, p0, p1, v0}, Lcn/manytag/rfidapi/ble/c/l;-><init>(Lcn/manytag/rfidapi/ble/c/k;Ljava/util/List;Lcn/manytag/rfidapi/ble/callback/h;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/h;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->b()Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    move-result-object v0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/BleScanCallback;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/BleScanCallback;->onScanFinished(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->b()Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;->onScanning(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/k;->a:Lcn/manytag/rfidapi/ble/c/j;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/j;->a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->b()Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;->onScanStarted(Z)V

    :cond_0
    return-void
.end method
