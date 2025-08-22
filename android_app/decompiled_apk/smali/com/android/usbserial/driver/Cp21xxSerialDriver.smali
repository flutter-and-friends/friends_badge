.class public Lcom/android/usbserial/driver/Cp21xxSerialDriver;
.super Ljava/lang/Object;
.source "Cp21xxSerialDriver.java"

# interfaces
.implements Lcom/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->mPorts:Ljava/util/List;

    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->mPorts:Ljava/util/List;

    new-instance v2, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;

    iget-object v3, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;-><init>(Lcom/android/usbserial/driver/Cp21xxSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    .line 330
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x10c4

    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :array_0
    .array-data 4
        0xea60
        0xea70
        0xea71
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->TAG:Ljava/lang/String;

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

    .line 44
    iget-object v0, p0, Lcom/android/usbserial/driver/Cp21xxSerialDriver;->mPorts:Ljava/util/List;

    return-object v0
.end method
