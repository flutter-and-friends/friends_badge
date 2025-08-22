.class public Lcn/manytag/rfidapi/ble/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/bluetooth/BluetoothGatt;

.field private b:Landroid/bluetooth/BluetoothGattService;

.field private c:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private d:Lcn/manytag/rfidapi/ble/a/a;

.field private e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/e;->d:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/e;->a:Landroid/bluetooth/BluetoothGatt;

    new-instance p1, Lcn/manytag/rfidapi/ble/a/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/manytag/rfidapi/ble/a/f;-><init>(Lcn/manytag/rfidapi/ble/a/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/util/UUID;Ljava/util/UUID;)Lcn/manytag/rfidapi/ble/a/e;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/e;->b:Landroid/bluetooth/BluetoothGattService;

    :cond_0
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/e;->b:Landroid/bluetooth/BluetoothGattService;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/e;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_1
    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/UUID;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Lcn/manytag/rfidapi/ble/callback/d;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->f()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/d;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->d:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/callback/d;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private a(Lcn/manytag/rfidapi/ble/callback/e;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->a()V

    invoke-virtual {p1, p2}, Lcn/manytag/rfidapi/ble/callback/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/e;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->d:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0, p2, p1}, Lcn/manytag/rfidapi/ble/a/a;->a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/e;)V

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private a(Lcn/manytag/rfidapi/ble/callback/i;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->c()V

    invoke-virtual {p1, p2}, Lcn/manytag/rfidapi/ble/callback/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/i;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->d:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v0, p2, p1}, Lcn/manytag/rfidapi/ble/a/a;->a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/i;)V

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v0, 0x31

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZZLcn/manytag/rfidapi/ble/callback/e;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p2, p4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->a()V

    if-eqz p5, :cond_1

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p2, "gatt setCharacteristicNotification fail"

    invoke-direct {p1, p2}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_1
    return v0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    goto :goto_0

    :cond_3
    const-string p3, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-direct {p0, p3}, Lcn/manytag/rfidapi/ble/a/e;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->a()V

    if-eqz p5, :cond_4

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p2, "descriptor equals null"

    invoke-direct {p1, p2}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_4
    return v0

    :cond_5
    if-eqz p4, :cond_6

    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_1

    :cond_6
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->a()V

    if-eqz p5, :cond_7

    new-instance p2, Lcn/manytag/rfidapi/ble/b/d;

    const-string p3, "gatt writeDescriptor fail"

    invoke-direct {p2, p3}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_7
    return p1

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->a()V

    if-eqz p5, :cond_9

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p2, "gatt or characteristic equal null"

    invoke-direct {p1, p2}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_9
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcn/manytag/rfidapi/ble/a/e;
    .locals 0

    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/ble/a/e;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p0, p2}, Lcn/manytag/rfidapi/ble/a/e;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/manytag/rfidapi/ble/a/e;->a(Ljava/util/UUID;Ljava/util/UUID;)Lcn/manytag/rfidapi/ble/a/e;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public a(ILcn/manytag/rfidapi/ble/callback/d;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcn/manytag/rfidapi/ble/a/e;->a(Lcn/manytag/rfidapi/ble/callback/d;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->f()V

    if-eqz p2, :cond_1

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string v0, "gatt requestMtu fail"

    invoke-direct {p1, v0}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string v0, "API level lower than 21"

    invoke-direct {p1, v0}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/ble/callback/d;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_1
    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/callback/e;Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/manytag/rfidapi/ble/a/e;->a(Lcn/manytag/rfidapi/ble/callback/e;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/manytag/rfidapi/ble/a/e;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcn/manytag/rfidapi/ble/a/e;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcn/manytag/rfidapi/ble/a/e;->a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZZLcn/manytag/rfidapi/ble/callback/e;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p2, Lcn/manytag/rfidapi/ble/b/d;

    const-string p3, "this characteristic not support notify!"

    invoke-direct {p2, p3}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a([BLcn/manytag/rfidapi/ble/callback/i;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_6

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2, p3}, Lcn/manytag/rfidapi/ble/a/e;->a(Lcn/manytag/rfidapi/ble/callback/i;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/e;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object p3, p0, Lcn/manytag/rfidapi/ble/a/e;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/e;->c()V

    if-eqz p2, :cond_3

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p3, "gatt writeCharacteristic fail"

    invoke-direct {p1, p3}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p3, "Updates the locally stored value of this characteristic fail"

    invoke-direct {p1, p3}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p3, "this characteristic not support write!"

    invoke-direct {p1, p3}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p3, "the data to be written is empty"

    invoke-direct {p1, p3}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_7
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/e;->e:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
