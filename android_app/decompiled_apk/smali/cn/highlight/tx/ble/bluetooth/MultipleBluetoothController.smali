.class public Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;
.super Ljava/lang/Object;
.source "MultipleBluetoothController.java"


# instance fields
.field private final bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/highlight/tx/ble/utils/BleLruHashMap<",
            "Ljava/lang/String;",
            "Lcn/highlight/tx/ble/bluetooth/BleBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private final bleTempHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/highlight/tx/ble/bluetooth/BleBluetooth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/highlight/tx/ble/BleManager;->getMaxConnectCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;-><init>(I)V

    iput-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized addBleBluetooth(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 48
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized buildConnectingBle(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;
    .locals 2

    monitor-enter p0

    .line 30
    :try_start_0
    new-instance v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-direct {v0, p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;-><init>(Lcn/highlight/tx/ble/data/BleDevice;)V

    .line 31
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->destroy()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->clear()V

    .line 99
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->destroy()V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->isContainDevice(Lcn/highlight/tx/ble/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnectAllDevice()V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->disconnect()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBleBluetooth(Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 78
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getBleBluetoothList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/tx/ble/bluetooth/BleBluetooth;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {v1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    new-instance v1, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController$1;

    invoke-direct {v1, p0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController$1;-><init>(Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/tx/ble/data/BleDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->refreshConnectedDevice()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetoothList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDevice()Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isContainDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized isContainDevice(Lcn/highlight/tx/ble/data/BleDevice;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method public refreshConnectedDevice()V
    .locals 5

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetoothList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    .line 132
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v3

    invoke-virtual {v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDevice()Lcn/highlight/tx/ble/data/BleDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/highlight/tx/ble/BleManager;->isConnected(Lcn/highlight/tx/ble/data/BleDevice;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {p0, v2}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->removeBleBluetooth(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized removeBleBluetooth(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleLruHashMap:Lcn/highlight/tx/ble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/utils/BleLruHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConnectingBle(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 39
    monitor-exit p0

    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->bleTempHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
