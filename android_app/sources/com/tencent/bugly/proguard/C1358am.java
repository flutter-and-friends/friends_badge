package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.am */
/* loaded from: classes.dex */
public final class C1358am extends AbstractC1373k {

    /* renamed from: y */
    private static byte[] f884y = {0};

    /* renamed from: z */
    private static Map<String, String> f885z = new HashMap();

    /* renamed from: a */
    public int f886a = 0;

    /* renamed from: b */
    public String f887b = "";

    /* renamed from: c */
    public String f888c = "";

    /* renamed from: d */
    public String f889d = "";

    /* renamed from: e */
    public String f890e = "";

    /* renamed from: f */
    public String f891f = "";

    /* renamed from: g */
    public int f892g = 0;

    /* renamed from: h */
    public byte[] f893h = null;

    /* renamed from: i */
    public String f894i = "";

    /* renamed from: j */
    public String f895j = "";

    /* renamed from: k */
    public Map<String, String> f896k = null;

    /* renamed from: l */
    public String f897l = "";

    /* renamed from: m */
    public long f898m = 0;

    /* renamed from: n */
    public String f899n = "";

    /* renamed from: o */
    public String f900o = "";

    /* renamed from: p */
    public String f901p = "";

    /* renamed from: q */
    public long f902q = 0;

    /* renamed from: u */
    private String f906u = "";

    /* renamed from: r */
    public String f903r = "";

    /* renamed from: v */
    private String f907v = "";

    /* renamed from: w */
    private String f908w = "";

    /* renamed from: s */
    public String f904s = "";

    /* renamed from: t */
    public String f905t = "";

    /* renamed from: x */
    private String f909x = "";

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m669a(this.f886a, 0);
        c1372j.m673a(this.f887b, 1);
        c1372j.m673a(this.f888c, 2);
        c1372j.m673a(this.f889d, 3);
        String str = this.f890e;
        if (str != null) {
            c1372j.m673a(str, 4);
        }
        c1372j.m673a(this.f891f, 5);
        c1372j.m669a(this.f892g, 6);
        c1372j.m678a(this.f893h, 7);
        String str2 = this.f894i;
        if (str2 != null) {
            c1372j.m673a(str2, 8);
        }
        String str3 = this.f895j;
        if (str3 != null) {
            c1372j.m673a(str3, 9);
        }
        Map<String, String> map = this.f896k;
        if (map != null) {
            c1372j.m675a((Map) map, 10);
        }
        String str4 = this.f897l;
        if (str4 != null) {
            c1372j.m673a(str4, 11);
        }
        c1372j.m670a(this.f898m, 12);
        String str5 = this.f899n;
        if (str5 != null) {
            c1372j.m673a(str5, 13);
        }
        String str6 = this.f900o;
        if (str6 != null) {
            c1372j.m673a(str6, 14);
        }
        String str7 = this.f901p;
        if (str7 != null) {
            c1372j.m673a(str7, 15);
        }
        c1372j.m670a(this.f902q, 16);
        String str8 = this.f906u;
        if (str8 != null) {
            c1372j.m673a(str8, 17);
        }
        String str9 = this.f903r;
        if (str9 != null) {
            c1372j.m673a(str9, 18);
        }
        String str10 = this.f907v;
        if (str10 != null) {
            c1372j.m673a(str10, 19);
        }
        String str11 = this.f908w;
        if (str11 != null) {
            c1372j.m673a(str11, 20);
        }
        String str12 = this.f904s;
        if (str12 != null) {
            c1372j.m673a(str12, 21);
        }
        String str13 = this.f905t;
        if (str13 != null) {
            c1372j.m673a(str13, 22);
        }
        String str14 = this.f909x;
        if (str14 != null) {
            c1372j.m673a(str14, 23);
        }
    }

    static {
        f885z.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f886a = c1371i.m653a(this.f886a, 0, true);
        this.f887b = c1371i.m662b(1, true);
        this.f888c = c1371i.m662b(2, true);
        this.f889d = c1371i.m662b(3, true);
        this.f890e = c1371i.m662b(4, false);
        this.f891f = c1371i.m662b(5, true);
        this.f892g = c1371i.m653a(this.f892g, 6, true);
        byte[] bArr = f884y;
        this.f893h = c1371i.m663c(7, true);
        this.f894i = c1371i.m662b(8, false);
        this.f895j = c1371i.m662b(9, false);
        this.f896k = (Map) c1371i.m657a((C1371i) f885z, 10, false);
        this.f897l = c1371i.m662b(11, false);
        this.f898m = c1371i.m655a(this.f898m, 12, false);
        this.f899n = c1371i.m662b(13, false);
        this.f900o = c1371i.m662b(14, false);
        this.f901p = c1371i.m662b(15, false);
        this.f902q = c1371i.m655a(this.f902q, 16, false);
        this.f906u = c1371i.m662b(17, false);
        this.f903r = c1371i.m662b(18, false);
        this.f907v = c1371i.m662b(19, false);
        this.f908w = c1371i.m662b(20, false);
        this.f904s = c1371i.m662b(21, false);
        this.f905t = c1371i.m662b(22, false);
        this.f909x = c1371i.m662b(23, false);
    }
}
