.class public Lcn/highlight/tx/ble/exception/TimeoutException;
.super Lcn/highlight/tx/ble/exception/BleException;
.source "TimeoutException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x64

    const-string v1, "Timeout Exception Occurred!"

    .line 7
    invoke-direct {p0, v0, v1}, Lcn/highlight/tx/ble/exception/BleException;-><init>(ILjava/lang/String;)V

    return-void
.end method
