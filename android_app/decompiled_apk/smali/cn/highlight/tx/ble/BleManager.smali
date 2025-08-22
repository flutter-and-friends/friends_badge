.class public Lcn/highlight/tx/ble/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/tx/ble/BleManager$BleManagerHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECT_OVER_TIME:I = 0x2710

.field private static final DEFAULT_CONNECT_RETRY_COUNT:I = 0x0

.field private static final DEFAULT_CONNECT_RETRY_INTERVAL:I = 0x1388

.field private static final DEFAULT_MAX_MTU:I = 0x200

.field private static final DEFAULT_MAX_MULTIPLE_DEVICE:I = 0x7

.field private static final DEFAULT_MTU:I = 0x17

.field private static final DEFAULT_OPERATE_TIME:I = 0x1388

.field public static final DEFAULT_SCAN_TIME:I = 0x2710

.field private static final DEFAULT_WRITE_DATA_SPLIT_COUNT:I = 0x14


# instance fields
.field private bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private connectOverTime:J

.field private context:Landroid/app/Application;

.field private maxConnectCount:I

.field private multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

.field private operateTimeout:I

.field private reConnectCount:I

.field private reConnectInterval:J

.field private splitWriteNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 61
    iput v0, p0, Lcn/highlight/tx/ble/BleManager;->maxConnectCount:I

    const/16 v0, 0x1388

    .line 62
    iput v0, p0, Lcn/highlight/tx/ble/BleManager;->operateTimeout:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcn/highlight/tx/ble/BleManager;->reConnectCount:I

    const-wide/16 v0, 0x1388

    .line 64
    iput-wide v0, p0, Lcn/highlight/tx/ble/BleManager;->reConnectInterval:J

    const/16 v0, 0x14

    .line 65
    iput v0, p0, Lcn/highlight/tx/ble/BleManager;->splitWriteNum:I

    const-wide/16 v0, 0x2710

    .line 66
    iput-wide v0, p0, Lcn/highlight/tx/ble/BleManager;->connectOverTime:J

    return-void
.end method

.method public static getInstance()Lcn/highlight/tx/ble/BleManager;
    .locals 1

    .line 69
    invoke-static {}, Lcn/highlight/tx/ble/BleManager$BleManagerHolder;->access$000()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    .line 386
    invoke-static {}, Lcn/highlight/tx/ble/scan/BleScanner;->getInstance()Lcn/highlight/tx/ble/scan/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->stopLeScan()V

    return-void
.end method

.method public clearCharacterCallback(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 871
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 873
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->clearCharacterCallback()V

    :cond_0
    return-void
.end method

.method public connect(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    if-eqz p2, :cond_5

    .line 347
    invoke-virtual {p0}, Lcn/highlight/tx/ble/BleManager;->isBlueEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    .line 348
    invoke-static {v0}, Lcn/highlight/tx/ble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 349
    new-instance v2, Lcn/highlight/tx/ble/exception/OtherException;

    invoke-direct {v2, v0}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Lcn/highlight/tx/ble/callback/BleGattCallback;->onConnectFail(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/exception/BleException;)V

    return-object v1

    .line 353
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    :cond_1
    const-string v0, "Be careful: currentThread is not MainThread!"

    .line 354
    invoke-static {v0}, Lcn/highlight/tx/ble/utils/BleLog;->w(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 357
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->buildConnectingBle(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v1}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->isAutoConnect()Z

    move-result v1

    .line 362
    invoke-virtual {v0, p1, v1, p2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->connect(Lcn/highlight/tx/ble/data/BleDevice;ZLcn/highlight/tx/ble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 358
    :cond_4
    :goto_0
    new-instance v0, Lcn/highlight/tx/ble/exception/OtherException;

    const-string v2, "Not Found Device Exception Occurred!"

    invoke-direct {v0, v2}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcn/highlight/tx/ble/callback/BleGattCallback;->onConnectFail(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/exception/BleException;)V

    return-object v1

    .line 344
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleGattCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/lang/String;Lcn/highlight/tx/ble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 7

    .line 376
    invoke-virtual {p0}, Lcn/highlight/tx/ble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 377
    new-instance p1, Lcn/highlight/tx/ble/data/BleDevice;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcn/highlight/tx/ble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    .line 378
    invoke-virtual {p0, p1, p2}, Lcn/highlight/tx/ble/BleManager;->connect(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method public convertBleDevice(Landroid/bluetooth/BluetoothDevice;)Lcn/highlight/tx/ble/data/BleDevice;
    .locals 1

    .line 784
    new-instance v0, Lcn/highlight/tx/ble/data/BleDevice;

    invoke-direct {v0, p1}, Lcn/highlight/tx/ble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public convertBleDevice(Landroid/bluetooth/le/ScanResult;)Lcn/highlight/tx/ble/data/BleDevice;
    .locals 6

    if-eqz p1, :cond_1

    .line 792
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 793
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    .line 794
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    move-object v3, v0

    .line 798
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v4

    .line 799
    new-instance p1, Lcn/highlight/tx/ble/data/BleDevice;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcn/highlight/tx/ble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    return-object p1

    .line 790
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "scanResult can not be Null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->destroy()V

    :cond_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 1

    .line 767
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    return-void
.end method

.method public disconnect(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 1

    .line 919
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->disconnect(Lcn/highlight/tx/ble/data/BleDevice;)V

    :cond_0
    return-void
.end method

.method public disconnectAllDevice()V
    .locals 1

    .line 925
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->disconnectAllDevice()V

    :cond_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .line 758
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    return-void
.end method

.method public enableLog(Z)Lcn/highlight/tx/ble/BleManager;
    .locals 0

    .line 281
    sput-boolean p1, Lcn/highlight/tx/ble/utils/BleLog;->isPrint:Z

    return-object p0
.end method

.method public getAllConnectedDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/tx/ble/data/BleDevice;",
            ">;"
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 883
    :cond_0
    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;
    .locals 1

    .line 803
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothGatt(Lcn/highlight/tx/ble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 810
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBluetoothGattCharacteristics(Landroid/bluetooth/BluetoothGattService;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattService;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 825
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBluetoothGattServices(Lcn/highlight/tx/ble/data/BleDevice;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/highlight/tx/ble/data/BleDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 817
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBluetoothGatt(Lcn/highlight/tx/ble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 819
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBluetoothManager()Landroid/bluetooth/BluetoothManager;
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public getConnectOverTime()J
    .locals 2

    .line 257
    iget-wide v0, p0, Lcn/highlight/tx/ble/BleManager;->connectOverTime:J

    return-wide v0
.end method

.method public getConnectState(Lcn/highlight/tx/ble/data/BleDevice;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 896
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->context:Landroid/app/Application;

    return-object v0
.end method

.method public getMaxConnectCount()I
    .locals 1

    .line 148
    iget v0, p0, Lcn/highlight/tx/ble/BleManager;->maxConnectCount:I

    return v0
.end method

.method public getMultipleBluetoothController()Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    return-object v0
.end method

.method public getOperateTimeout()I
    .locals 1

    .line 170
    iget v0, p0, Lcn/highlight/tx/ble/BleManager;->operateTimeout:I

    return v0
.end method

.method public getReConnectCount()I
    .locals 1

    .line 190
    iget v0, p0, Lcn/highlight/tx/ble/BleManager;->reConnectCount:I

    return v0
.end method

.method public getReConnectInterval()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lcn/highlight/tx/ble/BleManager;->reConnectInterval:J

    return-wide v0
.end method

.method public getScanRuleConfig()Lcn/highlight/tx/ble/scan/BleScanRuleConfig;
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    return-object v0
.end method

.method public getScanSate()Lcn/highlight/tx/ble/data/BleScanState;
    .locals 1

    .line 877
    invoke-static {}, Lcn/highlight/tx/ble/scan/BleScanner;->getInstance()Lcn/highlight/tx/ble/scan/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->getScanState()Lcn/highlight/tx/ble/data/BleScanState;

    move-result-object v0

    return-object v0
.end method

.method public getSplitWriteNum()I
    .locals 1

    .line 235
    iget v0, p0, Lcn/highlight/tx/ble/BleManager;->splitWriteNum:I

    return v0
.end method

.method public indicate(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 444
    invoke-virtual/range {v0 .. v5}, Lcn/highlight/tx/ble/BleManager;->indicate(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;)V

    return-void
.end method

.method public indicate(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;)V
    .locals 1

    if-eqz p5, :cond_1

    .line 465
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_0

    .line 467
    new-instance p1, Lcn/highlight/tx/ble/exception/OtherException;

    const-string p2, "This device not connect!"

    invoke-direct {p1, p2}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;->onIndicateFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    .line 470
    invoke-virtual {p1, p2, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    .line 471
    invoke-virtual {p1, p5, p3, p4}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->enableCharacteristicIndicate(Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 462
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleIndicateCallbackHighlight can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->context:Landroid/app/Application;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 78
    iput-object p1, p0, Lcn/highlight/tx/ble/BleManager;->context:Landroid/app/Application;

    .line 79
    invoke-virtual {p0}, Lcn/highlight/tx/ble/BleManager;->isSupportBle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcn/highlight/tx/ble/BleManager;->context:Landroid/app/Application;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 82
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 83
    new-instance p1, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-direct {p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;-><init>()V

    iput-object p1, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    .line 84
    new-instance p1, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-direct {p1}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;-><init>()V

    iput-object p1, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    :cond_1
    return-void
.end method

.method public initScanRule(Lcn/highlight/tx/ble/scan/BleScanRuleConfig;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    return-void
.end method

.method public isBlueEnable()Z
    .locals 1

    .line 779
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected(Lcn/highlight/tx/ble/data/BleDevice;)Z
    .locals 1

    .line 903
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getConnectState(Lcn/highlight/tx/ble/data/BleDevice;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 2

    .line 907
    invoke-virtual {p0}, Lcn/highlight/tx/ble/BleManager;->getAllConnectedDevice()Ljava/util/List;

    move-result-object v0

    .line 908
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/tx/ble/data/BleDevice;

    if-eqz v1, :cond_0

    .line 910
    invoke-virtual {v1}, Lcn/highlight/tx/ble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSupportBle()Z
    .locals 2

    .line 750
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->context:Landroid/app/Application;

    .line 751
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notify(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 401
    invoke-virtual/range {v0 .. v5}, Lcn/highlight/tx/ble/BleManager;->notify(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;)V

    return-void
.end method

.method public notify(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;)V
    .locals 1

    if-eqz p5, :cond_1

    .line 422
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_0

    .line 424
    new-instance p1, Lcn/highlight/tx/ble/exception/OtherException;

    const-string p2, "This device not connect!"

    invoke-direct {p1, p2}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;->onNotifyFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    .line 427
    invoke-virtual {p1, p2, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    .line 428
    invoke-virtual {p1, p5, p3, p4}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->enableCharacteristicNotify(Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 419
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleNotifyCallbackHighlight can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;)V
    .locals 1

    if-eqz p4, :cond_1

    .line 658
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_0

    .line 660
    new-instance p1, Lcn/highlight/tx/ble/exception/OtherException;

    const-string p2, "This device is not connected!"

    invoke-direct {p1, p2}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;->onReadFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    .line 663
    invoke-virtual {p1, p2, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    .line 664
    invoke-virtual {p1, p4, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->readCharacteristic(Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 655
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleReadCallbackHighlight can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readRssi(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 680
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_0

    .line 682
    new-instance p1, Lcn/highlight/tx/ble/exception/OtherException;

    const-string v0, "This device is not connected!"

    invoke-direct {p1, v0}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;->onRssiFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->readRemoteRssi(Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;)V

    :goto_0
    return-void

    .line 677
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleRssiCallbackHighlight can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeConnectGattCallback(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 829
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 831
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeConnectGattCallback()V

    :cond_0
    return-void
.end method

.method public removeIndicateCallback(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 855
    invoke-virtual {p1, p2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeIndicateCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeMtuChangedCallback(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 841
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeMtuChangedCallback()V

    :cond_0
    return-void
.end method

.method public removeNotifyCallback(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 847
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 849
    invoke-virtual {p1, p2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeNotifyCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeReadCallback(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 865
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 867
    invoke-virtual {p1, p2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeReadCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeRssiCallback(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 835
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 837
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeRssiCallback()V

    :cond_0
    return-void
.end method

.method public removeWriteCallback(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/BleManager;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 861
    invoke-virtual {p1, p2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeWriteCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestConnectionPriority(Lcn/highlight/tx/ble/data/BleDevice;I)Z
    .locals 3

    .line 733
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 734
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 738
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->requestConnectionPriority(I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public scan(Lcn/highlight/tx/ble/callback/BleScanCallback;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcn/highlight/tx/ble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    .line 296
    invoke-static {v0}, Lcn/highlight/tx/ble/utils/BleLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleScanCallback;->onScanStarted(Z)V

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getServiceUuids()[Ljava/util/UUID;

    move-result-object v2

    .line 302
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getDeviceNames()[Ljava/lang/String;

    move-result-object v3

    .line 303
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    .line 304
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->isFuzzy()Z

    move-result v5

    .line 305
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getScanTimeOut()J

    move-result-wide v6

    .line 307
    invoke-static {}, Lcn/highlight/tx/ble/scan/BleScanner;->getInstance()Lcn/highlight/tx/ble/scan/BleScanner;

    move-result-object v1

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcn/highlight/tx/ble/scan/BleScanner;->scan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcn/highlight/tx/ble/callback/BleScanCallback;)V

    return-void

    .line 292
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BleScanCallback can not be Null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanAndConnect(Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcn/highlight/tx/ble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    .line 321
    invoke-static {v0}, Lcn/highlight/tx/ble/utils/BleLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;->onScanStarted(Z)V

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getServiceUuids()[Ljava/util/UUID;

    move-result-object v2

    .line 327
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getDeviceNames()[Ljava/lang/String;

    move-result-object v3

    .line 328
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    .line 329
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->isFuzzy()Z

    move-result v5

    .line 330
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->bleScanRuleConfig:Lcn/highlight/tx/ble/scan/BleScanRuleConfig;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanRuleConfig;->getScanTimeOut()J

    move-result-wide v6

    .line 332
    invoke-static {}, Lcn/highlight/tx/ble/scan/BleScanner;->getInstance()Lcn/highlight/tx/ble/scan/BleScanner;

    move-result-object v1

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcn/highlight/tx/ble/scan/BleScanner;->scanAndConnect([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcn/highlight/tx/ble/callback/BleScanAndConnectCallback;)V

    return-void

    .line 317
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BleScanAndConnectCallback can not be Null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConnectOverTime(J)Lcn/highlight/tx/ble/BleManager;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x64

    .line 270
    :cond_0
    iput-wide p1, p0, Lcn/highlight/tx/ble/BleManager;->connectOverTime:J

    return-object p0
.end method

.method public setMaxConnectCount(I)Lcn/highlight/tx/ble/BleManager;
    .locals 1

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    const/4 p1, 0x7

    .line 160
    :cond_0
    iput p1, p0, Lcn/highlight/tx/ble/BleManager;->maxConnectCount:I

    return-object p0
.end method

.method public setMtu(Lcn/highlight/tx/ble/data/BleDevice;ILcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;)V
    .locals 1

    if-eqz p3, :cond_3

    const/16 v0, 0x200

    if-le p2, v0, :cond_0

    const-string p1, "requiredMtu should lower than 512 !"

    .line 703
    invoke-static {p1}, Lcn/highlight/tx/ble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 704
    new-instance p2, Lcn/highlight/tx/ble/exception/OtherException;

    invoke-direct {p2, p1}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;->onSetMTUFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    return-void

    :cond_0
    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    const-string p1, "requiredMtu should higher than 23 !"

    .line 709
    invoke-static {p1}, Lcn/highlight/tx/ble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 710
    new-instance p2, Lcn/highlight/tx/ble/exception/OtherException;

    invoke-direct {p2, p1}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;->onSetMTUFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_2

    .line 716
    new-instance p1, Lcn/highlight/tx/ble/exception/OtherException;

    const-string p2, "This device is not connected!"

    invoke-direct {p1, p2}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;->onSetMTUFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 718
    :cond_2
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->setMtu(ILcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;)V

    :goto_0
    return-void

    .line 699
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleMtuChangedCallbackHighlight can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOperateTimeout(I)Lcn/highlight/tx/ble/BleManager;
    .locals 0

    .line 180
    iput p1, p0, Lcn/highlight/tx/ble/BleManager;->operateTimeout:I

    return-object p0
.end method

.method public setReConnectCount(I)Lcn/highlight/tx/ble/BleManager;
    .locals 2

    const-wide/16 v0, 0x1388

    .line 209
    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/tx/ble/BleManager;->setReConnectCount(IJ)Lcn/highlight/tx/ble/BleManager;

    move-result-object p1

    return-object p1
.end method

.method public setReConnectCount(IJ)Lcn/highlight/tx/ble/BleManager;
    .locals 3

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    move-wide p2, v0

    .line 223
    :cond_1
    iput p1, p0, Lcn/highlight/tx/ble/BleManager;->reConnectCount:I

    .line 224
    iput-wide p2, p0, Lcn/highlight/tx/ble/BleManager;->reConnectInterval:J

    return-object p0
.end method

.method public setSplitWriteNum(I)Lcn/highlight/tx/ble/BleManager;
    .locals 0

    if-lez p1, :cond_0

    .line 246
    iput p1, p0, Lcn/highlight/tx/ble/BleManager;->splitWriteNum:I

    :cond_0
    return-object p0
.end method

.method public stopIndicate(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/highlight/tx/ble/BleManager;->stopIndicate(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public stopIndicate(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 546
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object v0

    .line 547
    invoke-virtual {v0, p2, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p2

    .line 548
    invoke-virtual {p2, p4}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->disableCharacteristicIndicate(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 550
    invoke-virtual {p1, p3}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeIndicateCallback(Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public stopNotify(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/highlight/tx/ble/BleManager;->stopNotify(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public stopNotify(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 506
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object v0

    .line 507
    invoke-virtual {v0, p2, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object p2

    .line 508
    invoke-virtual {p2, p4}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->disableCharacteristicNotify(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 510
    invoke-virtual {p1, p3}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeNotifyCallback(Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public write(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 569
    invoke-virtual/range {v0 .. v6}, Lcn/highlight/tx/ble/BleManager;->write(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    return-void
.end method

.method public write(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V
    .locals 10

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v9, p6

    .line 589
    invoke-virtual/range {v0 .. v9}, Lcn/highlight/tx/ble/BleManager;->write(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZZJLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    return-void
.end method

.method public write(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZZJLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V
    .locals 10

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v8, p9

    if-eqz v8, :cond_4

    if-nez v4, :cond_0

    const-string v0, "data is Null!"

    .line 618
    invoke-static {v0}, Lcn/highlight/tx/ble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 619
    new-instance v1, Lcn/highlight/tx/ble/exception/OtherException;

    invoke-direct {v1, v0}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;->onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    return-void

    .line 623
    :cond_0
    array-length v0, v4

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    if-nez p5, :cond_1

    const-string v0, "Be careful: data\'s length beyond 20! Ensure MTU higher than 23, or use spilt write!"

    .line 624
    invoke-static {v0}, Lcn/highlight/tx/ble/utils/BleLog;->w(Ljava/lang/String;)V

    :cond_1
    move-object v9, p0

    .line 627
    iget-object v0, v9, Lcn/highlight/tx/ble/BleManager;->multipleBluetoothController:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object v1

    if-nez v1, :cond_2

    .line 629
    new-instance v0, Lcn/highlight/tx/ble/exception/OtherException;

    const-string v1, "This device not connect!"

    invoke-direct {v0, v1}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;->onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 631
    array-length v0, v4

    invoke-virtual {p0}, Lcn/highlight/tx/ble/BleManager;->getSplitWriteNum()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 632
    new-instance v0, Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-direct {v0}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;-><init>()V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->splitWrite(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Ljava/lang/String;Ljava/lang/String;[BZJLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    goto :goto_0

    .line 635
    :cond_3
    invoke-virtual {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->newBleConnector()Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object v0

    move-object v1, p2

    .line 636
    invoke-virtual {v0, p2, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;)Lcn/highlight/tx/ble/bluetooth/BleConnector;

    move-result-object v0

    .line 637
    invoke-virtual {v0, p4, v8, p3}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->writeCharacteristic([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    move-object v9, p0

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleWriteCallbackHighlight can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
