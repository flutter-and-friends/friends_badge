package cn.manytag.rfidapi.ble.b;

import android.bluetooth.BluetoothGatt;

/* loaded from: classes.dex */
public class b extends a {
    private BluetoothGatt a;
    private int b;

    public b(BluetoothGatt bluetoothGatt, int i) {
        super(101, "Gatt Exception Occurred! ");
        this.a = bluetoothGatt;
        this.b = i;
    }

    @Override // cn.manytag.rfidapi.ble.b.a
    public String toString() {
        return "ConnectException{gattStatus=" + this.b + ", bluetoothGatt=" + this.a + "} " + super.toString();
    }
}
