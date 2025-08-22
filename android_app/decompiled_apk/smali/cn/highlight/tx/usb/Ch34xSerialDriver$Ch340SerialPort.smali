.class public Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;
.super Lcn/highlight/tx/usb/CommonUsbSerialPort;
.source "Ch34xSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/Ch34xSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ch340SerialPort"
.end annotation


# static fields
.field private static final USB_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final DEFAULT_BAUD_RATE:I

.field private dtr:Z

.field private mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private rts:Z

.field final synthetic this$0:Lcn/highlight/tx/usb/Ch34xSerialDriver;


# direct methods
.method public constructor <init>(Lcn/highlight/tx/usb/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcn/highlight/tx/usb/Ch34xSerialDriver;

    .line 77
    invoke-direct {p0, p2, p3}, Lcn/highlight/tx/usb/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/16 p1, 0x2580

    .line 68
    iput p1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->DEFAULT_BAUD_RATE:I

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 71
    iput-boolean p1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return-void
.end method

.method private checkState(Ljava/lang/String;II[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    array-length v0, p4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, p2, p3, v1, v0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result p2

    const-string p3, "]"

    if-ltz p2, :cond_4

    .line 222
    array-length v2, p4

    const-string v3, " ["

    if-ne p2, v2, :cond_3

    .line 226
    :goto_0
    array-length p2, p4

    if-ge v1, p2, :cond_2

    .line 227
    aget p2, p4, v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    aget-byte p2, v0, v1

    and-int/lit16 p2, p2, 0xff

    .line 232
    aget v2, p4, v1

    if-ne v2, p2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p4, v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " bytes, but get 0x"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 223
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " bytes, but get "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Faild send cmd ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private controlIn(III[B)I
    .locals 8

    .line 209
    iget-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v6, p4

    const/16 v1, 0xc0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private controlOut(III)I
    .locals 8

    .line 202
    iget-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x41

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private initialize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 245
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const-string v3, "init #1"

    const/16 v4, 0x5f

    invoke-direct {p0, v3, v4, v2, v1}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v1, 0xa1

    .line 247
    invoke-direct {p0, v1, v2, v2}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    if-ltz v2, :cond_2

    const/16 v2, 0x2580

    .line 251
    invoke-direct {p0, v2}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    new-array v3, v0, [I

    .line 253
    fill-array-data v3, :array_1

    const/16 v4, 0x2518

    const/16 v5, 0x95

    const-string v6, "init #4"

    invoke-direct {p0, v6, v5, v4, v3}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v3, 0x9a

    const/16 v6, 0x50

    .line 255
    invoke-direct {p0, v3, v4, v6}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v3

    if-ltz v3, :cond_1

    new-array v3, v0, [I

    .line 259
    fill-array-data v3, :array_2

    const/16 v4, 0x706

    const-string v6, "init #6"

    invoke-direct {p0, v6, v5, v4, v3}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v3, 0x501f

    const v6, 0xd90a

    .line 261
    invoke-direct {p0, v1, v3, v6}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 265
    invoke-direct {p0, v2}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 267
    invoke-direct {p0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    new-array v0, v0, [I

    .line 269
    fill-array-data v0, :array_3

    const-string v1, "init #10"

    invoke-direct {p0, v1, v5, v4, v0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xee
    .end array-data

    :array_3
    .array-data 4
        -0x1
        0xee
    .end array-data
.end method

.method private setBaudRate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 274
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    .line 278
    :goto_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x3

    .line 279
    aget v3, v0, v2

    if-ne v3, p1, :cond_2

    const/16 p1, 0x1312

    add-int/lit8 v1, v2, 0x1

    .line 280
    aget v1, v0, v1

    const/16 v3, 0x9a

    invoke-direct {p0, v3, p1, v1}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    const-string v1, "Error setting baud rate. #1"

    if-ltz p1, :cond_1

    const/16 p1, 0xf2c

    add-int/lit8 v2, v2, 0x2

    .line 284
    aget v0, v0, v2

    invoke-direct {p0, v3, p1, v0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 286
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Baud rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currently not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x960
        0xd901
        0x38
        0x12c0
        0x6402
        0x1f
        0x2580
        0xb202
        0x13
        0x4b00
        0xd902
        0xd
        0x9600
        0x6403
        0xa
        0x1c200
        0xcc03
        0x8
    .end array-data
.end method

.method private writeHandshakeByte()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    not-int v0, v0

    const/16 v2, 0xa4

    invoke-direct {p0, v2, v0, v1}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v0

    if-ltz v0, :cond_2

    return-void

    .line 240
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Faild to set handshake byte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 133
    iget-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iput-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 143
    throw v1

    .line 134
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

    .line 323
    iget-boolean v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcn/highlight/tx/usb/UsbSerialDriver;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcn/highlight/tx/usb/Ch34xSerialDriver;

    return-object v0
.end method

.method public bridge synthetic getPortNumber()I
    .locals 1

    .line 64
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

    .line 339
    iget-boolean v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return v0
.end method

.method public bridge synthetic getSerial()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-super {p0}, Lcn/highlight/tx/usb/CommonUsbSerialPort;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_5

    .line 91
    iput-object p1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 94
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 96
    iget-object v3, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "claimInterface "

    if-eqz v1, :cond_0

    .line 97
    :try_start_1
    invoke-static {}, Lcn/highlight/tx/usb/Ch34xSerialDriver;->access$000()Ljava/lang/String;

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

    .line 99
    :cond_0
    invoke-static {}, Lcn/highlight/tx/usb/Ch34xSerialDriver;->access$000()Ljava/lang/String;

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

    .line 103
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 104
    :goto_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 105
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 107
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    .line 108
    iput-object v1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    .line 110
    :cond_2
    iput-object v1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 116
    :cond_4
    invoke-direct {p0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->initialize()V

    const/16 p1, 0x2580

    .line 117
    invoke-direct {p0, p1}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_2
    invoke-virtual {p0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :catch_0
    throw p1

    .line 88
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already opened."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    .line 150
    iget-object v0, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 152
    iget-object v2, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 159
    monitor-exit v0

    return v1

    .line 161
    :cond_0
    iget-object v2, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    invoke-static {v2, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
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

    .line 328
    iput-boolean p1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 329
    invoke-direct {p0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    return-void
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iput-boolean p1, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 345
    invoke-direct {p0}, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 64
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

    .line 170
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 174
    iget-object v2, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_0
    array-length v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 182
    :cond_0
    iget-object v4, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    invoke-static {p1, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v4, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    .line 186
    :goto_1
    iget-object v5, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcn/highlight/tx/usb/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 188
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    .line 194
    invoke-static {}, Lcn/highlight/tx/usb/Ch34xSerialDriver;->access$000()Ljava/lang/String;

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

    .line 190
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

    .line 188
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v1
.end method
