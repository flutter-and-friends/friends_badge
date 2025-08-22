.class public interface abstract Lcn/highlight/tx/listener/USBStatus;
.super Ljava/lang/Object;
.source "USBStatus.java"


# virtual methods
.method public abstract disConnect(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onConnect(Landroid/hardware/usb/UsbManager;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)V"
        }
    .end annotation
.end method
