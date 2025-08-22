.class public Lcn/manytag/rfidapi/ble/b/e;
.super Lcn/manytag/rfidapi/ble/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x64

    const-string v1, "Timeout Exception Occurred!"

    invoke-direct {p0, v0, v1}, Lcn/manytag/rfidapi/ble/b/a;-><init>(ILjava/lang/String;)V

    return-void
.end method
