package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.ak */
/* loaded from: classes.dex */
public final class C1356ak extends AbstractC1373k {

    /* renamed from: A */
    private static ArrayList<C1355aj> f853A;

    /* renamed from: B */
    private static Map<String, String> f854B;

    /* renamed from: C */
    private static Map<String, String> f855C;

    /* renamed from: v */
    private static Map<String, String> f856v = new HashMap();

    /* renamed from: w */
    private static C1354ai f857w;

    /* renamed from: x */
    private static C1353ah f858x;

    /* renamed from: y */
    private static ArrayList<C1353ah> f859y;

    /* renamed from: z */
    private static ArrayList<C1353ah> f860z;

    /* renamed from: a */
    public String f861a = "";

    /* renamed from: b */
    public long f862b = 0;

    /* renamed from: c */
    public String f863c = "";

    /* renamed from: d */
    public String f864d = "";

    /* renamed from: e */
    public String f865e = "";

    /* renamed from: f */
    public String f866f = "";

    /* renamed from: g */
    public String f867g = "";

    /* renamed from: h */
    public Map<String, String> f868h = null;

    /* renamed from: i */
    public String f869i = "";

    /* renamed from: j */
    public C1354ai f870j = null;

    /* renamed from: k */
    public int f871k = 0;

    /* renamed from: l */
    public String f872l = "";

    /* renamed from: m */
    public String f873m = "";

    /* renamed from: n */
    public C1353ah f874n = null;

    /* renamed from: o */
    public ArrayList<C1353ah> f875o = null;

    /* renamed from: p */
    public ArrayList<C1353ah> f876p = null;

    /* renamed from: q */
    public ArrayList<C1355aj> f877q = null;

    /* renamed from: r */
    public Map<String, String> f878r = null;

    /* renamed from: s */
    public Map<String, String> f879s = null;

    /* renamed from: t */
    private String f880t = "";

    /* renamed from: u */
    private boolean f881u = true;

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m673a(this.f861a, 0);
        c1372j.m670a(this.f862b, 1);
        c1372j.m673a(this.f863c, 2);
        String str = this.f864d;
        if (str != null) {
            c1372j.m673a(str, 3);
        }
        String str2 = this.f865e;
        if (str2 != null) {
            c1372j.m673a(str2, 4);
        }
        String str3 = this.f866f;
        if (str3 != null) {
            c1372j.m673a(str3, 5);
        }
        String str4 = this.f867g;
        if (str4 != null) {
            c1372j.m673a(str4, 6);
        }
        Map<String, String> map = this.f868h;
        if (map != null) {
            c1372j.m675a((Map) map, 7);
        }
        String str5 = this.f869i;
        if (str5 != null) {
            c1372j.m673a(str5, 8);
        }
        C1354ai c1354ai = this.f870j;
        if (c1354ai != null) {
            c1372j.m671a((AbstractC1373k) c1354ai, 9);
        }
        c1372j.m669a(this.f871k, 10);
        String str6 = this.f872l;
        if (str6 != null) {
            c1372j.m673a(str6, 11);
        }
        String str7 = this.f873m;
        if (str7 != null) {
            c1372j.m673a(str7, 12);
        }
        C1353ah c1353ah = this.f874n;
        if (c1353ah != null) {
            c1372j.m671a((AbstractC1373k) c1353ah, 13);
        }
        ArrayList<C1353ah> arrayList = this.f875o;
        if (arrayList != null) {
            c1372j.m674a((Collection) arrayList, 14);
        }
        ArrayList<C1353ah> arrayList2 = this.f876p;
        if (arrayList2 != null) {
            c1372j.m674a((Collection) arrayList2, 15);
        }
        ArrayList<C1355aj> arrayList3 = this.f877q;
        if (arrayList3 != null) {
            c1372j.m674a((Collection) arrayList3, 16);
        }
        Map<String, String> map2 = this.f878r;
        if (map2 != null) {
            c1372j.m675a((Map) map2, 17);
        }
        Map<String, String> map3 = this.f879s;
        if (map3 != null) {
            c1372j.m675a((Map) map3, 18);
        }
        String str8 = this.f880t;
        if (str8 != null) {
            c1372j.m673a(str8, 19);
        }
        c1372j.m677a(this.f881u, 20);
    }

    static {
        f856v.put("", "");
        f857w = new C1354ai();
        f858x = new C1353ah();
        f859y = new ArrayList<>();
        f859y.add(new C1353ah());
        f860z = new ArrayList<>();
        f860z.add(new C1353ah());
        f853A = new ArrayList<>();
        f853A.add(new C1355aj());
        f854B = new HashMap();
        f854B.put("", "");
        f855C = new HashMap();
        f855C.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f861a = c1371i.m662b(0, true);
        this.f862b = c1371i.m655a(this.f862b, 1, true);
        this.f863c = c1371i.m662b(2, true);
        this.f864d = c1371i.m662b(3, false);
        this.f865e = c1371i.m662b(4, false);
        this.f866f = c1371i.m662b(5, false);
        this.f867g = c1371i.m662b(6, false);
        this.f868h = (Map) c1371i.m657a((C1371i) f856v, 7, false);
        this.f869i = c1371i.m662b(8, false);
        this.f870j = (C1354ai) c1371i.m656a((AbstractC1373k) f857w, 9, false);
        this.f871k = c1371i.m653a(this.f871k, 10, false);
        this.f872l = c1371i.m662b(11, false);
        this.f873m = c1371i.m662b(12, false);
        this.f874n = (C1353ah) c1371i.m656a((AbstractC1373k) f858x, 13, false);
        this.f875o = (ArrayList) c1371i.m657a((C1371i) f859y, 14, false);
        this.f876p = (ArrayList) c1371i.m657a((C1371i) f860z, 15, false);
        this.f877q = (ArrayList) c1371i.m657a((C1371i) f853A, 16, false);
        this.f878r = (Map) c1371i.m657a((C1371i) f854B, 17, false);
        this.f879s = (Map) c1371i.m657a((C1371i) f855C, 18, false);
        this.f880t = c1371i.m662b(19, false);
        boolean z = this.f881u;
        this.f881u = c1371i.m661a(20, false);
    }
}
