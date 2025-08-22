.class Lcn/manytag/rfidapi/ble/a/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/a/h;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/a/h;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/i;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x33

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/i;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/h;->a(Lcn/manytag/rfidapi/ble/a/h;)V

    :cond_0
    return-void
.end method
