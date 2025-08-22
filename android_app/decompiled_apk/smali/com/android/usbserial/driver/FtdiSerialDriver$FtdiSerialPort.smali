.class public Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;
.super Lcom/android/usbserial/driver/CommonUsbSerialPort;
.source "FtdiSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FtdiSerialPort"
.end annotation


# static fields
.field private static final GET_LATENCY_TIMER_REQUEST:I = 0xa

.field private static final GET_MODEM_STATUS_REQUEST:I = 0x5

.field private static final MODEM_CONTROL_DTR_DISABLE:I = 0x100

.field private static final MODEM_CONTROL_DTR_ENABLE:I = 0x101

.field private static final MODEM_CONTROL_REQUEST:I = 0x1

.field private static final MODEM_CONTROL_RTS_DISABLE:I = 0x200

.field private static final MODEM_CONTROL_RTS_ENABLE:I = 0x202

.field private static final MODEM_STATUS_CD:I = 0x80

.field private static final MODEM_STATUS_CTS:I = 0x10

.field private static final MODEM_STATUS_DSR:I = 0x20

.field private static final MODEM_STATUS_RI:I = 0x40

.field private static final READ_HEADER_LENGTH:I = 0x2

.field private static final REQTYPE_DEVICE_TO_HOST:I = 0xc0

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x40

.field private static final RESET_ALL:I = 0x0

.field private static final RESET_PURGE_RX:I = 0x1

.field private static final RESET_PURGE_TX:I = 0x2

.field private static final RESET_REQUEST:I = 0x0

.field private static final SET_BAUD_RATE_REQUEST:I = 0x3

.field private static final SET_DATA_REQUEST:I = 0x4

.field private static final SET_LATENCY_TIMER_REQUEST:I = 0x9

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private baudRateWithPort:Z

.field private breakConfig:I

.field private dtr:Z

.field private rts:Z

.field final synthetic this$0:Lcom/android/usbserial/driver/FtdiSerialDriver;


# direct methods
.method public constructor <init>(Lcom/android/usbserial/driver/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/android/usbserial/driver/FtdiSerialDriver;

    .line 98
    invoke-direct {p0, p2, p3}, Lcom/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    .line 93
    iput-boolean p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 94
    iput-boolean p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 95
    iput p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    return-void
.end method

.method private getStatus()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v9, v0, [B

    .line 298
    iget-object v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v5, v2, 0x1

    array-length v7, v9

    const/16 v2, 0xc0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v8, 0x1388

    move-object v6, v9

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 303
    aget-byte v0, v9, v0

    return v0

    .line 301
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get modem status failed: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setBaudrate(I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x3567e0

    if-gt v1, v2, :cond_6

    const v2, 0x2625a0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v1, v2, :cond_0

    const v2, 0x2dc6c0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    const v2, 0x1ab3f0

    if-lt v1, v2, :cond_1

    const v2, 0x1e8480

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x2dc6c00

    .line 199
    div-int v6, v2, v1

    add-int/2addr v6, v5

    shr-int/2addr v6, v5

    and-int/lit8 v7, v6, 0x7

    shr-int/2addr v6, v3

    const/16 v8, 0x3fff

    if-gt v6, v8, :cond_5

    shl-int/lit8 v8, v6, 0x3

    add-int/2addr v8, v7

    .line 205
    div-int/2addr v2, v8

    add-int/2addr v2, v5

    shr-int/2addr v2, v5

    :goto_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v2

    int-to-double v12, v1

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 208
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f9fbe76c8b43958L    # 0.031

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpl-double v14, v8, v10

    if-gez v14, :cond_4

    const v10, 0x8000

    const v11, 0xc000

    packed-switch v7, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    or-int v10, v6, v11

    goto :goto_2

    :pswitch_1
    or-int/2addr v10, v6

    goto :goto_2

    :pswitch_2
    or-int/lit16 v10, v6, 0x4000

    goto :goto_2

    :pswitch_3
    or-int/lit16 v10, v6, 0x4000

    goto :goto_3

    :pswitch_4
    or-int/lit8 v10, v6, 0x0

    :goto_2
    move/from16 v17, v10

    const/4 v10, 0x1

    goto :goto_6

    :pswitch_5
    or-int/2addr v10, v6

    goto :goto_3

    :pswitch_6
    or-int v10, v6, v11

    :goto_3
    move/from16 v17, v10

    goto :goto_5

    :goto_4
    :pswitch_7
    move/from16 v17, v6

    :goto_5
    const/4 v10, 0x0

    .line 223
    :goto_6
    iget-boolean v11, v0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    if-eqz v11, :cond_2

    shl-int/lit8 v10, v10, 0x8

    .line 225
    iget v11, v0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/2addr v11, v5

    or-int/2addr v10, v11

    :cond_2
    move/from16 v18, v10

    .line 227
    invoke-static {}, Lcom/android/usbserial/driver/FtdiSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    .line 228
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v5

    const/4 v1, 0x2

    mul-double v8, v8, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v3

    const/4 v1, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const-string v1, "baud rate=%d, effective=%d, error=%.1f%%, value=0x%04x, index=0x%04x, divisor=%d, subdivisor=%d"

    .line 227
    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v14, v0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v15, 0x40

    const/16 v16, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1388

    invoke-virtual/range {v14 .. v21}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 233
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting baudrate failed: result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-array v2, v5, [Ljava/lang/Object;

    mul-double v8, v8, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Baud rate deviation %.1f%% is higher than allowed 3%%"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Baud rate to low"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Baud rate to high"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected closeInt()V
    .locals 3

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-direct {p0}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    .line 359
    const-class v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 360
    iget-boolean v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 361
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1
    iget-boolean v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3

    .line 363
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    .line 364
    sget-object v2, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 365
    sget-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    iget-boolean v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/android/usbserial/driver/FtdiSerialDriver;

    return-object v0
.end method

.method public getLatencyTimer()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v9, v0, [B

    .line 414
    iget-object v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v5, v2, 0x1

    array-length v7, v9

    const/16 v2, 0xc0

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v8, 0x1388

    move-object v6, v9

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 419
    aget-byte v0, v9, v0

    return v0

    .line 417
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get latency timer failed: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    iget-boolean v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    const-class v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected openInt(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_7

    .line 115
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 116
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v3, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 118
    iget-object v3, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1388

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-nez v0, :cond_6

    .line 123
    iget-object v3, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v4, 0x40

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x101

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    iget-boolean v6, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x202

    goto :goto_1

    :cond_1
    const/16 v6, 0x200

    :goto_1
    or-int/2addr v6, v0

    iget v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1388

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-nez v0, :cond_5

    .line 132
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 133
    array-length v0, p1

    const/16 v3, 0xe

    if-lt v0, v3, :cond_4

    const/16 v0, 0xd

    .line 136
    aget-byte p1, p1, v0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 137
    iget-object p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 138
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result p1

    if-le p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    return-void

    .line 134
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not get device descriptors"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init RTS,DTR failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not enough endpoints"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not claim interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purge write buffer failed: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 388
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purge read buffer failed: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method

.method public read([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 158
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    :cond_0
    const/4 p2, 0x1

    .line 160
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v5, v4

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-super {p0, p1, p2, v0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->read([BIZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 161
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    :cond_1
    if-gtz p2, :cond_3

    .line 162
    invoke-static {}, Lcom/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->testConnection()V

    goto :goto_0

    .line 166
    :cond_2
    invoke-super {p0, p1, p2, v0}, Lcom/android/usbserial/driver/CommonUsbSerialPort;->read([BIZ)I

    move-result v2

    if-eq v2, v1, :cond_2

    move p2, v2

    .line 169
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->readFilter([BI)I

    move-result p1

    return p1

    .line 151
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Read buffer to small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readFilter([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v3, v1, v0

    .line 176
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    if-ltz v4, :cond_0

    .line 179
    invoke-static {p1, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    move v1, v3

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Expected at least 2 bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2
.end method

.method public setBreak(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    if-eqz p1, :cond_0

    or-int/lit16 v0, v0, 0x4000

    :cond_0
    move v4, v0

    .line 397
    iget-object v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x40

    const/4 v3, 0x4

    iget p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v5, p1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 400
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting BREAK failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDTR(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_0

    const/16 v1, 0x101

    const/16 v3, 0x101

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    const/16 v3, 0x100

    :goto_0
    iget v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-nez v0, :cond_1

    .line 333
    iput-boolean p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    return-void

    .line 331
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set DTR failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLatencyTimer(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v4, v1, 0x1

    const/16 v1, 0x40

    const/16 v2, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 408
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set latency timer failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameters(IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_c

    .line 242
    invoke-direct {p0, p1}, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->setBaudrate(I)V

    const/4 p1, 0x5

    if-eq p2, p1, :cond_b

    const/4 p1, 0x6

    if-eq p2, p1, :cond_b

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid data bits: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    or-int/lit8 p1, p2, 0x0

    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_6

    if-eq p4, v1, :cond_5

    if-eq p4, v0, :cond_4

    if-eq p4, p2, :cond_3

    const/4 v2, 0x4

    if-ne p4, v2, :cond_2

    or-int/lit16 p1, p1, 0x400

    goto :goto_1

    .line 273
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid parity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    or-int/lit16 p1, p1, 0x300

    goto :goto_1

    :cond_4
    or-int/lit16 p1, p1, 0x200

    goto :goto_1

    :cond_5
    or-int/lit16 p1, p1, 0x100

    :cond_6
    :goto_1
    if-eq p3, v1, :cond_9

    if-eq p3, v0, :cond_8

    if-eq p3, p2, :cond_7

    .line 285
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid stop bits: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported stop bits: 1.5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    or-int/lit16 p1, p1, 0x1000

    .line 288
    :cond_9
    iget-object v2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v3, 0x40

    const/4 v4, 0x4

    iget p2, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1388

    move v5, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p2

    if-nez p2, :cond_a

    .line 293
    iput p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    return-void

    .line 291
    :cond_a
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Setting parameters failed: result="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported data bits: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid baud rate: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRTS(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_0

    const/16 v1, 0x202

    const/16 v3, 0x202

    goto :goto_0

    :cond_0
    const/16 v1, 0x200

    const/16 v3, 0x200

    :goto_0
    iget v1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mPortNumber:I

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iput-boolean p1, p0, Lcom/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    return-void

    .line 351
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set DTR failed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
