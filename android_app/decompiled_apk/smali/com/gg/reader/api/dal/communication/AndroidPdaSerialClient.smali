.class public Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "AndroidPdaSerialClient.java"


# instance fields
.field private baudrate:I

.field private iDelay:I

.field private isOpen:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSerialPort:Lcn/pda/serialport/SerialPort;

.field private port:I

.field private sPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->isOpen:Z

    const/16 v0, 0x64

    .line 17
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->iDelay:I

    const-string v0, "/dev/ttyMT1"

    .line 21
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->sPort:Ljava/lang/String;

    const/16 v0, 0xd

    .line 22
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->port:I

    const v0, 0x1c200

    .line 23
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->baudrate:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->isOpen:Z

    const/16 v0, 0x64

    .line 17
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->iDelay:I

    const-string v0, "/dev/ttyMT1"

    .line 21
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->sPort:Ljava/lang/String;

    const/16 v0, 0xd

    .line 22
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->port:I

    const v0, 0x1c200

    .line 23
    iput v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->baudrate:I

    .line 29
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->sPort:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->baudrate:I

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;)Ljava/io/InputStream;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->iDelay:I

    return p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->isOpen:Z

    .line 119
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->keepReceived:Z

    .line 120
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    iget v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->port:I

    invoke-virtual {v0, v1}, Lcn/pda/serialport/SerialPort;->close(I)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mInputStream:Ljava/io/InputStream;

    .line 123
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mOutputStream:Ljava/io/OutputStream;

    .line 124
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 129
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

    .line 76
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->close()V

    return-void
.end method

.method public hdPowerOff()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->hdPowerOff()V

    .line 146
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcn/pda/serialport/SerialPort;->power_5Voff()V

    :cond_0
    return-void
.end method

.method public hdPowerOn()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->hdPowerOn()V

    .line 138
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcn/pda/serialport/SerialPort;->power_5Von()V

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->isOpen:Z

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ":"

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 98
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 99
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->port:I

    const/4 v1, 0x1

    .line 100
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->baudrate:I

    .line 101
    new-instance p1, Lcn/pda/serialport/SerialPort;

    iget v2, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->port:I

    iget v3, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->baudrate:I

    invoke-direct {p1, v2, v3, v0}, Lcn/pda/serialport/SerialPort;-><init>(III)V

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    .line 102
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    invoke-virtual {p1}, Lcn/pda/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mOutputStream:Ljava/io/OutputStream;

    .line 103
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mSerialPort:Lcn/pda/serialport/SerialPort;

    invoke-virtual {p1}, Lcn/pda/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mInputStream:Ljava/io/InputStream;

    .line 104
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->isOpen:Z

    .line 105
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->keepReceived:Z

    .line 106
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->startReceive()V

    .line 107
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->startProcess()V
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

    .line 49
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->isRs485:Z

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "1"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->getRs485Address()I

    move-result v1

    iput v1, p1, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 56
    iget-boolean v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->isRs485:Z

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AndroidPdaSerialClient]base serial send error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    .line 61
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

    .line 38
    const-class v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 45
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

    .line 153
    new-instance v0, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient$1;-><init>(Lcom/gg/reader/api/dal/communication/AndroidPdaSerialClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method
