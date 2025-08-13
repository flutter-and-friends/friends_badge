package cn.manytag.rfidapi;

import android.bluetooth.BluetoothGatt;
import cn.manytag.rfidapi.ble.callback.AbstractC0677b;
import cn.manytag.rfidapi.ble.data.BleDevice;
import cn.manytag.rfidapi.ble.p008b.AbstractC0658a;
import cn.manytag.rfidapi.uhf.listen.OnConnStatus;

/* renamed from: cn.manytag.rfidapi.a */
/* loaded from: classes.dex */
class C0644a extends AbstractC0677b {

    /* renamed from: a */
    final /* synthetic */ OnConnStatus f133a;

    /* renamed from: b */
    final /* synthetic */ Reader f134b;

    C0644a(Reader reader, OnConnStatus onConnStatus) {
        this.f134b = reader;
        this.f133a = onConnStatus;
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo45a() {
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo46a(BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) throws InterruptedException {
        this.f134b.bluetoothOperation.m227a(bleDevice);
        OnConnStatus onConnStatus = this.f133a;
        if (onConnStatus != null) {
            onConnStatus.connSuccess();
        }
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo47a(BleDevice bleDevice, AbstractC0658a abstractC0658a) {
        OnConnStatus onConnStatus = this.f133a;
        if (onConnStatus != null) {
            onConnStatus.connFail();
        }
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0677b
    /* renamed from: a */
    public void mo48a(boolean z, BleDevice bleDevice, BluetoothGatt bluetoothGatt, int i) {
    }
}
