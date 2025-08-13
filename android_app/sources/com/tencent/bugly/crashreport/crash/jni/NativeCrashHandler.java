package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import android.os.Build;
import com.tencent.bugly.Bugly;
import com.tencent.bugly.crashreport.InterfaceC1318a;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.crash.C1336b;
import com.tencent.bugly.crashreport.crash.C1337c;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.File;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class NativeCrashHandler implements InterfaceC1318a {

    /* renamed from: a */
    private static NativeCrashHandler f803a = null;

    /* renamed from: b */
    private static int f804b = 1;

    /* renamed from: m */
    private static boolean f805m = false;

    /* renamed from: n */
    private static boolean f806n = false;

    /* renamed from: p */
    private static boolean f807p = true;

    /* renamed from: c */
    private final Context f808c;

    /* renamed from: d */
    private final C1323a f809d;

    /* renamed from: e */
    private final C1385w f810e;

    /* renamed from: f */
    private NativeExceptionHandler f811f;

    /* renamed from: g */
    private String f812g;

    /* renamed from: h */
    private final boolean f813h;

    /* renamed from: i */
    private boolean f814i = false;

    /* renamed from: j */
    private boolean f815j = false;

    /* renamed from: k */
    private boolean f816k = false;

    /* renamed from: l */
    private boolean f817l = false;

    /* renamed from: o */
    private C1336b f818o;

    protected native boolean appendNativeLog(String str, String str2, String str3);

    protected native boolean appendWholeNativeLog(String str);

    protected native String getNativeKeyValueList();

    protected native String getNativeLog();

    protected native boolean putNativeKeyValue(String str, String str2);

    protected native String regist(String str, boolean z, int i);

    protected native String removeNativeKeyValue(String str);

    protected native void setNativeInfo(int i, String str);

    protected native void testCrash();

    protected native String unregist();

    /* renamed from: a */
    static /* synthetic */ boolean m560a(NativeCrashHandler nativeCrashHandler, int i, String str) {
        return nativeCrashHandler.m559a(999, str);
    }

    private NativeCrashHandler(Context context, C1323a c1323a, C1336b c1336b, C1385w c1385w, boolean z, String str) {
        this.f808c = C1388z.m791a(context);
        try {
            if (C1388z.m814a(str)) {
                str = context.getDir("bugly", 0).getAbsolutePath();
            }
        } catch (Throwable unused) {
            str = "/data/data/" + C1323a.m371a(context).f563c + "/app_bugly";
        }
        this.f818o = c1336b;
        this.f812g = str;
        this.f809d = c1323a;
        this.f810e = c1385w;
        this.f813h = z;
        this.f811f = new C1343a(context, c1323a, c1336b, C1326a.m444a());
    }

    public static synchronized NativeCrashHandler getInstance(Context context, C1323a c1323a, C1336b c1336b, C1326a c1326a, C1385w c1385w, boolean z, String str) {
        if (f803a == null) {
            f803a = new NativeCrashHandler(context, c1323a, c1336b, c1385w, z, str);
        }
        return f803a;
    }

    public static synchronized NativeCrashHandler getInstance() {
        return f803a;
    }

    public synchronized String getDumpFilePath() {
        return this.f812g;
    }

    public synchronized void setDumpFilePath(String str) {
        this.f812g = str;
    }

    public static void setShouldHandleInJava(boolean z) {
        f807p = z;
        NativeCrashHandler nativeCrashHandler = f803a;
        if (nativeCrashHandler != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(z);
            nativeCrashHandler.m559a(999, sb.toString());
        }
    }

    public static boolean isShouldHandleInJava() {
        return f807p;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:13|(1:15)(16:17|(1:19)|74|21|(1:23)|24|(1:26)|27|(1:29)(1:30)|31|(1:33)(1:34)|35|(1:37)|38|39|40)|16|74|21|(0)|24|(0)|27|(0)(0)|31|(0)(0)|35|(0)|38|39|40) */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007e A[Catch: all -> 0x008c, TryCatch #3 {all -> 0x008c, blocks: (B:21:0x0074, B:23:0x007e, B:24:0x0080, B:26:0x008a), top: B:74:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a A[Catch: all -> 0x008c, TRY_LEAVE, TryCatch #3 {all -> 0x008c, blocks: (B:21:0x0074, B:23:0x007e, B:24:0x0080, B:26:0x008a), top: B:74:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0090 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:11:0x0015, B:13:0x001f, B:15:0x0051, B:16:0x005b, B:27:0x008c, B:29:0x0090, B:31:0x009f, B:33:0x00a3, B:35:0x00b2, B:37:0x00ca, B:38:0x00e0, B:34:0x00ab, B:30:0x0098, B:17:0x0063, B:19:0x0069), top: B:69:0x0015, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0098 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:11:0x0015, B:13:0x001f, B:15:0x0051, B:16:0x005b, B:27:0x008c, B:29:0x0090, B:31:0x009f, B:33:0x00a3, B:35:0x00b2, B:37:0x00ca, B:38:0x00e0, B:34:0x00ab, B:30:0x0098, B:17:0x0063, B:19:0x0069), top: B:69:0x0015, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a3 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:11:0x0015, B:13:0x001f, B:15:0x0051, B:16:0x005b, B:27:0x008c, B:29:0x0090, B:31:0x009f, B:33:0x00a3, B:35:0x00b2, B:37:0x00ca, B:38:0x00e0, B:34:0x00ab, B:30:0x0098, B:17:0x0063, B:19:0x0069), top: B:69:0x0015, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:11:0x0015, B:13:0x001f, B:15:0x0051, B:16:0x005b, B:27:0x008c, B:29:0x0090, B:31:0x009f, B:33:0x00a3, B:35:0x00b2, B:37:0x00ca, B:38:0x00e0, B:34:0x00ab, B:30:0x0098, B:17:0x0063, B:19:0x0069), top: B:69:0x0015, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ca A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:11:0x0015, B:13:0x001f, B:15:0x0051, B:16:0x005b, B:27:0x008c, B:29:0x0090, B:31:0x009f, B:33:0x00a3, B:35:0x00b2, B:37:0x00ca, B:38:0x00e0, B:34:0x00ab, B:30:0x0098, B:17:0x0063, B:19:0x0069), top: B:69:0x0015, outer: #2 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized void m558a(boolean r11) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.m558a(boolean):void");
    }

    public synchronized void startNativeMonitor() {
        if (!this.f815j && !this.f814i) {
            String str = "Bugly";
            boolean z = !C1388z.m814a(this.f809d.f574n);
            String str2 = this.f809d.f574n;
            if (z) {
                str = str2;
            } else {
                this.f809d.getClass();
            }
            this.f815j = m561a(str, z);
            if (this.f815j || this.f814i) {
                m558a(this.f813h);
                if (f805m) {
                    setNativeAppVersion(this.f809d.f571k);
                    setNativeAppChannel(this.f809d.f573m);
                    setNativeAppPackage(this.f809d.f563c);
                    setNativeUserId(this.f809d.m395g());
                    setNativeIsAppForeground(this.f809d.m381a());
                    setNativeLaunchTime(this.f809d.f546a);
                }
                return;
            }
            return;
        }
        m558a(this.f813h);
    }

    public void checkUploadRecordCrash() {
        this.f810e.m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                if (C1388z.m811a(NativeCrashHandler.this.f808c, "native_record_lock", OkHttpUtils.DEFAULT_MILLISECONDS)) {
                    if (!NativeCrashHandler.f807p) {
                        NativeCrashHandler.m560a(NativeCrashHandler.this, 999, Bugly.SDK_IS_DEV);
                    }
                    CrashDetailBean crashDetailBeanM570a = C1344b.m570a(NativeCrashHandler.this.f808c, NativeCrashHandler.this.f812g, NativeCrashHandler.this.f811f);
                    if (crashDetailBeanM570a != null) {
                        C1386x.m766a("[Native] Get crash from native record.", new Object[0]);
                        if (!NativeCrashHandler.this.f818o.m504a(crashDetailBeanM570a)) {
                            NativeCrashHandler.this.f818o.m502a(crashDetailBeanM570a, 3000L, false);
                        }
                        C1344b.m576a(false, NativeCrashHandler.this.f812g);
                    }
                    NativeCrashHandler.this.m569a();
                    C1388z.m826b(NativeCrashHandler.this.f808c, "native_record_lock");
                    return;
                }
                C1386x.m766a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
            }
        });
    }

    /* renamed from: a */
    private static boolean m561a(String str, boolean z) {
        boolean z2;
        try {
            C1386x.m766a("[Native] Trying to load so: %s", str);
            if (z) {
                System.load(str);
            } else {
                System.loadLibrary(str);
            }
            try {
                C1386x.m766a("[Native] Successfully loaded SO: %s", str);
                return true;
            } catch (Throwable th) {
                th = th;
                z2 = true;
                C1386x.m772d(th.getMessage(), new Object[0]);
                C1386x.m772d("[Native] Failed to load so: %s", str);
                return z2;
            }
        } catch (Throwable th2) {
            th = th2;
            z2 = false;
        }
    }

    /* renamed from: c */
    private synchronized void m566c() {
        if (!this.f816k) {
            C1386x.m772d("[Native] Native crash report has already unregistered.", new Object[0]);
            return;
        }
        try {
        } catch (Throwable unused) {
            C1386x.m771c("[Native] Failed to close native crash report.", new Object[0]);
        }
        if (unregist() != null) {
            C1386x.m766a("[Native] Successfully closed native crash report.", new Object[0]);
            this.f816k = false;
            return;
        }
        try {
            C1388z.m795a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[]{Boolean.TYPE}, new Object[]{false});
            this.f816k = false;
            C1386x.m766a("[Native] Successfully closed native crash report.", new Object[0]);
            return;
        } catch (Throwable unused2) {
            C1386x.m771c("[Native] Failed to close native crash report.", new Object[0]);
            this.f815j = false;
            this.f814i = false;
            return;
        }
    }

    public void testNativeCrash() {
        if (!this.f815j) {
            C1386x.m772d("[Native] Bugly SO file has not been load.", new Object[0]);
        } else {
            testCrash();
        }
    }

    public void testNativeCrash(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        sb.append(z);
        m559a(16, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z2);
        m559a(17, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z3);
        m559a(18, sb3.toString());
        testNativeCrash();
    }

    public void dumpAnrNativeStack() {
        m559a(19, "1");
    }

    public NativeExceptionHandler getNativeExceptionHandler() {
        return this.f811f;
    }

    /* renamed from: a */
    protected final void m569a() {
        long jM818b = C1388z.m818b() - C1337c.f735g;
        long jM818b2 = C1388z.m818b() + 86400000;
        File file = new File(this.f812g);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    int i = 0;
                    int i2 = 0;
                    for (File file2 : fileArrListFiles) {
                        long jLastModified = file2.lastModified();
                        if (jLastModified < jM818b || jLastModified >= jM818b2) {
                            C1386x.m766a("[Native] Delete record file: %s", file2.getAbsolutePath());
                            i++;
                            if (file2.delete()) {
                                i2++;
                            }
                        }
                    }
                    C1386x.m771c("[Native] Number of record files overdue: %d, has deleted: %d", Integer.valueOf(i), Integer.valueOf(i2));
                }
            } catch (Throwable th) {
                C1386x.m767a(th);
            }
        }
    }

    public void removeEmptyNativeRecordFiles() {
        C1344b.m580c(this.f812g);
    }

    /* renamed from: b */
    private synchronized void m563b(boolean z) {
        if (z) {
            startNativeMonitor();
        } else {
            m566c();
        }
    }

    public synchronized boolean isUserOpened() {
        return this.f817l;
    }

    /* renamed from: c */
    private synchronized void m567c(boolean z) {
        if (this.f817l != z) {
            C1386x.m766a("user change native %b", Boolean.valueOf(z));
            this.f817l = z;
        }
    }

    public synchronized void setUserOpened(boolean z) {
        m567c(z);
        boolean zIsUserOpened = isUserOpened();
        C1326a c1326aM444a = C1326a.m444a();
        if (c1326aM444a != null) {
            zIsUserOpened = zIsUserOpened && c1326aM444a.m454c().f594e;
        }
        if (zIsUserOpened != this.f816k) {
            C1386x.m766a("native changed to %b", Boolean.valueOf(zIsUserOpened));
            m563b(zIsUserOpened);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031 A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x000b, B:8:0x001a, B:10:0x0026, B:14:0x002d, B:16:0x0031), top: B:22:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void onStrategyChanged(com.tencent.bugly.crashreport.common.strategy.StrategyBean r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L1a
            boolean r2 = r5.f594e     // Catch: java.lang.Throwable -> L43
            boolean r3 = r4.f816k     // Catch: java.lang.Throwable -> L43
            if (r2 == r3) goto L1a
            java.lang.String r2 = "server native changed to %b"
            java.lang.Object[] r3 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L43
            boolean r5 = r5.f594e     // Catch: java.lang.Throwable -> L43
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)     // Catch: java.lang.Throwable -> L43
            r3[r1] = r5     // Catch: java.lang.Throwable -> L43
            com.tencent.bugly.proguard.C1386x.m772d(r2, r3)     // Catch: java.lang.Throwable -> L43
        L1a:
            com.tencent.bugly.crashreport.common.strategy.a r5 = com.tencent.bugly.crashreport.common.strategy.C1326a.m444a()     // Catch: java.lang.Throwable -> L43
            com.tencent.bugly.crashreport.common.strategy.StrategyBean r5 = r5.m454c()     // Catch: java.lang.Throwable -> L43
            boolean r5 = r5.f594e     // Catch: java.lang.Throwable -> L43
            if (r5 == 0) goto L2c
            boolean r5 = r4.f817l     // Catch: java.lang.Throwable -> L43
            if (r5 == 0) goto L2c
            r5 = 1
            goto L2d
        L2c:
            r5 = 0
        L2d:
            boolean r2 = r4.f816k     // Catch: java.lang.Throwable -> L43
            if (r5 == r2) goto L41
            java.lang.String r2 = "native changed to %b"
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L43
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r5)     // Catch: java.lang.Throwable -> L43
            r0[r1] = r3     // Catch: java.lang.Throwable -> L43
            com.tencent.bugly.proguard.C1386x.m766a(r2, r0)     // Catch: java.lang.Throwable -> L43
            r4.m563b(r5)     // Catch: java.lang.Throwable -> L43
        L41:
            monitor-exit(r4)
            return
        L43:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.onStrategyChanged(com.tencent.bugly.crashreport.common.strategy.StrategyBean):void");
    }

    public boolean appendLogToNative(String str, String str2, String str3) {
        if ((this.f814i || this.f815j) && f805m && str != null && str2 != null && str3 != null) {
            try {
                if (this.f815j) {
                    return appendNativeLog(str, str2, str3);
                }
                Boolean bool = (Boolean) C1388z.m795a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", null, new Class[]{String.class, String.class, String.class}, new Object[]{str, str2, str3});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                f805m = false;
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    public String getLogFromNative() {
        if ((!this.f814i && !this.f815j) || !f805m) {
            return null;
        }
        try {
            if (this.f815j) {
                return getNativeLog();
            }
            return (String) C1388z.m795a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "getNativeLog", null, null, null);
        } catch (UnsatisfiedLinkError unused) {
            f805m = false;
            return null;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public boolean putKeyValueToNative(String str, String str2) {
        if ((this.f814i || this.f815j) && f805m && str != null && str2 != null) {
            try {
                if (this.f815j) {
                    return putNativeKeyValue(str, str2);
                }
                Boolean bool = (Boolean) C1388z.m795a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", null, new Class[]{String.class, String.class}, new Object[]{str, str2});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                f805m = false;
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    private boolean m559a(int i, String str) {
        if (this.f815j && f806n) {
            try {
                setNativeInfo(i, str);
                return true;
            } catch (UnsatisfiedLinkError unused) {
                f806n = false;
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    public boolean filterSigabrtSysLog() {
        return m559a(998, "true");
    }

    public boolean setNativeAppVersion(String str) {
        return m559a(10, str);
    }

    public boolean setNativeAppChannel(String str) {
        return m559a(12, str);
    }

    public boolean setNativeAppPackage(String str) {
        return m559a(13, str);
    }

    public boolean setNativeUserId(String str) {
        return m559a(11, str);
    }

    @Override // com.tencent.bugly.crashreport.InterfaceC1318a
    public boolean setNativeIsAppForeground(boolean z) {
        return m559a(14, z ? "true" : Bugly.SDK_IS_DEV);
    }

    public boolean setNativeLaunchTime(long j) {
        try {
            return m559a(15, String.valueOf(j));
        } catch (NumberFormatException e) {
            if (C1386x.m767a(e)) {
                return false;
            }
            e.printStackTrace();
            return false;
        }
    }

    public void enableCatchAnrTrace() {
        if (Build.VERSION.SDK_INT > 30 || Build.VERSION.SDK_INT < 23) {
            return;
        }
        f804b |= 2;
    }

    public boolean isEnableCatchAnrTrace() {
        return (f804b & 2) == 2;
    }
}
