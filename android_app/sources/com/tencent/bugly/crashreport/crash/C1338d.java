package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.info.C1324b;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1387y;
import com.tencent.bugly.proguard.C1388z;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.d */
/* loaded from: classes.dex */
public final class C1338d {

    /* renamed from: a */
    private static C1338d f763a;

    /* renamed from: b */
    private C1326a f764b;

    /* renamed from: c */
    private C1323a f765c;

    /* renamed from: d */
    private C1336b f766d;

    /* renamed from: e */
    private Context f767e;

    /* renamed from: a */
    static /* synthetic */ void m542a(C1338d c1338d) {
        C1386x.m771c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            c1338d.f765c.getClass();
            C1388z.m810a(cls, "sdkPackageName", "com.tencent.bugly", null);
            C1386x.m771c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            C1386x.m766a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m543a(C1338d c1338d, Thread thread, int i, String str, String str2, String str3, Map map) {
        String str4;
        int i2;
        String str5;
        String str6;
        Thread threadCurrentThread = thread == null ? Thread.currentThread() : thread;
        if (i == 4) {
            str4 = "Unity";
        } else if (i == 5 || i == 6) {
            str4 = "Cocos";
        } else {
            if (i != 8) {
                C1386x.m772d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i));
                return;
            }
            str4 = "H5";
        }
        C1386x.m773e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!c1338d.f764b.m453b()) {
                C1386x.m772d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean strategyBeanM454c = c1338d.f764b.m454c();
            if (!strategyBeanM454c.f594e && c1338d.f764b.m453b()) {
                C1386x.m773e("[ExtraCrashManager] Crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                C1336b.m493a(str4, C1388z.m797a(), c1338d.f765c.f564d, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, null);
                C1386x.m773e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i == 4) {
                i2 = 8;
            } else {
                if (i != 5 && i != 6) {
                    i2 = 8;
                    if (i == 8) {
                        if (!strategyBeanM454c.f600k) {
                            C1386x.m773e("[ExtraCrashManager] %s report is disabled.", str4);
                            C1386x.m773e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                            return;
                        }
                    }
                } else if (!strategyBeanM454c.f599j) {
                    C1386x.m773e("[ExtraCrashManager] %s report is disabled.", str4);
                    C1386x.m773e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
                i2 = 8;
            }
            int i3 = i != i2 ? i : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.f630C = C1324b.m429g();
            crashDetailBean.f631D = C1324b.m425e();
            crashDetailBean.f632E = C1324b.m433i();
            crashDetailBean.f633F = c1338d.f765c.m400k();
            crashDetailBean.f634G = c1338d.f765c.m399j();
            crashDetailBean.f635H = c1338d.f765c.m401l();
            crashDetailBean.f674w = C1388z.m799a(c1338d.f767e, C1337c.f733e, (String) null);
            crashDetailBean.f653b = i3;
            crashDetailBean.f656e = c1338d.f765c.m397h();
            crashDetailBean.f657f = c1338d.f765c.f571k;
            crashDetailBean.f658g = c1338d.f765c.m406q();
            crashDetailBean.f664m = c1338d.f765c.m395g();
            crashDetailBean.f665n = str;
            crashDetailBean.f666o = str2;
            str5 = "";
            if (str3 != null) {
                String[] strArrSplit = str3.split("\n");
                str5 = strArrSplit.length > 0 ? strArrSplit[0] : "";
                str6 = str3;
            } else {
                str6 = "";
            }
            crashDetailBean.f667p = str5;
            crashDetailBean.f668q = str6;
            crashDetailBean.f669r = System.currentTimeMillis();
            crashDetailBean.f672u = C1388z.m804a(crashDetailBean.f668q.getBytes());
            crashDetailBean.f677z = C1388z.m807a(C1337c.f734f, false);
            crashDetailBean.f628A = c1338d.f765c.f564d;
            crashDetailBean.f629B = threadCurrentThread.getName() + "(" + threadCurrentThread.getId() + ")";
            crashDetailBean.f636I = c1338d.f765c.m408s();
            crashDetailBean.f659h = c1338d.f765c.m405p();
            crashDetailBean.f640M = c1338d.f765c.f546a;
            crashDetailBean.f641N = c1338d.f765c.m381a();
            if (!C1337c.m509a().m534p()) {
                c1338d.f766d.m507d(crashDetailBean);
            }
            crashDetailBean.f644Q = c1338d.f765c.m415z();
            crashDetailBean.f645R = c1338d.f765c.m373A();
            crashDetailBean.f646S = c1338d.f765c.m409t();
            crashDetailBean.f647T = c1338d.f765c.m414y();
            crashDetailBean.f676y = C1387y.m779a();
            if (crashDetailBean.f642O == null) {
                crashDetailBean.f642O = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.f642O.putAll(map);
            }
            C1336b.m493a(str4, C1388z.m797a(), c1338d.f765c.f564d, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, crashDetailBean);
            if (!c1338d.f766d.m504a(crashDetailBean)) {
                c1338d.f766d.m502a(crashDetailBean, 3000L, false);
            }
            C1386x.m773e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th) {
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                C1386x.m773e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th2) {
                C1386x.m773e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th2;
            }
        }
    }

    private C1338d(Context context) {
        C1337c c1337cM509a = C1337c.m509a();
        if (c1337cM509a == null) {
            return;
        }
        this.f764b = C1326a.m444a();
        this.f765c = C1323a.m371a(context);
        this.f766d = c1337cM509a.f745p;
        this.f767e = context;
        C1385w.m758a().m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.1
            @Override // java.lang.Runnable
            public final void run() {
                C1338d.m542a(C1338d.this);
            }
        });
    }

    /* renamed from: a */
    public static C1338d m541a(Context context) {
        if (f763a == null) {
            f763a = new C1338d(context);
        }
        return f763a;
    }

    /* renamed from: a */
    public static void m544a(final Thread thread, final int i, final String str, final String str2, final String str3, final Map<String, String> map) {
        C1385w.m758a().m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (C1338d.f763a != null) {
                        C1338d.m543a(C1338d.f763a, thread, i, str, str2, str3, map);
                    } else {
                        C1386x.m773e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    }
                } catch (Throwable th) {
                    if (!C1386x.m770b(th)) {
                        th.printStackTrace();
                    }
                    C1386x.m773e("[ExtraCrashManager] Crash error %s %s %s", str, str2, str3);
                }
            }
        });
    }
}
