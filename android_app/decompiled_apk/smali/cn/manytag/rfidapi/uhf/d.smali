.class Lcn/manytag/rfidapi/uhf/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/uhf/a;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/uhf/a;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/manytag/rfidapi/uhf/data/BleData;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcn/manytag/rfidapi/uhf/data/BleData;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcn/manytag/rfidapi/uhf/data/BleData;->getDataList()Ljava/util/List;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcn/manytag/rfidapi/uhf/a;->a(Ljava/util/List;)[B

    move-result-object p1

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    invoke-static {v0, p1}, Lcn/manytag/rfidapi/uhf/a;->b(Lcn/manytag/rfidapi/uhf/a;[B)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    aget-byte v1, p1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v0, :cond_4

    const/16 v0, 0x40

    if-eq v1, v0, :cond_2

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->f:Lcn/manytag/rfidapi/uhf/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->f:Lcn/manytag/rfidapi/uhf/g;

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/uhf/g;->a([B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->g:Lcn/manytag/rfidapi/uhf/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->g:Lcn/manytag/rfidapi/uhf/k;

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/uhf/k;->a([B)V

    goto :goto_0

    :cond_0
    :pswitch_2
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->d:Lcn/manytag/rfidapi/uhf/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    invoke-static {v0, p1}, Lcn/manytag/rfidapi/uhf/a;->c(Lcn/manytag/rfidapi/uhf/a;[B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->h:Lcn/manytag/rfidapi/uhf/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->h:Lcn/manytag/rfidapi/uhf/e;

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/uhf/e;->a([B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->b:Lcn/manytag/rfidapi/uhf/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->b:Lcn/manytag/rfidapi/uhf/f;

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/uhf/f;->a([B)V

    :cond_3
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->c:Lcn/manytag/rfidapi/uhf/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->c:Lcn/manytag/rfidapi/uhf/j;

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/uhf/j;->a([B)V

    goto :goto_0

    :cond_4
    :pswitch_3
    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->e:Lcn/manytag/rfidapi/uhf/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/manytag/rfidapi/uhf/d;->a:Lcn/manytag/rfidapi/uhf/a;

    iget-object v0, v0, Lcn/manytag/rfidapi/uhf/a;->e:Lcn/manytag/rfidapi/uhf/i;

    invoke-interface {v0, p1}, Lcn/manytag/rfidapi/uhf/i;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
