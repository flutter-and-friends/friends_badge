.class public abstract Lcn/manytag/rfidapi/ble/callback/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/callback/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/callback/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/callback/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/callback/a;->b:Landroid/os/Handler;

    return-object v0
.end method
