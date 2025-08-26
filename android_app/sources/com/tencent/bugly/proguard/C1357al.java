package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.al */
/* loaded from: classes.dex */
public final class C1357al extends AbstractC1373k implements Cloneable {

    /* renamed from: b */
    private static ArrayList<C1356ak> f882b;

    /* renamed from: a */
    public ArrayList<C1356ak> f883a = null;

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m674a((Collection) this.f883a, 0);
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        if (f882b == null) {
            f882b = new ArrayList<>();
            f882b.add(new C1356ak());
        }
        this.f883a = (ArrayList) c1371i.m657a((C1371i) f882b, 0, true);
    }
}
