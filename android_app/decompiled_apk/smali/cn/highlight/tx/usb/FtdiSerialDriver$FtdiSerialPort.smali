.class Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;
.super Lcn/highlight/tx/usb/CommonUsbSerialPort;
.source "FtdiSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtdiSerialPort"
.end annotation


# static fields
.field private static final ENABLE_ASYNC_READS:Z = false

.field public static final FTDI_DEVICE_IN_REQTYPE:I = 0xc0

.field public static final FTDI_DEVICE_OUT_REQTYPE:I = 0x40

.field private static final MODEM_STATUS_HEADER_LENGTH:I = 0x2

.field private static final SIO_MODEM_CTRL_REQUEST:I = 0x1

.field private static final SIO_RESET_PURGE_RX:I = 0x1

.field private static final SIO_RESET_PURGE_TX:I = 0x2

.field private static final SIO_RESET_REQUEST:I = 0x0

.field private static final SIO_RESET_SIO:I = 0x0

.field private static final SIO_SET_BAUD_RATE_REQUEST:I = 0x3

.field private static final SIO_SET_DATA_REQUEST:I = 0x4

.field private static final SIO_SET_FLOW_CTRL_REQUEST:I = 0x2

.field public static final USB_ENDPOINT_IN:I = 0x80

.field public static final USB_ENDPOINT_OUT:I = 0x0

.field public static final USB_READ_TIMEOUT_MILLIS:I = 0x1388

.field public static final USB_RECIP_DEVICE:I = 0x0

.field public static final USB_RECIP_ENDPOINT:I = 0x2

.field public static final USB_RECIP_INTERFACE:I = 0x1

.field public static final USB_RECIP_OTHER:I = 0x3

.field public static final USB_TYPE_CLASS:I = 0x0

.field public static final USB_TYPE_RESERVED:I = 0x0

.field public static final USB_TYPE_STANDARD:I = 0x0

.field public static final USB_TYPE_VENDOR:I = 0x0

.field public static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInterface:I

.field private mMaxPacketSize:I

.field private mType:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

.field final synthetic this$0:Lcn/highlight/tx/usb/FtdiSerialDriver;


# direct methods
.method public constructor <init>(Lcn/highlight/tx/usb/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcn/highlight/tx/usb/FtdiSerialDriver;

    .line 194
    invoke-direct {p0, p2, p3}, Lcn/highlight/tx/usb/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 178
    const-class p1, Lcn/highlight/tx/usb/FtdiSerialDriver;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mInterface:I

    const/16 p1, 0x40

    .line 184
    iput p1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mMaxPacketSize:I

    return-void
.end method

.method private convertBaudrate(I)[J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x16e3600

    .line 427
    div-int v3, v2, v1

    const/16 v4, 0x8

    new-array v5, v4, [I

    .line 431
    fill-array-data v5, :array_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x10

    const/4 v12, 0x2

    if-ge v7, v12, :cond_9

    add-int v13, v3, v7

    const v14, 0x1ffff

    const/16 v15, 0xc

    if-gt v13, v4, :cond_0

    const/16 v14, 0x8

    goto :goto_2

    .line 443
    :cond_0
    iget-object v12, v0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mType:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    sget-object v6, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    if-eq v12, v6, :cond_1

    if-ge v13, v15, :cond_1

    const/16 v14, 0xc

    goto :goto_2

    :cond_1
    if-ge v3, v11, :cond_2

    const/16 v14, 0x10

    goto :goto_2

    .line 450
    :cond_2
    iget-object v6, v0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mType:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    sget-object v12, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    if-ne v6, v12, :cond_3

    goto :goto_1

    :cond_3
    if-le v13, v14, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v14, v13

    .line 462
    :goto_2
    div-int/lit8 v6, v14, 0x2

    add-int/2addr v6, v2

    div-int/2addr v6, v14

    if-ge v6, v1, :cond_5

    sub-int v12, v1, v6

    goto :goto_3

    :cond_5
    sub-int v12, v6, v1

    :goto_3
    if-eqz v7, :cond_6

    if-ge v12, v8, :cond_8

    :cond_6
    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    move v10, v6

    move v8, v12

    move v9, v14

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_9
    move v14, v9

    move v6, v10

    :goto_4
    shr-int/lit8 v1, v14, 0x3

    and-int/lit8 v2, v14, 0x7

    .line 484
    aget v2, v5, v2

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    cmp-long v3, v1, v9

    if-nez v3, :cond_a

    move-wide v1, v7

    goto :goto_5

    :cond_a
    const-wide/16 v12, 0x4001

    cmp-long v3, v1, v12

    if-nez v3, :cond_b

    move-wide v1, v9

    :cond_b
    :goto_5
    const-wide/32 v9, 0xffff

    and-long v12, v1, v9

    .line 495
    iget-object v3, v0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mType:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    sget-object v5, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    if-eq v3, v5, :cond_d

    iget-object v3, v0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mType:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    sget-object v5, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    if-eq v3, v5, :cond_d

    iget-object v3, v0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mType:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    sget-object v5, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    if-ne v3, v5, :cond_c

    goto :goto_6

    :cond_c
    shr-long/2addr v1, v11

    and-long/2addr v1, v9

    goto :goto_7

    :cond_d
    :goto_6
    shr-long/2addr v1, v4

    and-long/2addr v1, v9

    const-wide/32 v3, 0xff00

    and-long/2addr v1, v3

    or-long/2addr v1, v7

    :goto_7
    const/4 v3, 0x3

    new-array v3, v3, [J

    int-to-long v4, v6

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    aput-wide v1, v3, v4

    const/4 v1, 0x2

    aput-wide v12, v3, v1

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x2
        0x4
        0x1
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private final filterStatusBytes([B[BII)I
    .locals 6

    .line 211
    div-int v0, p3, p4

    rem-int v1, p3, p4

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v0, v3

    :goto_1
    if-ge v2, v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v3, v1, -0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v3, p4, -0x2

    :goto_2
    if-lez v3, :cond_2

    mul-int v4, v2, p4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, p4, -0x2

    mul-int v5, v5, v2

    .line 217
    invoke-static {p1, v4, p2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    return p3
.end method

.method private setBaudRate(I)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    invoke-direct {p0, p1}, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->convertBaudrate(I)[J

    move-result-object p1

    const/4 v0, 0x0

    .line 363
    aget-wide v0, p1, v0

    const/4 v2, 0x1

    .line 364
    aget-wide v2, p1, v2

    const/4 v4, 0x2

    .line 365
    aget-wide v4, p1, v4

    .line 366
    iget-object v6, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    long-to-int v9, v4

    long-to-int v10, v2

    const/16 v7, 0x40

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1388

    invoke-virtual/range {v6 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_0

    long-to-int p1, v0

    return p1

    .line 370
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting baudrate failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iput-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 274
    throw v1

    .line 268
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getDTR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getDriver()Lcn/highlight/tx/usb/UsbSerialDriver;
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcn/highlight/tx/usb/FtdiSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    .line 244
    iput-object p1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v0, 0x0

    .line 248
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "claimInterface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error claiming interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 259
    invoke-virtual {p0}, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->close()V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 262
    throw p1

    .line 242
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already open"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Flushing RX failed: result="

    if-eqz p1, :cond_1

    .line 551
    iget-object v1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 559
    iget-object v1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 562
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public read([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    array-length v2, p1

    iget-object v3, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mReadBuffer:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 313
    iget-object v3, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mReadBuffer:[B

    invoke-virtual {v3, v0, v4, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mReadBuffer:[B

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    invoke-direct {p0, v2, p1, p2, v0}, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->filterStatusBytes([B[BII)I

    move-result p1

    monitor-exit v1

    return p1

    .line 317
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Expected at least 2 bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 321
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_R:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    iput-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mType:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    return-void

    .line 232
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset failed: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setParameters(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->setBaudRate(I)I

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_4

    if-eq p4, v1, :cond_3

    if-eq p4, v0, :cond_2

    if-eq p4, p1, :cond_1

    const/4 v2, 0x4

    if-ne p4, v2, :cond_0

    or-int/lit16 p2, p2, 0x400

    goto :goto_0

    .line 399
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown parity value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    or-int/lit16 p2, p2, 0x300

    goto :goto_0

    :cond_2
    or-int/lit16 p2, p2, 0x200

    goto :goto_0

    :cond_3
    or-int/lit16 p2, p2, 0x100

    goto :goto_0

    :cond_4
    or-int/lit8 p2, p2, 0x0

    :goto_0
    if-eq p3, v1, :cond_7

    if-eq p3, v0, :cond_6

    if-ne p3, p1, :cond_5

    or-int/lit16 p1, p2, 0x800

    goto :goto_1

    .line 413
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown stopBits value: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    or-int/lit16 p1, p2, 0x1000

    goto :goto_1

    :cond_7
    or-int/lit8 p1, p2, 0x0

    :goto_1
    move v3, p1

    .line 416
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 420
    :cond_8
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Setting parameters failed: result="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write([BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    const/4 v2, 0x0

    .line 330
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 334
    iget-object v3, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_0
    array-length v4, p1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mWriteBuffer:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-nez v2, :cond_0

    move-object v5, p1

    goto :goto_1

    .line 342
    :cond_0
    iget-object v5, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mWriteBuffer:[B

    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object v5, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mWriteBuffer:[B

    .line 346
    :goto_1
    iget-object v6, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v6, v0, v5, v4, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v5

    .line 348
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_1

    .line 355
    iget-object v3, p0, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrote amtWritten="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " attempted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v5

    goto :goto_0

    .line 351
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 348
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v2
.end method
