.class public Lcom/android/usbserial/driver/ProlificSerialDriver;
.super Ljava/lang/Object;
.source "ProlificSerialDriver.java"

# interfaces
.implements Lcom/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;,
        Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    }
.end annotation


# static fields
.field private static final standardBaudRates:[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/android/usbserial/driver/UsbSerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver;->standardBaudRates:[I

    return-void

    :array_0
    .array-data 4
        0x4b
        0x96
        0x12c
        0x258
        0x4b0
        0x708
        0x960
        0xe10
        0x12c0
        0x1c20
        0x2580
        0x3840
        0x4b00
        0x7080
        0x9600
        0xe100
        0x1c200
        0x1f400
        0x20d00
        0x27600
        0x31380
        0x38400
        0x41a00
        0x62700
        0x70800
        0x96000
        0xc4e00
        0xe1000
        0x12c000
        0x258000
        0x2dc6c0
        0x5b8d80
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/android/usbserial/driver/ProlificSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->TAG:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 45
    new-instance p1, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;

    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;-><init>(Lcom/android/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object p1, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->mPort:Lcom/android/usbserial/driver/UsbSerialPort;

    return-void
.end method

.method static synthetic access$000(Lcom/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 29
    sget-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver;->standardBaudRates:[I

    return-object v0
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

    .line 578
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x67b

    .line 579
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :array_0
    .array-data 4
        0x2303
        0x23c3
        0x23a3
        0x23b3
        0x23cd
        0x23e3
        0x23e3
        0x23f3
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/usbserial/driver/ProlificSerialDriver;->mPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
