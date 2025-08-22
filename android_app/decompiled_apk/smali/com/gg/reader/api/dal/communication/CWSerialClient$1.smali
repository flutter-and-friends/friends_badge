.class Lcom/gg/reader/api/dal/communication/CWSerialClient$1;
.super Ljava/lang/Object;
.source "CWSerialClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/CWSerialClient;->startReceive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/CWSerialClient;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->keepReceived:Z

    if-eqz v0, :cond_2

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/CWSerialClient;->access$000(Lcom/gg/reader/api/dal/communication/CWSerialClient;)Lcom/rscja/deviceapi/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rscja/deviceapi/Module;->receiveEx()[B

    move-result-object v0

    .line 87
    array-length v1, v0

    if-gtz v1, :cond_0

    const-wide/16 v0, 0x64

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/CWSerialClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    :try_start_1
    array-length v2, v0

    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    iget-object v3, v3, Lcom/gg/reader/api/dal/communication/CWSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v3}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x100000

    if-le v2, v3, :cond_1

    .line 93
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/CWSerialClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/CWSerialClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 96
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CWSerialClient$1;->this$0:Lcom/gg/reader/api/dal/communication/CWSerialClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/CWSerialClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 97
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
    const-wide/16 v0, 0xbb8

    .line 102
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method
