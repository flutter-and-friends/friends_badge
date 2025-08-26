package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.an */
/* loaded from: classes.dex */
public final class C1359an extends AbstractC1373k {

    /* renamed from: i */
    private static byte[] f910i = {0};

    /* renamed from: j */
    private static Map<String, String> f911j = new HashMap();

    /* renamed from: a */
    public byte f912a = 0;

    /* renamed from: b */
    public int f913b = 0;

    /* renamed from: c */
    public byte[] f914c = null;

    /* renamed from: f */
    private String f917f = "";

    /* renamed from: d */
    public long f915d = 0;

    /* renamed from: g */
    private String f918g = "";

    /* renamed from: e */
    public String f916e = "";

    /* renamed from: h */
    private Map<String, String> f919h = null;

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m668a(this.f912a, 0);
        c1372j.m669a(this.f913b, 1);
        byte[] bArr = this.f914c;
        if (bArr != null) {
            c1372j.m678a(bArr, 2);
        }
        String str = this.f917f;
        if (str != null) {
            c1372j.m673a(str, 3);
        }
        c1372j.m670a(this.f915d, 4);
        String str2 = this.f918g;
        if (str2 != null) {
            c1372j.m673a(str2, 5);
        }
        String str3 = this.f916e;
        if (str3 != null) {
            c1372j.m673a(str3, 6);
        }
        Map<String, String> map = this.f919h;
        if (map != null) {
            c1372j.m675a((Map) map, 7);
        }
    }

    static {
        f911j.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f912a = c1371i.m652a(this.f912a, 0, true);
        this.f913b = c1371i.m653a(this.f913b, 1, true);
        byte[] bArr = f910i;
        this.f914c = c1371i.m663c(2, false);
        this.f917f = c1371i.m662b(3, false);
        this.f915d = c1371i.m655a(this.f915d, 4, false);
        this.f918g = c1371i.m662b(5, false);
        this.f916e = c1371i.m662b(6, false);
        this.f919h = (Map) c1371i.m657a((C1371i) f911j, 7, false);
    }
}
