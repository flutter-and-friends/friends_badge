.class public Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "AndroidSerialCusClient.java"


# instance fields
.field private freeWait:I

.field private packageSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/16 v0, 0x40

    .line 13
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->packageSize:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->freeWait:I

    .line 17
    iput p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->packageSize:I

    .line 18
    iput p2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->freeWait:I

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->packageSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->freeWait:I

    return p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    :try_start_0
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->keepReceived:Z

    .line 90
    invoke-static {}, Lcom/gxwl/device/reader/dal/SerialPortJNI;->closePort()V

    .line 92
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 94
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

.method public open(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ":"

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 40
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 41
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x8

    const/16 v4, 0x4e

    invoke-static {v1, p1, v3, v2, v4}, Lcom/gxwl/device/reader/dal/SerialPortJNI;->openPort(Ljava/lang/String;IIIC)I

    move-result p1

    if-ne v2, p1, :cond_0

    .line 42
    iput-boolean v2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->keepReceived:Z

    .line 43
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->startReceive()V

    .line 44
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->startProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_0
    return v0
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

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 3

    .line 112
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->isRs485:Z

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "1"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->getRs485Address()I

    move-result v1

    iput v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 119
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->isRs485:Z

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AndroidSerialCusClient]base serial send error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    .line 124
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
    .locals 1

    .line 101
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-static {p1}, Lcom/gxwl/device/reader/dal/SerialPortJNI;->writePort([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 105
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :goto_0
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

.method public startReceive()V
    .locals 1

    .line 59
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;-><init>(Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method
