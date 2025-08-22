.class public Lcom/android/usbserial/client/AndroidUsbSerialClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "AndroidUsbSerialClient.java"

# interfaces
.implements Lcom/android/usbserial/util/SerialInputOutputManager$Listener;


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.android.gx.USB_PERMISSION"


# instance fields
.field public deviceListener:Lcom/android/usbserial/client/OnUsbSerialDeviceListener;

.field private mBaudRate:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbName:Ljava/lang/String;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbStateChange:Landroid/content/BroadcastReceiver;

.field public stateListener:Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;

.field private usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

.field private writeTimeout:I


# direct methods
.method private constructor <init>(Lcom/android/usbserial/driver/UsbSerialPort;Landroid/content/Context;Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const v0, 0x1c200

    .line 41
    iput v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    const/16 v0, 0x64

    .line 42
    iput v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    .line 45
    new-instance v0, Lcom/android/usbserial/client/AndroidUsbSerialClient$1;

    invoke-direct {v0, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$1;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    new-instance v0, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;

    invoke-direct {v0, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    .line 148
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    .line 149
    iput-object p2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 151
    iput-object p4, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->openDevice()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->onConnectFailed()V

    return-void
.end method

.method public static getUsbDevicesList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevicesMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getUsbDevicesList(Landroid/content/Context;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevicesMap(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static getUsbDevicesMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/android/usbserial/driver/UsbSerialProber;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/usbserial/driver/UsbSerialDriver;

    .line 99
    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v4

    .line 100
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/usbserial/driver/UsbSerialPort;

    .line 101
    invoke-interface {v5}, Lcom/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v6

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDriverName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_vid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "&pid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    new-instance v7, Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {v7, v5, p0, v0, v6}, Lcom/android/usbserial/client/AndroidUsbSerialClient;-><init>(Lcom/android/usbserial/driver/UsbSerialPort;Landroid/content/Context;Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V

    .line 104
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static getUsbDevicesMap(Landroid/content/Context;II)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/usbserial/client/AndroidUsbSerialClient;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    invoke-static {}, Lcom/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/android/usbserial/driver/UsbSerialProber;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object v1

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/usbserial/driver/UsbSerialDriver;

    .line 118
    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v4

    .line 119
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/usbserial/driver/UsbSerialPort;

    .line 120
    invoke-interface {v5}, Lcom/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v7

    if-ne v7, p1, :cond_2

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    if-ne v7, p2, :cond_2

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDriverName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_vid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "&pid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    new-instance v7, Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {v7, v5, p0, v0, v6}, Lcom/android/usbserial/client/AndroidUsbSerialClient;-><init>(Lcom/android/usbserial/driver/UsbSerialPort;Landroid/content/Context;Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V

    .line 124
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private hasPermission()V
    .locals 4

    .line 155
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mHandler:Landroid/os/Handler;

    .line 156
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.gx.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->openDevice()V

    :goto_0
    return-void
.end method

.method private onConnectFailed()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/usbserial/client/AndroidUsbSerialClient$3;

    invoke-direct {v1, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$3;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private openDevice()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->onConnectFailed()V

    return-void

    .line 173
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v1, v0}, Lcom/android/usbserial/driver/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 174
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    iget v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/usbserial/driver/UsbSerialPort;->setParameters(IIII)V

    .line 175
    new-instance v0, Lcom/android/usbserial/util/SerialInputOutputManager;

    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-direct {v0, v1, p0}, Lcom/android/usbserial/util/SerialInputOutputManager;-><init>(Lcom/android/usbserial/driver/UsbSerialPort;Lcom/android/usbserial/util/SerialInputOutputManager$Listener;)V

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

    .line 176
    iput-boolean v4, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->keepReceived:Z

    .line 177
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

    invoke-virtual {v0}, Lcom/android/usbserial/util/SerialInputOutputManager;->start()V

    .line 178
    invoke-virtual {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->startProcess()V

    .line 179
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;

    invoke-direct {v1, p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient$2;-><init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->keepReceived:Z

    .line 227
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mSerialIoManager:Lcom/android/usbserial/util/SerialInputOutputManager;

    invoke-virtual {v0}, Lcom/android/usbserial/util/SerialInputOutputManager;->stop()V

    .line 230
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_1
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 237
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v1}, Lcom/gg/reader/api/utils/RingBuffer;->Clear()V

    .line 238
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getBaudRate()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    return v0
.end method

.method public getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    return-object v0
.end method

.method public getUsbName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbName:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    return v0
.end method

.method public onNewData([B)V
    .locals 4

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    :try_start_1
    array-length v1, p1

    iget-object v2, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 292
    iget-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 293
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public onRunError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->hasPermission()V

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

    .line 305
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    .line 263
    :try_start_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 264
    iget-boolean v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->isRs485:Z

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/usbserial/client/AndroidUsbSerialClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public send([B)V
    .locals 6

    .line 244
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Lcom/android/usbserial/driver/UsbSerialPort;->getWriteEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    .line 246
    array-length v1, p1

    div-int/2addr v1, v0

    .line 247
    array-length v2, p1

    rem-int/2addr v2, v0

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int v3, v2, v0

    add-int v4, v0, v3

    .line 250
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 252
    :try_start_0
    iget-object v4, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->usbSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    iget v5, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    invoke-interface {v4, v3, v5}, Lcom/android/usbserial/driver/UsbSerialPort;->write([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 254
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBaudRate(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mBaudRate:I

    return-void
.end method

.method public setBufferSize(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->writeTimeout:I

    return-void
.end method

.method public setmUsbName(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbName:Ljava/lang/String;

    return-void
.end method

.method public unregisterState(Landroid/content/Context;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->mUsbStateChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
