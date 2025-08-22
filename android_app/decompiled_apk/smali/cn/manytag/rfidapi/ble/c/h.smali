.class final Lcn/manytag/rfidapi/ble/c/h;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcn/manytag/rfidapi/ble/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manytag/rfidapi/ble/c/a;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/data/BleDevice;

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lcn/manytag/rfidapi/ble/c/a;->a(Lcn/manytag/rfidapi/ble/c/a;Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    :cond_0
    return-void
.end method
