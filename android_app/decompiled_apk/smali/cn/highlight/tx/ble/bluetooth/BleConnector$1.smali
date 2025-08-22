.class Lcn/highlight/tx/ble/bluetooth/BleConnector$1;
.super Landroid/os/Handler;
.source "BleConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/bluetooth/BleConnector;-><init>(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/bluetooth/BleConnector;Landroid/os/Looper;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/highlight/tx/ble/bluetooth/BleConnector$1;->this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_d

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b

    const/16 v1, 0x41

    if-eq v0, v1, :cond_a

    const/16 v1, 0x42

    if-eq v0, v1, :cond_8

    const/16 v1, 0x51

    if-eq v0, v1, :cond_7

    const/16 v1, 0x52

    if-eq v0, v1, :cond_5

    const/16 v1, 0x61

    if-eq v0, v1, :cond_4

    const/16 v1, 0x62

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 108
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;

    .line 109
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "indicate_value"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    .line 112
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;->onCharacteristicChanged([B)V

    goto/16 :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleConnector$1;->this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->indicateMsgInit()V

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;

    .line 95
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "indicate_status"

    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;->onIndicateSuccess()V

    goto/16 :goto_0

    .line 101
    :cond_0
    new-instance v1, Lcn/highlight/tx/ble/exception/GattException;

    invoke-direct {v1, p1}, Lcn/highlight/tx/ble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;->onIndicateFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 85
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;

    if-eqz p1, :cond_e

    .line 87
    new-instance v0, Lcn/highlight/tx/ble/exception/TimeoutException;

    invoke-direct {v0}, Lcn/highlight/tx/ble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleIndicateCallbackHighlight;->onIndicateFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 75
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;

    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "notify_value"

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    .line 79
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;->onCharacteristicChanged([B)V

    goto/16 :goto_0

    .line 59
    :pswitch_4
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleConnector$1;->this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->notifyMsgInit()V

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;

    .line 62
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "notify_status"

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_1

    .line 66
    invoke-virtual {v0}, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;->onNotifySuccess()V

    goto/16 :goto_0

    .line 68
    :cond_1
    new-instance v1, Lcn/highlight/tx/ble/exception/GattException;

    invoke-direct {v1, p1}, Lcn/highlight/tx/ble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;->onNotifyFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 52
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;

    if-eqz p1, :cond_e

    .line 54
    new-instance v0, Lcn/highlight/tx/ble/exception/TimeoutException;

    invoke-direct {v0}, Lcn/highlight/tx/ble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;->onNotifyFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleConnector$1;->this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->mtuChangedMsgInit()V

    .line 200
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;

    .line 201
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "mtu_status"

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mtu_value"

    .line 203
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_3

    .line 206
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;->onMtuChanged(I)V

    goto/16 :goto_0

    .line 208
    :cond_3
    new-instance p1, Lcn/highlight/tx/ble/exception/GattException;

    invoke-direct {p1, v1}, Lcn/highlight/tx/ble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;->onSetMTUFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 191
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;

    if-eqz p1, :cond_e

    .line 193
    new-instance v0, Lcn/highlight/tx/ble/exception/TimeoutException;

    invoke-direct {v0}, Lcn/highlight/tx/ble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;->onSetMTUFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleConnector$1;->this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->rssiMsgInit()V

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;

    .line 177
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "rssi_status"

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "rssi_value"

    .line 179
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_6

    .line 182
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;->onRssiSuccess(I)V

    goto/16 :goto_0

    .line 184
    :cond_6
    new-instance p1, Lcn/highlight/tx/ble/exception/GattException;

    invoke-direct {p1, v1}, Lcn/highlight/tx/ble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;->onRssiFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 167
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;

    if-eqz p1, :cond_e

    .line 169
    new-instance v0, Lcn/highlight/tx/ble/exception/TimeoutException;

    invoke-direct {v0}, Lcn/highlight/tx/ble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleRssiCallbackHighlight;->onRssiFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto/16 :goto_0

    .line 150
    :cond_8
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleConnector$1;->this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->readMsgInit()V

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;

    .line 153
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "read_status"

    .line 154
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "read_value"

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_9

    .line 158
    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;->onReadSuccess([B)V

    goto :goto_0

    .line 160
    :cond_9
    new-instance p1, Lcn/highlight/tx/ble/exception/GattException;

    invoke-direct {p1, v1}, Lcn/highlight/tx/ble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;->onReadFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 143
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;

    if-eqz p1, :cond_e

    .line 145
    new-instance v0, Lcn/highlight/tx/ble/exception/TimeoutException;

    invoke-direct {v0}, Lcn/highlight/tx/ble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleReadCallbackHighlight;->onReadFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 126
    :cond_b
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/BleConnector$1;->this$0:Lcn/highlight/tx/ble/bluetooth/BleConnector;

    invoke-virtual {v0}, Lcn/highlight/tx/ble/bluetooth/BleConnector;->writeMsgInit()V

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "write_status"

    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "write_value"

    .line 131
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1, v1, p1}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;->onWriteSuccess(II[B)V

    goto :goto_0

    .line 136
    :cond_c
    new-instance p1, Lcn/highlight/tx/ble/exception/GattException;

    invoke-direct {p1, v1}, Lcn/highlight/tx/ble/exception/GattException;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;->onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    goto :goto_0

    .line 118
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;

    if-eqz p1, :cond_e

    .line 120
    new-instance v0, Lcn/highlight/tx/ble/exception/TimeoutException;

    invoke-direct {v0}, Lcn/highlight/tx/ble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, v0}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;->onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    :cond_e
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
