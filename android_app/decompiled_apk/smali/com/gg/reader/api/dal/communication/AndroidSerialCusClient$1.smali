.class Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;
.super Ljava/lang/Object;
.source "AndroidSerialCusClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->keepReceived:Z

    if-eqz v0, :cond_2

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;)I

    move-result v0

    invoke-static {v0}, Lcom/gxwl/device/reader/dal/SerialPortJNI;->readPort(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    array-length v1, v0

    if-lez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    :try_start_1
    array-length v2, v0

    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    iget-object v3, v3, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v3}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x100000

    if-le v2, v3, :cond_0

    .line 68
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 72
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;->access$100(Lcom/gg/reader/api/dal/communication/AndroidSerialCusClient;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "[AndroidSerialCusClient]startReceive error."

    .line 78
    invoke-static {v0}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
