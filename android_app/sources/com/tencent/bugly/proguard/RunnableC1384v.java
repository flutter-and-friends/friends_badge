package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import java.util.Map;
import java.util.UUID;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.v */
/* loaded from: classes.dex */
public final class RunnableC1384v implements Runnable {

    /* renamed from: a */
    private int f1048a;

    /* renamed from: b */
    private int f1049b;

    /* renamed from: c */
    private final Context f1050c;

    /* renamed from: d */
    private final int f1051d;

    /* renamed from: e */
    private final byte[] f1052e;

    /* renamed from: f */
    private final C1323a f1053f;

    /* renamed from: g */
    private final C1326a f1054g;

    /* renamed from: h */
    private final C1381s f1055h;

    /* renamed from: i */
    private final C1383u f1056i;

    /* renamed from: j */
    private final int f1057j;

    /* renamed from: k */
    private final InterfaceC1382t f1058k;

    /* renamed from: l */
    private final InterfaceC1382t f1059l;

    /* renamed from: m */
    private String f1060m;

    /* renamed from: n */
    private final String f1061n;

    /* renamed from: o */
    private final Map<String, String> f1062o;

    /* renamed from: p */
    private int f1063p;

    /* renamed from: q */
    private long f1064q;

    /* renamed from: r */
    private long f1065r;

    /* renamed from: s */
    private boolean f1066s;

    public RunnableC1384v(Context context, int i, int i2, byte[] bArr, String str, String str2, InterfaceC1382t interfaceC1382t, boolean z, boolean z2) {
        this(context, i, i2, bArr, str, str2, interfaceC1382t, 2, BuglyStrategy.C1313a.MAX_USERDATA_VALUE_LENGTH, z2, null);
    }

    public RunnableC1384v(Context context, int i, int i2, byte[] bArr, String str, String str2, InterfaceC1382t interfaceC1382t, int i3, int i4, boolean z, Map<String, String> map) {
        this.f1048a = 2;
        this.f1049b = BuglyStrategy.C1313a.MAX_USERDATA_VALUE_LENGTH;
        this.f1060m = null;
        this.f1063p = 0;
        this.f1064q = 0L;
        this.f1065r = 0L;
        this.f1066s = false;
        this.f1050c = context;
        this.f1053f = C1323a.m371a(context);
        this.f1052e = bArr;
        this.f1054g = C1326a.m444a();
        this.f1055h = C1381s.m733a(context);
        this.f1056i = C1383u.m739a();
        this.f1057j = i;
        this.f1060m = str;
        this.f1061n = str2;
        this.f1058k = interfaceC1382t;
        C1383u c1383u = this.f1056i;
        this.f1059l = null;
        this.f1051d = i2;
        if (i3 > 0) {
            this.f1048a = i3;
        }
        if (i4 > 0) {
            this.f1049b = i4;
        }
        this.f1066s = z;
        this.f1062o = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m754a(com.tencent.bugly.proguard.C1359an r4, boolean r5, int r6, java.lang.String r7) {
        /*
            r3 = this;
            int r4 = r3.f1051d
            r0 = 630(0x276, float:8.83E-43)
            if (r4 == r0) goto L1a
            r0 = 640(0x280, float:8.97E-43)
            if (r4 == r0) goto L17
            r0 = 830(0x33e, float:1.163E-42)
            if (r4 == r0) goto L1a
            r0 = 840(0x348, float:1.177E-42)
            if (r4 == r0) goto L17
            java.lang.String r4 = java.lang.String.valueOf(r4)
            goto L1c
        L17:
            java.lang.String r4 = "userinfo"
            goto L1c
        L1a:
            java.lang.String r4 = "crash"
        L1c:
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L2a
            java.lang.Object[] r6 = new java.lang.Object[r0]
            r6[r1] = r4
            java.lang.String r4 = "[Upload] Success: %s"
            com.tencent.bugly.proguard.C1386x.m766a(r4, r6)
            goto L3d
        L2a:
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r2[r1] = r6
            r2[r0] = r4
            r4 = 2
            r2[r4] = r7
            java.lang.String r4 = "[Upload] Failed to upload(%d) %s: %s"
            com.tencent.bugly.proguard.C1386x.m773e(r4, r2)
        L3d:
            long r6 = r3.f1064q
            long r0 = r3.f1065r
            long r6 = r6 + r0
            r0 = 0
            int r4 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r4 <= 0) goto L5d
            com.tencent.bugly.proguard.u r4 = r3.f1056i
            boolean r6 = r3.f1066s
            long r6 = r4.m747a(r6)
            long r0 = r3.f1064q
            long r6 = r6 + r0
            long r0 = r3.f1065r
            long r6 = r6 + r0
            com.tencent.bugly.proguard.u r4 = r3.f1056i
            boolean r0 = r3.f1066s
            r4.m751a(r6, r0)
        L5d:
            com.tencent.bugly.proguard.t r4 = r3.f1058k
            if (r4 == 0) goto L6a
            int r6 = r3.f1051d
            long r6 = r3.f1064q
            long r6 = r3.f1065r
            r4.mo340a(r5)
        L6a:
            com.tencent.bugly.proguard.t r4 = r3.f1059l
            if (r4 == 0) goto L77
            int r6 = r3.f1051d
            long r6 = r3.f1064q
            long r6 = r3.f1065r
            r4.mo340a(r5)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.RunnableC1384v.m754a(com.tencent.bugly.proguard.an, boolean, int, java.lang.String):void");
    }

    /* renamed from: a */
    private static boolean m755a(C1359an c1359an, C1323a c1323a, C1326a c1326a) throws NumberFormatException {
        if (c1359an == null) {
            C1386x.m772d("resp == null!", new Object[0]);
            return false;
        }
        if (c1359an.f912a != 0) {
            C1386x.m773e("resp result error %d", Byte.valueOf(c1359an.f912a));
            return false;
        }
        try {
            if (!C1388z.m814a(c1359an.f916e) && !C1323a.m372b().m398i().equals(c1359an.f916e)) {
                C1378p.m707a().m727a(C1326a.f612a, "device", c1359an.f916e.getBytes("UTF-8"), (InterfaceC1377o) null, true);
                c1323a.m392e(c1359an.f916e);
            }
        } catch (Throwable th) {
            C1386x.m767a(th);
        }
        c1323a.f570j = c1359an.f915d;
        if (c1359an.f913b == 510) {
            if (c1359an.f914c == null) {
                C1386x.m773e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(c1359an.f913b));
                return false;
            }
            C1361ap c1361ap = (C1361ap) C1345a.m585a(c1359an.f914c, C1361ap.class);
            if (c1361ap == null) {
                C1386x.m773e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(c1359an.f913b));
                return false;
            }
            c1326a.m452a(c1361ap);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x0232 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cc A[Catch: all -> 0x0347, TryCatch #0 {all -> 0x0347, blocks: (B:3:0x0007, B:5:0x001a, B:8:0x0022, B:11:0x0027, B:13:0x003b, B:15:0x003f, B:17:0x0043, B:20:0x0049, B:22:0x0051, B:24:0x0057, B:26:0x0084, B:27:0x0089, B:29:0x00b8, B:32:0x00c0, B:34:0x00c6, B:36:0x00d5, B:37:0x00d9, B:39:0x00dd, B:40:0x00e1, B:41:0x00e8, B:44:0x00f0, B:46:0x0107, B:47:0x0114, B:50:0x0157, B:52:0x016a, B:55:0x0172, B:58:0x0179, B:61:0x0181, B:73:0x01cc, B:75:0x01f8, B:76:0x0200, B:78:0x0206, B:79:0x0227, B:84:0x0261, B:86:0x0274, B:88:0x0285, B:89:0x028d, B:91:0x0293, B:92:0x02ae, B:95:0x02b7, B:97:0x02be, B:101:0x02c7, B:103:0x02cd, B:105:0x02d4, B:109:0x02ea, B:111:0x02fd, B:113:0x0304, B:108:0x02e7, B:116:0x030c, B:63:0x018b, B:65:0x0191, B:66:0x0199, B:68:0x01a7, B:69:0x01b3, B:70:0x01c0, B:118:0x0332, B:120:0x0339, B:122:0x0340), top: B:130:0x0007 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 850
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.RunnableC1384v.run():void");
    }

    /* renamed from: a */
    public final void m756a(long j) {
        this.f1063p++;
        this.f1064q += j;
    }

    /* renamed from: b */
    public final void m757b(long j) {
        this.f1065r += j;
    }

    /* renamed from: a */
    private static String m753a(String str) {
        if (C1388z.m814a(str)) {
            return str;
        }
        try {
            return String.format("%s?aid=%s", str, UUID.randomUUID().toString());
        } catch (Throwable th) {
            C1386x.m767a(th);
            return str;
        }
    }
}
