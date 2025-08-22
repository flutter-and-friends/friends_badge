.class public Lcn/highlight/tx/BaseTxManager;
.super Ljava/lang/Object;
.source "BaseTxManager.java"


# static fields
.field private static final UUID_NOTIFY:Ljava/lang/String; = "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

.field private static final UUID_SERVICE:Ljava/lang/String; = "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

.field private static final UUID_WRITE:Ljava/lang/String; = "6e400002-b5a3-f393-e0a9-e50e24dcca9e"


# instance fields
.field private ble:Lcn/highlight/tx/ble/data/BleDevice;

.field private handler:Landroid/os/Handler;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mListener:Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

.field private mSerialIoManager:Lcn/highlight/tx/usb/SerialInputOutputManager;

.field private mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

.field private onDataReceivedTag:Lcn/highlight/tx/listener/OnDataReceivedTag;

.field private onOpen:Lcn/highlight/tx/listener/OnOpen;

.field private usbManager:Landroid/hardware/usb/UsbManager;

.field private usbSerialPort:Lcn/highlight/tx/usb/UsbSerialPort;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 311
    new-instance v0, Lcn/highlight/tx/BaseTxManager$5;

    invoke-direct {v0, p0}, Lcn/highlight/tx/BaseTxManager$5;-><init>(Lcn/highlight/tx/BaseTxManager;)V

    iput-object v0, p0, Lcn/highlight/tx/BaseTxManager;->handler:Landroid/os/Handler;

    .line 361
    new-instance v0, Lcn/highlight/tx/BaseTxManager$6;

    invoke-direct {v0, p0}, Lcn/highlight/tx/BaseTxManager$6;-><init>(Lcn/highlight/tx/BaseTxManager;)V

    iput-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mListener:Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/tx/BaseTxManager;)Lcn/highlight/tx/listener/OnOpen;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    return-object p0
.end method

.method static synthetic access$100(Lcn/highlight/tx/BaseTxManager;[B)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcn/highlight/tx/BaseTxManager;->resData([B)V

    return-void
.end method

.method static synthetic access$202(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/data/BleDevice;
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager;->ble:Lcn/highlight/tx/ble/data/BleDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcn/highlight/tx/BaseTxManager;->oPenNotify(Lcn/highlight/tx/ble/data/BleDevice;)V

    return-void
.end method

.method static synthetic access$402(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/usb/UsbSerialPort;)Lcn/highlight/tx/usb/UsbSerialPort;
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager;->usbSerialPort:Lcn/highlight/tx/usb/UsbSerialPort;

    return-object p1
.end method

.method static synthetic access$500(Lcn/highlight/tx/BaseTxManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/highlight/tx/BaseTxManager;->usbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method static synthetic access$600(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/usb/UsbSerialPort;Landroid/hardware/usb/UsbManager;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcn/highlight/tx/BaseTxManager;->initUsb(Lcn/highlight/tx/usb/UsbSerialPort;Landroid/hardware/usb/UsbManager;)V

    return-void
.end method

.method private initUsb(Lcn/highlight/tx/usb/UsbSerialPort;Landroid/hardware/usb/UsbManager;)V
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 333
    :try_start_0
    invoke-interface {p1}, Lcn/highlight/tx/usb/UsbSerialPort;->getDriver()Lcn/highlight/tx/usb/UsbSerialDriver;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/tx/usb/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p2

    if-nez p2, :cond_2

    .line 335
    iget-object p2, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    if-eqz p2, :cond_1

    .line 336
    iget-object p2, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    const-string v2, "\u8fde\u63a5usb\u4e32\u53e3\u8bbe\u5907\u5931\u8d25"

    invoke-interface {p2, v1, v2}, Lcn/highlight/tx/listener/OnOpen;->OnOpenStatus(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 340
    :cond_2
    invoke-interface {p1, p2}, Lcn/highlight/tx/usb/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V

    const p2, 0x1c200

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 341
    invoke-interface {p1, p2, v2, v1, v3}, Lcn/highlight/tx/usb/UsbSerialPort;->setParameters(IIII)V

    .line 342
    invoke-direct {p0}, Lcn/highlight/tx/BaseTxManager;->onDeviceStateChange()V

    .line 343
    iget-object p2, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    if-eqz p2, :cond_4

    .line 344
    iget-object p2, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    invoke-interface {p2, v3, v0}, Lcn/highlight/tx/listener/OnOpen;->OnOpenStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 347
    iget-object p2, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    if-eqz p2, :cond_3

    .line 348
    invoke-interface {p2, v1, v0}, Lcn/highlight/tx/listener/OnOpen;->OnOpenStatus(ILjava/lang/String;)V

    .line 351
    :cond_3
    :try_start_1
    invoke-interface {p1}, Lcn/highlight/tx/usb/UsbSerialPort;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 353
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private oPenNotify(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 4

    const-wide/16 v0, 0xc8

    .line 289
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 293
    :goto_0
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    new-instance v1, Lcn/highlight/tx/BaseTxManager$4;

    invoke-direct {v1, p0}, Lcn/highlight/tx/BaseTxManager$4;-><init>(Lcn/highlight/tx/BaseTxManager;)V

    const-string v2, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    const-string v3, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-virtual {v0, p1, v2, v3, v1}, Lcn/highlight/tx/ble/BleManager;->notify(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;)V

    return-void
.end method

.method private onDeviceStateChange()V
    .locals 0

    .line 400
    invoke-direct {p0}, Lcn/highlight/tx/BaseTxManager;->stopIoManager()V

    .line 401
    invoke-direct {p0}, Lcn/highlight/tx/BaseTxManager;->startIoManager()V

    return-void
.end method

.method private resData([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    new-instance v0, Lcn/highlight/tx/TxData;

    invoke-direct {v0, p1}, Lcn/highlight/tx/TxData;-><init>([B)V

    .line 442
    invoke-virtual {v0}, Lcn/highlight/tx/TxData;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager;->onDataReceivedTag:Lcn/highlight/tx/listener/OnDataReceivedTag;

    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {v0}, Lcn/highlight/tx/TxData;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/tx/listener/OnDataReceivedTag;->onData([B)V

    :cond_1
    return-void
.end method

.method private startIoManager()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->usbSerialPort:Lcn/highlight/tx/usb/UsbSerialPort;

    if-eqz v0, :cond_0

    .line 380
    new-instance v1, Lcn/highlight/tx/usb/SerialInputOutputManager;

    iget-object v2, p0, Lcn/highlight/tx/BaseTxManager;->mListener:Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

    invoke-direct {v1, v0, v2}, Lcn/highlight/tx/usb/SerialInputOutputManager;-><init>(Lcn/highlight/tx/usb/UsbSerialPort;Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;)V

    iput-object v1, p0, Lcn/highlight/tx/BaseTxManager;->mSerialIoManager:Lcn/highlight/tx/usb/SerialInputOutputManager;

    .line 381
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcn/highlight/tx/BaseTxManager;->mSerialIoManager:Lcn/highlight/tx/usb/SerialInputOutputManager;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private stopIoManager()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialIoManager:Lcn/highlight/tx/usb/SerialInputOutputManager;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->stop()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialIoManager:Lcn/highlight/tx/usb/SerialInputOutputManager;

    :cond_0
    return-void
.end method

.method private writeDevice(Lcn/highlight/tx/ble/data/BleDevice;[BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V
    .locals 8

    const-wide/16 v0, 0x32

    .line 276
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 280
    :goto_0
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v1

    const/4 v6, 0x0

    const-string v3, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    const-string v4, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcn/highlight/tx/ble/BleManager;->write(Lcn/highlight/tx/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    return-void
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    .line 197
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->cancelScan()V

    return-void
.end method

.method public conn(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/listener/OnConnStatus;)V
    .locals 2

    .line 204
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    new-instance v1, Lcn/highlight/tx/BaseTxManager$3;

    invoke-direct {v1, p0, p2}, Lcn/highlight/tx/BaseTxManager$3;-><init>(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/listener/OnConnStatus;)V

    invoke-virtual {v0, p1, v1}, Lcn/highlight/tx/ble/BleManager;->connect(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public disConn()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->ble:Lcn/highlight/tx/ble/data/BleDevice;

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->disconnectAllDevice()V

    :cond_0
    return-void
.end method

.method public free()V
    .locals 2

    .line 474
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-virtual {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->closeSerialPort()V

    .line 476
    iput-object v1, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    .line 479
    :cond_0
    invoke-direct {p0}, Lcn/highlight/tx/BaseTxManager;->stopIoManager()V

    .line 480
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->usbSerialPort:Lcn/highlight/tx/usb/UsbSerialPort;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 482
    :try_start_1
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->usbSerialPort:Lcn/highlight/tx/usb/UsbSerialPort;

    invoke-interface {v0}, Lcn/highlight/tx/usb/UsbSerialPort;->close()V

    .line 483
    iput-object v1, p0, Lcn/highlight/tx/BaseTxManager;->usbSerialPort:Lcn/highlight/tx/usb/UsbSerialPort;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 485
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 489
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->ble:Lcn/highlight/tx/ble/data/BleDevice;

    if-eqz v0, :cond_2

    .line 490
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->disconnectAllDevice()V

    .line 491
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public init232SerialPort(Ljava/io/File;I)Lcn/highlight/tx/serialport/SerialPortTxManager;
    .locals 2

    .line 81
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-direct {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;-><init>()V

    iput-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    if-nez p1, :cond_1

    .line 86
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    return-object p1

    .line 89
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    new-instance v1, Lcn/highlight/tx/BaseTxManager$1;

    invoke-direct {v1, p0}, Lcn/highlight/tx/BaseTxManager$1;-><init>(Lcn/highlight/tx/BaseTxManager;)V

    invoke-virtual {v0, v1}, Lcn/highlight/tx/serialport/SerialPortTxManager;->setOnOpenSerialPortListener(Lcn/highlight/tx/listener/OnOpenSerialPortListener;)Lcn/highlight/tx/serialport/SerialPortTxManager;

    .line 114
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    new-instance v1, Lcn/highlight/tx/BaseTxManager$2;

    invoke-direct {v1, p0}, Lcn/highlight/tx/BaseTxManager$2;-><init>(Lcn/highlight/tx/BaseTxManager;)V

    invoke-virtual {v0, v1}, Lcn/highlight/tx/serialport/SerialPortTxManager;->setOnSerialPortDataListener(Lcn/highlight/tx/listener/OnSerialPortDataListener;)Lcn/highlight/tx/serialport/SerialPortTxManager;

    .line 127
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-virtual {v0, p1, p2}, Lcn/highlight/tx/serialport/SerialPortTxManager;->openSerialPort(Ljava/io/File;I)Z

    .line 128
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    return-object p1
.end method

.method public initBle(Landroid/app/Application;)V
    .locals 3

    .line 176
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/BleManager;->init(Landroid/app/Application;)V

    .line 177
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/BleManager;->enableLog(Z)Lcn/highlight/tx/ble/BleManager;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x7d0

    .line 179
    invoke-virtual {p1, v0, v1, v2}, Lcn/highlight/tx/ble/BleManager;->setReConnectCount(IJ)Lcn/highlight/tx/ble/BleManager;

    move-result-object p1

    const-wide/16 v0, 0x2710

    .line 180
    invoke-virtual {p1, v0, v1}, Lcn/highlight/tx/ble/BleManager;->setConnectOverTime(J)Lcn/highlight/tx/ble/BleManager;

    move-result-object p1

    const/16 v0, 0x1388

    .line 181
    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/BleManager;->setOperateTimeout(I)Lcn/highlight/tx/ble/BleManager;

    return-void
.end method

.method public initUSBserialPort(Landroid/hardware/usb/UsbManager;)V
    .locals 2

    .line 138
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/highlight/tx/-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s;

    invoke-direct {v1, p0, p1}, Lcn/highlight/tx/-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s;-><init>(Lcn/highlight/tx/BaseTxManager;Landroid/hardware/usb/UsbManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic lambda$initUSBserialPort$0$BaseTxManager(Landroid/hardware/usb/UsbManager;)V
    .locals 5

    .line 141
    invoke-static {}, Lcn/highlight/tx/usb/UsbSerialProber;->getDefaultProber()Lcn/highlight/tx/usb/UsbSerialProber;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/highlight/tx/usb/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object p1

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/tx/usb/UsbSerialDriver;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u67e5\u627e\u8bbe\u5907PID\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcn/highlight/tx/usb/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tuc"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u627e\u8bbe\u5907VID\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcn/highlight/tx/usb/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v1}, Lcn/highlight/tx/usb/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    const v3, 0xea60

    if-ne v2, v3, :cond_0

    .line 152
    invoke-interface {v1}, Lcn/highlight/tx/usb/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v1

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 158
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const-string v1, "\u6ca1\u6709\u627e\u5230\u53ef\u7528USB\u4e32\u53e3\u8bbe\u5907"

    .line 159
    invoke-interface {p1, v0, v1}, Lcn/highlight/tx/listener/OnOpen;->OnOpenStatus(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 164
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x0

    .line 165
    iput v1, p1, Landroid/os/Message;->what:I

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnDataReceivedTag(Lcn/highlight/tx/listener/OnDataReceivedTag;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager;->onDataReceivedTag:Lcn/highlight/tx/listener/OnDataReceivedTag;

    return-void
.end method

.method public setOpen(Lcn/highlight/tx/listener/OnOpen;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager;->onOpen:Lcn/highlight/tx/listener/OnOpen;

    return-void
.end method

.method public startScanBle(Lcn/highlight/tx/ble/callback/BleScanCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 189
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/BleManager;->scan(Lcn/highlight/tx/ble/callback/BleScanCallback;)V

    :cond_0
    return-void
.end method

.method public write(Lcn/highlight/tx/ble/data/BleDevice;[BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcn/highlight/tx/BaseTxManager;->writeDevice(Lcn/highlight/tx/ble/data/BleDevice;[BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V

    return-void
.end method

.method public declared-synchronized writeData([BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V
    .locals 6

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialPortManager:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/serialport/SerialPortTxManager;->sendBytes([B)Z

    move-result v0

    const-string v3, "tuc"

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "232\u53d1\u9001\u6570\u636e\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcn/highlight/tx/utils/TxUtil;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "----:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialIoManager:Lcn/highlight/tx/usb/SerialInputOutputManager;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->mSerialIoManager:Lcn/highlight/tx/usb/SerialInputOutputManager;

    invoke-virtual {v0, p1}, Lcn/highlight/tx/usb/SerialInputOutputManager;->write([B)V

    .line 420
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->ble:Lcn/highlight/tx/ble/data/BleDevice;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager;->ble:Lcn/highlight/tx/ble/data/BleDevice;

    invoke-virtual {p0, v0, p1, p2}, Lcn/highlight/tx/BaseTxManager;->write(Lcn/highlight/tx/ble/data/BleDevice;[BLcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 429
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
