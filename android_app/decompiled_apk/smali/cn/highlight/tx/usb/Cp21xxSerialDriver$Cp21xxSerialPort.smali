.class public Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;
.super Lcn/highlight/tx/usb/CommonUsbSerialPort;
.source "Cp21xxSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/Cp21xxSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cp21xxSerialPort"
.end annotation


# static fields
.field private static final BAUD_RATE_GEN_FREQ:I = 0x384000

.field private static final CONTROL_WRITE_DTR:I = 0x100

.field private static final CONTROL_WRITE_RTS:I = 0x200

.field private static final DEFAULT_BAUD_RATE:I = 0x2580

.field private static final FLUSH_READ_CODE:I = 0xa

.field private static final FLUSH_WRITE_CODE:I = 0x5

.field private static final MCR_ALL:I = 0x3

.field private static final MCR_DTR:I = 0x1

.field private static final MCR_RTS:I = 0x2

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x41

.field private static final SILABSER_FLUSH_REQUEST_CODE:I = 0x12

.field private static final SILABSER_IFC_ENABLE_REQUEST_CODE:I = 0x0

.field private static final SILABSER_SET_BAUDDIV_REQUEST_CODE:I = 0x1

.field private static final SILABSER_SET_BAUDRATE:I = 0x1e

.field private static final SILABSER_SET_LINE_CTL_REQUEST_CODE:I = 0x3

.field private static final SILABSER_SET_MHS_REQUEST_CODE:I = 0x7

.field private static final UART_DISABLE:I = 0x0

.field private static final UART_ENABLE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcn/highlight/tx/usb/Cp21xxSerialDriver;


# direct methods
.method public constructor <init>(Lcn/highlight/tx/usb/Cp21xxSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcn/highlight/tx/usb/Cp21xxSerialDriver;

    .line 108
    invoke-direct {p0, p2, p3}, Lcn/highlight/tx/usb/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method private setBaudRate(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v6, v0, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v6, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, v6, v0

    .line 240
    iget-object v1, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x41

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting baud rate."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setConfigSingle(II)I
    .locals 8

    .line 117
    iget-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x41

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    :try_start_0
    invoke-direct {p0, v1, v1}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    .line 174
    iget-object v1, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iput-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 177
    throw v1

    .line 170
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

    const/4 v0, 0x1

    return v0
.end method

.method public getDriver()Lcn/highlight/tx/usb/UsbSerialDriver;
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcn/highlight/tx/usb/Cp21xxSerialDriver;

    return-object v0
.end method

.method public bridge synthetic getPortNumber()I
    .locals 1

    .line 59
    invoke-super {p0}, Lcn/highlight/tx/usb/CommonUsbSerialPort;->getPortNumber()I

    move-result v0

    return v0
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

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getSerial()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-super {p0}, Lcn/highlight/tx/usb/CommonUsbSerialPort;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_5

    .line 127
    iput-object p1, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 130
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 132
    iget-object v3, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "claimInterface "

    if-eqz v1, :cond_0

    .line 133
    :try_start_1
    invoke-static {}, Lcn/highlight/tx/usb/Cp21xxSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SUCCESS"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {}, Lcn/highlight/tx/usb/Cp21xxSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " FAIL"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    :goto_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 141
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 143
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 144
    iput-object v3, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    .line 146
    :cond_2
    iput-object v3, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    :cond_4
    invoke-direct {p0, p1, v2}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    const/4 p1, 0x7

    const/16 v0, 0x303

    .line 152
    invoke-direct {p0, p1, v0}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    const/16 p1, 0x180

    .line 153
    invoke-direct {p0, v2, p1}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 159
    :try_start_2
    invoke-virtual {p0}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :catch_0
    throw p1

    .line 124
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already opened."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x5

    :cond_1
    or-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/16 p2, 0x12

    .line 336
    invoke-direct {p0, p2, p1}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    :cond_2
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

    .line 183
    iget-object v0, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 185
    iget-object v2, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBuffer:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 192
    monitor-exit v0

    return v1

    .line 194
    :cond_0
    iget-object v2, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBuffer:[B

    invoke-static {v2, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->setBaudRate(I)V

    const/4 p1, 0x5

    const/16 v0, 0x800

    if-eq p2, p1, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x7

    if-eq p2, p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x700

    goto :goto_0

    :cond_1
    const/16 v0, 0x600

    goto :goto_0

    :cond_2
    const/16 v0, 0x500

    :goto_0
    const/4 p1, 0x1

    const/4 p2, 0x2

    if-eq p4, p1, :cond_4

    if-eq p4, p2, :cond_3

    goto :goto_1

    :cond_3
    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_4
    or-int/lit8 v0, v0, 0x10

    :goto_1
    if-eq p3, p1, :cond_6

    if-eq p3, p2, :cond_5

    goto :goto_2

    :cond_5
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_6
    or-int/lit8 v0, v0, 0x0

    :goto_2
    const/4 p1, 0x3

    .line 288
    invoke-direct {p0, p1, v0}, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    return-void
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

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-super {p0}, Lcn/highlight/tx/usb/CommonUsbSerialPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 207
    iget-object v2, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_0
    array-length v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBuffer:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 215
    :cond_0
    iget-object v4, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBuffer:[B

    invoke-static {p1, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v4, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBuffer:[B

    .line 219
    :goto_1
    iget-object v5, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcn/highlight/tx/usb/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 221
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    .line 227
    invoke-static {}, Lcn/highlight/tx/usb/Cp21xxSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote amt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " attempted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v1, v4

    goto :goto_0

    .line 223
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 221
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v1
.end method
