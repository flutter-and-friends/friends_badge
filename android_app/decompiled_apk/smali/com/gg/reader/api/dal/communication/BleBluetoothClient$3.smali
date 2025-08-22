.class Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleBluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gg/reader/api/dal/communication/BleBluetoothClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    .line 239
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    array-length p1, p1

    if-gtz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$100(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 243
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ble receive--->"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 246
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object p2, p2, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    :try_start_1
    array-length v0, p1

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object v1, v1, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    invoke-virtual {v1}, Lcom/gg/reader/api/utils/RingBuffer;->getDataCount()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->ringBuffer:Lcom/gg/reader/api/utils/RingBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    .line 251
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->lockRingBuffer:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 252
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    if-nez p3, :cond_0

    .line 223
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$100(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCharacteristicRead"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    if-nez p3, :cond_0

    .line 231
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$100(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCharacteristicWrite"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p2}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$100(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "STATE_CONNECTED"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p2}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$200(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 172
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p2, p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$300(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;Landroid/bluetooth/BluetoothGatt;)Z

    move-result p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "requestMtu-->"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0xc8

    .line 175
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 180
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$100(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "STATE_DISCONNECTED"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->connectCallBack:Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;->onDisconnect()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p3, p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$100(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "STATE_DISCONNECTING"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 194
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->connectCallBack:Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;->onConnectSuccess()V

    .line 195
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-virtual {p1}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->enableTxNotification()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$3;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object p1, p1, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->connectCallBack:Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;

    invoke-interface {p1}, Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueConnectCallBack;->onConnectFailure()V

    :goto_0
    return-void
.end method
