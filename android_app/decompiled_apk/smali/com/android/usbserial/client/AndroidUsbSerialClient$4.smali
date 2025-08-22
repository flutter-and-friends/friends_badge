.class Lcom/android/usbserial/client/AndroidUsbSerialClient$4;
.super Landroid/content/BroadcastReceiver;
.source "AndroidUsbSerialClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/client/AndroidUsbSerialClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;


# direct methods
.method constructor <init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 321
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 322
    iget-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object p1, p1, Lcom/android/usbserial/client/AndroidUsbSerialClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;

    if-eqz p1, :cond_1

    .line 323
    iget-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object p1, p1, Lcom/android/usbserial/client/AndroidUsbSerialClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;->onDeviceAttached()V

    goto :goto_0

    :cond_0
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 325
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 326
    iget-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object p1, p1, Lcom/android/usbserial/client/AndroidUsbSerialClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;

    if-eqz p1, :cond_1

    .line 327
    iget-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$4;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object p1, p1, Lcom/android/usbserial/client/AndroidUsbSerialClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/OnUsbSerialStateListener;->onDeviceDetached()V

    :cond_1
    :goto_0
    return-void
.end method
