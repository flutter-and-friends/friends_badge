package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.ar */
/* loaded from: classes.dex */
public final class C1363ar extends AbstractC1373k implements Cloneable {

    /* renamed from: f */
    private static ArrayList<C1362aq> f946f;

    /* renamed from: g */
    private static Map<String, String> f947g;

    /* renamed from: a */
    public byte f948a = 0;

    /* renamed from: b */
    public String f949b = "";

    /* renamed from: c */
    public String f950c = "";

    /* renamed from: d */
    public ArrayList<C1362aq> f951d = null;

    /* renamed from: e */
    public Map<String, String> f952e = null;

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m668a(this.f948a, 0);
        String str = this.f949b;
        if (str != null) {
            c1372j.m673a(str, 1);
        }
        String str2 = this.f950c;
        if (str2 != null) {
            c1372j.m673a(str2, 2);
        }
        ArrayList<C1362aq> arrayList = this.f951d;
        if (arrayList != null) {
            c1372j.m674a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.f952e;
        if (map != null) {
            c1372j.m675a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        this.f948a = c1371i.m652a(this.f948a, 0, true);
        this.f949b = c1371i.m662b(1, false);
        this.f950c = c1371i.m662b(2, false);
        if (f946f == null) {
            f946f = new ArrayList<>();
            f946f.add(new C1362aq());
        }
        this.f951d = (ArrayList) c1371i.m657a((C1371i) f946f, 3, false);
        if (f947g == null) {
            f947g = new HashMap();
            f947g.put("", "");
        }
        this.f952e = (Map) c1371i.m657a((C1371i) f947g, 4, false);
    }
}
