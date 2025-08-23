package cn.manytag.rfidapi;

import android.bluetooth.BluetoothGatt;
import cn.manytag.rfidapi.ble.data.BleDevice;

/* loaded from: classes.dex */
class e extends cn.manytag.rfidapi.ble.callback.b {
    final /* synthetic */ Reader a;

    e(Reader reader) {
        this.a = reader;
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a() {
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) throws InterruptedException {
        this.a.bluetoothOperation.a(bleDevice);
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a(BleDevice bleDevice, cn.manytag.rfidapi.ble.b.a aVar) {
    }

    @Override // cn.manytag.rfidapi.ble.callback.b
    public void a(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) {
    }
}
