.class public abstract Lcn/highlight/tx/ble/callback/BleMtuChangedCallbackHighlight;
.super Lcn/highlight/tx/ble/callback/BleBaseCallbackHighlight;
.source "BleMtuChangedCallbackHighlight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleBaseCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMtuChanged(I)V
.end method

.method public abstract onSetMTUFailure(Lcn/highlight/tx/ble/exception/BleException;)V
.end method
