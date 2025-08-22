.class public Lcn/highlight/tx/usb/CdcAcmSerialDriver;
.super Ljava/lang/Object;
.source "CdcAcmSerialDriver.java"

# interfaces
.implements Lcn/highlight/tx/usb/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcn/highlight/tx/usb/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->TAG:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 59
    new-instance v0, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/highlight/tx/usb/CdcAcmSerialDriver$CdcAcmSerialPort;-><init>(Lcn/highlight/tx/usb/CdcAcmSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->mPort:Lcn/highlight/tx/usb/UsbSerialPort;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/tx/usb/CdcAcmSerialDriver;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x2341

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16c0

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x483

    aput v5, v3, v4

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3eb

    .line 423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    const/16 v5, 0x2044

    aput v5, v3, v4

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1eaf

    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [I

    const/4 v3, 0x4

    aput v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x43
        0x10
        0x42
        0x3b
        0x44
        0x3f
        0x44
        0x8036
        0x8037
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

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

    .line 69
    iget-object v0, p0, Lcn/highlight/tx/usb/CdcAcmSerialDriver;->mPort:Lcn/highlight/tx/usb/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
