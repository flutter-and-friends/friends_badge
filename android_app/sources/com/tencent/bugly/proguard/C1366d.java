package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.d */
/* loaded from: classes.dex */
public final class C1366d extends C1365c {

    /* renamed from: f */
    private static HashMap<String, byte[]> f956f;

    /* renamed from: g */
    private static HashMap<String, HashMap<String, byte[]>> f957g;

    /* renamed from: e */
    private C1368f f958e = new C1368f();

    public C1366d() {
        this.f958e.f963a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.C1365c, com.tencent.bugly.proguard.C1345a
    /* renamed from: a */
    public final <T> void mo595a(String str, T t) throws UnsupportedEncodingException {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
        super.mo595a(str, (String) t);
    }

    @Override // com.tencent.bugly.proguard.C1365c
    /* renamed from: c */
    public final void mo620c() {
        super.mo620c();
        this.f958e.f963a = (short) 3;
    }

    @Override // com.tencent.bugly.proguard.C1365c, com.tencent.bugly.proguard.C1345a
    /* renamed from: a */
    public final byte[] mo597a() throws UnsupportedEncodingException {
        if (this.f958e.f963a == 2) {
            if (this.f958e.f965c.equals("")) {
                throw new IllegalArgumentException("servantName can not is null");
            }
            if (this.f958e.f966d.equals("")) {
                throw new IllegalArgumentException("funcName can not is null");
            }
        } else {
            if (this.f958e.f965c == null) {
                this.f958e.f965c = "";
            }
            if (this.f958e.f966d == null) {
                this.f958e.f966d = "";
            }
        }
        C1372j c1372j = new C1372j(0);
        c1372j.m666a(this.f827b);
        if (this.f958e.f963a == 2) {
            c1372j.m675a((Map) this.f826a, 0);
        } else {
            c1372j.m675a((Map) this.f953d, 0);
        }
        this.f958e.f967e = C1374l.m684a(c1372j.m667a());
        C1372j c1372j2 = new C1372j(0);
        c1372j2.m666a(this.f827b);
        this.f958e.mo617a(c1372j2);
        byte[] bArrM684a = C1374l.m684a(c1372j2.m667a());
        int length = bArrM684a.length + 4;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length).put(bArrM684a).flip();
        return byteBufferAllocate.array();
    }

    @Override // com.tencent.bugly.proguard.C1365c, com.tencent.bugly.proguard.C1345a
    /* renamed from: a */
    public final void mo596a(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            C1371i c1371i = new C1371i(bArr, 4);
            c1371i.m654a(this.f827b);
            this.f958e.mo616a(c1371i);
            if (this.f958e.f963a == 3) {
                C1371i c1371i2 = new C1371i(this.f958e.f967e);
                c1371i2.m654a(this.f827b);
                if (f956f == null) {
                    HashMap<String, byte[]> map = new HashMap<>();
                    f956f = map;
                    map.put("", new byte[0]);
                }
                this.f953d = c1371i2.m658a((Map) f956f, 0, false);
                return;
            }
            C1371i c1371i3 = new C1371i(this.f958e.f967e);
            c1371i3.m654a(this.f827b);
            if (f957g == null) {
                f957g = new HashMap<>();
                HashMap<String, byte[]> map2 = new HashMap<>();
                map2.put("", new byte[0]);
                f957g.put("", map2);
            }
            this.f826a = c1371i3.m658a((Map) f957g, 0, false);
            new HashMap();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    public final void m622b(String str) {
        this.f958e.f965c = str;
    }

    /* renamed from: c */
    public final void m623c(String str) {
        this.f958e.f966d = str;
    }

    /* renamed from: a */
    public final void m621a(int i) {
        this.f958e.f964b = 1;
    }
}
