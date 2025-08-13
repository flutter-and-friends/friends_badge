package com.tencent.bugly.crashreport.biz;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.C1320a.AnonymousClass2;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.biz.b */
/* loaded from: classes.dex */
public class C1321b {

    /* renamed from: a */
    public static C1320a f501a = null;

    /* renamed from: b */
    private static boolean f502b = false;

    /* renamed from: c */
    private static int f503c = 10;

    /* renamed from: d */
    private static long f504d = 300000;

    /* renamed from: e */
    private static long f505e = 30000;

    /* renamed from: f */
    private static long f506f = 0;

    /* renamed from: g */
    private static int f507g = 0;

    /* renamed from: h */
    private static long f508h = 0;

    /* renamed from: i */
    private static long f509i = 0;

    /* renamed from: j */
    private static long f510j = 0;

    /* renamed from: k */
    private static Application.ActivityLifecycleCallbacks f511k = null;

    /* renamed from: l */
    private static Class<?> f512l = null;

    /* renamed from: m */
    private static boolean f513m = true;

    /* renamed from: a */
    static /* synthetic */ String m341a(String str, String str2) {
        return C1388z.m797a() + "  " + str + "  " + str2 + "\n";
    }

    /* renamed from: g */
    static /* synthetic */ int m356g() {
        int i = f507g;
        f507g = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m352c(android.content.Context r14, com.tencent.bugly.BuglyStrategy r15) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.C1321b.m352c(android.content.Context, com.tencent.bugly.BuglyStrategy):void");
    }

    /* renamed from: a */
    public static void m345a(final Context context, final BuglyStrategy buglyStrategy) {
        long appReportDelay;
        if (f502b) {
            return;
        }
        f513m = C1323a.m371a(context).f565e;
        f501a = new C1320a(context, f513m);
        f502b = true;
        if (buglyStrategy != null) {
            f512l = buglyStrategy.getUserInfoActivity();
            appReportDelay = buglyStrategy.getAppReportDelay();
        } else {
            appReportDelay = 0;
        }
        if (appReportDelay <= 0) {
            m352c(context, buglyStrategy);
        } else {
            C1385w.m758a().m761a(new Runnable() { // from class: com.tencent.bugly.crashreport.biz.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    C1321b.m352c(context, buglyStrategy);
                }
            }, appReportDelay);
        }
    }

    /* renamed from: a */
    public static void m343a(long j) {
        if (j < 0) {
            j = C1326a.m444a().m454c().f604o;
        }
        f506f = j;
    }

    /* renamed from: a */
    public static void m346a(StrategyBean strategyBean, boolean z) {
        C1385w c1385wM758a;
        C1320a c1320a = f501a;
        if (c1320a != null && !z && (c1385wM758a = C1385w.m758a()) != null) {
            c1385wM758a.m760a(c1320a.new AnonymousClass2());
        }
        if (strategyBean == null) {
            return;
        }
        if (strategyBean.f604o > 0) {
            f505e = strategyBean.f604o;
        }
        if (strategyBean.f609t > 0) {
            f503c = strategyBean.f609t;
        }
        if (strategyBean.f610u > 0) {
            f504d = strategyBean.f610u;
        }
    }

    /* renamed from: a */
    public static void m342a() {
        C1320a c1320a = f501a;
        if (c1320a != null) {
            c1320a.m338a(2, false, 0L);
        }
    }

    /* renamed from: a */
    public static void m344a(Context context) {
        if (!f502b || context == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
            if (application != null) {
                try {
                    if (f511k != null) {
                        application.unregisterActivityLifecycleCallbacks(f511k);
                    }
                } catch (Exception e) {
                    if (!C1386x.m767a(e)) {
                        e.printStackTrace();
                    }
                }
            }
        }
        f502b = false;
    }
}
