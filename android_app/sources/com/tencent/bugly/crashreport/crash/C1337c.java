package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.anr.C1335b;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.C1378p;
import com.tencent.bugly.proguard.C1380r;
import com.tencent.bugly.proguard.C1383u;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import com.tencent.bugly.proguard.InterfaceC1377o;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.c */
/* loaded from: classes.dex */
public final class C1337c {

    /* renamed from: a */
    public static int f729a = 0;

    /* renamed from: b */
    public static boolean f730b = false;

    /* renamed from: c */
    public static int f731c = 2;

    /* renamed from: d */
    public static boolean f732d = true;

    /* renamed from: e */
    public static int f733e = 20480;

    /* renamed from: f */
    public static int f734f = 20480;

    /* renamed from: g */
    public static long f735g = 604800000;

    /* renamed from: h */
    public static String f736h = null;

    /* renamed from: i */
    public static boolean f737i = false;

    /* renamed from: j */
    public static String f738j = null;

    /* renamed from: k */
    public static int f739k = 5000;

    /* renamed from: l */
    public static boolean f740l = true;

    /* renamed from: m */
    public static boolean f741m = false;

    /* renamed from: n */
    public static String f742n;

    /* renamed from: o */
    public static String f743o;

    /* renamed from: r */
    private static C1337c f744r;

    /* renamed from: p */
    public final C1336b f745p;

    /* renamed from: q */
    private final Context f746q;

    /* renamed from: s */
    private final C1339e f747s;

    /* renamed from: t */
    private final NativeCrashHandler f748t;

    /* renamed from: u */
    private C1326a f749u;

    /* renamed from: v */
    private C1385w f750v;

    /* renamed from: w */
    private final C1335b f751w;

    /* renamed from: x */
    private Boolean f752x;

    /* renamed from: y */
    private int f753y = 31;

    /* renamed from: z */
    private boolean f754z = false;

    private C1337c(int i, Context context, C1385w c1385w, boolean z, BuglyStrategy.C1313a c1313a, InterfaceC1377o interfaceC1377o, String str) {
        f729a = i;
        Context contextM791a = C1388z.m791a(context);
        this.f746q = contextM791a;
        this.f749u = C1326a.m444a();
        this.f750v = c1385w;
        C1383u c1383uM739a = C1383u.m739a();
        C1378p c1378pM707a = C1378p.m707a();
        this.f745p = new C1336b(i, contextM791a, c1383uM739a, c1378pM707a, this.f749u, c1313a, interfaceC1377o);
        C1323a c1323aM371a = C1323a.m371a(contextM791a);
        this.f747s = new C1339e(contextM791a, this.f745p, this.f749u, c1323aM371a);
        this.f748t = NativeCrashHandler.getInstance(contextM791a, c1323aM371a, this.f745p, this.f749u, c1385w, z, str);
        c1323aM371a.f525E = this.f748t;
        this.f751w = C1335b.m467a(contextM791a, this.f749u, c1323aM371a, c1385w, c1378pM707a, this.f745p, c1313a);
    }

    /* renamed from: a */
    public static synchronized C1337c m510a(int i, Context context, boolean z, BuglyStrategy.C1313a c1313a, InterfaceC1377o interfaceC1377o, String str) {
        if (f744r == null) {
            f744r = new C1337c(1004, context, C1385w.m758a(), z, c1313a, null, null);
        }
        return f744r;
    }

    /* renamed from: a */
    public static synchronized C1337c m509a() {
        return f744r;
    }

    /* renamed from: a */
    public final void m515a(StrategyBean strategyBean) {
        this.f747s.m551a(strategyBean);
        this.f748t.onStrategyChanged(strategyBean);
        this.f751w.m487c();
        C1385w.m758a().m761a(new AnonymousClass2(), 3000L);
    }

    /* renamed from: b */
    public final boolean m520b() {
        Boolean bool = this.f752x;
        if (bool != null) {
            return bool.booleanValue();
        }
        String str = C1323a.m372b().f564d;
        List<C1380r> listM724a = C1378p.m707a().m724a(1);
        ArrayList arrayList = new ArrayList();
        if (listM724a != null && listM724a.size() > 0) {
            for (C1380r c1380r : listM724a) {
                if (str.equals(c1380r.f1026c)) {
                    this.f752x = true;
                    arrayList.add(c1380r);
                }
            }
            if (arrayList.size() > 0) {
                C1378p.m707a().m726a(arrayList);
            }
            return true;
        }
        this.f752x = false;
        return false;
    }

    /* renamed from: c */
    public final synchronized void m521c() {
        this.f747s.m550a();
        this.f748t.setUserOpened(true);
        this.f751w.m483a(true);
    }

    /* renamed from: d */
    public final synchronized void m522d() {
        this.f747s.m553b();
        this.f748t.setUserOpened(false);
        this.f751w.m483a(false);
    }

    /* renamed from: e */
    public final void m523e() {
        this.f747s.m553b();
    }

    /* renamed from: f */
    public final void m524f() {
        this.f747s.m550a();
    }

    /* renamed from: g */
    public final void m525g() {
        this.f748t.setUserOpened(false);
    }

    /* renamed from: h */
    public final void m526h() {
        this.f748t.setUserOpened(true);
    }

    /* renamed from: i */
    public final void m527i() {
        this.f751w.m483a(true);
    }

    /* renamed from: j */
    public final void m528j() {
        this.f751w.m483a(false);
    }

    /* renamed from: k */
    public final void m529k() {
        this.f748t.enableCatchAnrTrace();
    }

    /* renamed from: a */
    public final synchronized void m519a(boolean z, boolean z2, boolean z3) {
        this.f748t.testNativeCrash(z, z2, z3);
    }

    /* renamed from: l */
    public final synchronized void m530l() {
        C1335b c1335b = this.f751w;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i < 30) {
                try {
                    C1386x.m766a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i2));
                    C1388z.m823b(5000L);
                    i = i2;
                } catch (Throwable th) {
                    if (C1386x.m767a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            }
        }
    }

    /* renamed from: m */
    public final boolean m531m() {
        return this.f751w.m484a();
    }

    /* renamed from: a */
    public final void m517a(final Thread thread, final Throwable th, boolean z, String str, byte[] bArr, final boolean z2) {
        final boolean z3 = false;
        final String str2 = null;
        final byte[] bArr2 = null;
        this.f750v.m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C1386x.m771c("post a throwable %b", Boolean.valueOf(z3));
                    C1337c.this.f747s.m552a(thread, th, false, str2, bArr2);
                    if (z2) {
                        C1386x.m766a("clear user datas", new Object[0]);
                        C1323a.m371a(C1337c.this.f746q).m410u();
                    }
                } catch (Throwable th2) {
                    if (!C1386x.m770b(th2)) {
                        th2.printStackTrace();
                    }
                    C1386x.m773e("java catch error: %s", th.toString());
                }
            }
        });
    }

    /* renamed from: a */
    public final void m516a(CrashDetailBean crashDetailBean) {
        this.f745p.m508e(crashDetailBean);
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.crash.c$2, reason: invalid class name */
    final class AnonymousClass2 extends Thread {
        AnonymousClass2() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            List<CrashDetailBean> list;
            if (C1388z.m811a(C1337c.this.f746q, "local_crash_lock", OkHttpUtils.DEFAULT_MILLISECONDS)) {
                List<CrashDetailBean> listM501a = C1337c.this.f745p.m501a();
                if (listM501a != null && listM501a.size() > 0) {
                    C1386x.m771c("Size of crash list: %s", Integer.valueOf(listM501a.size()));
                    int size = listM501a.size();
                    if (size > 20) {
                        ArrayList arrayList = new ArrayList();
                        Collections.sort(listM501a);
                        for (int i = 0; i < 20; i++) {
                            arrayList.add(listM501a.get((size - 1) - i));
                        }
                        list = arrayList;
                    } else {
                        list = listM501a;
                    }
                    C1337c.this.f745p.m503a(list, 0L, false, false, false);
                }
                C1388z.m826b(C1337c.this.f746q, "local_crash_lock");
            }
        }
    }

    /* renamed from: a */
    public final void m514a(long j) {
        C1385w.m758a().m761a(new AnonymousClass2(), j);
    }

    /* renamed from: n */
    public final void m532n() {
        this.f748t.checkUploadRecordCrash();
    }

    /* renamed from: o */
    public final void m533o() {
        if (C1323a.m372b().f564d.equals(AppInfo.m363a(this.f746q))) {
            this.f748t.removeEmptyNativeRecordFiles();
        }
    }

    /* renamed from: a */
    public final void m513a(int i) {
        this.f753y = i;
    }

    /* renamed from: a */
    public final void m518a(boolean z) {
        this.f754z = z;
    }

    /* renamed from: p */
    public final boolean m534p() {
        return this.f754z;
    }

    /* renamed from: q */
    public final boolean m535q() {
        return (this.f753y & 16) > 0;
    }

    /* renamed from: r */
    public final boolean m536r() {
        return (this.f753y & 8) > 0;
    }

    /* renamed from: s */
    public final boolean m537s() {
        return (this.f753y & 4) > 0;
    }

    /* renamed from: t */
    public final boolean m538t() {
        return (this.f753y & 2) > 0;
    }

    /* renamed from: u */
    public final boolean m539u() {
        return (this.f753y & 1) > 0;
    }
}
