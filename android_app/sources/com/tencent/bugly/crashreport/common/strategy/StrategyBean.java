package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.C1388z;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class StrategyBean implements Parcelable {
    public static final Parcelable.Creator<StrategyBean> CREATOR = new Parcelable.Creator<StrategyBean>() { // from class: com.tencent.bugly.crashreport.common.strategy.StrategyBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ StrategyBean createFromParcel(Parcel parcel) {
            return new StrategyBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ StrategyBean[] newArray(int i) {
            return new StrategyBean[i];
        }
    };

    /* renamed from: a */
    public static String f590a = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: b */
    public static String f591b = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: c */
    public long f592c;

    /* renamed from: d */
    public long f593d;

    /* renamed from: e */
    public boolean f594e;

    /* renamed from: f */
    public boolean f595f;

    /* renamed from: g */
    public boolean f596g;

    /* renamed from: h */
    public boolean f597h;

    /* renamed from: i */
    public boolean f598i;

    /* renamed from: j */
    public boolean f599j;

    /* renamed from: k */
    public boolean f600k;

    /* renamed from: l */
    public boolean f601l;

    /* renamed from: m */
    public boolean f602m;

    /* renamed from: n */
    public long f603n;

    /* renamed from: o */
    public long f604o;

    /* renamed from: p */
    public String f605p;

    /* renamed from: q */
    public String f606q;

    /* renamed from: r */
    public String f607r;

    /* renamed from: s */
    public Map<String, String> f608s;

    /* renamed from: t */
    public int f609t;

    /* renamed from: u */
    public long f610u;

    /* renamed from: v */
    public long f611v;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public StrategyBean() {
        this.f592c = -1L;
        this.f593d = -1L;
        this.f594e = true;
        this.f595f = true;
        this.f596g = true;
        this.f597h = true;
        this.f598i = false;
        this.f599j = true;
        this.f600k = true;
        this.f601l = true;
        this.f602m = true;
        this.f604o = 30000L;
        this.f605p = f590a;
        this.f606q = f591b;
        this.f609t = 10;
        this.f610u = 300000L;
        this.f611v = -1L;
        this.f593d = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append("S(@L@L");
        sb.append("@)");
        sb.toString();
        sb.setLength(0);
        sb.append("*^@K#K");
        sb.append("@!");
        this.f607r = sb.toString();
    }

    public StrategyBean(Parcel parcel) {
        this.f592c = -1L;
        this.f593d = -1L;
        boolean z = true;
        this.f594e = true;
        this.f595f = true;
        this.f596g = true;
        this.f597h = true;
        this.f598i = false;
        this.f599j = true;
        this.f600k = true;
        this.f601l = true;
        this.f602m = true;
        this.f604o = 30000L;
        this.f605p = f590a;
        this.f606q = f591b;
        this.f609t = 10;
        this.f610u = 300000L;
        this.f611v = -1L;
        try {
            String str = "S(@L@L@)";
            this.f593d = parcel.readLong();
            this.f594e = parcel.readByte() == 1;
            this.f595f = parcel.readByte() == 1;
            this.f596g = parcel.readByte() == 1;
            this.f605p = parcel.readString();
            this.f606q = parcel.readString();
            this.f607r = parcel.readString();
            this.f608s = C1388z.m822b(parcel);
            this.f597h = parcel.readByte() == 1;
            this.f598i = parcel.readByte() == 1;
            this.f601l = parcel.readByte() == 1;
            this.f602m = parcel.readByte() == 1;
            this.f604o = parcel.readLong();
            this.f599j = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z = false;
            }
            this.f600k = z;
            this.f603n = parcel.readLong();
            this.f609t = parcel.readInt();
            this.f610u = parcel.readLong();
            this.f611v = parcel.readLong();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f593d);
        parcel.writeByte(this.f594e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f595f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f596g ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f605p);
        parcel.writeString(this.f606q);
        parcel.writeString(this.f607r);
        C1388z.m824b(parcel, this.f608s);
        parcel.writeByte(this.f597h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f598i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f601l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f602m ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f604o);
        parcel.writeByte(this.f599j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f600k ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f603n);
        parcel.writeInt(this.f609t);
        parcel.writeLong(this.f610u);
        parcel.writeLong(this.f611v);
    }
}
