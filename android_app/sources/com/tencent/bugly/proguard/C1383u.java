package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.C1315b;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.u */
/* loaded from: classes.dex */
public final class C1383u {

    /* renamed from: a */
    private static C1383u f1034a;

    /* renamed from: c */
    private final Context f1036c;

    /* renamed from: e */
    private long f1038e;

    /* renamed from: f */
    private long f1039f;

    /* renamed from: d */
    private Map<Integer, Long> f1037d = new HashMap();

    /* renamed from: g */
    private LinkedBlockingQueue<Runnable> f1040g = new LinkedBlockingQueue<>();

    /* renamed from: h */
    private LinkedBlockingQueue<Runnable> f1041h = new LinkedBlockingQueue<>();

    /* renamed from: i */
    private final Object f1042i = new Object();

    /* renamed from: j */
    private int f1043j = 0;

    /* renamed from: b */
    private final C1378p f1035b = C1378p.m707a();

    /* renamed from: b */
    static /* synthetic */ int m744b(C1383u c1383u) {
        int i = c1383u.f1043j - 1;
        c1383u.f1043j = i;
        return i;
    }

    private C1383u(Context context) {
        this.f1036c = context;
    }

    /* renamed from: a */
    public static synchronized C1383u m740a(Context context) {
        if (f1034a == null) {
            f1034a = new C1383u(context);
        }
        return f1034a;
    }

    /* renamed from: a */
    public static synchronized C1383u m739a() {
        return f1034a;
    }

    /* renamed from: a */
    public final void m749a(int i, C1358am c1358am, String str, String str2, InterfaceC1382t interfaceC1382t, long j, boolean z) {
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            m742a(new RunnableC1384v(this.f1036c, i, c1358am.f892g, C1345a.m591a((Object) c1358am), str, str2, interfaceC1382t, true, z), true, true, j);
        } catch (Throwable th2) {
            th = th2;
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m750a(int i, C1358am c1358am, String str, String str2, InterfaceC1382t interfaceC1382t, boolean z) {
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            m742a(new RunnableC1384v(this.f1036c, i, c1358am.f892g, C1345a.m591a((Object) c1358am), str, str2, interfaceC1382t, 0, 0, false, null), z, false, 0L);
        } catch (Throwable th2) {
            th = th2;
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public final long m747a(boolean z) {
        long jM819b;
        long jM818b = C1388z.m818b();
        int i = z ? 5 : 3;
        List<C1380r> listM724a = this.f1035b.m724a(i);
        if (listM724a != null && listM724a.size() > 0) {
            jM819b = 0;
            try {
                C1380r c1380r = listM724a.get(0);
                if (c1380r.f1028e >= jM818b) {
                    jM819b = C1388z.m819b(c1380r.f1030g);
                    if (i == 3) {
                        this.f1038e = jM819b;
                    } else {
                        this.f1039f = jM819b;
                    }
                    listM724a.remove(c1380r);
                }
            } catch (Throwable th) {
                C1386x.m767a(th);
            }
            if (listM724a.size() > 0) {
                this.f1035b.m726a(listM724a);
            }
        } else {
            jM819b = z ? this.f1039f : this.f1038e;
        }
        C1386x.m771c("[UploadManager] Local network consume: %d KB", Long.valueOf(jM819b / 1024));
        return jM819b;
    }

    /* renamed from: a */
    protected final synchronized void m751a(long j, boolean z) {
        int i = z ? 5 : 3;
        C1380r c1380r = new C1380r();
        c1380r.f1025b = i;
        c1380r.f1028e = C1388z.m818b();
        c1380r.f1026c = "";
        c1380r.f1027d = "";
        c1380r.f1030g = C1388z.m829c(j);
        this.f1035b.m729b(i);
        this.f1035b.m728a(c1380r);
        if (z) {
            this.f1039f = j;
        } else {
            this.f1038e = j;
        }
        C1386x.m771c("[UploadManager] Network total consume: %d KB", Long.valueOf(j / 1024));
    }

    /* renamed from: a */
    public final synchronized void m748a(int i, long j) {
        if (i < 0) {
            C1386x.m773e("[UploadManager] Unknown uploading ID: %d", Integer.valueOf(i));
            return;
        }
        this.f1037d.put(Integer.valueOf(i), Long.valueOf(j));
        C1380r c1380r = new C1380r();
        c1380r.f1025b = i;
        c1380r.f1028e = j;
        c1380r.f1026c = "";
        c1380r.f1027d = "";
        c1380r.f1030g = new byte[0];
        this.f1035b.m729b(i);
        this.f1035b.m728a(c1380r);
        C1386x.m771c("[UploadManager] Uploading(ID:%d) time: %s", Integer.valueOf(i), C1388z.m798a(j));
    }

    /* renamed from: a */
    public final synchronized long m746a(int i) {
        if (i >= 0) {
            Long l = this.f1037d.get(Integer.valueOf(i));
            if (l != null) {
                return l.longValue();
            }
        } else {
            C1386x.m773e("[UploadManager] Unknown upload ID: %d", Integer.valueOf(i));
        }
        return 0L;
    }

    /* renamed from: b */
    public final boolean m752b(int i) {
        if (C1315b.f463c) {
            C1386x.m771c("Uploading frequency will not be checked if SDK is in debug mode.", new Object[0]);
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - m746a(i);
        C1386x.m771c("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", Long.valueOf(jCurrentTimeMillis / 1000), Integer.valueOf(i));
        if (jCurrentTimeMillis >= 30000) {
            return true;
        }
        C1386x.m766a("[UploadManager] Data only be uploaded once in %d seconds.", 30L);
        return false;
    }

    /* renamed from: c */
    private void m745c(int i) {
        C1385w c1385wM758a = C1385w.m758a();
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        final LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
        synchronized (this.f1042i) {
            C1386x.m771c("[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            int size = this.f1040g.size();
            final int size2 = this.f1041h.size();
            if (size == 0 && size2 == 0) {
                C1386x.m771c("[UploadManager] There is no upload task in queue.", new Object[0]);
                return;
            }
            if (c1385wM758a == null || !c1385wM758a.m763c()) {
                size2 = 0;
            }
            for (int i2 = 0; i2 < size; i2++) {
                Runnable runnablePeek = this.f1040g.peek();
                if (runnablePeek == null) {
                    break;
                }
                try {
                    linkedBlockingQueue.put(runnablePeek);
                    this.f1040g.poll();
                } catch (Throwable th) {
                    C1386x.m773e("[UploadManager] Failed to add upload task to temp urgent queue: %s", th.getMessage());
                }
            }
            for (int i3 = 0; i3 < size2; i3++) {
                Runnable runnablePeek2 = this.f1041h.peek();
                if (runnablePeek2 == null) {
                    break;
                }
                try {
                    linkedBlockingQueue2.put(runnablePeek2);
                    this.f1041h.poll();
                } catch (Throwable th2) {
                    C1386x.m773e("[UploadManager] Failed to add upload task to temp urgent queue: %s", th2.getMessage());
                }
            }
            if (size > 0) {
                C1386x.m771c("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            for (int i4 = 0; i4 < size; i4++) {
                final Runnable runnable = (Runnable) linkedBlockingQueue.poll();
                if (runnable == null) {
                    break;
                }
                synchronized (this.f1042i) {
                    if (this.f1043j >= 2 && c1385wM758a != null) {
                        c1385wM758a.m760a(runnable);
                    } else {
                        C1386x.m766a("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
                        if (C1388z.m805a(new Runnable() { // from class: com.tencent.bugly.proguard.u.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                runnable.run();
                                synchronized (C1383u.this.f1042i) {
                                    C1383u.m744b(C1383u.this);
                                }
                            }
                        }, "BUGLY_ASYNC_UPLOAD") != null) {
                            synchronized (this.f1042i) {
                                this.f1043j++;
                            }
                        } else {
                            C1386x.m772d("[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time.", new Object[0]);
                            m743a(runnable, true);
                        }
                    }
                }
            }
            if (size2 > 0) {
                C1386x.m771c("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size2), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            if (c1385wM758a != null) {
                c1385wM758a.m760a(new Runnable(this) { // from class: com.tencent.bugly.proguard.u.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable2;
                        for (int i5 = 0; i5 < size2 && (runnable2 = (Runnable) linkedBlockingQueue2.poll()) != null; i5++) {
                            runnable2.run();
                        }
                    }
                });
            }
        }
    }

    /* renamed from: a */
    private boolean m743a(Runnable runnable, boolean z) {
        if (runnable == null) {
            C1386x.m766a("[UploadManager] Upload task should not be null", new Object[0]);
            return false;
        }
        try {
            C1386x.m771c("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            synchronized (this.f1042i) {
                if (z) {
                    this.f1040g.put(runnable);
                } else {
                    this.f1041h.put(runnable);
                }
            }
            return true;
        } catch (Throwable th) {
            C1386x.m773e("[UploadManager] Failed to add upload task to queue: %s", th.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    private void m742a(Runnable runnable, boolean z, boolean z2, long j) {
        if (runnable == null) {
            C1386x.m772d("[UploadManager] Upload task should not be null", new Object[0]);
        }
        C1386x.m771c("[UploadManager] Add upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (!z2) {
            m743a(runnable, z);
            m745c(0);
            return;
        }
        if (runnable == null) {
            C1386x.m772d("[UploadManager] Upload task should not be null", new Object[0]);
            return;
        }
        C1386x.m771c("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        Thread threadM805a = C1388z.m805a(runnable, "BUGLY_SYNC_UPLOAD");
        if (threadM805a == null) {
            C1386x.m773e("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new Object[0]);
            m743a(runnable, true);
            return;
        }
        try {
            threadM805a.join(j);
        } catch (Throwable th) {
            C1386x.m773e("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th.getMessage());
            m743a(runnable, true);
            m745c(0);
        }
    }
}
