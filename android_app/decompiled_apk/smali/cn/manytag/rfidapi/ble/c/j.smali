.class public Lcn/manytag/rfidapi/ble/c/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcn/manytag/rfidapi/ble/data/c;

.field private b:Lcn/manytag/rfidapi/ble/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/manytag/rfidapi/ble/data/c;->a:Lcn/manytag/rfidapi/ble/data/c;

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/j;->a:Lcn/manytag/rfidapi/ble/data/c;

    new-instance v0, Lcn/manytag/rfidapi/ble/c/k;

    invoke-direct {v0, p0}, Lcn/manytag/rfidapi/ble/c/k;-><init>(Lcn/manytag/rfidapi/ble/c/j;)V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/j;->b:Lcn/manytag/rfidapi/ble/c/a;

    return-void
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/c/j;)Lcn/manytag/rfidapi/ble/c/a;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/c/j;->b:Lcn/manytag/rfidapi/ble/c/a;

    return-object p0
.end method

.method public static a()Lcn/manytag/rfidapi/ble/c/j;
    .locals 1

    invoke-static {}, Lcn/manytag/rfidapi/ble/c/m;->a()Lcn/manytag/rfidapi/ble/c/j;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;)V
    .locals 10

    move-object v1, p0

    move-object/from16 v0, p8

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcn/manytag/rfidapi/ble/c/j;->a:Lcn/manytag/rfidapi/ble/data/c;

    sget-object v3, Lcn/manytag/rfidapi/ble/data/c;->a:Lcn/manytag/rfidapi/ble/data/c;

    if-eq v2, v3, :cond_1

    const-string v2, "scan action already exists, complete the previous scan action first"

    invoke-static {v2}, Lcn/manytag/rfidapi/ble/d/a;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;->onScanStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, v1, Lcn/manytag/rfidapi/ble/c/j;->b:Lcn/manytag/rfidapi/ble/c/a;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcn/manytag/rfidapi/ble/c/a;->a([Ljava/lang/String;Ljava/lang/String;ZZJLcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;)V

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, v1, Lcn/manytag/rfidapi/ble/c/j;->b:Lcn/manytag/rfidapi/ble/c/a;

    move-object v3, p1

    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Lcn/manytag/rfidapi/ble/data/c;->b:Lcn/manytag/rfidapi/ble/data/c;

    goto :goto_0

    :cond_2
    sget-object v2, Lcn/manytag/rfidapi/ble/data/c;->a:Lcn/manytag/rfidapi/ble/data/c;

    :goto_0
    iput-object v2, v1, Lcn/manytag/rfidapi/ble/c/j;->a:Lcn/manytag/rfidapi/ble/data/c;

    iget-object v2, v1, Lcn/manytag/rfidapi/ble/c/j;->b:Lcn/manytag/rfidapi/ble/c/a;

    invoke-virtual {v2, v0}, Lcn/manytag/rfidapi/ble/c/a;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcn/manytag/rfidapi/ble/callback/BleScanCallback;)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/manytag/rfidapi/ble/c/j;->a([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a;->c()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/c/j;->b:Lcn/manytag/rfidapi/ble/c/a;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    sget-object v0, Lcn/manytag/rfidapi/ble/data/c;->a:Lcn/manytag/rfidapi/ble/data/c;

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/j;->a:Lcn/manytag/rfidapi/ble/data/c;

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/j;->b:Lcn/manytag/rfidapi/ble/c/a;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/c/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
