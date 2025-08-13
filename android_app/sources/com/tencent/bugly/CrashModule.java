package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver;
import com.tencent.bugly.crashreport.crash.C1337c;
import com.tencent.bugly.crashreport.crash.C1338d;
import com.tencent.bugly.proguard.C1376n;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.InterfaceC1377o;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class CrashModule extends AbstractC1314a {
    public static final int MODULE_ID = 1004;

    /* renamed from: c */
    private static int f455c;

    /* renamed from: e */
    private static CrashModule f456e = new CrashModule();

    /* renamed from: a */
    private long f457a;

    /* renamed from: b */
    private BuglyStrategy.C1313a f458b;

    /* renamed from: d */
    private boolean f459d = false;

    public static CrashModule getInstance() {
        CrashModule crashModule = f456e;
        crashModule.f460id = 1004;
        return crashModule;
    }

    public synchronized boolean hasInitialized() {
        return this.f459d;
    }

    @Override // com.tencent.bugly.AbstractC1314a
    public synchronized void init(Context context, boolean z, BuglyStrategy buglyStrategy) {
        if (context != null) {
            if (!this.f459d) {
                C1386x.m766a("Initializing crash module.", new Object[0]);
                C1376n c1376nM685a = C1376n.m685a();
                int i = f455c + 1;
                f455c = i;
                c1376nM685a.m696a(1004, i);
                this.f459d = true;
                CrashReport.setContext(context);
                m317a(context, buglyStrategy);
                C1337c c1337cM510a = C1337c.m510a(1004, context, z, this.f458b, (InterfaceC1377o) null, (String) null);
                c1337cM510a.m524f();
                if (buglyStrategy != null) {
                    c1337cM510a.m513a(buglyStrategy.getCallBackType());
                    c1337cM510a.m518a(buglyStrategy.getCloseErrorCallback());
                }
                if (buglyStrategy != null && buglyStrategy.isEnableCatchAnrTrace()) {
                    c1337cM510a.m529k();
                }
                c1337cM510a.m533o();
                if (buglyStrategy == null || buglyStrategy.isEnableNativeCrashMonitor()) {
                    c1337cM510a.m526h();
                } else {
                    C1386x.m766a("[crash] Closed native crash monitor!", new Object[0]);
                    c1337cM510a.m525g();
                }
                if (buglyStrategy == null || buglyStrategy.isEnableANRCrashMonitor()) {
                    c1337cM510a.m527i();
                } else {
                    C1386x.m766a("[crash] Closed ANR monitor!", new Object[0]);
                    c1337cM510a.m528j();
                }
                c1337cM510a.m514a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
                c1337cM510a.m532n();
                C1338d.m541a(context);
                BuglyBroadcastReceiver buglyBroadcastReceiver = BuglyBroadcastReceiver.getInstance();
                buglyBroadcastReceiver.addFilter("android.net.conn.CONNECTIVITY_CHANGE");
                buglyBroadcastReceiver.register(context);
                C1376n c1376nM685a2 = C1376n.m685a();
                int i2 = f455c - 1;
                f455c = i2;
                c1376nM685a2.m696a(1004, i2);
            }
        }
    }

    /* renamed from: a */
    private synchronized void m317a(Context context, BuglyStrategy buglyStrategy) {
        if (buglyStrategy == null) {
            return;
        }
        String libBuglySOFilePath = buglyStrategy.getLibBuglySOFilePath();
        if (!TextUtils.isEmpty(libBuglySOFilePath)) {
            C1323a.m371a(context).f574n = libBuglySOFilePath;
            C1386x.m766a("setted libBugly.so file path :%s", libBuglySOFilePath);
        }
        if (buglyStrategy.getCrashHandleCallback() != null) {
            this.f458b = buglyStrategy.getCrashHandleCallback();
            C1386x.m766a("setted CrashHanldeCallback", new Object[0]);
        }
        if (buglyStrategy.getAppReportDelay() > 0) {
            this.f457a = buglyStrategy.getAppReportDelay();
            C1386x.m766a("setted delay: %d", Long.valueOf(this.f457a));
        }
    }

    @Override // com.tencent.bugly.AbstractC1314a
    public void onServerStrategyChanged(StrategyBean strategyBean) {
        C1337c c1337cM509a;
        if (strategyBean == null || (c1337cM509a = C1337c.m509a()) == null) {
            return;
        }
        c1337cM509a.m515a(strategyBean);
    }

    @Override // com.tencent.bugly.AbstractC1314a
    public String[] getTables() {
        return new String[]{"t_cr"};
    }
}
