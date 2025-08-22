.class Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;
.super Ljava/lang/Object;
.source "CommunicationInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/CommunicationInterface;->startProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/CommunicationInterface;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->keepReceived:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/utils/RingBuffer;->Index(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x5a

    const/4 v6, 0x1

    if-eq v2, v5, :cond_1

    .line 130
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2, v6}, Lcom/gg/reader/api/utils/RingBuffer;->Clear(I)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v0, v6}, Lcom/gg/reader/api/utils/RingBuffer;->Index(I)B

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v0, v6}, Lcom/gg/reader/api/utils/RingBuffer;->Clear(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-boolean v2, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->isRs485:Z

    const/16 v5, 0x8

    if-eqz v2, :cond_3

    const/16 v3, 0x8

    .line 141
    :cond_3
    new-array v2, v3, [B

    .line 142
    iget-object v7, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v7, v7, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    array-length v8, v2

    invoke-virtual {v7, v2, v4, v8}, Lcom/gg/reader/api/utils/RingBuffer;->ReadBuffer([BII)V

    .line 143
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 144
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    const/16 v5, 0x10

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 145
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    if-ltz v0, :cond_8

    const/16 v2, 0x400

    if-le v0, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    .line 151
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v2}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v2

    if-ge v2, v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 155
    :cond_5
    :try_start_4
    new-array v2, v0, [B

    .line 156
    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v3, v3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v3, v2, v4, v0}, Lcom/gg/reader/api/utils/RingBuffer;->ReadBuffer([BII)V

    .line 157
    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v3, v3, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v3, v0}, Lcom/gg/reader/api/utils/RingBuffer;->Clear(I)V

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_9

    .line 162
    new-instance v2, Lcom/gg/reader/api/protocol/gx/Message;

    invoke-direct {v2, v0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>([B)V

    .line 163
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/Message;->checkCrc()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-boolean v0, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->isRs485:Z

    if-eqz v0, :cond_6

    iget v0, v2, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    iget-object v3, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-static {v3}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->access$000(Lcom/gg/reader/api/dal/communication/CommunicationInterface;)I

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v0, v3, :cond_6

    .line 165
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 167
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->triggerMessageEvent(Lcom/gg/reader/api/protocol/gx/Message;)V

    goto :goto_3

    .line 172
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crc\u9519\u8bef-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 147
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/CommunicationInterface$1;->this$0:Lcom/gg/reader/api/dal/communication/CommunicationInterface;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/CommunicationInterface;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v0, v6}, Lcom/gg/reader/api/utils/RingBuffer;->Clear(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    :try_start_7
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 180
    :catch_0
    :cond_9
    :goto_3
    monitor-exit v1

    goto/16 :goto_0

    :goto_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_a
    return-void
.end method
