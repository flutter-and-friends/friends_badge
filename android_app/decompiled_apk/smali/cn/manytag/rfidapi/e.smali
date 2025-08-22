.class Lcn/manytag/rfidapi/e;
.super Lcn/manytag/rfidapi/ble/callback/b;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/Reader;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/Reader;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/e;->a:Lcn/manytag/rfidapi/Reader;

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

    iget-object p2, p0, Lcn/manytag/rfidapi/e;->a:Lcn/manytag/rfidapi/Reader;

    iget-object p2, p2, Lcn/manytag/rfidapi/Reader;->bluetoothOperation:Lcn/manytag/rfidapi/uhf/a;

    invoke-virtual {p2, p1}, Lcn/manytag/rfidapi/uhf/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/b/a;)V
    .locals 0

    return-void
.end method

.method public a(ZLcn/manytag/rfidapi/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    return-void
.end method
