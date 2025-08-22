.class Lcn/manytag/rfidapi/ble/a/j;
.super Lcn/manytag/rfidapi/ble/callback/i;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/a/h;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/a/h;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/callback/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II[B)V
    .locals 2

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/h;->b(Lcn/manytag/rfidapi/ble/a/h;)I

    move-result p1

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/h;->c(Lcn/manytag/rfidapi/ble/a/h;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/h;->d(Lcn/manytag/rfidapi/ble/a/h;)Lcn/manytag/rfidapi/ble/callback/i;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/h;->d(Lcn/manytag/rfidapi/ble/a/h;)Lcn/manytag/rfidapi/ble/callback/i;

    move-result-object p2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/h;->b(Lcn/manytag/rfidapi/ble/a/h;)I

    move-result v0

    invoke-virtual {p2, p1, v0, p3}, Lcn/manytag/rfidapi/ble/callback/i;->a(II[B)V

    :cond_0
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/h;->e(Lcn/manytag/rfidapi/ble/a/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/h;->f(Lcn/manytag/rfidapi/ble/a/h;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p2}, Lcn/manytag/rfidapi/ble/a/h;->f(Lcn/manytag/rfidapi/ble/a/h;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p3}, Lcn/manytag/rfidapi/ble/a/h;->g(Lcn/manytag/rfidapi/ble/a/h;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public a(Lcn/manytag/rfidapi/ble/b/a;)V
    .locals 4

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/h;->d(Lcn/manytag/rfidapi/ble/a/h;)Lcn/manytag/rfidapi/ble/callback/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/h;->d(Lcn/manytag/rfidapi/ble/a/h;)Lcn/manytag/rfidapi/ble/callback/i;

    move-result-object v0

    new-instance v1, Lcn/manytag/rfidapi/ble/b/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occur while writing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcn/manytag/rfidapi/ble/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    :cond_0
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/h;->e(Lcn/manytag/rfidapi/ble/a/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {p1}, Lcn/manytag/rfidapi/ble/a/h;->f(Lcn/manytag/rfidapi/ble/a/h;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/a/h;->f(Lcn/manytag/rfidapi/ble/a/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/j;->a:Lcn/manytag/rfidapi/ble/a/h;

    invoke-static {v1}, Lcn/manytag/rfidapi/ble/a/h;->g(Lcn/manytag/rfidapi/ble/a/h;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
