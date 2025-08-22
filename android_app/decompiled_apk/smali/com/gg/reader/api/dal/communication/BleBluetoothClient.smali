.class public Lcom/gg/reader/api/dal/communication/BleBluetoothClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "BleBluetoothClient.java"


# static fields
.field private static final DESCRIPTOR:Ljava/util/UUID;


# instance fields
.field private NOTIFY_UUID:Ljava/util/UUID;

.field private SERVER_UUID:Ljava/util/UUID;

.field private final TAG:Ljava/lang/String;

.field private WRITE_UUID:Ljava/util/UUID;

.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field public connectCallBack:Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;

.field private context:Landroid/content/Context;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private deviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private isPackage:Z

.field leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mScanRunnable:Ljava/lang/Runnable;

.field private mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private manager:Landroid/bluetooth/BluetoothManager;

.field private mtu:I

.field public scanCallBack:Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueScanCallBack;

.field private scanHandler:Landroid/os/Handler;

.field private writeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 44
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->DESCRIPTOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    .line 35
    const-class v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->TAG:Ljava/lang/String;

    const-string v0, "0000fff0-0000-1000-8000-00805F9B34FB"

    .line 41
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->SERVER_UUID:Ljava/util/UUID;

    const-string v0, "0000fff1-0000-1000-8000-00805F9B34FB"

    .line 42
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->NOTIFY_UUID:Ljava/util/UUID;

    const-string v0, "0000fff2-0000-1000-8000-00805F9B34FB"

    .line 43
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->WRITE_UUID:Ljava/util/UUID;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->deviceMap:Ljava/util/Map;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->scanHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    .line 52
    iput-wide v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->writeTime:J

    const/16 v0, 0x200

    .line 53
    iput v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mtu:I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->isPackage:Z

    .line 131
    new-instance v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$1;-><init>(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 157
    new-instance v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$2;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$2;-><init>(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mScanRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;-><init>(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 57
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->context:Landroid/content/Context;

    .line 58
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->context:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->manager:Landroid/bluetooth/BluetoothManager;

    .line 59
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->manager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->deviceMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->requestMtu(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p0

    return p0
.end method

.method private requestMtu(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 441
    iget v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mtu:I

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->keepReceived:Z

    .line 345
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 347
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 348
    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 349
    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 350
    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 352
    :cond_0
    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    .line 353
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 355
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

.method public enableTxNotification()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->SERVER_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->WRITE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 275
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->NOTIFY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 276
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 278
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_0

    .line 282
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_1

    .line 284
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 287
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    return-void
.end method

.method public getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getNOTIFY_UUID()Ljava/util/UUID;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->NOTIFY_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getSERVER_UUID()Ljava/util/UUID;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->SERVER_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getWRITE_UUID()Ljava/util/UUID;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->WRITE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public isBleEnable(Landroid/content/Context;)Z
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->isSupportBle(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public isSupportBle(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 7

    .line 295
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 298
    :cond_0
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 299
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 301
    :cond_1
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_2

    .line 302
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 303
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 305
    :cond_2
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->deviceMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 306
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->deviceMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 308
    :cond_3
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_6

    .line 311
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_4

    .line 312
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_1

    .line 313
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_5

    .line 314
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_1

    .line 316
    :cond_5
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :goto_1
    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->keepReceived:Z

    .line 320
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->startProcess()V

    return p1

    :cond_6
    return v0
.end method

.method public open(Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/net/Socket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openBluetoothSetting()V
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scanBluetooth(ZJ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->scanHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 148
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->scanHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 2

    .line 413
    const-class v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    monitor-enter v0

    .line 415
    :try_start_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 416
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->isRs485:Z

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 418
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public send([B)V
    .locals 5

    .line 360
    const-class v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_2

    .line 363
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->isPackage:Z

    if-eqz v1, :cond_1

    .line 364
    array-length v1, p1

    div-int/lit8 v1, v1, 0x14

    .line 365
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x14

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    mul-int/lit8 v3, v2, 0x14

    add-int/lit8 v4, v3, 0x14

    .line 386
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 387
    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 388
    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 389
    iget-wide v3, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->writeTime:J

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 394
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 395
    iget-wide v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->writeTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 405
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setBufferSize(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setMtu(I)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->mtu:I

    return-void
.end method

.method public setNOTIFY_UUID(Ljava/util/UUID;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->NOTIFY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public setPartPackage(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->isPackage:Z

    return-void
.end method

.method public setSERVER_UUID(Ljava/util/UUID;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->SERVER_UUID:Ljava/util/UUID;

    return-void
.end method

.method public setWRITE_UUID(Ljava/util/UUID;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->WRITE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->writeTime:J

    return-void
.end method

.method public stopScanBluetooth()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method
