.class Lcom/gg/reader/api/dal/communication/BluetoothClient$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/dal/communication/BluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/BluetoothClient;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    invoke-static {v0}, Lcom/gg/reader/api/dal/communication/BluetoothClient;->access$400(Lcom/gg/reader/api/dal/communication/BluetoothClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 316
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 317
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object v2, v2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    invoke-interface {v2, v1}, Lcom/gg/reader/api/dal/communication/BluetoothHandler;->dispense(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 323
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_5

    .line 325
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object p2, p2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    if-eqz p2, :cond_5

    .line 326
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 327
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object p2, p2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    invoke-interface {p2, p1}, Lcom/gg/reader/api/dal/communication/BluetoothHandler;->dispense(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 329
    :cond_2
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object p2, p2, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    invoke-interface {p2, p1}, Lcom/gg/reader/api/dal/communication/BluetoothHandler;->dispense(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_3
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 333
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 334
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    if-eqz p1, :cond_5

    .line 335
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/BluetoothHandler;->finishDiscover()V

    goto :goto_1

    :cond_4
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 337
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 338
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    if-eqz p1, :cond_5

    .line 339
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BluetoothClient$2;->this$0:Lcom/gg/reader/api/dal/communication/BluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BluetoothClient;->bluetoothHandler:Lcom/gg/reader/api/dal/communication/BluetoothHandler;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/BluetoothHandler;->startDiscover()V

    :cond_5
    :goto_1
    return-void
.end method
