package cn.manytag.rfidapi.ble.data;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BleDevice implements Parcelable {
    public static final Parcelable.Creator CREATOR = new b();
    private BluetoothDevice mDevice;
    private int mRssi;
    private byte[] mScanRecord;
    private long mTimestampNanos;

    public BleDevice(BluetoothDevice bluetoothDevice) {
        this.mDevice = bluetoothDevice;
    }

    public BleDevice(BluetoothDevice bluetoothDevice, int i, byte[] bArr, long j) {
        this.mDevice = bluetoothDevice;
        this.mScanRecord = bArr;
        this.mRssi = i;
        this.mTimestampNanos = j;
    }

    protected BleDevice(Parcel parcel) {
        this.mDevice = (BluetoothDevice) parcel.readParcelable(BluetoothDevice.class.getClassLoader());
        this.mScanRecord = parcel.createByteArray();
        this.mRssi = parcel.readInt();
        this.mTimestampNanos = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public String getKey() {
        if (this.mDevice == null) {
            return "";
        }
        return this.mDevice.getName() + this.mDevice.getAddress();
    }

    public String getMac() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        if (bluetoothDevice != null) {
            return bluetoothDevice.getAddress();
        }
        return null;
    }

    public String getName() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        if (bluetoothDevice != null) {
            return bluetoothDevice.getName();
        }
        return null;
    }

    public int getRssi() {
        return this.mRssi;
    }

    public byte[] getScanRecord() {
        return this.mScanRecord;
    }

    public long getTimestampNanos() {
        return this.mTimestampNanos;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.mDevice = bluetoothDevice;
    }

    public void setRssi(int i) {
        this.mRssi = i;
    }

    public void setScanRecord(byte[] bArr) {
        this.mScanRecord = bArr;
    }

    public void setTimestampNanos(long j) {
        this.mTimestampNanos = j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mDevice, i);
        parcel.writeByteArray(this.mScanRecord);
        parcel.writeInt(this.mRssi);
        parcel.writeLong(this.mTimestampNanos);
    }
}
