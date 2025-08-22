.class Lcn/manytag/rfidapi/d;
.super Lcn/manytag/rfidapi/ble/callback/b;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;

.field final synthetic b:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/d;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p2, p0, Lcn/manytag/rfidapi/d;->a:Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    iget-object p2, p0, Lcn/manytag/rfidapi/d;->b:Lcn/manytag/rfidapi/Reader;

    iput-object p1, p2, Lcn/manytag/rfidapi/Reader;->ble:Lcn/manytag/rfidapi/ble/data/BleDevice;

    iget-object p2, p2, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/d;->a:Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;->connSuccess()V

    :cond_0
    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/b/a;)V
    .locals 0

    iget-object p1, p0, Lcn/manytag/rfidapi/d;->a:Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;->connFail()V

    :cond_0
    return-void
.end method

.method public a(ZLcn/manytag/rfidapi/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    iget-object p1, p0, Lcn/manytag/rfidapi/d;->a:Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/manytag/rfidapi/uhf/listen/OnConnStatus;->disConnected()V

    :cond_0
    return-void
.end method
