.class Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$1;
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

    .line 46
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.gx.USB_PERMISSION"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    monitor-enter p0

    :try_start_0
    const-string p1, "device"

    .line 52
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    const-string v0, "permission"

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-static {p1}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->access$000(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$1;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-static {p1}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->access$100(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    .line 58
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
