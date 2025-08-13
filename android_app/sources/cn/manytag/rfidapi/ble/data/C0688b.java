package cn.manytag.rfidapi.ble.data;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: cn.manytag.rfidapi.ble.data.b */
/* loaded from: classes.dex */
final class C0688b implements Parcelable.Creator {
    C0688b() {
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
