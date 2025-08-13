package com.tencent.bugly.crashreport.biz;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.os.EnvironmentCompat;
import com.tencent.bugly.proguard.C1388z;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class UserInfoBean implements Parcelable {
    public static final Parcelable.Creator<UserInfoBean> CREATOR = new Parcelable.Creator<UserInfoBean>() { // from class: com.tencent.bugly.crashreport.biz.UserInfoBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UserInfoBean createFromParcel(Parcel parcel) {
            return new UserInfoBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UserInfoBean[] newArray(int i) {
            return new UserInfoBean[i];
        }
    };

    /* renamed from: a */
    public long f469a;

    /* renamed from: b */
    public int f470b;

    /* renamed from: c */
    public String f471c;

    /* renamed from: d */
    public String f472d;

    /* renamed from: e */
    public long f473e;

    /* renamed from: f */
    public long f474f;

    /* renamed from: g */
    public long f475g;

    /* renamed from: h */
    public long f476h;

    /* renamed from: i */
    public long f477i;

    /* renamed from: j */
    public String f478j;

    /* renamed from: k */
    public long f479k;

    /* renamed from: l */
    public boolean f480l;

    /* renamed from: m */
    public String f481m;

    /* renamed from: n */
    public String f482n;

    /* renamed from: o */
    public int f483o;

    /* renamed from: p */
    public int f484p;

    /* renamed from: q */
    public int f485q;

    /* renamed from: r */
    public Map<String, String> f486r;

    /* renamed from: s */
    public Map<String, String> f487s;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UserInfoBean() {
        this.f479k = 0L;
        this.f480l = false;
        this.f481m = EnvironmentCompat.MEDIA_UNKNOWN;
        this.f484p = -1;
        this.f485q = -1;
        this.f486r = null;
        this.f487s = null;
    }

    public UserInfoBean(Parcel parcel) {
        this.f479k = 0L;
        this.f480l = false;
        this.f481m = EnvironmentCompat.MEDIA_UNKNOWN;
        this.f484p = -1;
        this.f485q = -1;
        this.f486r = null;
        this.f487s = null;
        this.f470b = parcel.readInt();
        this.f471c = parcel.readString();
        this.f472d = parcel.readString();
        this.f473e = parcel.readLong();
        this.f474f = parcel.readLong();
        this.f475g = parcel.readLong();
        this.f476h = parcel.readLong();
        this.f477i = parcel.readLong();
        this.f478j = parcel.readString();
        this.f479k = parcel.readLong();
        this.f480l = parcel.readByte() == 1;
        this.f481m = parcel.readString();
        this.f484p = parcel.readInt();
        this.f485q = parcel.readInt();
        this.f486r = C1388z.m822b(parcel);
        this.f487s = C1388z.m822b(parcel);
        this.f482n = parcel.readString();
        this.f483o = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f470b);
        parcel.writeString(this.f471c);
        parcel.writeString(this.f472d);
        parcel.writeLong(this.f473e);
        parcel.writeLong(this.f474f);
        parcel.writeLong(this.f475g);
        parcel.writeLong(this.f476h);
        parcel.writeLong(this.f477i);
        parcel.writeString(this.f478j);
        parcel.writeLong(this.f479k);
        parcel.writeByte(this.f480l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f481m);
        parcel.writeInt(this.f484p);
        parcel.writeInt(this.f485q);
        C1388z.m824b(parcel, this.f486r);
        C1388z.m824b(parcel, this.f487s);
        parcel.writeString(this.f482n);
        parcel.writeInt(this.f483o);
    }
}
