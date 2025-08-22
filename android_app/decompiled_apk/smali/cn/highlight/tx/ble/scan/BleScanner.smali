.class public Lcn/highlight/tx/ble/scan/BleScanner;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/tx/ble/scan/BleScanner$BleScannerHolder;
    }
.end annotation


# instance fields
.field private mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

.field private mBleScanState:Lcn/highlight/tx/ble/data/BleScanState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcn/highlight/tx/ble/data/BleScanState;->STATE_IDLE:Lcn/highlight/tx/ble/data/BleScanState;

    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanState:Lcn/highlight/tx/ble/data/BleScanState;

    .line 34
    new-instance v0, Lcn/highlight/tx/ble/scan/BleScanner$1;

    invoke-direct {v0, p0}, Lcn/highlight/tx/ble/scan/BleScanner$1;-><init>(Lcn/highlight/tx/ble/scan/BleScanner;)V

    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    return-void
.end method

.method static synthetic access$100(Lcn/highlight/tx/ble/scan/BleScanner;)Lcn/highlight/tx/ble/scan/BleScanPresenter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    return-object p0
.end method

.method public static getInstance()Lcn/highlight/tx/ble/scan/BleScanner;
    .locals 1

    .line 25
    invoke-static {}, Lcn/highlight/tx/ble/scan/BleScanner$BleScannerHolder;->access$000()Lcn/highlight/tx/ble/scan/BleScanner;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized startLeScan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcn/highlight/tx/ble/callback/BleScanPresenterImp;)V
    .locals 10

    move-object v1, p0

    move-object/from16 v0, p8

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v2, v1, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanState:Lcn/highlight/tx/ble/data/BleScanState;

    sget-object v3, Lcn/highlight/tx/ble/data/BleScanState;->STATE_IDLE:Lcn/highlight/tx/ble/data/BleScanState;

    if-eq v2, v3, :cond_1

    const-string v2, "scan action already exists, complete the previous scan action first"

    .line 114
    invoke-static {v2}, Lcn/highlight/tx/ble/utils/BleLog;->w(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 116
    invoke-interface {v0, v2}, Lcn/highlight/tx/ble/callback/BleScanPresenterImp;->onScanStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->prepare([Ljava/lang/String;Ljava/lang/String;ZZJLcn/highlight/tx/ble/callback/BleScanPresenterImp;)V

    .line 123
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, v1, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    move-object v3, p1

    .line 124
    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v2, Lcn/highlight/tx/ble/data/BleScanState;->STATE_SCANNING:Lcn/highlight/tx/ble/data/BleScanState;

    goto :goto_0

    :cond_2
    sget-object v2, Lcn/highlight/tx/ble/data/BleScanState;->STATE_IDLE:Lcn/highlight/tx/ble/data/BleScanState;

    :goto_0
    iput-object v2, v1, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanState:Lcn/highlight/tx/ble/data/BleScanState;

    .line 126
    iget-object v2, v1, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    invoke-virtual {v2, v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->notifyScanStarted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getScanState()Lcn/highlight/tx/ble/data/BleScanState;
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanState:Lcn/highlight/tx/ble/data/BleScanState;

    return-object v0
.end method

.method public scan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcn/highlight/tx/ble/callback/BleScanCallback;)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 101
    invoke-direct/range {v0 .. v8}, Lcn/highlight/tx/ble/scan/BleScanner;->startLeScan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcn/highlight/tx/ble/callback/BleScanPresenterImp;)V

    return-void
.end method

.method public scanAndConnect([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLcn/highlight/tx/ble/callback/BleScanAndConnectCallback;)V
    .locals 9

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 107
    invoke-direct/range {v0 .. v8}, Lcn/highlight/tx/ble/scan/BleScanner;->startLeScan([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLcn/highlight/tx/ble/callback/BleScanPresenterImp;)V

    return-void
.end method

.method public declared-synchronized stopLeScan()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 131
    sget-object v0, Lcn/highlight/tx/ble/data/BleScanState;->STATE_IDLE:Lcn/highlight/tx/ble/data/BleScanState;

    iput-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanState:Lcn/highlight/tx/ble/data/BleScanState;

    .line 132
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanner;->mBleScanPresenter:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->notifyScanStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
