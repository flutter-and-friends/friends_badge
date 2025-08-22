.class public Lcom/gg/reader/api/dal/communication/CWSerialClient;
.super Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.source "CWSerialClient.java"


# instance fields
.field private instance:Lcom/rscja/deviceapi/Module;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;-><init>()V

    .line 16
    :try_start_0
    invoke-static {}, Lcom/rscja/deviceapi/Module;->getInstance()Lcom/rscja/deviceapi/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;
    :try_end_0
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Lcom/rscja/deviceapi/exception/ConfigurationException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/CWSerialClient;)Lcom/rscja/deviceapi/Module;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->keepReceived:Z

    .line 118
    invoke-virtual {v0}, Lcom/rscja/deviceapi/Module;->closeSerail()Z

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public free()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/rscja/deviceapi/Module;->free()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(I)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Lcom/rscja/deviceapi/Module;->init(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public open(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, ":"

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    if-eqz v1, :cond_1

    .line 69
    aget-object v2, p1, v0

    const/4 v7, 0x1

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/rscja/deviceapi/Module;->openSerail(Ljava/lang/String;IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    iput-boolean v7, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->keepReceived:Z

    .line 72
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/CWSerialClient;->startReceive()V

    .line 73
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/CWSerialClient;->startProcess()V

    return v7

    :cond_1
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

.method public powerOff(I)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lcom/rscja/deviceapi/Module;->powerOff(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public powerOn(I)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Lcom/rscja/deviceapi/Module;->powerOn(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public receive([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public send(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 2

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->isRs485:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "1"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/CWSerialClient;->getRs485Address()I

    move-result v0

    iput v0, p1, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    .line 140
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->isRs485:Z

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/dal/communication/CWSerialClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public send([B)V
    .locals 1

    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->instance:Lcom/rscja/deviceapi/Module;

    invoke-virtual {v0, p1}, Lcom/rscja/deviceapi/Module;->send([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 129
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

    .line 81
    new-instance v0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;-><init>(Lcom/gg/reader/api/dal/communication/CWSerialClient;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method
