.class Lcom/gg/reader/api/dal/communication/BluetoothClient$1;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/BluetoothClient;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/BluetoothClient;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/BluetoothClient;->keepReceived:Z

    if-eqz v0, :cond_6

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->access$000(Lcom/gg/reader/api/dal/communication/BluetoothClient;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    const-wide/16 v1, 0x64

    .line 243
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    if-lez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->access$000(Lcom/gg/reader/api/dal/communication/BluetoothClient;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->rcvBuff:[B

    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->rcvBuff:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v4, 0x100000

    if-le v2, v4, :cond_2

    .line 249
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v4, v4, Lcom/gg/reader/api/dal/communication/BluetoothClient;->rcvBuff:[B

    invoke-virtual {v2, v4, v3, v0}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 252
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 253
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 256
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-boolean v1, v1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->_isSendHeartbeat:Z

    if-eqz v1, :cond_0

    if-gtz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->access$100(Lcom/gg/reader/api/dal/communication/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 259
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "remote closed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->access$202(Lcom/gg/reader/api/dal/communication/BluetoothClient;Ljava/util/Date;)Ljava/util/Date;

    .line 263
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->access$302(Lcom/gg/reader/api/dal/communication/BluetoothClient;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 269
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->triggerDisconnected()V

    const-wide/16 v0, 0xbb8

    .line 270
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
