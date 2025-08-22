.class public abstract Lcom/gg/reader/api/dal/communication/CommunicationInterface;
.super Ljava/lang/Object;
.source "CommunicationInterface.java"


# static fields
.field protected static final MAX_BUFFER_LEN:I = 0x100000


# instance fields
.field public _isSendHeartbeat:Z

.field protected connType:I

.field protected isRs485:Z

.field protected keepReceived:Z

.field protected lockRingBuffer:Ljava/lang/Object;

.field public onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

.field public onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

.field protected rcvBuff:[B

.field protected volatile ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

.field private rs485Address:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 23
    iput v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->connType:I

    .line 26
    new-instance v0, Lcom/gg/reader/api/utils/RingBuffer;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Lcom/gg/reader/api/utils/RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->lockRingBuffer:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->keepReceived:Z

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 29
    iput-object v1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->rcvBuff:[B

    .line 30
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->isRs485:Z

    .line 31
    iput v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->rs485Address:I

    .line 32
    iput-boolean v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->_isSendHeartbeat:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/CommunicationInterface;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->rs485Address:I

    return p0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract dispose()V
.end method

.method public getConnectType()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->connType:I

    return v0
.end method

.method public getRs485Address()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->rs485Address:I

    return v0
.end method

.method public hdPowerOff()V
    .locals 0

    return-void
.end method

.method public hdPowerOn()V
    .locals 0

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->keepReceived:Z

    return v0
.end method

.method public isRs485()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->isRs485:Z

    return v0
.end method

.method public abstract open(Ljava/lang/String;)Z
.end method

.method public abstract open(Ljava/lang/String;I)Z
.end method

.method public abstract open(Ljava/lang/String;II)Z
.end method

.method public abstract open(Ljava/net/Socket;)Z
.end method

.method public abstract receive([B)I
.end method

.method public abstract send(Lcom/gg/reader/api/protocol/gx/Message;)V
.end method

.method public abstract send([B)V
.end method

.method public abstract setBufferSize(I)Z
.end method

.method public setConnectType(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->connType:I

    return-void
.end method

.method public setRs485(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->isRs485:Z

    return-void
.end method

.method public setRs485Address(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->rs485Address:I

    return-void
.end method

.method public setUhfPower(Z)V
    .locals 0

    return-void
.end method

.method public startProcess()V
    .locals 1

    .line 118
    new-instance v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;-><init>(Lcom/gg/reader/api/dal/communication/CommunicationInterface;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected triggerDisconnected()V
    .locals 2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onDisconnected:Lcom/gg/reader/api/dal/communication/HandlerDisconnected;

    invoke-interface {v1}, Lcom/gg/reader/api/dal/communication/HandlerDisconnected;->log()V

    .line 76
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
    :cond_0
    :goto_0
    return-void
.end method

.method protected triggerMessageEvent(Lcom/gg/reader/api/protocol/gx/Message;)V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->onMessageReceived:Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;

    invoke-interface {v1, p1}, Lcom/gg/reader/api/dal/communication/HandlerMessageReceived;->received(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 65
    monitor-exit v0

    goto :goto_0

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
    :cond_0
    :goto_0
    return-void
.end method
