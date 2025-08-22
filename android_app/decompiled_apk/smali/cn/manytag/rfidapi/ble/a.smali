.class public Lcn/manytag/rfidapi/ble/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcn/manytag/rfidapi/ble/c/i;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:Lcn/manytag/rfidapi/ble/a/g;

.field private e:Landroid/bluetooth/BluetoothManager;

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcn/manytag/rfidapi/ble/a;->f:I

    const/16 v0, 0x1388

    iput v0, p0, Lcn/manytag/rfidapi/ble/a;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/manytag/rfidapi/ble/a;->h:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/manytag/rfidapi/ble/a;->i:J

    const/16 v0, 0x14

    iput v0, p0, Lcn/manytag/rfidapi/ble/a;->j:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcn/manytag/rfidapi/ble/a;->k:J

    return-void
.end method

.method public static a()Lcn/manytag/rfidapi/ble/a;
    .locals 1

    invoke-static {}, Lcn/manytag/rfidapi/ble/b;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->c(Ljava/lang/String;)V

    new-instance v2, Lcn/manytag/rfidapi/ble/b/d;

    invoke-direct {v2, v0}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Lcn/manytag/rfidapi/ble/callback/b;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/b/a;)V

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    :cond_1
    const-string v0, "Be careful: currentThread is not MainThread!"

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->b(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/a/g;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;)Lcn/manytag/rfidapi/ble/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a;->b:Lcn/manytag/rfidapi/ble/c/i;

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/c/i;->d()Z

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcn/manytag/rfidapi/ble/a/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;ZLcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    new-instance v0, Lcn/manytag/rfidapi/ble/b/d;

    const-string v2, "Not Found Device Exception Occurred!"

    invoke-direct {v0, v2}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcn/manytag/rfidapi/ble/callback/b;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/b/a;)V

    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleGattCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;
    .locals 7

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    new-instance p1, Lcn/manytag/rfidapi/ble/data/BleDevice;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcn/manytag/rfidapi/ble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    invoke-virtual {p0, p1, p2}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcn/manytag/rfidapi/ble/a;
    .locals 0

    iput p1, p0, Lcn/manytag/rfidapi/ble/a;->g:I

    return-object p0
.end method

.method public a(IJ)Lcn/manytag/rfidapi/ble/a;
    .locals 3

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    move-wide p2, v0

    :cond_1
    iput p1, p0, Lcn/manytag/rfidapi/ble/a;->h:I

    iput-wide p2, p0, Lcn/manytag/rfidapi/ble/a;->i:J

    return-object p0
.end method

.method public a(J)Lcn/manytag/rfidapi/ble/a;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x64

    :cond_0
    iput-wide p1, p0, Lcn/manytag/rfidapi/ble/a;->k:J

    return-object p0
.end method

.method public a(Z)Lcn/manytag/rfidapi/ble/a;
    .locals 0

    sput-boolean p1, Lcn/manytag/rfidapi/ble/d/a;->a:Z

    return-object p0
.end method

.method public a(Landroid/app/Application;)V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a;->a:Landroid/app/Application;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a;->e:Landroid/bluetooth/BluetoothManager;

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    new-instance p1, Lcn/manytag/rfidapi/ble/a/g;

    invoke-direct {p1}, Lcn/manytag/rfidapi/ble/a/g;-><init>()V

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    new-instance p1, Lcn/manytag/rfidapi/ble/c/i;

    invoke-direct {p1}, Lcn/manytag/rfidapi/ble/c/i;-><init>()V

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a;->b:Lcn/manytag/rfidapi/ble/c/i;

    :cond_1
    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/callback/BleScanCallback;)V
    .locals 9

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/BleScanCallback;->onScanStarted(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->b:Lcn/manytag/rfidapi/ble/c/i;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/i;->a()[Ljava/util/UUID;

    move-result-object v2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->b:Lcn/manytag/rfidapi/ble/c/i;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/i;->b()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->b:Lcn/manytag/rfidapi/ble/c/i;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/i;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->b:Lcn/manytag/rfidapi/ble/c/i;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/i;->e()Z

    move-result v5

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->b:Lcn/manytag/rfidapi/ble/c/i;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/i;->f()J

    move-result-wide v6

    invoke-static {}, Lcn/manytag/rfidapi/ble/c/j;->a()Lcn/manytag/rfidapi/ble/c/j;

    move-result-object v1

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcn/manytag/rfidapi/ble/c/j;->a([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcn/manytag/rfidapi/ble/callback/BleScanCallback;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BleScanCallback can not be Null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;ILcn/manytag/rfidapi/ble/callback/d;)V
    .locals 1

    if-eqz p3, :cond_3

    const/16 v0, 0x200

    if-le p2, v0, :cond_0

    const-string p1, "requiredMtu should lower than 512 !"

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/d/a;->c(Ljava/lang/String;)V

    new-instance p2, Lcn/manytag/rfidapi/ble/b/d;

    invoke-direct {p2, p1}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3, p2}, Lcn/manytag/rfidapi/ble/callback/d;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    return-void

    :cond_0
    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    const-string p1, "requiredMtu should higher than 23 !"

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/d/a;->c(Ljava/lang/String;)V

    new-instance p2, Lcn/manytag/rfidapi/ble/b/d;

    invoke-direct {p2, p1}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/a/g;->b(Lcn/manytag/rfidapi/ble/data/BleDevice;)Lcn/manytag/rfidapi/ble/a/a;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p2, "This device is not connected!"

    invoke-direct {p1, p2}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcn/manytag/rfidapi/ble/callback/d;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->a()Lcn/manytag/rfidapi/ble/a/e;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcn/manytag/rfidapi/ble/a/e;->a(ILcn/manytag/rfidapi/ble/callback/d;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleMtuChangedCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcn/manytag/rfidapi/ble/callback/e;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcn/manytag/rfidapi/ble/callback/e;)V

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;ZLcn/manytag/rfidapi/ble/callback/e;)V
    .locals 1

    if-eqz p5, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/a/g;->b(Lcn/manytag/rfidapi/ble/data/BleDevice;)Lcn/manytag/rfidapi/ble/a/a;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcn/manytag/rfidapi/ble/b/d;

    const-string p2, "This device not connect!"

    invoke-direct {p1, p2}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->a()Lcn/manytag/rfidapi/ble/a/e;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcn/manytag/rfidapi/ble/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/manytag/rfidapi/ble/a/e;

    move-result-object p1

    invoke-virtual {p1, p5, p3, p4}, Lcn/manytag/rfidapi/ble/a/e;->a(Lcn/manytag/rfidapi/ble/callback/e;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleNotifyCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLcn/manytag/rfidapi/ble/callback/i;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcn/manytag/rfidapi/ble/callback/i;)V

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcn/manytag/rfidapi/ble/callback/i;)V
    .locals 10

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZZJLcn/manytag/rfidapi/ble/callback/i;)V

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZZJLcn/manytag/rfidapi/ble/callback/i;)V
    .locals 10

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v8, p9

    if-eqz v8, :cond_4

    if-nez v4, :cond_0

    const-string v0, "data is Null!"

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->c(Ljava/lang/String;)V

    new-instance v1, Lcn/manytag/rfidapi/ble/b/d;

    invoke-direct {v1, v0}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    return-void

    :cond_0
    array-length v0, v4

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    if-nez p5, :cond_1

    const-string v0, "Be careful: data\'s length beyond 20! Ensure MTU higher than 23, or use spilt write!"

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->b(Ljava/lang/String;)V

    :cond_1
    move-object v9, p0

    iget-object v0, v9, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/a/g;->b(Lcn/manytag/rfidapi/ble/data/BleDevice;)Lcn/manytag/rfidapi/ble/a/a;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Lcn/manytag/rfidapi/ble/b/d;

    const-string v1, "This device not connect!"

    invoke-direct {v0, v1}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    array-length v0, v4

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/a;->i()I

    move-result v2

    if-le v0, v2, :cond_3

    new-instance v0, Lcn/manytag/rfidapi/ble/a/h;

    invoke-direct {v0}, Lcn/manytag/rfidapi/ble/a/h;-><init>()V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcn/manytag/rfidapi/ble/a/h;->a(Lcn/manytag/rfidapi/ble/a/a;Ljava/lang/String;Ljava/lang/String;[BZJLcn/manytag/rfidapi/ble/callback/i;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a/a;->a()Lcn/manytag/rfidapi/ble/a/e;

    move-result-object v0

    move-object v1, p2

    invoke-virtual {v0, p2, p3}, Lcn/manytag/rfidapi/ble/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/manytag/rfidapi/ble/a/e;

    move-result-object v0

    invoke-virtual {v0, p4, v8, p3}, Lcn/manytag/rfidapi/ble/a/e;->a([BLcn/manytag/rfidapi/ble/callback/i;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    move-object v9, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BleWriteCallback can not be Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->a:Landroid/app/Application;

    return-object v0
.end method

.method public c()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public d()Lcn/manytag/rfidapi/ble/a/g;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/ble/a;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/ble/a;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/ble/a;->h:I

    return v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcn/manytag/rfidapi/ble/a;->i:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcn/manytag/rfidapi/ble/a;->j:I

    return v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcn/manytag/rfidapi/ble/a;->k:J

    return-wide v0
.end method

.method public k()V
    .locals 1

    invoke-static {}, Lcn/manytag/rfidapi/ble/c/j;->a()Lcn/manytag/rfidapi/ble/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/j;->b()V

    return-void
.end method

.method public l()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/g;->a()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a;->d:Lcn/manytag/rfidapi/ble/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/g;->b()V

    :cond_0
    return-void
.end method
