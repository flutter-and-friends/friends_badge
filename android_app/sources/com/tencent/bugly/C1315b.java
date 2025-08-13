package com.tencent.bugly;

import android.content.Context;
import android.util.Log;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.proguard.C1378p;
import com.tencent.bugly.proguard.C1386x;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.b */
/* loaded from: classes.dex */
public final class C1315b {

    /* renamed from: a */
    public static boolean f461a = true;

    /* renamed from: b */
    public static List<AbstractC1314a> f462b = new ArrayList();

    /* renamed from: c */
    public static boolean f463c;

    /* renamed from: d */
    private static C1378p f464d;

    /* renamed from: e */
    private static boolean f465e;

    /* renamed from: a */
    private static boolean m322a(C1323a c1323a) {
        List<String> list = c1323a.f576p;
        c1323a.getClass();
        return list != null && list.contains("bugly");
    }

    /* renamed from: a */
    public static synchronized void m318a(Context context) {
        m319a(context, null);
    }

    /* renamed from: a */
    public static synchronized void m319a(Context context, BuglyStrategy buglyStrategy) {
        if (f465e) {
            C1386x.m772d("[init] initial Multi-times, ignore this.", new Object[0]);
            return;
        }
        if (context == null) {
            Log.w(C1386x.f1070a, "[init] context of init() is null, check it.");
            return;
        }
        C1323a c1323aM371a = C1323a.m371a(context);
        if (m322a(c1323aM371a)) {
            f461a = false;
            return;
        }
        String strM393f = c1323aM371a.m393f();
        if (strM393f == null) {
            Log.e(C1386x.f1070a, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set.");
        } else {
            m320a(context, strM393f, c1323aM371a.f582v, buglyStrategy);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x0211 A[Catch: all -> 0x0224, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000e, B:10:0x0019, B:14:0x0024, B:18:0x002e, B:20:0x0032, B:21:0x006e, B:23:0x00b0, B:26:0x00b4, B:28:0x00c2, B:30:0x00d0, B:32:0x00d6, B:33:0x00ec, B:34:0x00fb, B:36:0x0101, B:38:0x010b, B:40:0x0111, B:41:0x0127, B:47:0x0157, B:53:0x016b, B:55:0x0175, B:57:0x017b, B:58:0x0191, B:59:0x01a0, B:61:0x01a6, B:63:0x01ac, B:64:0x01c2, B:65:0x01ce, B:42:0x013b, B:44:0x0146, B:46:0x0150, B:50:0x0164, B:52:0x0168, B:67:0x01db, B:77:0x0209, B:78:0x020c, B:80:0x0211, B:82:0x0218, B:74:0x0200, B:76:0x0206, B:69:0x01e3, B:71:0x01f3), top: B:88:0x0009, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized void m320a(android.content.Context r20, java.lang.String r21, boolean r22, com.tencent.bugly.BuglyStrategy r23) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.C1315b.m320a(android.content.Context, java.lang.String, boolean, com.tencent.bugly.BuglyStrategy):void");
    }

    /* renamed from: a */
    public static synchronized void m321a(AbstractC1314a abstractC1314a) {
        if (!f462b.contains(abstractC1314a)) {
            f462b.add(abstractC1314a);
        }
    }
}
