.class public Lcn/highlight/tx/usb/SerialInputOutputManager;
.super Ljava/lang/Object;
.source "SerialInputOutputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;,
        Lcn/highlight/tx/usb/SerialInputOutputManager$State;
    }
.end annotation


# static fields
.field private static final BUFSIZ:I = 0x1000

.field private static final DEBUG:Z = true

.field private static final READ_WAIT_MILLIS:I = 0x32

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

.field private mListener:Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

.field private final mReadBuffer:Ljava/nio/ByteBuffer;

.field private mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

.field private final mWriteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcn/highlight/tx/usb/SerialInputOutputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/highlight/tx/usb/UsbSerialPort;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcn/highlight/tx/usb/SerialInputOutputManager;-><init>(Lcn/highlight/tx/usb/UsbSerialPort;Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/tx/usb/UsbSerialPort;Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 48
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    .line 60
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    iput-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 89
    iput-object p1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

    .line 90
    iput-object p2, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mListener:Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

    return-void
.end method

.method private declared-synchronized getState()Lcn/highlight/tx/usb/SerialInputOutputManager$State;
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private step()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Lcn/highlight/tx/usb/UsbSerialPort;->read([BI)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 161
    sget-object v3, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read data len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->getListener()Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 164
    new-array v4, v0, [B

    .line 165
    iget-object v5, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 166
    invoke-interface {v3, v4}, Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;->onNewData([B)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    const/4 v0, 0x0

    .line 174
    iget-object v3, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v3

    .line 175
    :try_start_0
    iget-object v4, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lez v4, :cond_2

    .line 177
    new-array v0, v4, [B

    .line 178
    iget-object v5, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 179
    iget-object v5, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 182
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 185
    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing data len="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

    invoke-interface {v1, v0, v2}, Lcn/highlight/tx/usb/UsbSerialPort;->write([BI)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 182
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private step2()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Lcn/highlight/tx/usb/UsbSerialPort;->read([BI)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 196
    sget-object v3, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read data len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->getListener()Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 199
    new-array v4, v0, [B

    .line 200
    iget-object v5, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 201
    invoke-interface {v3, v4}, Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;->onNewData([B)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    const/4 v0, 0x0

    .line 208
    iget-object v3, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v3

    .line 209
    :try_start_0
    iget-object v4, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lez v4, :cond_2

    .line 211
    new-array v0, v4, [B

    .line 212
    iget-object v5, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 213
    iget-object v5, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 216
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 219
    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing data len="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

    invoke-interface {v1, v0, v2}, Lcn/highlight/tx/usb/UsbSerialPort;->write([BI)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 216
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public CleanBuffer()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public declared-synchronized getListener()Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mListener:Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Lcn/highlight/tx/usb/UsbSerialPort;->read([BI)I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read data len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-array v1, v0, [B

    .line 249
    iget-object v2, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 250
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->getState()Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_2

    .line 131
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->RUNNING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    iput-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 134
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Running .."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->getState()Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->RUNNING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    if-eq v0, v1, :cond_0

    .line 138
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->getState()Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    monitor-enter p0

    .line 151
    :try_start_2
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    iput-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 152
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 141
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->step()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 144
    :try_start_4
    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run ending due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-virtual {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->getListener()Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v1, v0}, Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;->onRunError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    :cond_1
    monitor-enter p0

    .line 151
    :try_start_5
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    iput-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 152
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit p0

    :goto_1
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 150
    :goto_2
    monitor-enter p0

    .line 151
    :try_start_6
    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPED:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    iput-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    .line 152
    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v2, "Stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 154
    throw v0

    :catchall_3
    move-exception v0

    .line 153
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 129
    :cond_2
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    .line 132
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method public declared-synchronized setListener(Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;)V
    .locals 0

    monitor-enter p0

    .line 94
    :try_start_0
    iput-object p1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mListener:Lcn/highlight/tx/usb/SerialInputOutputManager$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcn/highlight/tx/usb/SerialInputOutputManager;->getState()Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->RUNNING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_0

    .line 109
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stop requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcn/highlight/tx/usb/SerialInputOutputManager$State;->STOPPING:Lcn/highlight/tx/usb/SerialInputOutputManager$State;

    iput-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mState:Lcn/highlight/tx/usb/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mDriver:Lcn/highlight/tx/usb/UsbSerialPort;

    const/16 v1, 0x32

    invoke-interface {v0, p1, v1}, Lcn/highlight/tx/usb/UsbSerialPort;->write([BI)I

    return-void
.end method

.method public writeAsync([B)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcn/highlight/tx/usb/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
