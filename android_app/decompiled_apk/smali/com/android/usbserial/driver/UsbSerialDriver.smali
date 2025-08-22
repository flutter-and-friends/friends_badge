.class public interface abstract Lcom/android/usbserial/driver/UsbSerialDriver;
.super Ljava/lang/Object;
.source "UsbSerialDriver.java"


# virtual methods
.method public abstract getDevice()Landroid/hardware/usb/UsbDevice;
.end method

.method public abstract getDriverName()Ljava/lang/String;
.end method

.method public abstract getPorts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation
.end method
