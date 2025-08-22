.class public abstract Lcn/highlight/tx/ble/scan/BleScanPresenter;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/tx/ble/scan/BleScanPresenter$ScanHandler;
    }
.end annotation


# instance fields
.field private mBleDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/tx/ble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBleScanPresenterImp:Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

.field private mDeviceMac:Ljava/lang/String;

.field private mDeviceNames:[Ljava/lang/String;

.field private mFuzzy:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHandling:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mNeedConnect:Z

.field private mScanTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/tx/ble/scan/BleScanPresenter;Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->handleResult(Lcn/highlight/tx/ble/data/BleDevice;)V

    return-void
.end method

.method static synthetic access$100(Lcn/highlight/tx/ble/scan/BleScanPresenter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    return-object p0
.end method

.method private checkDevice(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 8

    .line 111
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, v1, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->correctDeviceAndNextStep(Lcn/highlight/tx/ble/data/BleDevice;)V

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 123
    iget-object v3, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 124
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, ""

    .line 127
    :cond_3
    iget-boolean v7, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mFuzzy:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 136
    :cond_7
    invoke-direct {p0, p1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->correctDeviceAndNextStep(Lcn/highlight/tx/ble/data/BleDevice;)V

    return-void
.end method

.method private correctDeviceAndNextStep(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 5

    .line 143
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-boolean v1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mNeedConnect:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    iget-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcn/highlight/tx/ble/scan/BleScanPresenter$2;

    invoke-direct {v0, p0}, Lcn/highlight/tx/ble/scan/BleScanPresenter$2;-><init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 166
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 167
    iget-object v2, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/highlight/tx/ble/data/BleDevice;

    .line 168
    invoke-virtual {v3}, Lcn/highlight/tx/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 169
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    .line 183
    iget-object v1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_5
    iget-object v1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;

    invoke-direct {v2, p0, v0, p1}, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;-><init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;Ljava/lang/String;Lcn/highlight/tx/ble/data/BleDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private handleResult(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/highlight/tx/ble/scan/BleScanPresenter$1;

    invoke-direct {v1, p0, p1}, Lcn/highlight/tx/ble/scan/BleScanPresenter$1;-><init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;Lcn/highlight/tx/ble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    invoke-direct {p0, p1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->checkDevice(Lcn/highlight/tx/ble/data/BleDevice;)V

    return-void
.end method


# virtual methods
.method public getBleScanPresenterImp()Lcn/highlight/tx/ble/callback/BleScanPresenterImp;
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleScanPresenterImp:Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    return-object v0
.end method

.method public ismNeedConnect()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mNeedConnect:Z

    return v0
.end method

.method public final notifyScanStarted(Z)V
    .locals 5

    .line 200
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    invoke-virtual {p0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->removeHandlerMsg()V

    if-eqz p1, :cond_0

    .line 204
    iget-wide v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mScanTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 205
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/highlight/tx/ble/scan/BleScanPresenter$4;

    invoke-direct {v1, p0}, Lcn/highlight/tx/ble/scan/BleScanPresenter$4;-><init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;)V

    iget-wide v2, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mScanTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/highlight/tx/ble/scan/BleScanPresenter$5;

    invoke-direct {v1, p0, p1}, Lcn/highlight/tx/ble/scan/BleScanPresenter$5;-><init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyScanStopped()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 223
    iput-boolean v1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandling:Z

    .line 224
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 225
    invoke-virtual {p0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->removeHandlerMsg()V

    .line 226
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/highlight/tx/ble/scan/BleScanPresenter$6;

    invoke-direct {v1, p0}, Lcn/highlight/tx/ble/scan/BleScanPresenter$6;-><init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandling:Z

    if-nez v0, :cond_1

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    iput v1, v0, Landroid/os/Message;->what:I

    .line 106
    new-instance v1, Lcn/highlight/tx/ble/data/BleDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcn/highlight/tx/ble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public abstract onLeScan(Lcn/highlight/tx/ble/data/BleDevice;)V
.end method

.method public abstract onScanFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/tx/ble/data/BleDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onScanStarted(Z)V
.end method

.method public abstract onScanning(Lcn/highlight/tx/ble/data/BleDevice;)V
.end method

.method public prepare([Ljava/lang/String;Ljava/lang/String;ZZJLcn/highlight/tx/ble/callback/BleScanPresenterImp;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceNames:[Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mDeviceMac:Ljava/lang/String;

    .line 77
    iput-boolean p3, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mFuzzy:Z

    .line 78
    iput-boolean p4, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mNeedConnect:Z

    .line 79
    iput-wide p5, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mScanTimeout:J

    .line 80
    iput-object p7, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mBleScanPresenterImp:Lcn/highlight/tx/ble/callback/BleScanPresenterImp;

    .line 82
    new-instance p1, Landroid/os/HandlerThread;

    const-class p2, Lcn/highlight/tx/ble/scan/BleScanPresenter;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 83
    iget-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance p1, Lcn/highlight/tx/ble/scan/BleScanPresenter$ScanHandler;

    iget-object p2, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcn/highlight/tx/ble/scan/BleScanPresenter$ScanHandler;-><init>(Landroid/os/Looper;Lcn/highlight/tx/ble/scan/BleScanPresenter;)V

    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandling:Z

    return-void
.end method

.method public final removeHandlerMsg()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
