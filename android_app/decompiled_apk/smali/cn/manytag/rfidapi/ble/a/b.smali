.class Lcn/manytag/rfidapi/ble/a/b;
.super Landroid/bluetooth/BluetoothGattCallback;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/a/a;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->l(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/manytag/rfidapi/ble/callback/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/e;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/e;->b()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x13

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "notify_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->m(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/manytag/rfidapi/ble/callback/c;

    if-eqz v1, :cond_2

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/c;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/c;->b()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x23

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "indicate_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->o(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/manytag/rfidapi/ble/callback/f;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/f;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/f;->b()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x42

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "read_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "read_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->n(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/manytag/rfidapi/ble/callback/i;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/i;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/i;->b()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x32

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "write_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const-string v4, "write_value"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothGattCallback\uff1aonConnectionStateChange \nstatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "newState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "currentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0, p1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/a/d;->removeMessages(I)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/d;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x4

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Lcn/manytag/rfidapi/ble/a/d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    iget-object p3, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p3}, Lcn/manytag/rfidapi/ble/a/a;->j(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/c;

    move-result-object p3

    sget-object v0, Lcn/manytag/rfidapi/ble/a/c;->b:Lcn/manytag/rfidapi/ble/a/c;

    if-ne p3, v0, :cond_1

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/d;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p3, 0x1

    iput p3, p1, Landroid/os/Message;->what:I

    new-instance p3, Lcn/manytag/rfidapi/ble/data/a;

    invoke-direct {p3, p2}, Lcn/manytag/rfidapi/ble/data/a;-><init>(I)V

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/ble/a/d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p3}, Lcn/manytag/rfidapi/ble/a/a;->j(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/c;

    move-result-object p3

    sget-object v0, Lcn/manytag/rfidapi/ble/a/c;->c:Lcn/manytag/rfidapi/ble/a/c;

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p3}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p3

    invoke-virtual {p3}, Lcn/manytag/rfidapi/ble/a/d;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    iput p1, p3, Landroid/os/Message;->what:I

    new-instance p1, Lcn/manytag/rfidapi/ble/data/a;

    invoke-direct {p1, p2}, Lcn/manytag/rfidapi/ble/data/a;-><init>(I)V

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/a;->k(Lcn/manytag/rfidapi/ble/a/a;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcn/manytag/rfidapi/ble/data/a;->a(Z)V

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/manytag/rfidapi/ble/a/d;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->l(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/manytag/rfidapi/ble/callback/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/e;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/e;->b()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x12

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "notify_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->m(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/manytag/rfidapi/ble/callback/c;

    if-eqz v1, :cond_2

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/c;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/c;->b()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x22

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "indicate_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->q(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->q(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/callback/d;->b()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x62

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/a/a;->q(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/d;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mtu_status"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "mtu_value"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->p(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->p(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/callback/g;->b()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x52

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/a/a;->p(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/g;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rssi_status"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "rssi_value"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothGattCallback\uff1aonServicesDiscovered \nstatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "currentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {v0, p1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/a/a;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/d;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 v0, 0x6

    iput v0, p1, Landroid/os/Message;->what:I

    new-instance v0, Lcn/manytag/rfidapi/ble/data/a;

    invoke-direct {v0, p2}, Lcn/manytag/rfidapi/ble/data/a;-><init>(I)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    iput p2, p1, Landroid/os/Message;->what:I

    :goto_0
    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/b;->a:Lcn/manytag/rfidapi/ble/a/a;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/a;->f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/ble/a/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
