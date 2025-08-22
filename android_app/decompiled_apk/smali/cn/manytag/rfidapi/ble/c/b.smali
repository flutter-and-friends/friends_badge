.class Lcn/manytag/rfidapi/ble/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/data/BleDevice;

.field final synthetic b:Lcn/manytag/rfidapi/ble/c/a;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/c/a;Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/b;->b:Lcn/manytag/rfidapi/ble/c/a;

    iput-object p2, p0, Lcn/manytag/rfidapi/ble/c/b;->a:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/b;->b:Lcn/manytag/rfidapi/ble/c/a;

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/c/b;->a:Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/c/a;->a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    return-void
.end method
