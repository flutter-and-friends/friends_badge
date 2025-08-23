package cn.manytag.rfidapi.ble.data;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
final class b implements Parcelable.Creator {
    b() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public BleDevice createFromParcel(Parcel parcel) {
        return new BleDevice(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public BleDevice[] newArray(int i) {
        return new BleDevice[i];
    }
}
