package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.c */
/* loaded from: classes.dex */
public class C1365c extends C1345a {

    /* renamed from: d */
    protected HashMap<String, byte[]> f953d = null;

    /* renamed from: e */
    private HashMap<String, Object> f954e = new HashMap<>();

    /* renamed from: f */
    private C1371i f955f = new C1371i();

    @Override // com.tencent.bugly.proguard.C1345a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo594a(String str) {
        super.mo594a(str);
    }

    /* renamed from: c */
    public void mo620c() {
        this.f953d = new HashMap<>();
    }

    @Override // com.tencent.bugly.proguard.C1345a
    /* renamed from: a */
    public <T> void mo595a(String str, T t) throws UnsupportedEncodingException {
        if (this.f953d == null) {
            super.mo595a(str, (String) t);
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        C1372j c1372j = new C1372j();
        c1372j.m666a(this.f827b);
        c1372j.m672a(t, 0);
        this.f953d.put(str, C1374l.m684a(c1372j.m667a()));
    }

    /* renamed from: b */
    public final <T> T m619b(String str, T t) throws C1364b {
        HashMap<String, byte[]> map = this.f953d;
        if (map != null) {
            if (!map.containsKey(str)) {
                return null;
            }
            if (this.f954e.containsKey(str)) {
                return (T) this.f954e.get(str);
            }
            try {
                this.f955f.m660a(this.f953d.get(str));
                this.f955f.m654a(this.f827b);
                T t2 = (T) this.f955f.m657a((C1371i) t, 0, true);
                if (t2 != null) {
                    this.f954e.put(str, t2);
                }
                return t2;
            } catch (Exception e) {
                throw new C1364b(e);
            }
        }
        if (!this.f826a.containsKey(str)) {
            return null;
        }
        if (this.f954e.containsKey(str)) {
            return (T) this.f954e.get(str);
        }
        byte[] value = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f826a.get(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            next.getKey();
            value = next.getValue();
        }
        try {
            this.f955f.m660a(value);
            this.f955f.m654a(this.f827b);
            T t3 = (T) this.f955f.m657a((C1371i) t, 0, true);
            this.f954e.put(str, t3);
            return t3;
        } catch (Exception e2) {
            throw new C1364b(e2);
        }
    }

    @Override // com.tencent.bugly.proguard.C1345a
    /* renamed from: a */
    public byte[] mo597a() throws UnsupportedEncodingException {
        if (this.f953d != null) {
            C1372j c1372j = new C1372j(0);
            c1372j.m666a(this.f827b);
            c1372j.m675a((Map) this.f953d, 0);
            return C1374l.m684a(c1372j.m667a());
        }
        return super.mo597a();
    }

    @Override // com.tencent.bugly.proguard.C1345a
    /* renamed from: a */
    public void mo596a(byte[] bArr) {
        try {
            super.mo596a(bArr);
        } catch (Exception unused) {
            this.f955f.m660a(bArr);
            this.f955f.m654a(this.f827b);
            HashMap map = new HashMap(1);
            map.put("", new byte[0]);
            this.f953d = this.f955f.m658a((Map) map, 0, false);
        }
    }
}
