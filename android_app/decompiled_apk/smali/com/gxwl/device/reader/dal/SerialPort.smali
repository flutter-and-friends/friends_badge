.class public Lcom/gxwl/device/reader/dal/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field public static final UART0:Ljava/lang/String; = "/dev/ttyS0"

.field public static final UART1:Ljava/lang/String; = "/dev/ttyS1"

.field public static final UART2:Ljava/lang/String; = "/dev/ttyS2"

.field public static final UART3:Ljava/lang/String; = "/dev/ttyS3"

.field public static final UART_FHR:Ljava/lang/String; = "/dev/ttyS3"

.field public static final UART_FHR_WIRELESS_EX:Ljava/lang/String; = "/dev/ttyS2"

.field public static final UART_FHR_WIRELESS_IN:Ljava/lang/String; = "/dev/ttyS2"

.field public static final UART_NIBP:Ljava/lang/String; = "/dev/ttyS2"

.field public static final UART_PRINT:Ljava/lang/String; = "/dev/ttyS1"

.field public static final UART_SPO2:Ljava/lang/String; = "/dev/ttyS0"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SerialPort"

    .line 119
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "/system/bin/su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 666 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nexit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/gxwl/device/reader/dal/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/gxwl/device/reader/dal/SerialPort;->mFd:Ljava/io/FileDescriptor;

    .line 82
    iget-object p1, p0, Lcom/gxwl/device/reader/dal/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_2

    .line 85
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Lcom/gxwl/device/reader/dal/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 86
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/gxwl/device/reader/dal/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/gxwl/device/reader/dal/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-void

    .line 83
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 73
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method private static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method

.method private native setParity(IIII)V
.end method


# virtual methods
.method public native close()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gxwl/device/reader/dal/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/gxwl/device/reader/dal/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public setParity(III)V
    .locals 1

    const/4 v0, -0x1

    .line 98
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/gxwl/device/reader/dal/SerialPort;->setParity(IIII)V

    return-void
.end method
