package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.info.C1324b;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1387y;
import com.tencent.bugly.proguard.C1388z;
import java.lang.Thread;
import java.util.HashMap;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.e */
/* loaded from: classes.dex */
public final class C1339e implements Thread.UncaughtExceptionHandler {

    /* renamed from: h */
    private static String f775h;

    /* renamed from: i */
    private static final Object f776i = new Object();

    /* renamed from: a */
    private Context f777a;

    /* renamed from: b */
    private C1336b f778b;

    /* renamed from: c */
    private C1326a f779c;

    /* renamed from: d */
    private C1323a f780d;

    /* renamed from: e */
    private Thread.UncaughtExceptionHandler f781e;

    /* renamed from: f */
    private Thread.UncaughtExceptionHandler f782f;

    /* renamed from: g */
    private boolean f783g = false;

    /* renamed from: j */
    private int f784j;

    public C1339e(Context context, C1336b c1336b, C1326a c1326a, C1323a c1323a) {
        this.f777a = context;
        this.f778b = c1336b;
        this.f779c = c1326a;
        this.f780d = c1323a;
    }

    /* renamed from: a */
    public final synchronized void m550a() {
        if (this.f784j >= 10) {
            C1386x.m766a("java crash handler over %d, no need set.", 10);
            return;
        }
        this.f783g = true;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (getClass().getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                C1386x.m766a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f782f = defaultUncaughtExceptionHandler;
                this.f781e = defaultUncaughtExceptionHandler;
            } else {
                C1386x.m766a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f781e = defaultUncaughtExceptionHandler;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f784j++;
        C1386x.m766a("registered java monitor: %s", toString());
    }

    /* renamed from: b */
    public final synchronized void m553b() {
        this.f783g = false;
        C1386x.m766a("close java monitor!", new Object[0]);
        if (Thread.getDefaultUncaughtExceptionHandler().getClass().getName().contains("bugly")) {
            C1386x.m766a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.f781e);
            this.f784j--;
        }
    }

    /* renamed from: b */
    private CrashDetailBean m548b(Thread thread, Throwable th, boolean z, String str, byte[] bArr) {
        String strM545a;
        if (th == null) {
            C1386x.m772d("We can do nothing with a null throwable.", new Object[0]);
            return null;
        }
        boolean zM531m = C1337c.m509a().m531m();
        String str2 = (zM531m && z) ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        if (zM531m && z) {
            C1386x.m773e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.f630C = C1324b.m429g();
        crashDetailBean.f631D = C1324b.m425e();
        crashDetailBean.f632E = C1324b.m433i();
        crashDetailBean.f633F = this.f780d.m400k();
        crashDetailBean.f634G = this.f780d.m399j();
        crashDetailBean.f635H = this.f780d.m401l();
        crashDetailBean.f674w = C1388z.m799a(this.f777a, C1337c.f733e, (String) null);
        crashDetailBean.f676y = C1387y.m779a();
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(crashDetailBean.f676y == null ? 0 : crashDetailBean.f676y.length);
        C1386x.m766a("user log size:%d", objArr);
        crashDetailBean.f653b = z ? 0 : 2;
        crashDetailBean.f656e = this.f780d.m397h();
        crashDetailBean.f657f = this.f780d.f571k;
        crashDetailBean.f658g = this.f780d.m406q();
        crashDetailBean.f664m = this.f780d.m395g();
        String name = th.getClass().getName();
        String strM549b = m549b(th, 1000);
        if (strM549b == null) {
            strM549b = "";
        }
        Object[] objArr2 = new Object[2];
        objArr2[0] = Integer.valueOf(th.getStackTrace().length);
        objArr2[1] = Boolean.valueOf(th.getCause() != null);
        C1386x.m773e("stack frame :%d, has cause %b", objArr2);
        String string = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
        Throwable cause = th;
        while (cause != null && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause != null && cause != th) {
            crashDetailBean.f665n = cause.getClass().getName();
            crashDetailBean.f666o = m549b(cause, 1000);
            if (crashDetailBean.f666o == null) {
                crashDetailBean.f666o = "";
            }
            if (cause.getStackTrace().length > 0) {
                crashDetailBean.f667p = cause.getStackTrace()[0].toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(name);
            sb.append(":");
            sb.append(strM549b);
            sb.append("\n");
            sb.append(string);
            sb.append("\n......");
            sb.append("\nCaused by:\n");
            sb.append(crashDetailBean.f665n);
            sb.append(":");
            sb.append(crashDetailBean.f666o);
            sb.append("\n");
            strM545a = m545a(cause, C1337c.f734f);
            sb.append(strM545a);
            crashDetailBean.f668q = sb.toString();
        } else {
            crashDetailBean.f665n = name;
            crashDetailBean.f666o = strM549b + str2;
            if (crashDetailBean.f666o == null) {
                crashDetailBean.f666o = "";
            }
            crashDetailBean.f667p = string;
            strM545a = m545a(th, C1337c.f734f);
            crashDetailBean.f668q = strM545a;
        }
        crashDetailBean.f669r = System.currentTimeMillis();
        crashDetailBean.f672u = C1388z.m804a(crashDetailBean.f668q.getBytes());
        try {
            crashDetailBean.f677z = C1388z.m807a(C1337c.f734f, false);
            crashDetailBean.f628A = this.f780d.f564d;
            crashDetailBean.f629B = thread.getName() + "(" + thread.getId() + ")";
            crashDetailBean.f677z.put(crashDetailBean.f629B, strM545a);
            crashDetailBean.f636I = this.f780d.m408s();
            crashDetailBean.f659h = this.f780d.m405p();
            crashDetailBean.f660i = this.f780d.m374B();
            crashDetailBean.f640M = this.f780d.f546a;
            crashDetailBean.f641N = this.f780d.m381a();
            if (z) {
                this.f778b.m507d(crashDetailBean);
            } else {
                boolean z2 = str != null && str.length() > 0;
                boolean z3 = bArr != null && bArr.length > 0;
                if (z2) {
                    crashDetailBean.f642O = new HashMap(1);
                    crashDetailBean.f642O.put("UserData", str);
                }
                if (z3) {
                    crashDetailBean.f648U = bArr;
                }
            }
            crashDetailBean.f644Q = this.f780d.m415z();
            crashDetailBean.f645R = this.f780d.m373A();
            crashDetailBean.f646S = this.f780d.m409t();
            crashDetailBean.f647T = this.f780d.m414y();
        } catch (Throwable th2) {
            C1386x.m773e("handle crash error %s", th2.toString());
        }
        return crashDetailBean;
    }

    /* renamed from: a */
    private static boolean m547a(Thread thread) {
        synchronized (f776i) {
            if (f775h != null && thread.getName().equals(f775h)) {
                return true;
            }
            f775h = thread.getName();
            return false;
        }
    }

    /* renamed from: a */
    public final void m552a(Thread thread, Throwable th, boolean z, String str, byte[] bArr) {
        if (z) {
            C1386x.m773e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (m547a(thread)) {
                C1386x.m766a("this class has handled this exception", new Object[0]);
                if (this.f782f != null) {
                    C1386x.m766a("call system handler", new Object[0]);
                    this.f782f.uncaughtException(thread, th);
                } else {
                    C1386x.m773e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                }
            }
        } else {
            C1386x.m773e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.f783g) {
                C1386x.m771c("Java crash handler is disable. Just return.", new Object[0]);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f781e;
                    if (uncaughtExceptionHandler != null && m546a(uncaughtExceptionHandler)) {
                        C1386x.m773e("sys default last handle start!", new Object[0]);
                        this.f781e.uncaughtException(thread, th);
                        C1386x.m773e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f782f != null) {
                        C1386x.m773e("system handle start!", new Object[0]);
                        this.f782f.uncaughtException(thread, th);
                        C1386x.m773e("system handle end!", new Object[0]);
                        return;
                    } else {
                        C1386x.m773e("crashreport last handle start!", new Object[0]);
                        C1386x.m773e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        C1386x.m773e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.f779c.m453b()) {
                C1386x.m772d("no remote but still store!", new Object[0]);
            }
            if (!this.f779c.m454c().f594e && this.f779c.m453b()) {
                C1386x.m773e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                C1336b.m493a(z ? "JAVA_CRASH" : "JAVA_CATCH", C1388z.m797a(), this.f780d.f564d, thread.getName(), C1388z.m802a(th), null);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f781e;
                    if (uncaughtExceptionHandler2 != null && m546a(uncaughtExceptionHandler2)) {
                        C1386x.m773e("sys default last handle start!", new Object[0]);
                        this.f781e.uncaughtException(thread, th);
                        C1386x.m773e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f782f != null) {
                        C1386x.m773e("system handle start!", new Object[0]);
                        this.f782f.uncaughtException(thread, th);
                        C1386x.m773e("system handle end!", new Object[0]);
                        return;
                    } else {
                        C1386x.m773e("crashreport last handle start!", new Object[0]);
                        C1386x.m773e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        C1386x.m773e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CrashDetailBean crashDetailBeanM548b = m548b(thread, th, z, str, bArr);
            if (crashDetailBeanM548b == null) {
                C1386x.m773e("pkg crash datas fail!", new Object[0]);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f781e;
                    if (uncaughtExceptionHandler3 != null && m546a(uncaughtExceptionHandler3)) {
                        C1386x.m773e("sys default last handle start!", new Object[0]);
                        this.f781e.uncaughtException(thread, th);
                        C1386x.m773e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f782f != null) {
                        C1386x.m773e("system handle start!", new Object[0]);
                        this.f782f.uncaughtException(thread, th);
                        C1386x.m773e("system handle end!", new Object[0]);
                        return;
                    } else {
                        C1386x.m773e("crashreport last handle start!", new Object[0]);
                        C1386x.m773e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        C1386x.m773e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            C1336b.m493a(z ? "JAVA_CRASH" : "JAVA_CATCH", C1388z.m797a(), this.f780d.f564d, thread.getName(), C1388z.m802a(th), crashDetailBeanM548b);
            if (!this.f778b.m504a(crashDetailBeanM548b)) {
                this.f778b.m502a(crashDetailBeanM548b, 3000L, z);
            }
            if (z) {
                this.f778b.m506c(crashDetailBeanM548b);
            }
            if (z) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f781e;
                if (uncaughtExceptionHandler4 != null && m546a(uncaughtExceptionHandler4)) {
                    C1386x.m773e("sys default last handle start!", new Object[0]);
                    this.f781e.uncaughtException(thread, th);
                    C1386x.m773e("sys default last handle end!", new Object[0]);
                } else if (this.f782f != null) {
                    C1386x.m773e("system handle start!", new Object[0]);
                    this.f782f.uncaughtException(thread, th);
                    C1386x.m773e("system handle end!", new Object[0]);
                } else {
                    C1386x.m773e("crashreport last handle start!", new Object[0]);
                    C1386x.m773e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                    C1386x.m773e("crashreport last handle end!", new Object[0]);
                }
            }
        } catch (Throwable th2) {
            try {
                if (!C1386x.m767a(th2)) {
                    th2.printStackTrace();
                }
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f781e;
                    if (uncaughtExceptionHandler5 != null && m546a(uncaughtExceptionHandler5)) {
                        C1386x.m773e("sys default last handle start!", new Object[0]);
                        this.f781e.uncaughtException(thread, th);
                        C1386x.m773e("sys default last handle end!", new Object[0]);
                    } else if (this.f782f != null) {
                        C1386x.m773e("system handle start!", new Object[0]);
                        this.f782f.uncaughtException(thread, th);
                        C1386x.m773e("system handle end!", new Object[0]);
                    } else {
                        C1386x.m773e("crashreport last handle start!", new Object[0]);
                        C1386x.m773e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        C1386x.m773e("crashreport last handle end!", new Object[0]);
                    }
                }
            } catch (Throwable th3) {
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f781e;
                    if (uncaughtExceptionHandler6 != null && m546a(uncaughtExceptionHandler6)) {
                        C1386x.m773e("sys default last handle start!", new Object[0]);
                        this.f781e.uncaughtException(thread, th);
                        C1386x.m773e("sys default last handle end!", new Object[0]);
                    } else if (this.f782f != null) {
                        C1386x.m773e("system handle start!", new Object[0]);
                        this.f782f.uncaughtException(thread, th);
                        C1386x.m773e("system handle end!", new Object[0]);
                    } else {
                        C1386x.m773e("crashreport last handle start!", new Object[0]);
                        C1386x.m773e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        C1386x.m773e("crashreport last handle end!", new Object[0]);
                    }
                }
                throw th3;
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (f776i) {
            m552a(thread, th, true, null, null);
        }
    }

    /* renamed from: a */
    private static boolean m546a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final synchronized void m551a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            if (strategyBean.f594e != this.f783g) {
                C1386x.m766a("java changed to %b", Boolean.valueOf(strategyBean.f594e));
                if (strategyBean.f594e) {
                    m550a();
                    return;
                }
                m553b();
            }
        }
    }

    /* renamed from: a */
    private static String m545a(Throwable th, int i) {
        if (th == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (i > 0 && sb.length() >= i) {
                        sb.append("\n[Stack over limit size :" + i + " , has been cutted !]");
                        return sb.toString();
                    }
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
        } catch (Throwable th2) {
            C1386x.m773e("gen stack error %s", th2.toString());
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static String m549b(Throwable th, int i) {
        if (th.getMessage() == null) {
            return "";
        }
        if (th.getMessage().length() <= 1000) {
            return th.getMessage();
        }
        return th.getMessage().substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
    }
}
