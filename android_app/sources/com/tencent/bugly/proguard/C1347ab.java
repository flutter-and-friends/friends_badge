package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.ab */
/* loaded from: classes.dex */
public final class C1347ab extends Thread {

    /* renamed from: a */
    private boolean f836a = false;

    /* renamed from: b */
    private boolean f837b = false;

    /* renamed from: c */
    private List<RunnableC1346aa> f838c = new ArrayList();

    /* renamed from: d */
    private List<InterfaceC1348ac> f839d = new ArrayList();

    /* renamed from: e */
    private ArrayList<RunnableC1346aa> f840e = new ArrayList<>();

    /* renamed from: a */
    public final void m606a() {
        m604a(new Handler(Looper.getMainLooper()), 5000L);
    }

    /* renamed from: b */
    public final void m609b() {
        for (int i = 0; i < this.f838c.size(); i++) {
            try {
                if (this.f838c.get(i).m602d().equals(Looper.getMainLooper().getThread().getName())) {
                    C1386x.m771c("remove handler::%s", this.f838c.get(i));
                    this.f838c.remove(i);
                }
            } catch (Exception e) {
                C1386x.m770b(e);
                return;
            }
        }
    }

    /* renamed from: a */
    private void m604a(Handler handler, long j) {
        if (handler == null) {
            C1386x.m773e("addThread handler should not be null", new Object[0]);
            return;
        }
        String name = handler.getLooper().getThread().getName();
        for (int i = 0; i < this.f838c.size(); i++) {
            try {
                if (this.f838c.get(i).m602d().equals(handler.getLooper().getThread().getName())) {
                    C1386x.m773e("addThread fail ,this thread has been added in monitor queue", new Object[0]);
                    return;
                }
            } catch (Exception e) {
                C1386x.m770b(e);
            }
        }
        this.f838c.add(new RunnableC1346aa(handler, name, 5000L));
    }

    /* renamed from: c */
    public final boolean m611c() {
        this.f836a = true;
        if (!isAlive()) {
            return false;
        }
        try {
            interrupt();
        } catch (Exception e) {
            C1386x.m770b(e);
        }
        return true;
    }

    /* renamed from: d */
    public final boolean m612d() {
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e) {
            C1386x.m770b(e);
            return false;
        }
    }

    /* renamed from: e */
    private int m605e() {
        int iMax = 0;
        for (int i = 0; i < this.f838c.size(); i++) {
            try {
                iMax = Math.max(iMax, this.f838c.get(i).m601c());
            } catch (Exception e) {
                C1386x.m770b(e);
            }
        }
        return iMax;
    }

    /* renamed from: a */
    public final void m607a(InterfaceC1348ac interfaceC1348ac) {
        if (this.f839d.contains(interfaceC1348ac)) {
            C1386x.m771c("addThreadMonitorListeners fail ,this threadMonitorListener has been added in monitor queue", new Object[0]);
        } else {
            this.f839d.add(interfaceC1348ac);
        }
    }

    /* renamed from: b */
    public final void m610b(InterfaceC1348ac interfaceC1348ac) {
        this.f839d.remove(interfaceC1348ac);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!this.f836a) {
            for (int i = 0; i < this.f838c.size(); i++) {
                try {
                    this.f838c.get(i).m598a();
                } catch (Exception e) {
                    C1386x.m770b(e);
                } catch (OutOfMemoryError e2) {
                    C1386x.m770b(e2);
                }
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            for (long jUptimeMillis2 = 2000; jUptimeMillis2 > 0 && !isInterrupted(); jUptimeMillis2 = 2000 - (SystemClock.uptimeMillis() - jUptimeMillis)) {
                sleep(jUptimeMillis2);
            }
            int iM605e = m605e();
            if (iM605e != 0 && iM605e != 1) {
                this.f840e.clear();
                for (int i2 = 0; i2 < this.f838c.size(); i2++) {
                    RunnableC1346aa runnableC1346aa = this.f838c.get(i2);
                    if (runnableC1346aa.m600b()) {
                        this.f840e.add(runnableC1346aa);
                        runnableC1346aa.m599a(LongCompanionObject.MAX_VALUE);
                    }
                }
                NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                if (nativeCrashHandler != null && nativeCrashHandler.isEnableCatchAnrTrace()) {
                    nativeCrashHandler.dumpAnrNativeStack();
                    C1386x.m771c("jni mannual dump anr trace", new Object[0]);
                } else {
                    C1386x.m771c("do not enable jni mannual dump anr trace", new Object[0]);
                }
                int i3 = 0;
                while (true) {
                    if (this.f837b) {
                        break;
                    }
                    C1386x.m771c("do not enable anr continue check", new Object[0]);
                    sleep(2000L);
                    i3++;
                    if (i3 == 15) {
                        this.f840e.clear();
                        break;
                    }
                }
                for (int i4 = 0; i4 < this.f840e.size(); i4++) {
                    RunnableC1346aa runnableC1346aa2 = this.f840e.get(i4);
                    for (int i5 = 0; i5 < this.f839d.size(); i5++) {
                        C1386x.m773e("main thread blocked,now begin to upload anr stack", new Object[0]);
                        this.f839d.get(i5).mo485a(runnableC1346aa2);
                        this.f837b = false;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m608a(boolean z) {
        this.f837b = true;
    }
}
