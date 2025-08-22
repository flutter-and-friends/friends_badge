.class public interface abstract Lcn/highlight/tx/usb/UsbSerialDriver;
.super Ljava/lang/Object;
.source "UsbSerialDriver.java"


# virtual methods
.method public abstract getDevice()Landroid/hardware/usb/UsbDevice;
.end method

.method public abstract getPorts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/tx/usb/UsbSerialPort;",
            ">;"
        }
    .end annotation
.end method
