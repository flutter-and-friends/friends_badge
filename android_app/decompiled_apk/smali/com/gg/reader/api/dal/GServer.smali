.class public Lcom/gg/reader/api/dal/GServer;
.super Ljava/lang/Object;
.source "GServer.java"


# instance fields
.field private MSG_TIME_OUT:I

.field private hpClient:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gg/reader/api/dal/GClient;",
            ">;"
        }
    .end annotation
.end field

.field public onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

.field private ts:Lcom/gg/reader/api/dal/communication/TcpServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 19
    iput v0, p0, Lcom/gg/reader/api/dal/GServer;->MSG_TIME_OUT:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/GServer;Lcom/gg/reader/api/dal/communication/TcpClient;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/gg/reader/api/dal/GServer;->processConnect(Lcom/gg/reader/api/dal/communication/TcpClient;)V

    return-void
.end method

.method private processConnect(Lcom/gg/reader/api/dal/communication/TcpClient;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/gg/reader/api/dal/GClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/GClient;-><init>()V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    iget v2, p0, Lcom/gg/reader/api/dal/GServer;->MSG_TIME_OUT:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/gg/reader/api/dal/GClient;->open(Ljava/lang/String;Lcom/gg/reader/api/dal/communication/CommunicationInterface;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->setName(Ljava/lang/String;)V

    .line 110
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 112
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getRtCode()B

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getReaderSerialNumber()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 113
    :goto_0
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->setSerialNumber(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/gg/reader/api/dal/GServer;->triggerGClientConnectedEvent(Lcom/gg/reader/api/dal/GClient;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    monitor-enter v2

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1}, Lcom/gg/reader/api/dal/GClient;->close()Z

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 122
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->close()Z

    .line 123
    invoke-virtual {p1}, Lcom/gg/reader/api/dal/communication/TcpClient;->close()V

    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/TcpServer;->close()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    :cond_0
    return-void
.end method

.method public closeAllClient()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2}, Lcom/gg/reader/api/dal/GClient;->close()Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeClient(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1}, Lcom/gg/reader/api/dal/GClient;->close()Z

    .line 84
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->hpClient:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public isListend()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/TcpServer;->keepListen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public open(I)Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 49
    :cond_0
    new-instance v0, Lcom/gg/reader/api/dal/communication/TcpServer;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/communication/TcpServer;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    .line 50
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    new-instance v2, Lcom/gg/reader/api/dal/GServer$1;

    invoke-direct {v2, p0}, Lcom/gg/reader/api/dal/GServer$1;-><init>(Lcom/gg/reader/api/dal/GServer;)V

    iput-object v2, v0, Lcom/gg/reader/api/dal/communication/TcpServer;->onRemoteConnected:Lcom/gg/reader/api/dal/HandlerRemoteConnected;

    .line 56
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->ts:Lcom/gg/reader/api/dal/communication/TcpServer;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/communication/TcpServer;->open(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/GServer;->close()V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected triggerGClientConnectedEvent(Lcom/gg/reader/api/dal/GClient;Ljava/lang/String;)V
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/gg/reader/api/dal/GServer;->onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/GServer;->onGClientConnected:Lcom/gg/reader/api/dal/HandlerGClientConnected;

    invoke-interface {v1, p1, p2}, Lcom/gg/reader/api/dal/HandlerGClientConnected;->log(Lcom/gg/reader/api/dal/GClient;Ljava/lang/String;)V

    .line 39
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
