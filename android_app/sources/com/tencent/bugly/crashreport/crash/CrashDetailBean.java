package com.tencent.bugly.crashreport.crash;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.proguard.C1388z;
import java.util.Map;
import java.util.UUID;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class CrashDetailBean implements Parcelable, Comparable<CrashDetailBean> {
    public static final Parcelable.Creator<CrashDetailBean> CREATOR = new Parcelable.Creator<CrashDetailBean>() { // from class: com.tencent.bugly.crashreport.crash.CrashDetailBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CrashDetailBean createFromParcel(Parcel parcel) {
            return new CrashDetailBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CrashDetailBean[] newArray(int i) {
            return new CrashDetailBean[i];
        }
    };

    /* renamed from: A */
    public String f628A;

    /* renamed from: B */
    public String f629B;

    /* renamed from: C */
    public long f630C;

    /* renamed from: D */
    public long f631D;

    /* renamed from: E */
    public long f632E;

    /* renamed from: F */
    public long f633F;

    /* renamed from: G */
    public long f634G;

    /* renamed from: H */
    public long f635H;

    /* renamed from: I */
    public String f636I;

    /* renamed from: J */
    public String f637J;

    /* renamed from: K */
    public String f638K;

    /* renamed from: L */
    public String f639L;

    /* renamed from: M */
    public long f640M;

    /* renamed from: N */
    public boolean f641N;

    /* renamed from: O */
    public Map<String, String> f642O;

    /* renamed from: P */
    public Map<String, String> f643P;

    /* renamed from: Q */
    public int f644Q;

    /* renamed from: R */
    public int f645R;

    /* renamed from: S */
    public Map<String, String> f646S;

    /* renamed from: T */
    public Map<String, String> f647T;

    /* renamed from: U */
    public byte[] f648U;

    /* renamed from: V */
    public String f649V;

    /* renamed from: W */
    public String f650W;

    /* renamed from: X */
    private String f651X;

    /* renamed from: a */
    public long f652a;

    /* renamed from: b */
    public int f653b;

    /* renamed from: c */
    public String f654c;

    /* renamed from: d */
    public boolean f655d;

    /* renamed from: e */
    public String f656e;

    /* renamed from: f */
    public String f657f;

    /* renamed from: g */
    public String f658g;

    /* renamed from: h */
    public Map<String, PlugInBean> f659h;

    /* renamed from: i */
    public Map<String, PlugInBean> f660i;

    /* renamed from: j */
    public boolean f661j;

    /* renamed from: k */
    public boolean f662k;

    /* renamed from: l */
    public int f663l;

    /* renamed from: m */
    public String f664m;

    /* renamed from: n */
    public String f665n;

    /* renamed from: o */
    public String f666o;

    /* renamed from: p */
    public String f667p;

    /* renamed from: q */
    public String f668q;

    /* renamed from: r */
    public long f669r;

    /* renamed from: s */
    public String f670s;

    /* renamed from: t */
    public int f671t;

    /* renamed from: u */
    public String f672u;

    /* renamed from: v */
    public String f673v;

    /* renamed from: w */
    public String f674w;

    /* renamed from: x */
    public String f675x;

    /* renamed from: y */
    public byte[] f676y;

    /* renamed from: z */
    public Map<String, String> f677z;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(CrashDetailBean crashDetailBean) {
        CrashDetailBean crashDetailBean2 = crashDetailBean;
        if (crashDetailBean2 == null) {
            return 1;
        }
        long j = this.f669r - crashDetailBean2.f669r;
        if (j <= 0) {
            return j < 0 ? -1 : 0;
        }
        return 1;
    }

    public CrashDetailBean() {
        this.f652a = -1L;
        this.f653b = 0;
        this.f654c = UUID.randomUUID().toString();
        this.f655d = false;
        this.f656e = "";
        this.f657f = "";
        this.f658g = "";
        this.f659h = null;
        this.f660i = null;
        this.f661j = false;
        this.f662k = false;
        this.f663l = 0;
        this.f664m = "";
        this.f665n = "";
        this.f666o = "";
        this.f667p = "";
        this.f668q = "";
        this.f669r = -1L;
        this.f670s = null;
        this.f671t = 0;
        this.f672u = "";
        this.f673v = "";
        this.f674w = null;
        this.f675x = null;
        this.f676y = null;
        this.f677z = null;
        this.f628A = "";
        this.f629B = "";
        this.f630C = -1L;
        this.f631D = -1L;
        this.f632E = -1L;
        this.f633F = -1L;
        this.f634G = -1L;
        this.f635H = -1L;
        this.f636I = "";
        this.f651X = "";
        this.f637J = "";
        this.f638K = "";
        this.f639L = "";
        this.f640M = -1L;
        this.f641N = false;
        this.f642O = null;
        this.f643P = null;
        this.f644Q = -1;
        this.f645R = -1;
        this.f646S = null;
        this.f647T = null;
        this.f648U = null;
        this.f649V = null;
        this.f650W = null;
    }

    public CrashDetailBean(Parcel parcel) {
        this.f652a = -1L;
        this.f653b = 0;
        this.f654c = UUID.randomUUID().toString();
        this.f655d = false;
        this.f656e = "";
        this.f657f = "";
        this.f658g = "";
        this.f659h = null;
        this.f660i = null;
        this.f661j = false;
        this.f662k = false;
        this.f663l = 0;
        this.f664m = "";
        this.f665n = "";
        this.f666o = "";
        this.f667p = "";
        this.f668q = "";
        this.f669r = -1L;
        this.f670s = null;
        this.f671t = 0;
        this.f672u = "";
        this.f673v = "";
        this.f674w = null;
        this.f675x = null;
        this.f676y = null;
        this.f677z = null;
        this.f628A = "";
        this.f629B = "";
        this.f630C = -1L;
        this.f631D = -1L;
        this.f632E = -1L;
        this.f633F = -1L;
        this.f634G = -1L;
        this.f635H = -1L;
        this.f636I = "";
        this.f651X = "";
        this.f637J = "";
        this.f638K = "";
        this.f639L = "";
        this.f640M = -1L;
        this.f641N = false;
        this.f642O = null;
        this.f643P = null;
        this.f644Q = -1;
        this.f645R = -1;
        this.f646S = null;
        this.f647T = null;
        this.f648U = null;
        this.f649V = null;
        this.f650W = null;
        this.f653b = parcel.readInt();
        this.f654c = parcel.readString();
        this.f655d = parcel.readByte() == 1;
        this.f656e = parcel.readString();
        this.f657f = parcel.readString();
        this.f658g = parcel.readString();
        this.f661j = parcel.readByte() == 1;
        this.f662k = parcel.readByte() == 1;
        this.f663l = parcel.readInt();
        this.f664m = parcel.readString();
        this.f665n = parcel.readString();
        this.f666o = parcel.readString();
        this.f667p = parcel.readString();
        this.f668q = parcel.readString();
        this.f669r = parcel.readLong();
        this.f670s = parcel.readString();
        this.f671t = parcel.readInt();
        this.f672u = parcel.readString();
        this.f673v = parcel.readString();
        this.f674w = parcel.readString();
        this.f677z = C1388z.m822b(parcel);
        this.f628A = parcel.readString();
        this.f629B = parcel.readString();
        this.f630C = parcel.readLong();
        this.f631D = parcel.readLong();
        this.f632E = parcel.readLong();
        this.f633F = parcel.readLong();
        this.f634G = parcel.readLong();
        this.f635H = parcel.readLong();
        this.f636I = parcel.readString();
        this.f651X = parcel.readString();
        this.f637J = parcel.readString();
        this.f638K = parcel.readString();
        this.f639L = parcel.readString();
        this.f640M = parcel.readLong();
        this.f641N = parcel.readByte() == 1;
        this.f642O = C1388z.m822b(parcel);
        this.f659h = C1388z.m808a(parcel);
        this.f660i = C1388z.m808a(parcel);
        this.f644Q = parcel.readInt();
        this.f645R = parcel.readInt();
        this.f646S = C1388z.m822b(parcel);
        this.f647T = C1388z.m822b(parcel);
        this.f648U = parcel.createByteArray();
        this.f676y = parcel.createByteArray();
        this.f649V = parcel.readString();
        this.f650W = parcel.readString();
        this.f675x = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f653b);
        parcel.writeString(this.f654c);
        parcel.writeByte(this.f655d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f656e);
        parcel.writeString(this.f657f);
        parcel.writeString(this.f658g);
        parcel.writeByte(this.f661j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f662k ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f663l);
        parcel.writeString(this.f664m);
        parcel.writeString(this.f665n);
        parcel.writeString(this.f666o);
        parcel.writeString(this.f667p);
        parcel.writeString(this.f668q);
        parcel.writeLong(this.f669r);
        parcel.writeString(this.f670s);
        parcel.writeInt(this.f671t);
        parcel.writeString(this.f672u);
        parcel.writeString(this.f673v);
        parcel.writeString(this.f674w);
        C1388z.m824b(parcel, this.f677z);
        parcel.writeString(this.f628A);
        parcel.writeString(this.f629B);
        parcel.writeLong(this.f630C);
        parcel.writeLong(this.f631D);
        parcel.writeLong(this.f632E);
        parcel.writeLong(this.f633F);
        parcel.writeLong(this.f634G);
        parcel.writeLong(this.f635H);
        parcel.writeString(this.f636I);
        parcel.writeString(this.f651X);
        parcel.writeString(this.f637J);
        parcel.writeString(this.f638K);
        parcel.writeString(this.f639L);
        parcel.writeLong(this.f640M);
        parcel.writeByte(this.f641N ? (byte) 1 : (byte) 0);
        C1388z.m824b(parcel, this.f642O);
        C1388z.m809a(parcel, this.f659h);
        C1388z.m809a(parcel, this.f660i);
        parcel.writeInt(this.f644Q);
        parcel.writeInt(this.f645R);
        C1388z.m824b(parcel, this.f646S);
        C1388z.m824b(parcel, this.f647T);
        parcel.writeByteArray(this.f648U);
        parcel.writeByteArray(this.f676y);
        parcel.writeString(this.f649V);
        parcel.writeString(this.f650W);
        parcel.writeString(this.f675x);
    }
}
