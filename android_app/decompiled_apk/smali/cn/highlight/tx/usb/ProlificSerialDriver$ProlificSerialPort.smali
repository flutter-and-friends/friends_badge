.class Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;
.super Lcn/highlight/tx/usb/CommonUsbSerialPort;
.source "ProlificSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProlificSerialPort"
.end annotation


# static fields
.field private static final CONTROL_DTR:I = 0x1

.field private static final CONTROL_RTS:I = 0x2

.field private static final DEVICE_TYPE_0:I = 0x1

.field private static final DEVICE_TYPE_1:I = 0x2

.field private static final DEVICE_TYPE_HX:I = 0x0

.field private static final FLUSH_RX_REQUEST:I = 0x8

.field private static final FLUSH_TX_REQUEST:I = 0x9

.field private static final INTERRUPT_ENDPOINT:I = 0x81

.field private static final PROLIFIC_CTRL_OUT_REQTYPE:I = 0x21

.field private static final PROLIFIC_VENDOR_IN_REQTYPE:I = 0xc0

.field private static final PROLIFIC_VENDOR_OUT_REQTYPE:I = 0x40

.field private static final PROLIFIC_VENDOR_READ_REQUEST:I = 0x1

.field private static final PROLIFIC_VENDOR_WRITE_REQUEST:I = 0x1

.field private static final READ_ENDPOINT:I = 0x83

.field private static final SET_CONTROL_REQUEST:I = 0x22

.field private static final SET_LINE_REQUEST:I = 0x20

.field private static final STATUS_BUFFER_SIZE:I = 0xa

.field private static final STATUS_BYTE_IDX:I = 0x8

.field private static final STATUS_FLAG_CD:I = 0x1

.field private static final STATUS_FLAG_CTS:I = 0x80

.field private static final STATUS_FLAG_DSR:I = 0x2

.field private static final STATUS_FLAG_RI:I = 0x8

.field private static final USB_READ_TIMEOUT_MILLIS:I = 0x3e8

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388

.field private static final WRITE_ENDPOINT:I = 0x2


# instance fields
.field private mBaudRate:I

.field private mControlLinesValue:I

.field private mDataBits:I

.field private mDeviceType:I

.field private mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mParity:I

.field private mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mReadStatusException:Ljava/io/IOException;

.field private volatile mReadStatusThread:Ljava/lang/Thread;

.field private final mReadStatusThreadLock:Ljava/lang/Object;

.field private mStatus:I

.field private mStopBits:I

.field mStopReadStatusThread:Z

.field private mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;


# direct methods
.method public constructor <init>(Lcn/highlight/tx/usb/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;

    .line 128
    invoke-direct {p0, p2, p3}, Lcn/highlight/tx/usb/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 116
    iput p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 p2, -0x1

    .line 118
    iput p2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    iput p2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    iput p2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    iput p2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 120
    iput p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    const/4 p2, 0x0

    .line 121
    iput-object p2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 122
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    .line 123
    iput-boolean p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 124
    iput-object p2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    return-void
.end method

.method static synthetic access$100(Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->readStatusThreadFunction()V

    return-void
.end method

.method private final ctrlOut(III[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x21

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 179
    invoke-direct/range {v0 .. v5}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method

.method private doBlackMagic()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8484

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0, v0, v2, v1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const/16 v3, 0x404

    const/4 v4, 0x0

    .line 185
    invoke-direct {p0, v3, v2, v4}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 186
    invoke-direct {p0, v0, v2, v1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const v5, 0x8383

    .line 187
    invoke-direct {p0, v5, v2, v1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 188
    invoke-direct {p0, v0, v2, v1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 189
    invoke-direct {p0, v3, v1, v4}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 190
    invoke-direct {p0, v0, v2, v1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 191
    invoke-direct {p0, v5, v2, v1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 192
    invoke-direct {p0, v2, v1, v4}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 193
    invoke-direct {p0, v1, v2, v4}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 194
    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    if-nez v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v4}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    return-void
.end method

.method private final getStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 231
    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 236
    iget-object v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;

    invoke-static {v1}, Lcn/highlight/tx/usb/ProlificSerialDriver;->access$000(Lcn/highlight/tx/usb/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read initial CTS / DSR / CD / RI status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 238
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 241
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort$1;

    invoke-direct {v2, p0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort$1;-><init>(Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 247
    iget-object v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 248
    iget-object v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 250
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 254
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 260
    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    return v0

    :cond_3
    const/4 v1, 0x0

    .line 256
    iput-object v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 257
    throw v0
.end method

.method private final inControlTransfer(IIIII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-array v8, p5, [B

    .line 139
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v7, 0x3e8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, p5, :cond_0

    return-object v8

    .line 142
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    .line 144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p5

    const/4 p3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "ControlTransfer with value 0x%x failed: %d"

    .line 143
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final outControlTransfer(IIII[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_0
    array-length v1, p5

    .line 152
    :goto_0
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v9, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 155
    :cond_1
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    .line 157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v0

    const/4 p3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "ControlTransfer with value 0x%x failed: %d"

    .line 156
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final readStatusThreadFunction()V
    .locals 6

    .line 204
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    if-nez v0, :cond_2

    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 206
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    if-lez v2, :cond_0

    if-ne v2, v0, :cond_1

    const/16 v0, 0x8

    .line 212
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_0

    .line 214
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid CTS / DSR / CD / RI status buffer received, expected %d bytes, but received %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    .line 215
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 222
    iput-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    :cond_2
    return-void
.end method

.method private resetDevice()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, v0, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->purgeHwBuffers(ZZ)Z

    return-void
.end method

.method private setControlLines(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, v0, p1, v1, v2}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 199
    iput p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    return-void
.end method

.method private final testStatusFlag(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final vendorIn(III)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xc0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 163
    invoke-direct/range {v0 .. v5}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B

    move-result-object p1

    return-object p1
.end method

.method private final vendorOut(II[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x40

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 169
    invoke-direct/range {v0 .. v5}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 349
    :try_start_0
    iput-boolean v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 350
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 351
    :try_start_1
    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 353
    :try_start_2
    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 355
    :try_start_3
    iget-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;

    invoke-static {v4}, Lcn/highlight/tx/usb/ProlificSerialDriver;->access$000(Lcn/highlight/tx/usb/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "An error occured while waiting for status read thread"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    :try_start_4
    invoke-direct {p0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 362
    :try_start_5
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 364
    iput-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 365
    throw v0

    :catchall_1
    move-exception v3

    .line 358
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 362
    :try_start_8
    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 364
    iput-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 366
    throw v0

    :catchall_3
    move-exception v0

    .line 364
    iput-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 365
    throw v0

    .line 346
    :cond_1
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

    const/4 v0, 0x1

    .line 490
    invoke-direct {p0, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 495
    invoke-direct {p0, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 500
    invoke-direct {p0, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDTR()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDriver()Lcn/highlight/tx/usb/UsbSerialDriver;
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 521
    invoke-direct {p0, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getRTS()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_9

    .line 273
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v2, 0x1

    .line 275
    invoke-virtual {p1, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 279
    iput-object p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v3, 0x0

    .line 282
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_3

    .line 283
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 285
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v6

    if-eq v6, v5, :cond_2

    const/16 v5, 0x81

    if-eq v6, v5, :cond_1

    const/16 v5, 0x83

    if-eq v6, v5, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    iput-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 295
    :cond_1
    iput-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 291
    :cond_2
    iput-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_3
    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 301
    iput v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 304
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 305
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRawDescriptors"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v4, v1, [Ljava/lang/Object;

    .line 307
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    const/4 v3, 0x7

    .line 308
    aget-byte v2, v2, v3

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 310
    iput v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    goto :goto_3

    .line 311
    :cond_5
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 312
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_6

    goto :goto_2

    .line 315
    :cond_6
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;

    invoke-static {v2}, Lcn/highlight/tx/usb/ProlificSerialDriver;->access$000(Lcn/highlight/tx/usb/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not detect PL2303 subtype, Assuming that it is a HX device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    goto :goto_3

    .line 313
    :cond_7
    :goto_2
    iput v5, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 325
    :try_start_2
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;

    invoke-static {v2}, Lcn/highlight/tx/usb/ProlificSerialDriver;->access$000(Lcn/highlight/tx/usb/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "An unexpected exception occured while trying to detect PL2303 subtype"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 320
    :catch_1
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcn/highlight/tx/usb/ProlificSerialDriver;

    invoke-static {v2}, Lcn/highlight/tx/usb/ProlificSerialDriver;->access$000(Lcn/highlight/tx/usb/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Method UsbDeviceConnection.getRawDescriptors, required for PL2303 subtype detection, not available! Assuming that it is a HX device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 330
    :goto_3
    iget v1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    invoke-direct {p0, v1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 331
    invoke-direct {p0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 333
    invoke-direct {p0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->doBlackMagic()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 337
    iput-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 338
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 340
    throw v1

    .line 276
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error claiming Prolific interface 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already open"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    .line 543
    invoke-direct {p0, v2, v1, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 v2, 0x9

    .line 547
    invoke-direct {p0, v2, v1, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public read([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 373
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    .line 376
    monitor-exit v0

    return v1

    .line 378
    :cond_0
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    invoke-static {v2, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    .line 380
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

    if-eqz p1, :cond_0

    .line 512
    iget p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 514
    :cond_0
    iget p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x2

    .line 516
    :goto_0
    invoke-direct {p0, p1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    if-eq p3, v3, :cond_3

    if-eq p3, v4, :cond_2

    if-ne p3, v5, :cond_1

    aput-byte v3, v0, v1

    goto :goto_0

    .line 448
    :cond_1
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

    :cond_2
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_3
    aput-byte v2, v0, v1

    :goto_0
    const/4 v6, 0x5

    if-eqz p4, :cond_8

    if-eq p4, v3, :cond_7

    if-eq p4, v4, :cond_6

    if-eq p4, v5, :cond_5

    if-ne p4, v1, :cond_4

    aput-byte v1, v0, v6

    goto :goto_1

    .line 473
    :cond_4
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

    :cond_5
    aput-byte v5, v0, v6

    goto :goto_1

    :cond_6
    aput-byte v4, v0, v6

    goto :goto_1

    :cond_7
    aput-byte v3, v0, v6

    goto :goto_1

    :cond_8
    aput-byte v2, v0, v6

    :goto_1
    const/4 v1, 0x6

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 478
    invoke-direct {p0, v1, v2, v2, v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 480
    invoke-direct {p0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 482
    iput p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    .line 483
    iput p2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    .line 484
    iput p3, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 485
    iput p4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    return-void
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 533
    iget p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 535
    :cond_0
    iget p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x3

    .line 537
    :goto_0
    invoke-direct {p0, p1}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
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

    .line 387
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 391
    iget-object v2, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 394
    :try_start_0
    array-length v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 399
    :cond_0
    iget-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    invoke-static {p1, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget-object v4, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    .line 403
    :goto_1
    iget-object v5, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 405
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    add-int/2addr v1, v4

    goto :goto_0

    .line 408
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

    .line 405
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v1
.end method
