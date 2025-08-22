.class public Lcom/gg/reader/api/dal/communication/AndroidSerialClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "AndroidSerialClient.java"


# instance fields
.field private iBaudRate:I

.field private iDelay:I

.field private isOpen:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSerialPort:Lcom/gxwl/device/reader/dal/SerialPort;

.field private sPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->isOpen:Z

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->iDelay:I

    const-string v0, "/dev/ttyS0"

    .line 26
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->sPort:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->isOpen:Z

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->iDelay:I

    const-string v0, "/dev/ttyS0"

    .line 26
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->sPort:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->sPort:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->iBaudRate:I

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)Ljava/io/InputStream;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->iDelay:I

    return p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->isOpen:Z

    .line 122
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->keepReceived:Z

    .line 123
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mSerialPort:Lcom/gxwl/device/reader/dal/SerialPort;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mSerialPort:Lcom/gxwl/device/reader/dal/SerialPort;

    invoke-virtual {v0}, Lcom/gxwl/device/reader/dal/SerialPort;->close()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mInputStream:Ljava/io/InputStream;

    .line 126
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mOutputStream:Ljava/io/OutputStream;

    .line 127
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mSerialPort:Lcom/gxwl/device/reader/dal/SerialPort;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 132
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

    .line 79
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->close()V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->isOpen:Z

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ":"

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 101
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 102
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->sPort:Ljava/lang/String;

    const/4 v1, 0x1

    .line 103
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->iBaudRate:I

    .line 104
    new-instance p1, Lcom/gxwl/device/reader/dal/SerialPort;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->sPort:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->iBaudRate:I

    invoke-direct {p1, v2, v3, v0}, Lcom/gxwl/device/reader/dal/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mSerialPort:Lcom/gxwl/device/reader/dal/SerialPort;

    .line 105
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mSerialPort:Lcom/gxwl/device/reader/dal/SerialPort;

    invoke-virtual {p1}, Lcom/gxwl/device/reader/dal/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mOutputStream:Ljava/io/OutputStream;

    .line 106
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mSerialPort:Lcom/gxwl/device/reader/dal/SerialPort;

    invoke-virtual {p1}, Lcom/gxwl/device/reader/dal/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mInputStream:Ljava/io/InputStream;

    .line 107
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->isOpen:Z

    .line 108
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->keepReceived:Z

    .line 109
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->startReceive()V

    .line 110
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->startProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

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

    .line 52
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->isRs485:Z

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "1"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->getRs485Address()I

    move-result v1

    iput v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 59
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->isRs485:Z

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 62
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AndroidSerialClient]base serial send error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    .line 64
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
    .locals 2

    .line 41
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    monitor-exit v0

    return-void

    :goto_0
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

    .line 140
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;-><init>(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method
