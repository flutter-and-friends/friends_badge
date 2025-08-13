package com.tencent.bugly.crashreport.crash;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.a */
/* loaded from: classes.dex */
public final class C1329a implements Comparable<C1329a> {

    /* renamed from: a */
    public long f678a = -1;

    /* renamed from: b */
    public long f679b = -1;

    /* renamed from: c */
    public String f680c = null;

    /* renamed from: d */
    public boolean f681d = false;

    /* renamed from: e */
    public boolean f682e = false;

    /* renamed from: f */
    public int f683f = 0;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C1329a c1329a) {
        C1329a c1329a2 = c1329a;
        if (c1329a2 == null) {
            return 1;
        }
        long j = this.f679b - c1329a2.f679b;
        if (j <= 0) {
            return j < 0 ? -1 : 0;
        }
        return 1;
    }
}
