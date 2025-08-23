package cn.highlight.tx.ble.data;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BleDevice implements Parcelable {
    public static final Parcelable.Creator<BleDevice> CREATOR = new Parcelable.Creator<BleDevice>() { // from class: cn.highlight.tx.ble.data.BleDevice.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BleDevice createFromParcel(Parcel parcel) {
            return new BleDevice(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BleDevice[] newArray(int i) {
            return new BleDevice[i];
        }
    };
    private BluetoothDevice mDevice;
    private int mRssi;
    private byte[] mScanRecord;
    private long mTimestampNanos;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

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
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mDevice, i);
        parcel.writeByteArray(this.mScanRecord);
        parcel.writeInt(this.mRssi);
        parcel.writeLong(this.mTimestampNanos);
    }

    public String getName() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        if (bluetoothDevice != null) {
            return bluetoothDevice.getName();
        }
        return null;
    }

    public String getMac() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        if (bluetoothDevice != null) {
            return bluetoothDevice.getAddress();
        }
        return null;
    }

    public String getKey() {
        if (this.mDevice == null) {
            return "";
        }
        return this.mDevice.getName() + this.mDevice.getAddress();
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.mDevice = bluetoothDevice;
    }

    public byte[] getScanRecord() {
        return this.mScanRecord;
    }

    public void setScanRecord(byte[] bArr) {
        this.mScanRecord = bArr;
    }

    public int getRssi() {
        return this.mRssi;
    }

    public void setRssi(int i) {
        this.mRssi = i;
    }

    public long getTimestampNanos() {
        return this.mTimestampNanos;
    }

    public void setTimestampNanos(long j) {
        this.mTimestampNanos = j;
    }
}
