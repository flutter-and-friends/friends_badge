package com.tencent.bugly.crashreport.common.strategy;

import android.content.Context;
import com.tencent.bugly.AbstractC1314a;
import com.tencent.bugly.crashreport.biz.C1321b;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.proguard.C1361ap;
import com.tencent.bugly.proguard.C1378p;
import com.tencent.bugly.proguard.C1380r;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import com.tencent.bugly.proguard.InterfaceC1377o;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.common.strategy.a */
/* loaded from: classes.dex */
public final class C1326a {

    /* renamed from: a */
    public static int f612a = 1000;

    /* renamed from: b */
    private static C1326a f613b;

    /* renamed from: h */
    private static String f614h;

    /* renamed from: c */
    private final List<AbstractC1314a> f615c;

    /* renamed from: d */
    private final C1385w f616d;

    /* renamed from: e */
    private final StrategyBean f617e;

    /* renamed from: f */
    private StrategyBean f618f = null;

    /* renamed from: g */
    private Context f619g;

    private C1326a(Context context, List<AbstractC1314a> list) {
        String str;
        this.f619g = context;
        if (C1323a.m371a(context) != null) {
            String str2 = C1323a.m371a(context).f586z;
            if (!"oversea".equals(str2)) {
                str = "na_https".equals(str2) ? "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async" : "https://astat.bugly.qcloud.com/rqd/async";
            }
            StrategyBean.f590a = str;
            StrategyBean.f591b = str;
        }
        this.f617e = new StrategyBean();
        this.f615c = list;
        this.f616d = C1385w.m758a();
    }

    /* renamed from: a */
    public static synchronized C1326a m445a(Context context, List<AbstractC1314a> list) {
        if (f613b == null) {
            f613b = new C1326a(context, list);
        }
        return f613b;
    }

    /* renamed from: a */
    public final void m450a(long j) {
        this.f616d.m761a(new Thread() { // from class: com.tencent.bugly.crashreport.common.strategy.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Map<String, byte[]> mapM725a = C1378p.m707a().m725a(C1326a.f612a, (InterfaceC1377o) null, true);
                    if (mapM725a != null) {
                        byte[] bArr = mapM725a.get("device");
                        byte[] bArr2 = mapM725a.get("gateway");
                        if (bArr != null) {
                            C1323a.m371a(C1326a.this.f619g).m392e(new String(bArr));
                        }
                        if (bArr2 != null) {
                            C1323a.m371a(C1326a.this.f619g).m390d(new String(bArr2));
                        }
                    }
                    C1326a c1326a = C1326a.this;
                    C1326a c1326a2 = C1326a.this;
                    c1326a.f618f = C1326a.m448d();
                    if (C1326a.this.f618f != null) {
                        if (C1388z.m814a(C1326a.f614h) || !C1388z.m828c(C1326a.f614h)) {
                            C1326a.this.f618f.f605p = StrategyBean.f590a;
                            C1326a.this.f618f.f606q = StrategyBean.f591b;
                        } else {
                            C1326a.this.f618f.f605p = C1326a.f614h;
                            C1326a.this.f618f.f606q = C1326a.f614h;
                        }
                    }
                } catch (Throwable th) {
                    if (!C1386x.m767a(th)) {
                        th.printStackTrace();
                    }
                }
                C1326a c1326a3 = C1326a.this;
                c1326a3.m451a(c1326a3.f618f, false);
            }
        }, j);
    }

    /* renamed from: a */
    public static synchronized C1326a m444a() {
        return f613b;
    }

    /* renamed from: b */
    public final synchronized boolean m453b() {
        return this.f618f != null;
    }

    /* renamed from: c */
    public final StrategyBean m454c() {
        StrategyBean strategyBean = this.f618f;
        if (strategyBean != null) {
            if (!C1388z.m828c(strategyBean.f605p)) {
                this.f618f.f605p = StrategyBean.f590a;
            }
            if (!C1388z.m828c(this.f618f.f606q)) {
                this.f618f.f606q = StrategyBean.f591b;
            }
            return this.f618f;
        }
        if (!C1388z.m814a(f614h) && C1388z.m828c(f614h)) {
            StrategyBean strategyBean2 = this.f617e;
            String str = f614h;
            strategyBean2.f605p = str;
            strategyBean2.f606q = str;
        }
        return this.f617e;
    }

    /* renamed from: a */
    protected final void m451a(StrategyBean strategyBean, boolean z) {
        C1386x.m771c("[Strategy] Notify %s", C1321b.class.getName());
        C1321b.m346a(strategyBean, z);
        for (AbstractC1314a abstractC1314a : this.f615c) {
            try {
                C1386x.m771c("[Strategy] Notify %s", abstractC1314a.getClass().getName());
                abstractC1314a.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    public static void m446a(String str) {
        if (C1388z.m814a(str) || !C1388z.m828c(str)) {
            C1386x.m772d("URL user set is invalid.", new Object[0]);
        } else {
            f614h = str;
        }
    }

    /* renamed from: a */
    public final void m452a(C1361ap c1361ap) throws NumberFormatException {
        if (c1361ap == null) {
            return;
        }
        if (this.f618f == null || c1361ap.f932h != this.f618f.f603n) {
            StrategyBean strategyBean = new StrategyBean();
            strategyBean.f594e = c1361ap.f925a;
            strategyBean.f596g = c1361ap.f927c;
            strategyBean.f595f = c1361ap.f926b;
            if (C1388z.m814a(f614h) || !C1388z.m828c(f614h)) {
                if (C1388z.m828c(c1361ap.f928d)) {
                    C1386x.m771c("[Strategy] Upload url changes to %s", c1361ap.f928d);
                    strategyBean.f605p = c1361ap.f928d;
                }
                if (C1388z.m828c(c1361ap.f929e)) {
                    C1386x.m771c("[Strategy] Exception upload url changes to %s", c1361ap.f929e);
                    strategyBean.f606q = c1361ap.f929e;
                }
            }
            if (c1361ap.f930f != null && !C1388z.m814a(c1361ap.f930f.f920a)) {
                strategyBean.f607r = c1361ap.f930f.f920a;
            }
            if (c1361ap.f932h != 0) {
                strategyBean.f603n = c1361ap.f932h;
            }
            if (c1361ap.f931g != null && c1361ap.f931g.size() > 0) {
                strategyBean.f608s = c1361ap.f931g;
                String str = c1361ap.f931g.get("B11");
                if (str != null && str.equals("1")) {
                    strategyBean.f597h = true;
                } else {
                    strategyBean.f597h = false;
                }
                String str2 = c1361ap.f931g.get("B3");
                if (str2 != null) {
                    strategyBean.f611v = Long.valueOf(str2).longValue();
                }
                strategyBean.f604o = c1361ap.f933i;
                strategyBean.f610u = c1361ap.f933i;
                String str3 = c1361ap.f931g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int i = Integer.parseInt(str3);
                        if (i > 0) {
                            strategyBean.f609t = i;
                        }
                    } catch (Exception e) {
                        if (!C1386x.m767a(e)) {
                            e.printStackTrace();
                        }
                    }
                }
                String str4 = c1361ap.f931g.get("B25");
                if (str4 != null && str4.equals("1")) {
                    strategyBean.f599j = true;
                } else {
                    strategyBean.f599j = false;
                }
            }
            C1386x.m766a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean.f594e), Boolean.valueOf(strategyBean.f596g), Boolean.valueOf(strategyBean.f595f), Boolean.valueOf(strategyBean.f597h), Boolean.valueOf(strategyBean.f598i), Boolean.valueOf(strategyBean.f601l), Boolean.valueOf(strategyBean.f602m), Long.valueOf(strategyBean.f604o), Boolean.valueOf(strategyBean.f599j), Long.valueOf(strategyBean.f603n));
            this.f618f = strategyBean;
            if (!C1388z.m828c(c1361ap.f928d)) {
                C1386x.m771c("[Strategy] download url is null", new Object[0]);
                this.f618f.f605p = "";
            }
            if (!C1388z.m828c(c1361ap.f929e)) {
                C1386x.m771c("[Strategy] download crashurl is null", new Object[0]);
                this.f618f.f606q = "";
            }
            C1378p.m707a().m729b(2);
            C1380r c1380r = new C1380r();
            c1380r.f1025b = 2;
            c1380r.f1024a = strategyBean.f592c;
            c1380r.f1028e = strategyBean.f593d;
            c1380r.f1030g = C1388z.m815a(strategyBean);
            C1378p.m707a().m728a(c1380r);
            m451a(strategyBean, true);
        }
    }

    /* renamed from: d */
    public static StrategyBean m448d() {
        List<C1380r> listM724a = C1378p.m707a().m724a(2);
        if (listM724a == null || listM724a.size() <= 0) {
            return null;
        }
        C1380r c1380r = listM724a.get(0);
        if (c1380r.f1030g != null) {
            return (StrategyBean) C1388z.m796a(c1380r.f1030g, StrategyBean.CREATOR);
        }
        return null;
    }
}
