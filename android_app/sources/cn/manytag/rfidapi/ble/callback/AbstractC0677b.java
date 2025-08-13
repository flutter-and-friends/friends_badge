package cn.manytag.rfidapi.ble.callback;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.ble.p008b.AbstractC0658a;

/* renamed from: cn.manytag.rfidapi.ble.callback.b */
/* loaded from: classes.dex */
public abstract class AbstractC0677b extends BluetoothGattCallback {
    /* renamed from: a */
    public abstract void mo45a();

    /* renamed from: a */
    public abstract void mo46a(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i);

    /* renamed from: a */
    public abstract void mo47a(BleDevice bleDevice, AbstractC0658a abstractC0658a);

    /* renamed from: a */
    public abstract void mo48a(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i);
}
