.class public Lcom/gg/reader/api/dal/communication/TcpServer;
.super Ljava/lang/Object;
.source "TcpServer.java"


# instance fields
.field public keepListen:Ljava/lang/Boolean;

.field public listenPort:I

.field private listenSocket:Ljava/net/ServerSocket;

.field public onRemoteConnected:Lcom/gg/reader/api/dal/HandlerRemoteConnected;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenSocket:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->keepListen:Ljava/lang/Boolean;

    const/16 v0, 0x1fe0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenPort:I

    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/communication/TcpServer;)Ljava/net/ServerSocket;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenSocket:Ljava/net/ServerSocket;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->keepListen:Ljava/lang/Boolean;

    .line 87
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public open(I)Z
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->keepListen:Ljava/lang/Boolean;

    .line 46
    :try_start_0
    iput p1, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenPort:I

    .line 47
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenSocket:Ljava/net/ServerSocket;

    .line 48
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenSocket:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "0.0.0.0"

    iget v4, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->listenPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 49
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpServer;->startListen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 52
    :catch_0
    invoke-virtual {p0}, Lcom/gg/reader/api/dal/communication/TcpServer;->close()V

    return v1
.end method

.method public startListen()V
    .locals 1

    .line 58
    new-instance v0, Lcom/gg/reader/api/dal/communication/TcpServer$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/dal/communication/TcpServer$1;-><init>(Lcom/gg/reader/api/dal/communication/TcpServer;)V

    invoke-static {v0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected triggerClientConnectedEvent(Lcom/gg/reader/api/dal/communication/TcpClient;)V
    .locals 2

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->onRemoteConnected:Lcom/gg/reader/api/dal/HandlerRemoteConnected;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->onRemoteConnected:Lcom/gg/reader/api/dal/HandlerRemoteConnected;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpServer;->onRemoteConnected:Lcom/gg/reader/api/dal/HandlerRemoteConnected;

    invoke-interface {v1, p1}, Lcom/gg/reader/api/dal/HandlerRemoteConnected;->log(Lcom/gg/reader/api/dal/communication/TcpClient;)V

    .line 34
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
