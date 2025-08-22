.class public Lcom/gg/reader/api/dal/GUdpMulticast;
.super Ljava/lang/Object;
.source "GUdpMulticast.java"


# instance fields
.field private _GroupIP:Ljava/lang/String;

.field private _GroupPort:I

.field private address:Ljava/net/InetAddress;

.field private dataPacket:Ljava/net/DatagramPacket;

.field public debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

.field public handlerUdpMulticast:Lcom/gg/reader/api/dal/HandlerUdpMulticast;

.field private index:I

.field private keepReceive:Ljava/lang/Boolean;

.field private ms:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->ms:Ljava/net/MulticastSocket;

    .line 18
    iput-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->dataPacket:Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->keepReceive:Ljava/lang/Boolean;

    const-string v1, "230.1.1.168"

    .line 21
    iput-object v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->_GroupIP:Ljava/lang/String;

    const/16 v1, 0x1fe1

    .line 22
    iput v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->_GroupPort:I

    .line 23
    iput v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->index:I

    .line 29
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->_GroupIP:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->_GroupPort:I

    .line 31
    new-instance p1, Ljava/net/MulticastSocket;

    iget p2, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->_GroupPort:I

    invoke-direct {p1, p2}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object p1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->ms:Ljava/net/MulticastSocket;

    .line 32
    iget-object p1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->ms:Ljava/net/MulticastSocket;

    invoke-virtual {p1, p3}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 33
    iget-object p1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->_GroupIP:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$000(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/lang/Boolean;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->keepReceive:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/InetAddress;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->address:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gg/reader/api/dal/GUdpMulticast;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->index:I

    return p0
.end method

.method static synthetic access$208(Lcom/gg/reader/api/dal/GUdpMulticast;)I
    .locals 2

    .line 15
    iget v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->index:I

    return v0
.end method

.method static synthetic access$300(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/MulticastSocket;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->ms:Ljava/net/MulticastSocket;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/DatagramPacket;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->dataPacket:Ljava/net/DatagramPacket;

    return-object p0
.end method

.method static synthetic access$402(Lcom/gg/reader/api/dal/GUdpMulticast;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->dataPacket:Ljava/net/DatagramPacket;

    return-object p1
.end method

.method private getAllNif()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 101
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 104
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 105
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 107
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "127.0.0.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->keepReceive:Ljava/lang/Boolean;

    .line 93
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->ms:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->keepReceive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->keepReceive:Ljava/lang/Boolean;

    .line 51
    invoke-direct {p0}, Lcom/gg/reader/api/dal/GUdpMulticast;->getAllNif()Ljava/util/List;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/gg/reader/api/dal/GUdpMulticast$1;

    invoke-direct {v1, p0, v0}, Lcom/gg/reader/api/dal/GUdpMulticast$1;-><init>(Lcom/gg/reader/api/dal/GUdpMulticast;Ljava/util/List;)V

    invoke-static {v1}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->run(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public triggerOnUdpMulticast(Lcom/gg/reader/api/entity/GMulticast;)V
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->handlerUdpMulticast:Lcom/gg/reader/api/dal/HandlerUdpMulticast;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast;->handlerUdpMulticast:Lcom/gg/reader/api/dal/HandlerUdpMulticast;

    invoke-interface {v0, p1}, Lcom/gg/reader/api/dal/HandlerUdpMulticast;->log(Lcom/gg/reader/api/entity/GMulticast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
