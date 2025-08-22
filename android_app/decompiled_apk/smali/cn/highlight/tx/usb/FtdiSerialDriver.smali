.class public Lcn/highlight/tx/usb/FtdiSerialDriver;
.super Ljava/lang/Object;
.source "FtdiSerialDriver.java"

# interfaces
.implements Lcn/highlight/tx/usb/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;,
        Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;
    }
.end annotation


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcn/highlight/tx/usb/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 107
    new-instance p1, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;

    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcn/highlight/tx/usb/FtdiSerialDriver$FtdiSerialPort;-><init>(Lcn/highlight/tx/usb/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object p1, p0, Lcn/highlight/tx/usb/FtdiSerialDriver;->mPort:Lcn/highlight/tx/usb/UsbSerialPort;

    return-void
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x403

    .line 571
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x6001
        0x6015
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/tx/usb/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcn/highlight/tx/usb/FtdiSerialDriver;->mPort:Lcn/highlight/tx/usb/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
