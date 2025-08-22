.class Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;
.super Lcn/highlight/tx/usb/CommonUsbSerialPort;
.source "CdcAcmSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/CdcAcmSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CdcAcmSerialPort"
.end annotation


# static fields
.field private static final GET_LINE_CODING:I = 0x21

.field private static final SEND_BREAK:I = 0x23

.field private static final SET_CONTROL_LINE_STATE:I = 0x22

.field private static final SET_LINE_CODING:I = 0x20

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_RT_ACM:I = 0x21


# instance fields
.field private mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mControlInterface:Landroid/hardware/usb/UsbInterface;

.field private mDataInterface:Landroid/hardware/usb/UsbInterface;

.field private mDtr:Z

.field private final mEnableAsyncReads:Z

.field private mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mRts:Z

.field private mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;


# direct methods
.method public constructor <init>(Lcn/highlight/tx/usb/CdcAcmSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    .line 94
    invoke-direct {p0, p2, p3}, Lcn/highlight/tx/usb/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 83
    iput-boolean p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 95
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mEnableAsyncReads:Z

    return-void
.end method

.method private openInterface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "claiming interfaces, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 202
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Control iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 210
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Control endpoint direction: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Claiming data interface."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 214
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data iface="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 221
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read endpoint direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 223
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write endpoint direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim data interface."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim control interface."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private openSingleInterface()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    .line 145
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Control iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    .line 148
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDataInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_6

    const/4 v3, 0x0

    .line 162
    iput-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 163
    iput-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 164
    iput-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :goto_0
    if-ge v1, v0, :cond_4

    .line 166
    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    .line 168
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 169
    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v4}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Found controlling endpoint"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v5, :cond_1

    .line 172
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 173
    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v4}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Found reading endpoint"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_2

    .line 176
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 177
    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v4}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Found writing endpoint"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 182
    :cond_2
    :goto_1
    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v3, :cond_3

    .line 185
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Found all required endpoints"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_5

    return-void

    .line 193
    :cond_5
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not establish all endpoints"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_6
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not enough endpoints - need 3. count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient number of endpoints("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim shared control/data interface."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendAcmControlMessage(II[B)I
    .locals 8

    .line 227
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p3, :cond_0

    array-length v1, p3

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x1388

    const/16 v1, 0x21

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private setDtrRts()V
    .locals 3

    .line 398
    iget-boolean v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    or-int/2addr v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x0

    .line 399
    invoke-direct {p0, v1, v0, v2}, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    .line 234
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

    .line 372
    iget-boolean v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    return v0
.end method

.method public getDriver()Lcn/highlight/tx/usb/UsbSerialDriver;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

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

    .line 388
    iget-boolean v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    .line 109
    iput-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p1, 0x1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {p1}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "device might be castrated ACM device, trying single interface logic"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->openSingleInterface()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {p1}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "trying default interface logic"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->openInterface()V

    .line 121
    :goto_0
    iget-boolean p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mEnableAsyncReads:Z

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {p1}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Async reads enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    :cond_1
    iget-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {p1}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Async reads disabled."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 133
    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mControlEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 134
    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 135
    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 137
    throw p1

    .line 106
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already open"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mEnableAsyncReads:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 243
    new-instance p2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {p2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 245
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p2, v0, v2}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 246
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 247
    array-length p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    .line 264
    invoke-virtual {p2}, Landroid/hardware/usb/UsbRequest;->close()V

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbRequest;->close()V

    return v1

    .line 253
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Null response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error queueing request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 264
    invoke-virtual {p2}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 265
    throw p1

    .line 269
    :cond_3
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_2
    array-length v2, p1

    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadBuffer:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 271
    iget-object v3, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v5, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadBuffer:[B

    invoke-virtual {v3, v4, v5, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    if-gez v2, :cond_5

    const p1, 0x7fffffff

    if-ne p2, p1, :cond_4

    const/4 p1, -0x1

    .line 280
    monitor-exit v0

    return p1

    .line 282
    :cond_4
    monitor-exit v0

    return v1

    .line 284
    :cond_5
    iget-object p2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mReadBuffer:[B

    invoke-static {p2, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iput-boolean p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mDtr:Z

    .line 378
    invoke-direct {p0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    if-eq p3, v2, :cond_1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    .line 331
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad value for stopBits: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p3, 0x2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-eqz p4, :cond_7

    if-eq p4, v3, :cond_6

    if-eq p4, v2, :cond_5

    if-eq p4, v1, :cond_4

    if-ne p4, v4, :cond_3

    const/4 p4, 0x4

    goto :goto_1

    .line 341
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad value for parity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p4, 0x3

    goto :goto_1

    :cond_5
    const/4 p4, 0x2

    goto :goto_1

    :cond_6
    const/4 p4, 0x1

    goto :goto_1

    :cond_7
    const/4 p4, 0x0

    :goto_1
    const/4 v5, 0x7

    new-array v5, v5, [B

    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v5, v1

    aput-byte p3, v5, v4

    const/4 p1, 0x5

    aput-byte p4, v5, p1

    const/4 p1, 0x6

    int-to-byte p2, p2

    aput-byte p2, v5, p1

    const/16 p1, 0x20

    .line 352
    invoke-direct {p0, p1, v0, v5}, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->sendAcmControlMessage(II[B)I

    return-void
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iput-boolean p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mRts:Z

    .line 394
    invoke-direct {p0}, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->setDtrRts()V

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

    .line 294
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 298
    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 301
    :try_start_0
    array-length v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteBuffer:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 306
    :cond_0
    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteBuffer:[B

    invoke-static {p1, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iget-object v4, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteBuffer:[B

    .line 310
    :goto_1
    iget-object v5, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 312
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    .line 318
    iget-object v2, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;->this$0:Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-static {v2}, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;

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

    .line 314
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

    .line 312
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return v1
.end method
