.class final Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;
.super Landroid/os/Handler;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/ble/bluetooth/BleBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Landroid/os/Looper;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 356
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 300
    :pswitch_0
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$000(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 301
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$100(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 302
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$200(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 304
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    sget-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    invoke-static {p1, v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$502(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 305
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/tx/ble/BleManager;->getMultipleBluetoothController()Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->removeConnectingBle(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 307
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$700(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v0

    new-instance v1, Lcn/highlight/tx/ble/exception/TimeoutException;

    invoke-direct {v1}, Lcn/highlight/tx/ble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcn/highlight/tx/ble/callback/BleGattCallback;->onConnectFail(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    sget-object v2, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTED:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    invoke-static {v0, v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$502(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 344
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0, v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$902(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Z)Z

    .line 345
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getMultipleBluetoothController()Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->removeConnectingBle(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 346
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getMultipleBluetoothController()Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->addBleBluetooth(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 348
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/data/BleConnectStateParameter;

    .line 349
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleConnectStateParameter;->getStatus()I

    move-result p1

    .line 350
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$700(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$800(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcn/highlight/tx/ble/callback/BleGattCallback;->onConnectSuccess(Lcn/highlight/tx/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_0

    .line 329
    :pswitch_2
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$000(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 330
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$100(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 331
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$200(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 333
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    sget-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    invoke-static {p1, v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$502(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 334
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/tx/ble/BleManager;->getMultipleBluetoothController()Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->removeConnectingBle(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 336
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$700(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v0

    new-instance v1, Lcn/highlight/tx/ble/exception/OtherException;

    const-string v2, "GATT discover services exception occurred!"

    invoke-direct {v1, v2}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcn/highlight/tx/ble/callback/BleGattCallback;->onConnectFail(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 313
    :pswitch_3
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$800(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$800(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    if-nez p1, :cond_2

    .line 316
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$400(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 317
    iput v0, p1, Landroid/os/Message;->what:I

    .line 318
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$400(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$400(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 322
    iput v0, p1, Landroid/os/Message;->what:I

    .line 323
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$400(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 295
    :pswitch_4
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$700(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v0

    iget-object v2, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object v2

    iget-object v3, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v3}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$300(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->connect(Lcn/highlight/tx/ble/data/BleDevice;ZLcn/highlight/tx/ble/callback/BleGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_0

    .line 275
    :pswitch_5
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    sget-object v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_DISCONNECT:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    invoke-static {v0, v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$502(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 276
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getMultipleBluetoothController()Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->removeBleBluetooth(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 278
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->disconnect()V

    .line 279
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$100(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 280
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$200(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 281
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeRssiCallback()V

    .line 282
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->removeMtuChangedCallback()V

    .line 283
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->clearCharacterCallback()V

    .line 284
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$400(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 286
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/data/BleConnectStateParameter;

    .line 287
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleConnectStateParameter;->isActive()Z

    move-result v0

    .line 288
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleConnectStateParameter;->getStatus()I

    move-result p1

    .line 289
    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$700(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v2

    iget-object v3, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v3}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$800(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, p1}, Lcn/highlight/tx/ble/callback/BleGattCallback;->onDisConnected(ZLcn/highlight/tx/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_0

    .line 251
    :pswitch_6
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$000(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 252
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$100(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 253
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$200(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 255
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$300(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)I

    move-result v0

    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/tx/ble/BleManager;->getReConnectCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connect fail, try reconnect "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getReConnectInterval()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " millisecond later"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/highlight/tx/ble/utils/BleLog;->e(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$304(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)I

    .line 259
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$400(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    .line 260
    iput v0, p1, Landroid/os/Message;->what:I

    .line 261
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$400(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;

    move-result-object v0

    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/tx/ble/BleManager;->getReConnectInterval()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    sget-object v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    invoke-static {v0, v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$502(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 264
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getMultipleBluetoothController()Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->removeConnectingBle(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    .line 266
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/data/BleConnectStateParameter;

    .line 267
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleConnectStateParameter;->getStatus()I

    move-result p1

    .line 268
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$600(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/callback/BleGattCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$700(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v1

    new-instance v2, Lcn/highlight/tx/ble/exception/ConnectException;

    iget-object v3, p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-static {v3}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->access$800(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcn/highlight/tx/ble/exception/ConnectException;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1, v2}, Lcn/highlight/tx/ble/callback/BleGattCallback;->onConnectFail(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/exception/BleException;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
