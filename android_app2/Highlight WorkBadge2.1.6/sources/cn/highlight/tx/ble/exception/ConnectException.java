package cn.highlight.tx.ble.exception;

import android.bluetooth.BluetoothGatt;

/* loaded from: classes.dex */
public class ConnectException extends BleException {
    private BluetoothGatt bluetoothGatt;
    private int gattStatus;

    public ConnectException(BluetoothGatt bluetoothGatt, int i) {
        super(101, "Gatt Exception Occurred! ");
        this.bluetoothGatt = bluetoothGatt;
        this.gattStatus = i;
    }

    public int getGattStatus() {
        return this.gattStatus;
    }

    public ConnectException setGattStatus(int i) {
        this.gattStatus = i;
        return this;
    }

    public BluetoothGatt getBluetoothGatt() {
        return this.bluetoothGatt;
    }

    public ConnectException setBluetoothGatt(BluetoothGatt bluetoothGatt) {
        this.bluetoothGatt = bluetoothGatt;
        return this;
    }

    @Override // cn.highlight.tx.ble.exception.BleException
    public String toString() {
        return "ConnectException{gattStatus=" + this.gattStatus + ", bluetoothGatt=" + this.bluetoothGatt + "} " + super.toString();
    }
}
