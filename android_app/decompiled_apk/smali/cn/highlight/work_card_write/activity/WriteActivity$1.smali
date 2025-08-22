.class Lcn/highlight/work_card_write/activity/WriteActivity$1;
.super Lcn/highlight/tx/ble/callback/BleScanCallback;
.source "WriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/WriteActivity;->serachBLE(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->val$targetId:Ljava/lang/String;

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinished(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/tx/ble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$002(Lcn/highlight/work_card_write/activity/WriteActivity;Z)Z

    .line 825
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/tx/ble/data/BleDevice;

    .line 826
    invoke-virtual {v2}, Lcn/highlight/tx/ble/data/BleDevice;->getScanRecord()[B

    move-result-object v5

    invoke-static {v5}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v5

    .line 827
    invoke-static {v5}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0xe

    const/16 v6, 0x1c

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 828
    :goto_1
    invoke-virtual {v2}, Lcn/highlight/tx/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TAG_SR9837"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->val$targetId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 834
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$100(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;)V

    .line 835
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v0, 0x7f100113

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v4, 0x7f100048

    invoke-virtual {v2, v4}, Lcn/highlight/work_card_write/activity/WriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, v3}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$200(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 836
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$300(Lcn/highlight/work_card_write/activity/WriteActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 0

    return-void
.end method

.method public onScanning(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 3

    .line 847
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getScanRecord()[B

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    const/16 v2, 0x1c

    .line 848
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 849
    :goto_0
    invoke-virtual {p1}, Lcn/highlight/tx/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG_SR9837"

    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->val$targetId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$400(Lcn/highlight/work_card_write/activity/WriteActivity;)Lcn/highlight/tx/BaseTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/BaseTxManager;->cancelScan()V

    .line 852
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$1;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$500(Lcn/highlight/work_card_write/activity/WriteActivity;Lcn/highlight/tx/ble/data/BleDevice;)V

    :cond_1
    return-void
.end method
