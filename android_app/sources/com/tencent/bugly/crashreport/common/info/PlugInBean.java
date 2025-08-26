package com.tencent.bugly.crashreport.common.info;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class PlugInBean implements Parcelable {
    public static final Parcelable.Creator<PlugInBean> CREATOR = new Parcelable.Creator<PlugInBean>() { // from class: com.tencent.bugly.crashreport.common.info.PlugInBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlugInBean createFromParcel(Parcel parcel) {
            return new PlugInBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlugInBean[] newArray(int i) {
            return new PlugInBean[i];
        }
    };

    /* renamed from: a */
    public final String f517a;

    /* renamed from: b */
    public final String f518b;

    /* renamed from: c */
    public final String f519c;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PlugInBean(String str, String str2, String str3) {
        this.f517a = str;
        this.f518b = str2;
        this.f519c = str3;
    }

    public String toString() {
        return "plid:" + this.f517a + " plV:" + this.f518b + " plUUID:" + this.f519c;
    }

    public PlugInBean(Parcel parcel) {
        this.f517a = parcel.readString();
        this.f518b = parcel.readString();
        this.f519c = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f517a);
        parcel.writeString(this.f518b);
        parcel.writeString(this.f519c);
    }
}
