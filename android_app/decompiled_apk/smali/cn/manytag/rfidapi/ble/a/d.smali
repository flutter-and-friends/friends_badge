.class final Lcn/manytag/rfidapi/ble/a/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/a/a;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/a/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->b(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->c(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    sget-object v0, Lcn/manytag/rfidapi/ble/a/c;->d:Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {p1, v0}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Lcn/manytag/rfidapi/ble/a/c;)Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a;->d()Lcn/manytag/rfidapi/ble/a/g;

    move-result-object p1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/a/g;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object p1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->h(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object v0

    new-instance v1, Lcn/manytag/rfidapi/ble/b/e;

    invoke-direct {v1}, Lcn/manytag/rfidapi/ble/b/e;-><init>()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    sget-object v2, Lcn/manytag/rfidapi/ble/a/c;->c:Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {v0, v2}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Lcn/manytag/rfidapi/ble/a/c;)Lcn/manytag/rfidapi/ble/a/c;

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0, v1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Z)Z

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->d()Lcn/manytag/rfidapi/ble/a/g;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a/g;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->d()Lcn/manytag/rfidapi/ble/a/g;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a/g;->b(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/data/a;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/a;->a()I

    move-result p1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/a/a;->h(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v2}, Lcn/manytag/rfidapi/ble/a/a;->i(Lcn/manytag/rfidapi/ble/a/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcn/manytag/rfidapi/ble/callback/b;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->b(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->c(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    sget-object v0, Lcn/manytag/rfidapi/ble/a/c;->d:Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {p1, v0}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Lcn/manytag/rfidapi/ble/a/c;)Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a;->d()Lcn/manytag/rfidapi/ble/a/g;

    move-result-object p1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/a/g;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object p1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->h(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object v0

    new-instance v1, Lcn/manytag/rfidapi/ble/b/d;

    const-string v2, "GATT discover services exception occurred!"

    invoke-direct {v1, v2}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcn/manytag/rfidapi/ble/callback/b;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->i(Lcn/manytag/rfidapi/ble/a/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->i(Lcn/manytag/rfidapi/ble/a/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/d;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/a/d;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->h(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object v0

    iget-object v2, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v2}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object v2

    iget-object v3, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v3}, Lcn/manytag/rfidapi/ble/a/a;->d(Lcn/manytag/rfidapi/ble/a/a;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;ZLcn/manytag/rfidapi/ble/callback/b;I)Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    sget-object v1, Lcn/manytag/rfidapi/ble/a/c;->e:Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {v0, v1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Lcn/manytag/rfidapi/ble/a/c;)Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->d()Lcn/manytag/rfidapi/ble/a/g;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a/g;->c(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/a;->h()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->b(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->c(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/a;->d()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/a;->e()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/a;->c()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a/d;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/data/a;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/a;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/a;->a()I

    move-result p1

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object v1

    iget-object v2, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v2}, Lcn/manytag/rfidapi/ble/a/a;->h(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object v2

    iget-object v3, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v3}, Lcn/manytag/rfidapi/ble/a/a;->i(Lcn/manytag/rfidapi/ble/a/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, p1}, Lcn/manytag/rfidapi/ble/callback/b;->a(ZLcn/manytag/rfidapi/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->b(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->c(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->d(Lcn/manytag/rfidapi/ble/a/a;)I

    move-result v0

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a;->g()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connect fail, try reconnect "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " millisecond later"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/d/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->e(Lcn/manytag/rfidapi/ble/a/a;)I

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/d;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object v0

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcn/manytag/rfidapi/ble/a/d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    sget-object v1, Lcn/manytag/rfidapi/ble/a/c;->d:Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {v0, v1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Lcn/manytag/rfidapi/ble/a/c;)Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->d()Lcn/manytag/rfidapi/ble/a/g;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a/g;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/data/a;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/a;->a()I

    move-result p1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/a;->g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/a/a;->h(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object v1

    new-instance v2, Lcn/manytag/rfidapi/ble/b/b;

    iget-object v3, p0, Lcn/manytag/rfidapi/ble/a/d;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v3}, Lcn/manytag/rfidapi/ble/a/a;->i(Lcn/manytag/rfidapi/ble/a/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcn/manytag/rfidapi/ble/b/b;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/ble/callback/b;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_2
    :goto_1
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
