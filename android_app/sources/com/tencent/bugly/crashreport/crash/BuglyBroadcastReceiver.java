package com.tencent.bugly.crashreport.crash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.tencent.bugly.crashreport.biz.C1321b;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.info.C1324b;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.proguard.C1383u;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class BuglyBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: d */
    private static BuglyBroadcastReceiver f621d;

    /* renamed from: b */
    private Context f623b;

    /* renamed from: c */
    private String f624c;

    /* renamed from: e */
    private boolean f625e = true;

    /* renamed from: a */
    private IntentFilter f622a = new IntentFilter();

    public static synchronized BuglyBroadcastReceiver getInstance() {
        if (f621d == null) {
            f621d = new BuglyBroadcastReceiver();
        }
        return f621d;
    }

    public synchronized void addFilter(String str) {
        if (!this.f622a.hasAction(str)) {
            this.f622a.addAction(str);
        }
        C1386x.m771c("add action %s", str);
    }

    public synchronized void register(Context context) {
        this.f623b = context;
        C1388z.m813a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C1386x.m765a(BuglyBroadcastReceiver.f621d.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
                    synchronized (this) {
                        BuglyBroadcastReceiver.this.f623b.registerReceiver(BuglyBroadcastReceiver.f621d, BuglyBroadcastReceiver.this.f622a, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public synchronized void unregister(Context context) {
        try {
            C1386x.m765a(getClass(), "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.f623b = context;
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            m457a(context, intent);
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    private synchronized boolean m457a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.f625e) {
                    this.f625e = false;
                    return true;
                }
                String strM420b = C1324b.m420b(this.f623b);
                C1386x.m771c("is Connect BC " + strM420b, new Object[0]);
                C1386x.m766a("network %s changed to %s", this.f624c, strM420b);
                if (strM420b == null) {
                    this.f624c = null;
                    return true;
                }
                String str = this.f624c;
                this.f624c = strM420b;
                long jCurrentTimeMillis = System.currentTimeMillis();
                C1326a c1326aM444a = C1326a.m444a();
                C1383u c1383uM739a = C1383u.m739a();
                C1323a c1323aM371a = C1323a.m371a(context);
                if (c1326aM444a != null && c1383uM739a != null && c1323aM371a != null) {
                    if (!strM420b.equals(str) && jCurrentTimeMillis - c1383uM739a.m746a(C1337c.f729a) > 30000) {
                        C1386x.m766a("try to upload crash on network changed.", new Object[0]);
                        C1337c c1337cM509a = C1337c.m509a();
                        if (c1337cM509a != null) {
                            c1337cM509a.m514a(0L);
                        }
                        C1386x.m766a("try to upload userinfo on network changed.", new Object[0]);
                        C1321b.f501a.m339b();
                    }
                    return true;
                }
                C1386x.m772d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }
}
