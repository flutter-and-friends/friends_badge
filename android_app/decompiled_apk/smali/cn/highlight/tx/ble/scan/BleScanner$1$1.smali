.class Lcn/highlight/tx/ble/scan/BleScanner$1$1;
.super Ljava/lang/Object;
.source "BleScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/scan/BleScanner$1;->onScanFinished(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/highlight/tx/ble/scan/BleScanner$1;

.field final synthetic val$callback:Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/scan/BleScanner$1;Ljava/util/List;Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanner$1$1;->this$1:Lcn/highlight/tx/ble/scan/BleScanner$1;

    iput-object p2, p0, Lcn/highlight/tx/ble/scan/BleScanner$1$1;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcn/highlight/tx/ble/scan/BleScanner$1$1;->val$callback:Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/scan/BleScanner$1$1;->val$list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/tx/ble/data/BleDevice;

    iget-object v2, p0, Lcn/highlight/tx/ble/scan/BleScanner$1$1;->val$callback:Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;

    invoke-virtual {v0, v1, v2}, Lcn/highlight/tx/ble/BleManager;->connect(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method
