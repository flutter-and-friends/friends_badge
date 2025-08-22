.class Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;
.super Ljava/lang/Object;
.source "AndroidSerialClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->keepReceived:Z

    if-eqz v0, :cond_4

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    .line 150
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-static {v1}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->access$100(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    :cond_2
    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidSerialClient;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->rcvBuff:[B

    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->rcvBuff:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v4, 0x100000

    if-le v2, v4, :cond_3

    .line 157
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    iget-object v4, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v4, v4, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->rcvBuff:[B

    invoke-virtual {v2, v4, v3, v0}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 160
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/AndroidSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 161
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v0, "[AndroidSerialClient]startReceive error."

    .line 164
    invoke-static {v0}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
