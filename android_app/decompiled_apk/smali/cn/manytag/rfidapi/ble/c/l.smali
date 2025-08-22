.class Lcn/manytag/rfidapi/ble/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/manytag/rfidapi/ble/callback/h;

.field final synthetic c:Lcn/manytag/rfidapi/ble/c/k;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/c/k;Ljava/util/List;Lcn/manytag/rfidapi/ble/callback/h;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/l;->c:Lcn/manytag/rfidapi/ble/c/k;

    iput-object p2, p0, Lcn/manytag/rfidapi/ble/c/l;->a:Ljava/util/List;

    iput-object p3, p0, Lcn/manytag/rfidapi/ble/c/l;->b:Lcn/manytag/rfidapi/ble/callback/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/c/l;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manytag/rfidapi/ble/data/BleDevice;

    iget-object v2, p0, Lcn/manytag/rfidapi/ble/c/l;->b:Lcn/manytag/rfidapi/ble/callback/h;

    invoke-virtual {v0, v1, v2}, Lcn/manytag/rfidapi/ble/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;Lcn/manytag/rfidapi/ble/callback/b;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method
