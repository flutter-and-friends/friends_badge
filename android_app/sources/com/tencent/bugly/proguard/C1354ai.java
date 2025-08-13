package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.ai */
/* loaded from: classes.dex */
public final class C1354ai extends AbstractC1373k implements Cloneable {

    /* renamed from: c */
    private static ArrayList<String> f846c;

    /* renamed from: a */
    private String f847a = "";

    /* renamed from: b */
    private ArrayList<String> f848b = null;

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m673a(this.f847a, 0);
        ArrayList<String> arrayList = this.f848b;
        if (arrayList != null) {
            c1372j.m674a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f847a = c1371i.m662b(0, true);
        if (f846c == null) {
            f846c = new ArrayList<>();
            f846c.add("");
        }
        this.f848b = (ArrayList) c1371i.m657a((C1371i) f846c, 1, false);
    }
}
