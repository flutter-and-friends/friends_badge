.class public Lcom/android/usbserial/driver/Ch34xSerialDriver;
.super Ljava/lang/Object;
.source "Ch34xSerialDriver.java"

# interfaces
.implements Lcom/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
    }
.end annotation


# static fields
.field private static final GCL_CD:I = 0x8

.field private static final GCL_CTS:I = 0x1

.field private static final GCL_DSR:I = 0x2

.field private static final GCL_RI:I = 0x4

.field private static final LCR_CS5:I = 0x0

.field private static final LCR_CS6:I = 0x1

.field private static final LCR_CS7:I = 0x2

.field private static final LCR_CS8:I = 0x3

.field private static final LCR_ENABLE_PAR:I = 0x8

.field private static final LCR_ENABLE_RX:I = 0x80

.field private static final LCR_ENABLE_TX:I = 0x40

.field private static final LCR_MARK_SPACE:I = 0x20

.field private static final LCR_PAR_EVEN:I = 0x10

.field private static final LCR_STOP_BITS_2:I = 0x4

.field private static final SCL_DTR:I = 0x20

.field private static final SCL_RTS:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/android/usbserial/driver/UsbSerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/android/usbserial/driver/Ch34xSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/usbserial/driver/Ch34xSerialDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 48
    new-instance p1, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;

    iget-object v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;-><init>(Lcom/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object p1, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver;->mPort:Lcom/android/usbserial/driver/UsbSerialPort;

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

    .line 371
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x1a86

    .line 372
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
        0x7523
        0x5523
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/usbserial/driver/Ch34xSerialDriver;->TAG:Ljava/lang/String;

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

    .line 58
    iget-object v0, p0, Lcom/android/usbserial/driver/Ch34xSerialDriver;->mPort:Lcom/android/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
