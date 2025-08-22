.class Lcn/highlight/tx/BaseTxManager$3$1;
.super Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;
.source "BaseTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/BaseTxManager$3;->onConnectSuccess(Lcn/highlight/tx/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/highlight/tx/BaseTxManager$3;


# direct methods
.method constructor <init>(Lcn/highlight/tx/BaseTxManager$3;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager$3$1;->this$1:Lcn/highlight/tx/BaseTxManager$3;

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public onMtuChanged(I)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mtu\u53c2\u6570\u8bbe\u7f6e\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WriteActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetMTUFailure(Lcn/highlight/tx/ble/exception/BleException;)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mtu\u53c2\u6570\u8bbe\u7f6e\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WriteActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
