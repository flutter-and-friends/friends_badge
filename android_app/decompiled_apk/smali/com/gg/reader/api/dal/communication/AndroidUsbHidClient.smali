.class public Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "AndroidUsbHidClient.java"


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.android.gx.USB_PERMISSION"


# instance fields
.field public deviceListener:Lcom/gg/reader/api/dal/communication/OnUsbHidDeviceListener;

.field private mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mOutUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field private mUsbInterface:Landroid/hardware/usb/UsbInterface;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbName:Ljava/lang/String;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbStateChange:Landroid/content/BroadcastReceiver;

.field private readTimeout:I

.field public stateListener:Lcom/gg/reader/api/dal/communication/OnUsbHidStateListener;

.field private writeTimeout:I


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/16 v0, 0x3e8

    .line 41
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->readTimeout:I

    .line 42
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->writeTimeout:I

    .line 46
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$1;-><init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 386
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;-><init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 125
    iput-object p2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    .line 126
    iput-object p3, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 127
    iput-object p4, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mContext:Landroid/content/Context;

    .line 128
    iput-object p5, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 129
    :goto_0
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 130
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {p2, p1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object p2

    .line 131
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result p3

    .line 132
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result p4

    .line 133
    iget-object p5, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mInUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/4 v0, 0x3

    if-nez p5, :cond_0

    const/16 p5, 0x80

    if-ne p3, p5, :cond_0

    if-ne p4, v0, :cond_0

    .line 134
    iput-object p2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mInUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 136
    :cond_0
    iget-object p5, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mOutUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-nez p5, :cond_1

    if-nez p3, :cond_1

    if-ne p4, v0, :cond_1

    .line 137
    iput-object p2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mOutUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->openDevice()V

    return-void
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->onConnectFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Landroid/hardware/usb/UsbEndpoint;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mInUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->readTimeout:I

    return p0
.end method

.method static synthetic access$400(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object p0
.end method

.method public static enumerate(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v7

    .line 91
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 93
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/hardware/usb/UsbDevice;

    if-eqz v11, :cond_1

    .line 94
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_1

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    const/16 v2, 0x2421

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 95
    :goto_0
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 96
    invoke-virtual {v11, v12}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v1

    if-nez v1, :cond_2

    .line 98
    new-instance v13, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    move-object v1, v13

    move-object v2, v11

    move-object v4, v0

    move-object v5, p0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    invoke-interface {v8, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-object v8
.end method

.method public static enumerate(Landroid/content/Context;II)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v7

    .line 69
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 71
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/hardware/usb/UsbDevice;

    if-eqz v11, :cond_3

    .line 72
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    move/from16 v12, p1

    if-ne v1, v12, :cond_4

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    move/from16 v13, p2

    if-ne v1, v13, :cond_1

    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 73
    :goto_1
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v14, v1, :cond_1

    .line 74
    invoke-virtual {v11, v14}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v1

    if-nez v1, :cond_2

    .line 76
    new-instance v15, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    move-object v1, v15

    move-object v2, v11

    move-object v4, v0

    move-object/from16 v5, p0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-interface {v8, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    move/from16 v12, p1

    :cond_4
    move/from16 v13, p2

    goto :goto_0

    :cond_5
    return-object v8
.end method

.method public static getUsbHidList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->enumerate(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getUsbHidList(Landroid/content/Context;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {p0, p1, p2}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->enumerate(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private onConnectFailed()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$3;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$3;-><init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private openDevice()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 180
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->onConnectFailed()V

    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->onConnectFailed()V

    return-void

    .line 188
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->setInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 191
    :cond_2
    iput-boolean v2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->keepReceived:Z

    .line 192
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->startReceive()V

    .line 193
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->startProcess()V

    .line 194
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;

    invoke-direct {v1, p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;-><init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 242
    :try_start_0
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->keepReceived:Z

    .line 243
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 252
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v1}, Lcom/gg/reader/api/utils/RingBuffer;->Clear()V

    .line 253
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

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getReadTimeout()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->readTimeout:I

    return v0
.end method

.method public getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getUsbName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbName:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->writeTimeout:I

    return v0
.end method

.method public hasPermission()V
    .locals 4

    .line 167
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mHandler:Landroid/os/Handler;

    .line 168
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.gx.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->openDevice()V

    :goto_0
    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->hasPermission()V

    const/4 p1, 0x1

    return p1
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerUsbState(Landroid/content/Context;)V
    .locals 2

    const-string v0, "usb"

    .line 374
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 376
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 3

    .line 310
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->isRs485:Z

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "1"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->getRs485Address()I

    move-result v1

    iput v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 317
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->isRs485:Z

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 320
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AndroidUsbHidClient]send error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    .line 322
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
    .locals 9

    .line 290
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mOutUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v1

    .line 293
    array-length v2, p1

    div-int/2addr v2, v1

    .line 294
    array-length v3, p1

    rem-int/2addr v3, v1

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    mul-int v5, v4, v1

    add-int v6, v1, v5

    .line 298
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 299
    iget-object v6, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v7, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mOutUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    array-length v8, v5

    invoke-virtual {v6, v7, v5, v8, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 302
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
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

.method public setReadTimeout(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->readTimeout:I

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->writeTimeout:I

    return-void
.end method

.method public startReceive()V
    .locals 1

    .line 342
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$4;-><init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterState(Landroid/content/Context;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
