package cn.manytag.rfidapi;

import android.bluetooth.BluetoothGatt;
import cn.manytag.rfidapi.ble.callback.AbstractC0677b;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.ble.p008b.AbstractC0658a;

/* renamed from: cn.manytag.rfidapi.e */
/* loaded from: classes.dex */
class C0692e extends AbstractC0677b {

    /* renamed from: a */
    final /* synthetic */ Reader f247a;

    C0692e(Reader reader) {
        this.f247a = reader;
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo45a() {
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo46a(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) throws InterruptedException {
        this.f247a.bluetoothOperation.m227a(bleDevice);
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo47a(BleDevice bleDevice, AbstractC0658a abstractC0658a) {
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo48a(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) {
    }
}
