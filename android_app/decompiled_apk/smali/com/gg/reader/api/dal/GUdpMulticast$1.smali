.class Lcom/gg/reader/api/dal/GUdpMulticast$1;
.super Ljava/lang/Object;
.source "GUdpMulticast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/GUdpMulticast;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

.field final synthetic val$nif:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/GUdpMulticast;Ljava/util/List;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    iput-object p2, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->val$nif:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$000(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$300(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/MulticastSocket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v2}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$100(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x1fe1

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v2, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->val$nif:Ljava/util/List;

    iget-object v3, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v3}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$200(Lcom/gg/reader/api/dal/GUdpMulticast;)I

    move-result v3

    iget-object v4, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->val$nif:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 59
    iget-object v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-static {v1, v2}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$402(Lcom/gg/reader/api/dal/GUdpMulticast;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;

    .line 60
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    iget-object v0, v0, Lcom/gg/reader/api/dal/GUdpMulticast;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    iget-object v0, v0, Lcom/gg/reader/api/dal/GUdpMulticast;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Udp]-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->val$nif:Ljava/util/List;

    iget-object v3, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v3}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$200(Lcom/gg/reader/api/dal/GUdpMulticast;)I

    move-result v3

    iget-object v4, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->val$nif:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Receive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$300(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/MulticastSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v1}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$400(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$400(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ASCII"

    if-lez v0, :cond_1

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    iget-object v0, v0, Lcom/gg/reader/api/dal/GUdpMulticast;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    iget-object v0, v0, Lcom/gg/reader/api/dal/GUdpMulticast;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Udp]-->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v4}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$400(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V

    .line 69
    :cond_1
    new-instance v0, Lcom/gg/reader/api/entity/GMulticast;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v3}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$400(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gg/reader/api/entity/GMulticast;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->triggerOnUdpMulticast(Lcom/gg/reader/api/entity/GMulticast;)V

    .line 71
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$300(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/MulticastSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v1}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$100(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$300(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/MulticastSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v1}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$100(Lcom/gg/reader/api/dal/GUdpMulticast;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 75
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    iget-object v0, v0, Lcom/gg/reader/api/dal/GUdpMulticast;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    iget-object v0, v0, Lcom/gg/reader/api/dal/GUdpMulticast;->debugLog:Lcom/gg/reader/api/dal/HandlerDebugLog;

    const-string v1, "[Udp]-->Next network adapter"

    invoke-interface {v0, v1}, Lcom/gg/reader/api/dal/HandlerDebugLog;->receiveDebugLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    :catch_1
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/GUdpMulticast$1;->this$0:Lcom/gg/reader/api/dal/GUdpMulticast;

    invoke-static {v0}, Lcom/gg/reader/api/dal/GUdpMulticast;->access$208(Lcom/gg/reader/api/dal/GUdpMulticast;)I

    goto/16 :goto_0

    :cond_3
    return-void
.end method
