.class Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;
.super Landroid/content/BroadcastReceiver;
.source "AndroidUsbHidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 390
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 391
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbHidStateListener;

    if-eqz p1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbHidStateListener;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/OnUsbHidStateListener;->onDeviceAttached()V

    goto :goto_0

    :cond_0
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 394
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 395
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbHidStateListener;

    if-eqz p1, :cond_1

    .line 396
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$5;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->stateListener:Lcom/gg/reader/api/dal/communication/OnUsbHidStateListener;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/OnUsbHidStateListener;->onDeviceDetached()V

    :cond_1
    :goto_0
    return-void
.end method
