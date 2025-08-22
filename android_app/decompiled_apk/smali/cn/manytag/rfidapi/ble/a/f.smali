.class Lcn/manytag/rfidapi/ble/a/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/a/e;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/a/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/f;->a:Lcn/manytag/rfidapi/ble/a/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

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

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/c;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "indicate_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/c;->a([B)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/f;->a:Lcn/manytag/rfidapi/ble/a/e;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/e;->b()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/c;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "indicate_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/c;->c()V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcn/manytag/rfidapi/ble/b/c;

    invoke-direct {v1, p1}, Lcn/manytag/rfidapi/ble/b/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/callback/c;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/callback/c;

    if-eqz p1, :cond_e

    new-instance v0, Lcn/manytag/rfidapi/ble/b/e;

    invoke-direct {v0}, Lcn/manytag/rfidapi/ble/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/c;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/e;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "notify_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/e;->a([B)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/f;->a:Lcn/manytag/rfidapi/ble/a/e;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/e;->a()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/e;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "notify_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/callback/e;->c()V

    goto/16 :goto_0

    :cond_1
    new-instance v1, Lcn/manytag/rfidapi/ble/b/c;

    invoke-direct {v1, p1}, Lcn/manytag/rfidapi/ble/b/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/callback/e;

    if-eqz p1, :cond_e

    new-instance v0, Lcn/manytag/rfidapi/ble/b/e;

    invoke-direct {v0}, Lcn/manytag/rfidapi/ble/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/e;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/f;->a:Lcn/manytag/rfidapi/ble/a/e;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/e;->f()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "mtu_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mtu_value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/d;->a(I)V

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcn/manytag/rfidapi/ble/b/c;

    invoke-direct {p1, v1}, Lcn/manytag/rfidapi/ble/b/c;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/d;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/callback/d;

    if-eqz p1, :cond_e

    new-instance v0, Lcn/manytag/rfidapi/ble/b/e;

    invoke-direct {v0}, Lcn/manytag/rfidapi/ble/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/d;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/f;->a:Lcn/manytag/rfidapi/ble/a/e;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/e;->e()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/g;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "rssi_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "rssi_value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_6

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/g;->a(I)V

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lcn/manytag/rfidapi/ble/b/c;

    invoke-direct {p1, v1}, Lcn/manytag/rfidapi/ble/b/c;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/g;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/callback/g;

    if-eqz p1, :cond_e

    new-instance v0, Lcn/manytag/rfidapi/ble/b/e;

    invoke-direct {v0}, Lcn/manytag/rfidapi/ble/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/g;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/f;->a:Lcn/manytag/rfidapi/ble/a/e;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/e;->d()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/f;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "read_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "read_value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_9

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/f;->a([B)V

    goto :goto_0

    :cond_9
    new-instance p1, Lcn/manytag/rfidapi/ble/b/c;

    invoke-direct {p1, v1}, Lcn/manytag/rfidapi/ble/b/c;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/f;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto :goto_0

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/callback/f;

    if-eqz p1, :cond_e

    new-instance v0, Lcn/manytag/rfidapi/ble/b/e;

    invoke-direct {v0}, Lcn/manytag/rfidapi/ble/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/f;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/f;->a:Lcn/manytag/rfidapi/ble/a/e;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/e;->c()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/manytag/rfidapi/ble/callback/i;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "write_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "write_value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez v1, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p1}, Lcn/manytag/rfidapi/ble/callback/i;->a(II[B)V

    goto :goto_0

    :cond_c
    new-instance p1, Lcn/manytag/rfidapi/ble/b/c;

    invoke-direct {p1, v1}, Lcn/manytag/rfidapi/ble/b/c;-><init>(I)V

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

    goto :goto_0

    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/ble/callback/i;

    if-eqz p1, :cond_e

    new-instance v0, Lcn/manytag/rfidapi/ble/b/e;

    invoke-direct {v0}, Lcn/manytag/rfidapi/ble/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcn/manytag/rfidapi/ble/callback/i;->a(Lcn/manytag/rfidapi/ble/b/a;)V

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
