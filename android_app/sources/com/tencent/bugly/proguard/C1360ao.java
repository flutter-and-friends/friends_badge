package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.ao */
/* loaded from: classes.dex */
public final class C1360ao extends AbstractC1373k implements Cloneable {

    /* renamed from: a */
    public String f920a = "";

    /* renamed from: b */
    private String f921b = "";

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m673a(this.f920a, 0);
        c1372j.m673a(this.f921b, 1);
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f920a = c1371i.m662b(0, true);
        this.f921b = c1371i.m662b(1, true);
    }
}
