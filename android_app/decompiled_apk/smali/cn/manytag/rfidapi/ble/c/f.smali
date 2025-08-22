.class Lcn/manytag/rfidapi/ble/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/manytag/rfidapi/ble/c/a;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/c/a;Z)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/f;->b:Lcn/manytag/rfidapi/ble/c/a;

    iput-boolean p2, p0, Lcn/manytag/rfidapi/ble/c/f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/f;->b:Lcn/manytag/rfidapi/ble/c/a;

    iget-boolean v1, p0, Lcn/manytag/rfidapi/ble/c/f;->a:Z

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/c/a;->b(Z)V

    return-void
.end method
