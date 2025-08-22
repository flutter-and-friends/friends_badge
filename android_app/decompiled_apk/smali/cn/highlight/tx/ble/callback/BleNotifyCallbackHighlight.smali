.class public abstract Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;
.super Lcn/highlight/tx/ble/callback/BleBaseCallbackHighlight;
.source "BleNotifyCallbackHighlight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleBaseCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCharacteristicChanged([B)V
.end method

.method public abstract onNotifyFailure(Lcn/highlight/tx/ble/exception/BleException;)V
.end method

.method public abstract onNotifySuccess()V
.end method
