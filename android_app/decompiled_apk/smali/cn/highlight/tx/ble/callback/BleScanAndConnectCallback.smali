.class public abstract Lcn/highlight/tx/ble/callback/BleScanAndConnectCallback;
.super Lcn/highlight/tx/ble/callback/BleGattCallback;
.source "BleScanAndConnectCallback.java"

# interfaces
.implements Lcn/highlight/tx/ble/callback/BleScanPresenterImp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    return-void
.end method

.method public abstract onScanFinished(Lcn/highlight/tx/ble/data/BleDevice;)V
.end method
