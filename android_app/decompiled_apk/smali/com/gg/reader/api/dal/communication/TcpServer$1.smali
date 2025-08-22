.class Lcom/gg/reader/api/dal/communication/TcpServer$1;
.super Ljava/lang/Object;
.source "TcpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/TcpServer;->startListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/TcpServer;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/TcpServer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpServer$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpServer;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/TcpServer;->keepListen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpServer;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/TcpServer;->access$000(Lcom/gg/reader/api/dal/communication/TcpServer;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-direct {v1}, Lcom/gg/reader/api/dal/communication/TcpClient;-><init>()V

    const/4 v2, 0x3

    .line 65
    iput v2, v1, Lcom/gg/reader/api/dal/communication/TcpClient;->connType:I

    .line 66
    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/communication/TcpClient;->open(Ljava/net/Socket;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gg/reader/api/dal/communication/TcpClient;->serverIp:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, v1, Lcom/gg/reader/api/dal/communication/TcpClient;->serverPort:I

    .line 69
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpServer$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpServer;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/communication/TcpServer;->triggerClientConnectedEvent(Lcom/gg/reader/api/dal/communication/TcpClient;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 72
    invoke-virtual {v1}, Lcom/gg/reader/api/dal/communication/TcpClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
