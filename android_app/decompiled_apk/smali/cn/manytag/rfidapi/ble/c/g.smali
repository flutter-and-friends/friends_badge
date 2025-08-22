.class Lcn/manytag/rfidapi/ble/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/manytag/rfidapi/ble/c/a;


# direct methods
.method constructor <init>(Lcn/manytag/rfidapi/ble/c/a;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/g;->a:Lcn/manytag/rfidapi/ble/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/g;->a:Lcn/manytag/rfidapi/ble/c/a;

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/c/a;->a(Lcn/manytag/rfidapi/ble/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/c/a;->a(Ljava/util/List;)V

    return-void
.end method
