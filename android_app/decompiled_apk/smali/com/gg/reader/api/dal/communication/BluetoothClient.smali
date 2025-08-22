.class public Lcom/gg/reader/api/dal/communication/BluetoothClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "BluetoothClient.java"


# static fields
.field private static final SPP_UUID:Ljava/util/UUID;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

.field private count:I

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private inputStream:Ljava/io/InputStream;

.field private lastUrgentData:Ljava/util/Date;

.field private outputStream:Ljava/io/OutputStream;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reconnection:I

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field private tempReConCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 32
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->SPP_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    .line 31
    const-class v0, Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lastUrgentData:Ljava/util/Date;

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->count:I

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->reconnection:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->tempReConCount:I

    .line 310
    new-instance v0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;-><init>(Lcom/gg/reader/api/dal/communication/BluetoothClient;)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->receiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/BluetoothClient;)Ljava/io/InputStream;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/communication/BluetoothClient;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->isRemoteClosed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/gg/reader/api/dal/communication/BluetoothClient;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lastUrgentData:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$302(Lcom/gg/reader/api/dal/communication/BluetoothClient;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->count:I

    return p1
.end method

.method static synthetic access$400(Lcom/gg/reader/api/dal/communication/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method private isRemoteClosed()Z
    .locals 8

    .line 218
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 222
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lastUrgentData:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->count:I

    mul-int/lit16 v5, v4, 0xbb8

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    add-int/2addr v4, v1

    .line 224
    :try_start_0
    iput v4, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->count:I

    .line 225
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;-><init>()V

    invoke-virtual {p0, v2}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->send(Lcom/gg/reader/api/protocol/gx/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 229
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lastUrgentData:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private openBluetoothSetting(Landroid/content/Context;)V
    .locals 2

    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 420
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 162
    :try_start_0
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->keepReceived:Z

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    .line 164
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 166
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->inputStream:Ljava/io/InputStream;

    .line 167
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    .line 169
    :cond_0
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 173
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public closeBluetooth()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBondDevice()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    .line 119
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 128
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 129
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->inputStream:Ljava/io/InputStream;

    .line 130
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->keepReceived:Z

    .line 132
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lastUrgentData:Ljava/util/Date;

    .line 133
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->startReceive()V

    .line 134
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->startProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    :goto_0
    return v0

    .line 140
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 151
    const-class v1, Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_2

    .line 63
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object p2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->device:Landroid/bluetooth/BluetoothDevice;

    sget-object p2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 68
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->inputStream:Ljava/io/InputStream;

    .line 69
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->keepReceived:Z

    .line 71
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lastUrgentData:Ljava/util/Date;

    .line 72
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->startReceive()V

    .line 73
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->startProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_3
    :goto_1
    return v0

    .line 79
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->socket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 90
    const-class p2, Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
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

.method public openBluetooth()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    return-void
.end method

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerBluetoothScanReceiver(Landroid/content/Context;)V
    .locals 3

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 353
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public scanBluetooth(Landroid/content/Context;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->TAG:Ljava/lang/String;

    const-string v0, "\u5f53\u524d\u8bbe\u5907\u6ca1\u6709\u84dd\u7259\u6a21\u5757"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 196
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->isRs485:Z

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public send([B)V
    .locals 1

    .line 183
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 189
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setBufferSize(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDisPlay(Landroid/content/Context;I)V
    .locals 2

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    .line 394
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startReceive()V
    .locals 1

    .line 236
    new-instance v0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;-><init>(Lcom/gg/reader/api/dal/communication/BluetoothClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startScanner()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_0
    return-void
.end method

.method public stopScanner()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method public unRegisterBluetoothScanReceiver(Landroid/content/Context;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
