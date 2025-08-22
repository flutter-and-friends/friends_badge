.class Lcom/gg/reader/api/dal/communication/TcpClient$1;
.super Ljava/lang/Object;
.source "TcpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/TcpClient;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/TcpClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/TcpClient;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/TcpClient;->keepReceived:Z

    if-eqz v0, :cond_6

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    const-wide/16 v1, 0x64

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    if-lez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/TcpClient;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/TcpClient;->rcvBuff:[B

    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/TcpClient;->rcvBuff:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/TcpClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/TcpClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v4, 0x100000

    if-le v2, v4, :cond_2

    .line 177
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/TcpClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/TcpClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v4, v4, Lcom/gg/reader/api/dal/communication/TcpClient;->rcvBuff:[B

    invoke-virtual {v2, v4, v3, v0}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 180
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/TcpClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 181
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 183
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    iget-boolean v1, v1, Lcom/gg/reader/api/dal/communication/TcpClient;->_isSendHeartbeat:Z

    if-eqz v1, :cond_0

    if-gtz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/TcpClient;->access$000(Lcom/gg/reader/api/dal/communication/TcpClient;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "remote closed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/gg/reader/api/dal/communication/TcpClient;->access$102(Lcom/gg/reader/api/dal/communication/TcpClient;Ljava/util/Date;)Ljava/util/Date;

    .line 190
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gg/reader/api/dal/communication/TcpClient;->access$202(Lcom/gg/reader/api/dal/communication/TcpClient;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 195
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/TcpClient$1;->this$0:Lcom/gg/reader/api/dal/communication/TcpClient;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/TcpClient;->triggerDisconnected()V

    const-wide/16 v0, 0xbb8

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    :cond_6
    return-void
.end method
