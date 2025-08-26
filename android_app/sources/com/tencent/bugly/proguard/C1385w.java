package com.tencent.bugly.proguard;

import com.tencent.bugly.C1315b;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.w */
/* loaded from: classes.dex */
public final class C1385w {

    /* renamed from: a */
    private static final AtomicInteger f1067a = new AtomicInteger(1);

    /* renamed from: b */
    private static C1385w f1068b;

    /* renamed from: c */
    private ScheduledExecutorService f1069c;

    protected C1385w() {
        this.f1069c = null;
        this.f1069c = Executors.newScheduledThreadPool(3, new ThreadFactory(this) { // from class: com.tencent.bugly.proguard.w.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("BuglyThread-" + C1385w.f1067a.getAndIncrement());
                return thread;
            }
        });
        ScheduledExecutorService scheduledExecutorService = this.f1069c;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            C1386x.m772d("[AsyncTaskHandler] ScheduledExecutorService is not valiable!", new Object[0]);
        }
    }

    /* renamed from: a */
    public static synchronized C1385w m758a() {
        if (f1068b == null) {
            f1068b = new C1385w();
        }
        return f1068b;
    }

    /* renamed from: a */
    public final synchronized boolean m761a(Runnable runnable, long j) {
        if (!m763c()) {
            C1386x.m772d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        }
        if (runnable == null) {
            C1386x.m772d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        }
        if (j <= 0) {
            j = 0;
        }
        C1386x.m771c("[AsyncTaskHandler] Post a delay(time: %dms) task: %s", Long.valueOf(j), runnable.getClass().getName());
        try {
            this.f1069c.schedule(runnable, j, TimeUnit.MILLISECONDS);
            return true;
        } catch (Throwable th) {
            if (C1315b.f463c) {
                th.printStackTrace();
            }
            return false;
        }
    }

    /* renamed from: a */
    public final synchronized boolean m760a(Runnable runnable) {
        if (!m763c()) {
            C1386x.m772d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        }
        if (runnable == null) {
            C1386x.m772d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        }
        C1386x.m771c("[AsyncTaskHandler] Post a normal task: %s", runnable.getClass().getName());
        try {
            this.f1069c.execute(runnable);
            return true;
        } catch (Throwable th) {
            if (C1315b.f463c) {
                th.printStackTrace();
            }
            return false;
        }
    }

    /* renamed from: b */
    public final synchronized void m762b() {
        if (this.f1069c != null && !this.f1069c.isShutdown()) {
            C1386x.m771c("[AsyncTaskHandler] Close async handler.", new Object[0]);
            this.f1069c.shutdownNow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean m763c() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.concurrent.ScheduledExecutorService r0 = r1.f1069c     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            java.util.concurrent.ScheduledExecutorService r0 = r1.f1069c     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isShutdown()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.C1385w.m763c():boolean");
    }
}
