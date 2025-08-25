package cn.manytag.rfidapi.ble.callback;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import cn.manytag.rfidapi.ble.data.BleDevice;

/* loaded from: classes.dex */
public abstract class b extends BluetoothGattCallback {
    public abstract void a();

    public abstract void a(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i);

    public abstract void a(BleDevice bleDevice, cn.manytag.rfidapi.ble.b.a aVar);

    public abstract void a(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i);
}
