.class public abstract Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;
.super Lcn/highlight/tx/ble/callback/BleBaseCallbackHighlight;
.source "BleWriteCallbackHighlight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleBaseCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V
.end method

.method public abstract onWriteSuccess(II[B)V
.end method
