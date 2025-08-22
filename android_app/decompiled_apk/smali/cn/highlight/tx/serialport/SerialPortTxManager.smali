.class public Lcn/highlight/tx/serialport/SerialPortTxManager;
.super Lcn/highlight/tx/serialport/SerialPortTx;
.source "SerialPortTxManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private mOnOpenSerialPortListener:Lcn/highlight/tx/listener/OnOpenSerialPortListener;

.field private mOnSerialPortDataListener:Lcn/highlight/tx/listener/OnSerialPortDataListener;

.field private mSendingHandler:Landroid/os/Handler;

.field private mSendingHandlerThread:Landroid/os/HandlerThread;

.field private mSerialPortReadThread:Lcn/highlight/tx/serialport/thread/SerialPortReadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/tx/serialport/SerialPortTxManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/highlight/tx/serialport/SerialPortTx;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/tx/serialport/SerialPortTxManager;)Ljava/io/FileOutputStream;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcn/highlight/tx/serialport/SerialPortTxManager;)Lcn/highlight/tx/listener/OnSerialPortDataListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnSerialPortDataListener:Lcn/highlight/tx/listener/OnSerialPortDataListener;

    return-object p0
.end method

.method private startReadThread()V
    .locals 2

    .line 183
    new-instance v0, Lcn/highlight/tx/serialport/SerialPortTxManager$2;

    iget-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-direct {v0, p0, v1}, Lcn/highlight/tx/serialport/SerialPortTxManager$2;-><init>(Lcn/highlight/tx/serialport/SerialPortTxManager;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSerialPortReadThread:Lcn/highlight/tx/serialport/thread/SerialPortReadThread;

    .line 191
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSerialPortReadThread:Lcn/highlight/tx/serialport/thread/SerialPortReadThread;

    invoke-virtual {v0}, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->start()V

    return-void
.end method

.method private startSendThread()V
    .locals 2

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mSendingHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandlerThread:Landroid/os/HandlerThread;

    .line 146
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Lcn/highlight/tx/serialport/SerialPortTxManager$1;

    iget-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/highlight/tx/serialport/SerialPortTxManager$1;-><init>(Lcn/highlight/tx/serialport/SerialPortTxManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopReadThread()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSerialPortReadThread:Lcn/highlight/tx/serialport/thread/SerialPortReadThread;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;->release()V

    :cond_0
    return-void
.end method

.method private stopSendThread()V
    .locals 2

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandler:Landroid/os/Handler;

    .line 172
    iget-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 174
    iget-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 175
    iput-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeSerialPort()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->close()V

    .line 88
    iput-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFd:Ljava/io/FileDescriptor;

    .line 91
    :cond_0
    invoke-direct {p0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->stopSendThread()V

    .line 93
    invoke-direct {p0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->stopReadThread()V

    .line 95
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :goto_0
    iput-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileInputStream:Ljava/io/FileInputStream;

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    .line 106
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    :goto_1
    iput-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 113
    :cond_2
    iput-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnOpenSerialPortListener:Lcn/highlight/tx/listener/OnOpenSerialPortListener;

    .line 115
    iput-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnSerialPortDataListener:Lcn/highlight/tx/listener/OnSerialPortDataListener;

    return-void
.end method

.method public openSerialPort(Ljava/io/File;I)Z
    .locals 6

    .line 45
    sget-object v0, Lcn/highlight/tx/serialport/SerialPortTxManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSerialPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "\u6253\u5f00\u4e32\u53e3 %s  \u6ce2\u7279\u7387 %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcn/highlight/tx/serialport/SerialPortTxManager;->chmod777(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    sget-object p2, Lcn/highlight/tx/serialport/SerialPortTxManager;->TAG:Ljava/lang/String;

    const-string v0, "openSerialPort: \u6ca1\u6709\u8bfb\u5199\u6743\u9650"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p2, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnOpenSerialPortListener:Lcn/highlight/tx/listener/OnOpenSerialPortListener;

    if-eqz p2, :cond_1

    .line 53
    sget-object v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->NO_READ_WRITE_PERMISSION:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    invoke-interface {p2, p1, v0}, Lcn/highlight/tx/listener/OnOpenSerialPortListener;->onFail(Ljava/io/File;Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;)V

    :cond_1
    return v4

    .line 60
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v4}, Lcn/highlight/tx/serialport/SerialPortTxManager;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFd:Ljava/io/FileDescriptor;

    .line 61
    new-instance p2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileInputStream:Ljava/io/FileInputStream;

    .line 62
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 63
    sget-object p2, Lcn/highlight/tx/serialport/SerialPortTxManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSerialPort: \u4e32\u53e3\u5df2\u7ecf\u6253\u5f00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p2, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnOpenSerialPortListener:Lcn/highlight/tx/listener/OnOpenSerialPortListener;

    if-eqz p2, :cond_3

    .line 65
    iget-object p2, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnOpenSerialPortListener:Lcn/highlight/tx/listener/OnOpenSerialPortListener;

    invoke-interface {p2, p1}, Lcn/highlight/tx/listener/OnOpenSerialPortListener;->onSuccess(Ljava/io/File;)V

    .line 68
    :cond_3
    invoke-direct {p0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->startSendThread()V

    .line 70
    invoke-direct {p0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->startReadThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p2

    .line 73
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    iget-object p2, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnOpenSerialPortListener:Lcn/highlight/tx/listener/OnOpenSerialPortListener;

    if-eqz p2, :cond_4

    .line 75
    sget-object v0, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->OPEN_FAIL:Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;

    invoke-interface {p2, p1, v0}, Lcn/highlight/tx/listener/OnOpenSerialPortListener;->onFail(Ljava/io/File;Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;)V

    :cond_4
    return v4
.end method

.method public sendBytes([B)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 215
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object p1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mSendingHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnOpenSerialPortListener(Lcn/highlight/tx/listener/OnOpenSerialPortListener;)Lcn/highlight/tx/serialport/SerialPortTxManager;
    .locals 0

    .line 125
    iput-object p1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnOpenSerialPortListener:Lcn/highlight/tx/listener/OnOpenSerialPortListener;

    return-object p0
.end method

.method public setOnSerialPortDataListener(Lcn/highlight/tx/listener/OnSerialPortDataListener;)Lcn/highlight/tx/serialport/SerialPortTxManager;
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager;->mOnSerialPortDataListener:Lcn/highlight/tx/listener/OnSerialPortDataListener;

    return-object p0
.end method
