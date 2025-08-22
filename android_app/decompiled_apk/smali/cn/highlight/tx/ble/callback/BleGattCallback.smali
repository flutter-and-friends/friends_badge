.class public abstract Lcn/highlight/tx/ble/callback/BleGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleGattCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConnectFail(Lcn/highlight/tx/ble/data/BleDevice;Lcn/highlight/tx/ble/exception/BleException;)V
.end method

.method public abstract onConnectSuccess(Lcn/highlight/tx/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract onDisConnected(ZLcn/highlight/tx/ble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract onStartConnect()V
.end method
