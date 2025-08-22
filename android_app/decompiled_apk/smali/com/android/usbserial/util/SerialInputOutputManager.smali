.class public Lcom/android/usbserial/util/SerialInputOutputManager;
.super Ljava/lang/Object;
.source "SerialInputOutputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/usbserial/util/SerialInputOutputManager$Listener;,
        Lcom/android/usbserial/util/SerialInputOutputManager$State;
    }
.end annotation


# static fields
.field private static final BUFSIZ:I = 0x1000

.field public static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/android/usbserial/util/SerialInputOutputManager$Listener;

.field private mReadBuffer:Ljava/nio/ByteBuffer;

.field private final mReadBufferLock:Ljava/lang/Object;

.field private mReadTimeout:I

.field private final mSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

.field private mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

.field private mThreadPriority:I

.field private mWriteBuffer:Ljava/nio/ByteBuffer;

.field private final mWriteBufferLock:Ljava/lang/Object;

.field private mWriteTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/android/usbserial/util/SerialInputOutputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/android/usbserial/util/SerialInputOutputManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/usbserial/driver/UsbSerialPort;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadTimeout:I

    .line 33
    iput v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteTimeout:I

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBufferLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBufferLock:Ljava/lang/Object;

    const/16 v0, 0x1000

    .line 39
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x13

    .line 47
    iput v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mThreadPriority:I

    .line 48
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 65
    iput-object p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    .line 66
    invoke-interface {p1}, Lcom/android/usbserial/driver/UsbSerialPort;->getReadEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/android/usbserial/driver/UsbSerialPort;Lcom/android/usbserial/util/SerialInputOutputManager$Listener;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadTimeout:I

    .line 33
    iput v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteTimeout:I

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBufferLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBufferLock:Ljava/lang/Object;

    const/16 v0, 0x1000

    .line 39
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x13

    .line 47
    iput v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mThreadPriority:I

    .line 48
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 70
    iput-object p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    .line 71
    iput-object p2, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mListener:Lcom/android/usbserial/util/SerialInputOutputManager$Listener;

    .line 72
    invoke-interface {p1}, Lcom/android/usbserial/driver/UsbSerialPort;->getReadEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private step()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    iget v2, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadTimeout:I

    invoke-interface {v0, v1, v2}, Lcom/android/usbserial/driver/UsbSerialPort;->read([BI)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 227
    sget-boolean v3, Lcom/android/usbserial/util/SerialInputOutputManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read data len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getListener()Lcom/android/usbserial/util/SerialInputOutputManager$Listener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 230
    new-array v4, v0, [B

    .line 231
    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    invoke-interface {v3, v4}, Lcom/android/usbserial/util/SerialInputOutputManager$Listener;->onNewData([B)V

    :cond_1
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_1
    iget-object v3, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lez v3, :cond_2

    .line 241
    new-array v0, v3, [B

    .line 242
    iget-object v4, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 243
    iget-object v4, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 244
    iget-object v2, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 246
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 248
    sget-boolean v1, Lcom/android/usbserial/util/SerialInputOutputManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 249
    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing data len="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mSerialPort:Lcom/android/usbserial/driver/UsbSerialPort;

    iget v2, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteTimeout:I

    invoke-interface {v1, v0, v2}, Lcom/android/usbserial/driver/UsbSerialPort;->write([BI)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 246
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 224
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public declared-synchronized getListener()Lcom/android/usbserial/util/SerialInputOutputManager$Listener;
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mListener:Lcom/android/usbserial/util/SerialInputOutputManager$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadBufferSize()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadTimeout:I

    return v0
.end method

.method public declared-synchronized getState()Lcom/android/usbserial/util/SerialInputOutputManager$State;
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteBufferSize()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteTimeout:I

    return v0
.end method

.method public run()V
    .locals 4

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getState()Lcom/android/usbserial/util/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_3

    .line 192
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->RUNNING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 194
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Running ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_1
    iget v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mThreadPriority:I

    if-eqz v0, :cond_0

    .line 197
    iget v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getState()Lcom/android/usbserial/util/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->RUNNING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    if-eq v0, v1, :cond_1

    .line 200
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getState()Lcom/android/usbserial/util/SerialInputOutputManager$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    monitor-enter p0

    .line 213
    :try_start_2
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 214
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 203
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->step()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 206
    :try_start_4
    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

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

    .line 207
    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getListener()Lcom/android/usbserial/util/SerialInputOutputManager$Listener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 209
    invoke-interface {v1, v0}, Lcom/android/usbserial/util/SerialInputOutputManager$Listener;->onRunError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    :cond_2
    monitor-enter p0

    .line 213
    :try_start_5
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 214
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit p0

    :goto_1
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 212
    :goto_2
    monitor-enter p0

    .line 213
    :try_start_6
    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    iput-object v1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    .line 214
    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v2, "Stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 216
    throw v0

    :catchall_3
    move-exception v0

    .line 215
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 190
    :cond_3
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    .line 193
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method public declared-synchronized setListener(Lcom/android/usbserial/util/SerialInputOutputManager$Listener;)V
    .locals 0

    monitor-enter p0

    .line 76
    :try_start_0
    iput-object p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mListener:Lcom/android/usbserial/util/SerialInputOutputManager$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setReadBufferSize(I)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getReadBufferSize()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setReadTimeout(I)V
    .locals 2

    .line 99
    iget v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadTimeout:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "readTimeout only configurable before SerialInputOutputManager is started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mReadTimeout:I

    return-void
.end method

.method public setThreadPriority(I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_0

    .line 91
    iput p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mThreadPriority:I

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "threadPriority only configurable before SerialInputOutputManager is started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWriteBufferSize(I)V
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getWriteBufferSize()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 136
    iget-object v1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 138
    :cond_1
    iput-object p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteTimeout:I

    return-void
.end method

.method public start()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPED:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/android/usbserial/util/SerialInputOutputManager;->getState()Lcom/android/usbserial/util/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/android/usbserial/util/SerialInputOutputManager$State;->RUNNING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_0

    .line 173
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stop requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v0, Lcom/android/usbserial/util/SerialInputOutputManager$State;->STOPPING:Lcom/android/usbserial/util/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mState:Lcom/android/usbserial/util/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeAsync([B)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/usbserial/util/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
