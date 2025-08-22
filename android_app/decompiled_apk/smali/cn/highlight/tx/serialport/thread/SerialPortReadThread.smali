.class public abstract Lcn/highlight/tx/serialport/thread/SerialPortReadThread;
.super Ljava/lang/Thread;
.source "SerialPortReadThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mReadBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mInputStream:Ljava/io/InputStream;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 22
    iput-object p1, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mReadBuffer:[B

    return-void
.end method


# virtual methods
.method public abstract onDataReceived([B)V
.end method

.method public release()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->interrupt()V

    .line 67
    iget-object v0, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 27
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 31
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->TAG:Ljava/lang/String;

    const-string v1, "run: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mReadBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    if-gtz v0, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    new-array v1, v0, [B

    .line 44
    iget-object v2, p0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->mReadBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    sget-object v0, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: readBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, v1}, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->onDataReceived([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
