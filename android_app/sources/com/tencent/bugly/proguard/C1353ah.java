package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.ah */
/* loaded from: classes.dex */
public final class C1353ah extends AbstractC1373k implements Cloneable {

    /* renamed from: a */
    public String f841a = "";

    /* renamed from: d */
    private String f844d = "";

    /* renamed from: b */
    public String f842b = "";

    /* renamed from: e */
    private String f845e = "";

    /* renamed from: c */
    public String f843c = "";

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m673a(this.f841a, 0);
        String str = this.f844d;
        if (str != null) {
            c1372j.m673a(str, 1);
        }
        String str2 = this.f842b;
        if (str2 != null) {
            c1372j.m673a(str2, 2);
        }
        String str3 = this.f845e;
        if (str3 != null) {
            c1372j.m673a(str3, 3);
        }
        String str4 = this.f843c;
        if (str4 != null) {
            c1372j.m673a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f841a = c1371i.m662b(0, true);
        this.f844d = c1371i.m662b(1, false);
        this.f842b = c1371i.m662b(2, false);
        this.f845e = c1371i.m662b(3, false);
        this.f843c = c1371i.m662b(4, false);
    }
}
