package com.tencent.bugly.proguard;

import androidx.core.app.NotificationCompat;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.f */
/* loaded from: classes.dex */
public final class C1368f extends AbstractC1373k {

    /* renamed from: e */
    public byte[] f967e;

    /* renamed from: i */
    private Map<String, String> f971i;

    /* renamed from: j */
    private Map<String, String> f972j;

    /* renamed from: m */
    private static /* synthetic */ boolean f962m = !C1368f.class.desiredAssertionStatus();

    /* renamed from: k */
    private static byte[] f960k = null;

    /* renamed from: l */
    private static Map<String, String> f961l = null;

    /* renamed from: a */
    public short f963a = 0;

    /* renamed from: f */
    private byte f968f = 0;

    /* renamed from: g */
    private int f969g = 0;

    /* renamed from: b */
    public int f964b = 0;

    /* renamed from: c */
    public String f965c = null;

    /* renamed from: d */
    public String f966d = null;

    /* renamed from: h */
    private int f970h = 0;

    public final boolean equals(Object obj) {
        C1368f c1368f = (C1368f) obj;
        return C1374l.m680a(1, (int) c1368f.f963a) && C1374l.m680a(1, (int) c1368f.f968f) && C1374l.m680a(1, c1368f.f969g) && C1374l.m680a(1, c1368f.f964b) && C1374l.m682a((Object) 1, (Object) c1368f.f965c) && C1374l.m682a((Object) 1, (Object) c1368f.f966d) && C1374l.m682a((Object) 1, (Object) c1368f.f967e) && C1374l.m680a(1, c1368f.f970h) && C1374l.m682a((Object) 1, (Object) c1368f.f971i) && C1374l.m682a((Object) 1, (Object) c1368f.f972j);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f962m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo617a(C1372j c1372j) throws UnsupportedEncodingException {
        c1372j.m676a(this.f963a, 1);
        c1372j.m668a(this.f968f, 2);
        c1372j.m669a(this.f969g, 3);
        c1372j.m669a(this.f964b, 4);
        c1372j.m673a(this.f965c, 5);
        c1372j.m673a(this.f966d, 6);
        c1372j.m678a(this.f967e, 7);
        c1372j.m669a(this.f970h, 8);
        c1372j.m675a((Map) this.f971i, 9);
        c1372j.m675a((Map) this.f972j, 10);
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo616a(C1371i c1371i) {
        try {
            this.f963a = c1371i.m659a(this.f963a, 1, true);
            this.f968f = c1371i.m652a(this.f968f, 2, true);
            this.f969g = c1371i.m653a(this.f969g, 3, true);
            this.f964b = c1371i.m653a(this.f964b, 4, true);
            this.f965c = c1371i.m662b(5, true);
            this.f966d = c1371i.m662b(6, true);
            if (f960k == null) {
                f960k = new byte[]{0};
            }
            byte[] bArr = f960k;
            this.f967e = c1371i.m663c(7, true);
            this.f970h = c1371i.m653a(this.f970h, 8, true);
            if (f961l == null) {
                HashMap map = new HashMap();
                f961l = map;
                map.put("", "");
            }
            this.f971i = (Map) c1371i.m657a((C1371i) f961l, 9, true);
            if (f961l == null) {
                HashMap map2 = new HashMap();
                f961l = map2;
                map2.put("", "");
            }
            this.f972j = (Map) c1371i.m657a((C1371i) f961l, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("RequestPacket decode error " + C1367e.m624a(this.f967e));
            throw new RuntimeException(e);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC1373k
    /* renamed from: a */
    public final void mo618a(StringBuilder sb, int i) {
        C1370h c1370h = new C1370h(sb, i);
        c1370h.m634a(this.f963a, "iVersion");
        c1370h.m628a(this.f968f, "cPacketType");
        c1370h.m629a(this.f969g, "iMessageType");
        c1370h.m629a(this.f964b, "iRequestId");
        c1370h.m632a(this.f965c, "sServantName");
        c1370h.m632a(this.f966d, "sFuncName");
        c1370h.m636a(this.f967e, "sBuffer");
        c1370h.m629a(this.f970h, "iTimeout");
        c1370h.m633a((Map) this.f971i, "context");
        c1370h.m633a((Map) this.f972j, NotificationCompat.CATEGORY_STATUS);
    }
}
