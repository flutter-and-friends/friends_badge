.class public Lcom/gg/reader/api/dal/communication/TcpClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "TcpClient.java"


# instance fields
.field _isOpen:Z

.field private count:I

.field public inputStream:Ljava/io/InputStream;

.field private lastUrgentData:Ljava/util/Date;

.field public outputStream:Ljava/io/OutputStream;

.field public sConn:Ljava/net/Socket;

.field public serverIp:Ljava/lang/String;

.field public serverPort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const-string v1, "192.168.1.168"

    .line 24
    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    const/16 v1, 0x1fe0

    .line 25
    iput v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    .line 26
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 27
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->_isOpen:Z

    .line 141
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

    const/4 v0, 0x1

    .line 142
    iput v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/TcpClient;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->isRemoteClosed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/gg/reader/api/dal/communication/TcpClient;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$202(Lcom/gg/reader/api/dal/communication/TcpClient;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    return p1
.end method

.method private isRemoteClosed()Z
    .locals 8

    .line 145
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 149
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    mul-int/lit16 v5, v4, 0xbb8

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    add-int/2addr v4, v1

    .line 151
    :try_start_0
    iput v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->count:I

    .line 152
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgAppHeartbeat;-><init>()V

    invoke-virtual {p0, v2}, Lcom/gg/reader/api/dal/communication/TcpClient;->send(Lcom/gg/reader/api/protocol/gx/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lastUrgentData:Ljava/util/Date;

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


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    :try_start_0
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->keepReceived:Z

    .line 93
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->_isOpen:Z

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 97
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    .line 98
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 102
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

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 69
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 70
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    const/4 v1, 0x1

    .line 71
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    .line 72
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    .line 73
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    iget v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x1388

    invoke-virtual {p1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 75
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 76
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 77
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 78
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    .line 79
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->keepReceived:Z

    .line 80
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startReceive()V

    .line 81
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startProcess()V
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
    .locals 3

    const/4 v0, 0x0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->sConn:Ljava/net/Socket;

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->keepReceived:Z

    const/16 v2, 0x3e8

    .line 47
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 48
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 49
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    .line 50
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    .line 51
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startReceive()V

    .line 52
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->startProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 55
    :catch_0
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpClient;->close()V

    return v0
.end method

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 1

    .line 120
    :try_start_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 121
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->isRs485:Z

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/TcpClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public send([B)V
    .locals 1

    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 114
    :catch_0
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

.method public startReceive()V
    .locals 1

    .line 163
    new-instance v0, Lcom/gg/reader/api/dal/communication/TcpClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/TcpClient$1;-><init>(Lcom/gg/reader/api/dal/communication/TcpClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method
