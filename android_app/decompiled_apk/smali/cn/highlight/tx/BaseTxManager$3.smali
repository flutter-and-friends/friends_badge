.class Lcn/highlight/tx/BaseTxManager$3;
.super Lcn/highlight/tx/ble/callback/BleGattCallback;
.source "BaseTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/BaseTxManager;->conn(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/listener/OnConnStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/BaseTxManager;

.field final synthetic val$onConnStatus:Lcn/highlight/tx/listener/OnConnStatus;


# direct methods
.method constructor <init>(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/listener/OnConnStatus;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager$3;->this$0:Lcn/highlight/tx/BaseTxManager;

    iput-object p2, p0, Lcn/highlight/tx/BaseTxManager$3;->val$onConnStatus:Lcn/highlight/tx/listener/OnConnStatus;

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onConnectSuccess$0$BaseTxManager$3(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/listener/OnConnStatus;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager$3;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {v0, p1}, Lcn/highlight/tx/BaseTxManager;->access$300(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/ble/data/BleDevice;)V

    if-eqz p2, :cond_0

    .line 234
    invoke-interface {p2}, Lcn/highlight/tx/listener/OnConnStatus;->connSuccess()V

    :cond_0
    return-void
.end method

.method public onConnectFail(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/exception/BleException;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$3;->val$onConnStatus:Lcn/highlight/tx/listener/OnConnStatus;

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Lcn/highlight/tx/listener/OnConnStatus;->connFail()V

    :cond_0
    return-void
.end method

.method public onConnectSuccess(Lcn/highlight/tx/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 218
    invoke-static {}, Lcn/highlight/tx/ble/BleManager;->getInstance()Lcn/highlight/tx/ble/BleManager;

    move-result-object p2

    new-instance p3, Lcn/highlight/tx/BaseTxManager$3$1;

    invoke-direct {p3, p0}, Lcn/highlight/tx/BaseTxManager$3$1;-><init>(Lcn/highlight/tx/BaseTxManager$3;)V

    const/16 v0, 0xf7

    invoke-virtual {p2, p1, v0, p3}, Lcn/highlight/tx/ble/BleManager;->setMtu(Lcn/highlight/tx/ble/data/BleDevice;ILcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;)V

    .line 230
    iget-object p2, p0, Lcn/highlight/tx/BaseTxManager$3;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {p2, p1}, Lcn/highlight/tx/BaseTxManager;->access$202(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/ble/data/BleDevice;)Lcn/highlight/tx/ble/data/BleDevice;

    .line 231
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iget-object p3, p0, Lcn/highlight/tx/BaseTxManager$3;->val$onConnStatus:Lcn/highlight/tx/listener/OnConnStatus;

    new-instance v0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;

    invoke-direct {v0, p0, p1, p3}, Lcn/highlight/tx/-$$Lambda$BaseTxManager$3$pbYv5R67pvqb4uH959g6-XDpzqc;-><init>(Lcn/highlight/tx/BaseTxManager$3;Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/listener/OnConnStatus;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDisConnected(ZLcn/highlight/tx/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .line 241
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$3;->val$onConnStatus:Lcn/highlight/tx/listener/OnConnStatus;

    if-eqz p1, :cond_0

    .line 242
    invoke-interface {p1}, Lcn/highlight/tx/listener/OnConnStatus;->disConnected()V

    :cond_0
    return-void
.end method

.method public onStartConnect()V
    .locals 0

    return-void
.end method
