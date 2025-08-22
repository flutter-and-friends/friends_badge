.class Lcom/gg/reader/api/dal/communication/BleBluetoothClient$1;
.super Ljava/lang/Object;
.source "BleBluetoothClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    .line 131
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 135
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    invoke-static {p2}, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->access$000(Lcom/gg/reader/api/dal/communication/BleBluetoothClient;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p2, p0, Lcom/gg/reader/api/dal/communication/BleBluetoothClient$1;->this$0:Lcom/gg/reader/api/dal/communication/BleBluetoothClient;

    iget-object p2, p2, Lcom/gg/reader/api/dal/communication/BleBluetoothClient;->scanCallBack:Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueScanCallBack;

    invoke-interface {p2, p1}, Lcom/gg/reader/api/dal/communication/BleClientCallback$OnBlueScanCallBack;->onBlueFind(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
