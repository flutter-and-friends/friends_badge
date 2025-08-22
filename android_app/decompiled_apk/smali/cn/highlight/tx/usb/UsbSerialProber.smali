.class public Lcn/highlight/tx/usb/UsbSerialProber;
.super Ljava/lang/Object;
.source "UsbSerialProber.java"


# instance fields
.field private final mProbeTable:Lcn/highlight/tx/usb/ProbeTable;


# direct methods
.method public constructor <init>(Lcn/highlight/tx/usb/ProbeTable;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/highlight/tx/usb/UsbSerialProber;->mProbeTable:Lcn/highlight/tx/usb/ProbeTable;

    return-void
.end method

.method public static getDefaultProbeTable()Lcn/highlight/tx/usb/ProbeTable;
    .locals 2

    .line 49
    new-instance v0, Lcn/highlight/tx/usb/ProbeTable;

    invoke-direct {v0}, Lcn/highlight/tx/usb/ProbeTable;-><init>()V

    .line 50
    const-class v1, Lcn/highlight/tx/usb/CdcAcmSerialDriver;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/usb/ProbeTable;->addDriver(Ljava/lang/Class;)Lcn/highlight/tx/usb/ProbeTable;

    .line 51
    const-class v1, Lcn/highlight/tx/usb/Cp21xxSerialDriver;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/usb/ProbeTable;->addDriver(Ljava/lang/Class;)Lcn/highlight/tx/usb/ProbeTable;

    .line 52
    const-class v1, Lcn/highlight/tx/usb/FtdiSerialDriver;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/usb/ProbeTable;->addDriver(Ljava/lang/Class;)Lcn/highlight/tx/usb/ProbeTable;

    .line 53
    const-class v1, Lcn/highlight/tx/usb/ProlificSerialDriver;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/usb/ProbeTable;->addDriver(Ljava/lang/Class;)Lcn/highlight/tx/usb/ProbeTable;

    .line 54
    const-class v1, Lcn/highlight/tx/usb/Ch34xSerialDriver;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/usb/ProbeTable;->addDriver(Ljava/lang/Class;)Lcn/highlight/tx/usb/ProbeTable;

    return-object v0
.end method

.method public static getDefaultProber()Lcn/highlight/tx/usb/UsbSerialProber;
    .locals 2

    .line 45
    new-instance v0, Lcn/highlight/tx/usb/UsbSerialProber;

    invoke-static {}, Lcn/highlight/tx/usb/UsbSerialProber;->getDefaultProbeTable()Lcn/highlight/tx/usb/ProbeTable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/highlight/tx/usb/UsbSerialProber;-><init>(Lcn/highlight/tx/usb/ProbeTable;)V

    return-object v0
.end method


# virtual methods
.method public findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            ")",
            "Ljava/util/List<",
            "Lcn/highlight/tx/usb/UsbSerialDriver;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 71
    invoke-virtual {p0, v1}, Lcn/highlight/tx/usb/UsbSerialProber;->probeDevice(Landroid/hardware/usb/UsbDevice;)Lcn/highlight/tx/usb/UsbSerialDriver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public probeDevice(Landroid/hardware/usb/UsbDevice;)Lcn/highlight/tx/usb/UsbSerialDriver;
    .locals 5

    .line 87
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 90
    iget-object v2, p0, Lcn/highlight/tx/usb/UsbSerialProber;->mProbeTable:Lcn/highlight/tx/usb/ProbeTable;

    .line 91
    invoke-virtual {v2, v0, v1}, Lcn/highlight/tx/usb/ProbeTable;->findDriver(II)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 95
    const-class v3, Landroid/hardware/usb/UsbDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/tx/usb/UsbSerialDriver;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
