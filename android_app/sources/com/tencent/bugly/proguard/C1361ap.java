package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.ap */
/* loaded from: classes.dex */
public final class C1361ap extends AbstractC1373k implements Cloneable {

    /* renamed from: o */
    private static /* synthetic */ boolean f924o = !C1361ap.class.desiredAssertionStatus();

    /* renamed from: m */
    private static C1360ao f922m = new C1360ao();

    /* renamed from: n */
    private static Map<String, String> f923n = new HashMap();

    /* renamed from: a */
    public boolean f925a = true;

    /* renamed from: b */
    public boolean f926b = true;

    /* renamed from: c */
    public boolean f927c = true;

    /* renamed from: d */
    public String f928d = "";

    /* renamed from: e */
    public String f929e = "";

    /* renamed from: f */
    public C1360ao f930f = null;

    /* renamed from: g */
    public Map<String, String> f931g = null;

    /* renamed from: h */
    public long f932h = 0;

    /* renamed from: j */
    private String f934j = "";

    /* renamed from: k */
    private String f935k = "";

    /* renamed from: l */
    private int f936l = 0;

    /* renamed from: i */
    public int f933i = 0;

    static {
        f923n.put("", "");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C1361ap c1361ap = (C1361ap) obj;
        return C1374l.m683a(this.f925a, c1361ap.f925a) && C1374l.m683a(this.f926b, c1361ap.f926b) && C1374l.m683a(this.f927c, c1361ap.f927c) && C1374l.m682a(this.f928d, c1361ap.f928d) && C1374l.m682a(this.f929e, c1361ap.f929e) && C1374l.m682a(this.f930f, c1361ap.f930f) && C1374l.m682a(this.f931g, c1361ap.f931g) && C1374l.m681a(this.f932h, c1361ap.f932h) && C1374l.m682a(this.f934j, c1361ap.f934j) && C1374l.m682a(this.f935k, c1361ap.f935k) && C1374l.m680a(this.f936l, c1361ap.f936l) && C1374l.m680a(this.f933i, c1361ap.f933i);
    }

    public final int hashCode() throws Exception {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f924o) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m677a(this.f925a, 0);
        c1372j.m677a(this.f926b, 1);
        c1372j.m677a(this.f927c, 2);
        String str = this.f928d;
        if (str != null) {
            c1372j.m673a(str, 3);
        }
        String str2 = this.f929e;
        if (str2 != null) {
            c1372j.m673a(str2, 4);
        }
        C1360ao c1360ao = this.f930f;
        if (c1360ao != null) {
            c1372j.m671a((AbstractC1373k) c1360ao, 5);
        }
        Map<String, String> map = this.f931g;
        if (map != null) {
            c1372j.m675a((Map) map, 6);
        }
        c1372j.m670a(this.f932h, 7);
        String str3 = this.f934j;
        if (str3 != null) {
            c1372j.m673a(str3, 8);
        }
        String str4 = this.f935k;
        if (str4 != null) {
            c1372j.m673a(str4, 9);
        }
        c1372j.m669a(this.f936l, 10);
        c1372j.m669a(this.f933i, 11);
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        boolean z = this.f925a;
        this.f925a = c1371i.m661a(0, true);
        boolean z2 = this.f926b;
        this.f926b = c1371i.m661a(1, true);
        boolean z3 = this.f927c;
        this.f927c = c1371i.m661a(2, true);
        this.f928d = c1371i.m662b(3, false);
        this.f929e = c1371i.m662b(4, false);
        this.f930f = (C1360ao) c1371i.m656a((AbstractC1373k) f922m, 5, false);
        this.f931g = (Map) c1371i.m657a((C1371i) f923n, 6, false);
        this.f932h = c1371i.m655a(this.f932h, 7, false);
        this.f934j = c1371i.m662b(8, false);
        this.f935k = c1371i.m662b(9, false);
        this.f936l = c1371i.m653a(this.f936l, 10, false);
        this.f933i = c1371i.m653a(this.f933i, 11, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
        C1370h c1370h = new C1370h(sb, i);
        c1370h.m635a(this.f925a, "enable");
        c1370h.m635a(this.f926b, "enableUserInfo");
        c1370h.m635a(this.f927c, "enableQuery");
        c1370h.m632a(this.f928d, "url");
        c1370h.m632a(this.f929e, "expUrl");
        c1370h.m631a((AbstractC1373k) this.f930f, "security");
        c1370h.m633a((Map) this.f931g, "valueMap");
        c1370h.m630a(this.f932h, "strategylastUpdateTime");
        c1370h.m632a(this.f934j, "httpsUrl");
        c1370h.m632a(this.f935k, "httpsExpUrl");
        c1370h.m629a(this.f936l, "eventRecordCount");
        c1370h.m629a(this.f933i, "eventTimeInterval");
    }
}
