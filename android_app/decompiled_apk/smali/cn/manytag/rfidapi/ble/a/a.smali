.class public Lcn/manytag/rfidapi/ble/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcn/manytag/rfidapi/ble/callback/b;

.field private b:Lcn/manytag/rfidapi/ble/callback/g;

.field private c:Lcn/manytag/rfidapi/ble/callback/d;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/HashMap;

.field private g:Ljava/util/HashMap;

.field private h:Lcn/manytag/rfidapi/ble/a/c;

.field private i:Z

.field private j:Lcn/manytag/rfidapi/ble/data/BleDevice;

.field private k:Landroid/bluetooth/BluetoothGatt;

.field private l:Lcn/manytag/rfidapi/ble/a/d;

.field private m:I

.field private n:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method public constructor <init>(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/manytag/rfidapi/ble/a/a;->i:Z

    new-instance v1, Lcn/manytag/rfidapi/ble/a/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/manytag/rfidapi/ble/a/d;-><init>(Lcn/manytag/rfidapi/ble/a/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/manytag/rfidapi/ble/a/a;->l:Lcn/manytag/rfidapi/ble/a/d;

    iput v0, p0, Lcn/manytag/rfidapi/ble/a/a;->m:I

    new-instance v0, Lcn/manytag/rfidapi/ble/a/b;

    invoke-direct {v0, p0}, Lcn/manytag/rfidapi/ble/a/b;-><init>(Lcn/manytag/rfidapi/ble/a/a;)V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->n:Landroid/bluetooth/BluetoothGattCallback;

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->j:Lcn/manytag/rfidapi/ble/data/BleDevice;

    return-void
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/a/a;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/a/a;Lcn/manytag/rfidapi/ble/a/c;)Lcn/manytag/rfidapi/ble/a/c;
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->h:Lcn/manytag/rfidapi/ble/a/c;

    return-object p1
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->j()V

    return-void
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/manytag/rfidapi/ble/a/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->k()V

    return-void
.end method

.method static synthetic c(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->l()V

    return-void
.end method

.method static synthetic d(Lcn/manytag/rfidapi/ble/a/a;)I
    .locals 0

    iget p0, p0, Lcn/manytag/rfidapi/ble/a/a;->m:I

    return p0
.end method

.method static synthetic e(Lcn/manytag/rfidapi/ble/a/a;)I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/ble/a/a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/manytag/rfidapi/ble/a/a;->m:I

    return v0
.end method

.method static synthetic f(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/d;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->l:Lcn/manytag/rfidapi/ble/a/d;

    return-object p0
.end method

.method static synthetic g(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/b;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->a:Lcn/manytag/rfidapi/ble/callback/b;

    return-object p0
.end method

.method static synthetic h(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/data/BleDevice;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->j:Lcn/manytag/rfidapi/ble/data/BleDevice;

    return-object p0
.end method

.method static synthetic i(Lcn/manytag/rfidapi/ble/a/a;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic j(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/a/c;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->h:Lcn/manytag/rfidapi/ble/a/c;

    return-object p0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDeviceCache, is success:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception occur while refreshing device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/d/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcn/manytag/rfidapi/ble/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/manytag/rfidapi/ble/a/a;->i:Z

    return p0
.end method

.method static synthetic l(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method private declared-synchronized l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic m(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic n(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic o(Lcn/manytag/rfidapi/ble/a/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->g:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic p(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/g;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->b:Lcn/manytag/rfidapi/ble/callback/g;

    return-object p0
.end method

.method static synthetic q(Lcn/manytag/rfidapi/ble/a/a;)Lcn/manytag/rfidapi/ble/callback/d;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/a;->c:Lcn/manytag/rfidapi/ble/callback/d;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcn/manytag/rfidapi/ble/data/BleDevice;ZLcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;ZLcn/manytag/rfidapi/ble/callback/b;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcn/manytag/rfidapi/ble/data/BleDevice;ZLcn/manytag/rfidapi/ble/callback/b;I)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nautoConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncurrentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nconnectCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->a(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const/4 p4, 0x0

    iput p4, p0, Lcn/manytag/rfidapi/ble/a/a;->m:I

    :cond_0
    invoke-virtual {p0, p3}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/callback/b;)V

    sget-object p3, Lcn/manytag/rfidapi/ble/a/c;->b:Lcn/manytag/rfidapi/ble/a/c;

    iput-object p3, p0, Lcn/manytag/rfidapi/ble/a/a;->h:Lcn/manytag/rfidapi/ble/a/c;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x17

    if-lt p3, p4, :cond_1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object p4

    invoke-virtual {p4}, Lcn/manytag/rfidapi/ble/a;->b()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->n:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v1, 0x2

    invoke-virtual {p3, p4, p2, v0, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object p4

    invoke-virtual {p4}, Lcn/manytag/rfidapi/ble/a;->b()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->n:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p3, p4, p2, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->a:Lcn/manytag/rfidapi/ble/callback/b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->a:Lcn/manytag/rfidapi/ble/callback/b;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/callback/b;->a()V

    :cond_2
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->l:Lcn/manytag/rfidapi/ble/a/d;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/d;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x7

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/a;->l:Lcn/manytag/rfidapi/ble/a/d;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/manytag/rfidapi/ble/a;->j()J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Lcn/manytag/rfidapi/ble/a/d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->j()V

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->k()V

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->l()V

    sget-object p2, Lcn/manytag/rfidapi/ble/a/c;->d:Lcn/manytag/rfidapi/ble/a/c;

    iput-object p2, p0, Lcn/manytag/rfidapi/ble/a/a;->h:Lcn/manytag/rfidapi/ble/a/c;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manytag/rfidapi/ble/a;->d()Lcn/manytag/rfidapi/ble/a/g;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcn/manytag/rfidapi/ble/a/g;->a(Lcn/manytag/rfidapi/ble/a/a;)V

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/a;->a:Lcn/manytag/rfidapi/ble/callback/b;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/a;->a:Lcn/manytag/rfidapi/ble/callback/b;

    new-instance p3, Lcn/manytag/rfidapi/ble/b/d;

    const-string p4, "GATT connect exception occurred!"

    invoke-direct {p3, p4}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lcn/manytag/rfidapi/ble/callback/b;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Lcn/manytag/rfidapi/ble/a/e;
    .locals 1

    new-instance v0, Lcn/manytag/rfidapi/ble/a/e;

    invoke-direct {v0, p0}, Lcn/manytag/rfidapi/ble/a/e;-><init>(Lcn/manytag/rfidapi/ble/a/a;)V

    return-object v0
.end method

.method public declared-synchronized a(Lcn/manytag/rfidapi/ble/callback/b;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->a:Lcn/manytag/rfidapi/ble/callback/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcn/manytag/rfidapi/ble/callback/d;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/a;->c:Lcn/manytag/rfidapi/ble/callback/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/i;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->a:Lcn/manytag/rfidapi/ble/callback/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->b:Lcn/manytag/rfidapi/ble/callback/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->c:Lcn/manytag/rfidapi/ble/callback/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->j:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->k:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public declared-synchronized h()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/manytag/rfidapi/ble/a/a;->i:Z

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/manytag/rfidapi/ble/a/c;->a:Lcn/manytag/rfidapi/ble/a/c;

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->h:Lcn/manytag/rfidapi/ble/a/c;

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->j()V

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->k()V

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/a;->l()V

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/a;->b()V

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/a;->d()V

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/a;->e()V

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a/a;->c()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/a;->l:Lcn/manytag/rfidapi/ble/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/a/d;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
