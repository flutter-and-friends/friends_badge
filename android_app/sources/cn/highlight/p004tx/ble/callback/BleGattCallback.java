package cn.highlight.p004tx.ble.callback;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import cn.highlight.p004tx.ble.data.BleDevice;
import cn.highlight.p004tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleGattCallback extends BluetoothGattCallback {
    public abstract void onConnectFail(BleDevice bleDevice, BleException bleException);

    public abstract void onConnectSuccess(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i);

    public abstract void onDisConnected(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i);

    public abstract void onStartConnect();
}
