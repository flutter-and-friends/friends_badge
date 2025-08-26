package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.aq */
/* loaded from: classes.dex */
public final class C1362aq extends AbstractC1373k {

    /* renamed from: i */
    private static Map<String, String> f937i = new HashMap();

    /* renamed from: a */
    public long f938a = 0;

    /* renamed from: b */
    public byte f939b = 0;

    /* renamed from: c */
    public String f940c = "";

    /* renamed from: d */
    public String f941d = "";

    /* renamed from: e */
    public String f942e = "";

    /* renamed from: f */
    public Map<String, String> f943f = null;

    /* renamed from: h */
    private String f945h = "";

    /* renamed from: g */
    public boolean f944g = true;

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m670a(this.f938a, 0);
        c1372j.m668a(this.f939b, 1);
        String str = this.f940c;
        if (str != null) {
            c1372j.m673a(str, 2);
        }
        String str2 = this.f941d;
        if (str2 != null) {
            c1372j.m673a(str2, 3);
        }
        String str3 = this.f942e;
        if (str3 != null) {
            c1372j.m673a(str3, 4);
        }
        Map<String, String> map = this.f943f;
        if (map != null) {
            c1372j.m675a((Map) map, 5);
        }
        String str4 = this.f945h;
        if (str4 != null) {
            c1372j.m673a(str4, 6);
        }
        c1372j.m677a(this.f944g, 7);
    }

    static {
        f937i.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f938a = c1371i.m655a(this.f938a, 0, true);
        this.f939b = c1371i.m652a(this.f939b, 1, true);
        this.f940c = c1371i.m662b(2, false);
        this.f941d = c1371i.m662b(3, false);
        this.f942e = c1371i.m662b(4, false);
        this.f943f = (Map) c1371i.m657a((C1371i) f937i, 5, false);
        this.f945h = c1371i.m662b(6, false);
        boolean z = this.f944g;
        this.f944g = c1371i.m661a(7, false);
    }
}
