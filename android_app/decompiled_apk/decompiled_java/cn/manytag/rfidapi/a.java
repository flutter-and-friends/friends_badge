package cn.manytag.rfidapi;

import android.bluetooth.BluetoothGatt;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.uhf.listen.OnConnStatus;

/* loaded from: classes.dex */
class a extends cn.manytag.rfidapi.ble.callback.b {
    final /* synthetic */ OnConnStatus a;
    final /* synthetic */ Reader b;

    a(Reader reader, OnConnStatus onConnStatus) {
        this.b = reader;
        this.a = onConnStatus;
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a() {
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) throws InterruptedException {
        this.b.bluetoothOperation.a(bleDevice);
        OnConnStatus onConnStatus = this.a;
        if (onConnStatus != null) {
            onConnStatus.connSuccess();
        }
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a(BleDevice bleDevice, cn.manytag.rfidapi.ble.b.a aVar) {
        OnConnStatus onConnStatus = this.a;
        if (onConnStatus != null) {
            onConnStatus.connFail();
        }
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) {
    }
}
