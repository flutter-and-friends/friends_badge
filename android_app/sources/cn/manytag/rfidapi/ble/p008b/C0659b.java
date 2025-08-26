package cn.manytag.rfidapi.ble.p008b;

import android.bluetooth.BluetoothGatt;

/* renamed from: cn.manytag.rfidapi.ble.b.b */
/* loaded from: classes.dex */
public class C0659b extends AbstractC0658a {

    /* renamed from: a */
    private BluetoothGatt f195a;

    /* renamed from: b */
    private int f196b;

    public C0659b(BluetoothGatt bluetoothGatt, int i) {
        super(101, "Gatt Exception Occurred! ");
        this.f195a = bluetoothGatt;
        this.f196b = i;
    }

    @Override // cn.manytag.rfidapi.ble.p008b.AbstractC0658a
    public String toString() {
        return "ConnectException{gattStatus=" + this.f196b + ", bluetoothGatt=" + this.f195a + "} " + super.toString();
    }
}
