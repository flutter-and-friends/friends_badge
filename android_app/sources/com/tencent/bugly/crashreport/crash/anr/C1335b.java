package com.tencent.bugly.crashreport.crash.anr;

import android.app.ActivityManager;
import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.os.Build;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import cn.highlight.p004tx.ble.BleManager;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.info.C1324b;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.crash.C1336b;
import com.tencent.bugly.crashreport.crash.C1337c;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.proguard.C1347ab;
import com.tencent.bugly.proguard.C1378p;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1387y;
import com.tencent.bugly.proguard.C1388z;
import com.tencent.bugly.proguard.InterfaceC1348ac;
import com.tencent.bugly.proguard.RunnableC1346aa;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.anr.b */
/* loaded from: classes.dex */
public final class C1335b implements InterfaceC1348ac {

    /* renamed from: m */
    private static C1335b f700m;

    /* renamed from: c */
    private final Context f703c;

    /* renamed from: d */
    private final C1323a f704d;

    /* renamed from: e */
    private final C1385w f705e;

    /* renamed from: f */
    private String f706f;

    /* renamed from: g */
    private final C1336b f707g;

    /* renamed from: h */
    private FileObserver f708h;

    /* renamed from: j */
    private C1347ab f710j;

    /* renamed from: k */
    private int f711k;

    /* renamed from: a */
    private AtomicInteger f701a = new AtomicInteger(0);

    /* renamed from: b */
    private long f702b = -1;

    /* renamed from: i */
    private boolean f709i = true;

    /* renamed from: l */
    private ActivityManager.ProcessErrorStateInfo f712l = new ActivityManager.ProcessErrorStateInfo();

    /* renamed from: a */
    static /* synthetic */ boolean m470a(C1335b c1335b, String str) {
        return str.startsWith("bugly_trace_");
    }

    /* renamed from: a */
    public static C1335b m467a(Context context, C1326a c1326a, C1323a c1323a, C1385w c1385w, C1378p c1378p, C1336b c1336b, BuglyStrategy.C1313a c1313a) {
        if (f700m == null) {
            f700m = new C1335b(context, c1326a, c1323a, c1385w, c1336b);
        }
        return f700m;
    }

    private C1335b(Context context, C1326a c1326a, C1323a c1323a, C1385w c1385w, C1336b c1336b) {
        this.f703c = C1388z.m791a(context);
        this.f706f = context.getDir("bugly", 0).getAbsolutePath();
        this.f704d = c1323a;
        this.f705e = c1385w;
        this.f707g = c1336b;
    }

    /* renamed from: a */
    private ActivityManager.ProcessErrorStateInfo m465a(Context context, long j) {
        try {
            C1386x.m771c("to find!", new Object[0]);
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            int i = 0;
            while (true) {
                C1386x.m771c("waiting!", new Object[0]);
                List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
                if (processesInErrorState != null) {
                    for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                        if (processErrorStateInfo.condition == 2) {
                            C1386x.m771c("found!", new Object[0]);
                            return processErrorStateInfo;
                        }
                    }
                }
                C1388z.m823b(500L);
                int i2 = i + 1;
                if (i >= 40) {
                    C1386x.m771c("end!", new Object[0]);
                    return null;
                }
                i = i2;
            }
        } catch (Exception e) {
            C1386x.m770b(e);
            return null;
        } catch (OutOfMemoryError e2) {
            this.f712l.pid = Process.myPid();
            this.f712l.shortMsg = "bugly sdk waitForAnrProcessStateChanged encount error:" + e2.getMessage();
            return this.f712l;
        }
    }

    /* renamed from: a */
    private CrashDetailBean m466a(C1334a c1334a) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.f630C = C1324b.m429g();
            crashDetailBean.f631D = C1324b.m425e();
            crashDetailBean.f632E = C1324b.m433i();
            crashDetailBean.f633F = this.f704d.m400k();
            crashDetailBean.f634G = this.f704d.m399j();
            crashDetailBean.f635H = this.f704d.m401l();
            Context context = this.f703c;
            if (!C1324b.m437m()) {
                crashDetailBean.f674w = C1388z.m799a(this.f703c, C1337c.f733e, (String) null);
            }
            crashDetailBean.f653b = 3;
            crashDetailBean.f656e = this.f704d.m397h();
            crashDetailBean.f657f = this.f704d.f571k;
            crashDetailBean.f658g = this.f704d.m406q();
            crashDetailBean.f664m = this.f704d.m395g();
            crashDetailBean.f665n = "ANR_EXCEPTION";
            crashDetailBean.f666o = c1334a.f698f;
            crashDetailBean.f668q = c1334a.f699g;
            crashDetailBean.f643P = new HashMap();
            crashDetailBean.f643P.put("BUGLY_CR_01", c1334a.f697e);
            int iIndexOf = crashDetailBean.f668q != null ? crashDetailBean.f668q.indexOf("\n") : -1;
            crashDetailBean.f667p = iIndexOf > 0 ? crashDetailBean.f668q.substring(0, iIndexOf) : "GET_FAIL";
            crashDetailBean.f669r = c1334a.f695c;
            if (crashDetailBean.f668q != null) {
                crashDetailBean.f672u = C1388z.m804a(crashDetailBean.f668q.getBytes());
            }
            crashDetailBean.f677z = c1334a.f694b;
            crashDetailBean.f628A = c1334a.f693a;
            crashDetailBean.f629B = "main(1)";
            crashDetailBean.f636I = this.f704d.m408s();
            crashDetailBean.f659h = this.f704d.m405p();
            crashDetailBean.f660i = this.f704d.m374B();
            crashDetailBean.f673v = c1334a.f696d;
            crashDetailBean.f639L = this.f704d.f575o;
            crashDetailBean.f640M = this.f704d.f546a;
            crashDetailBean.f641N = this.f704d.m381a();
            Context context2 = this.f703c;
            if (!C1324b.m437m()) {
                this.f707g.m507d(crashDetailBean);
            }
            crashDetailBean.f644Q = this.f704d.m415z();
            crashDetailBean.f645R = this.f704d.m373A();
            crashDetailBean.f646S = this.f704d.m409t();
            crashDetailBean.f647T = this.f704d.m414y();
            crashDetailBean.f676y = C1387y.m779a();
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    /* renamed from: a */
    private static boolean m471a(String str, String str2, String str3) throws Throwable {
        BufferedWriter bufferedWriter;
        TraceFileHelper.C1332a targetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (targetDumpInfo == null || targetDumpInfo.f692d == null || targetDumpInfo.f692d.size() <= 0) {
            C1386x.m773e("not found trace dump for %s", str3);
            return false;
        }
        File file = new File(str2);
        try {
            if (!file.exists()) {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                file.createNewFile();
            }
            if (!file.exists() || !file.canWrite()) {
                C1386x.m773e("backup file create fail %s", str2);
                return false;
            }
            BufferedWriter bufferedWriter2 = null;
            try {
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(file, false));
                    try {
                        String[] strArr = targetDumpInfo.f692d.get("main");
                        int i = 3;
                        if (strArr != null && strArr.length >= 3) {
                            String str4 = strArr[0];
                            String str5 = strArr[1];
                            bufferedWriter.write("\"main\" tid=" + strArr[2] + " :\n" + str4 + "\n" + str5 + "\n\n");
                            bufferedWriter.flush();
                        }
                        for (Map.Entry<String, String[]> entry : targetDumpInfo.f692d.entrySet()) {
                            if (!entry.getKey().equals("main")) {
                                if (entry.getValue() != null && entry.getValue().length >= i) {
                                    String str6 = entry.getValue()[0];
                                    String str7 = entry.getValue()[1];
                                    bufferedWriter.write("\"" + entry.getKey() + "\" tid=" + entry.getValue()[2] + " :\n" + str6 + "\n" + str7 + "\n\n");
                                    bufferedWriter.flush();
                                }
                                i = 3;
                            }
                        }
                        try {
                            bufferedWriter.close();
                        } catch (IOException e) {
                            if (!C1386x.m767a(e)) {
                                e.printStackTrace();
                            }
                        }
                        return true;
                    } catch (IOException e2) {
                        e = e2;
                        bufferedWriter2 = bufferedWriter;
                        if (!C1386x.m767a(e)) {
                            e.printStackTrace();
                        }
                        C1386x.m773e("dump trace fail %s", e.getClass().getName() + ":" + e.getMessage());
                        if (bufferedWriter2 != null) {
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e3) {
                                if (!C1386x.m767a(e3)) {
                                    e3.printStackTrace();
                                }
                            }
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        Throwable th2 = th;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                                throw th2;
                            } catch (IOException e4) {
                                if (!C1386x.m767a(e4)) {
                                    e4.printStackTrace();
                                    throw th2;
                                }
                                throw th2;
                            }
                        }
                        throw th2;
                    }
                } catch (IOException e5) {
                    e = e5;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter = null;
            }
        } catch (Exception e6) {
            if (!C1386x.m767a(e6)) {
                e6.printStackTrace();
            }
            C1386x.m773e("backup file create error! %s  %s", e6.getClass().getName() + ":" + e6.getMessage(), str2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m484a() {
        return this.f701a.get() != 0;
    }

    /* renamed from: a */
    private boolean m469a(Context context, String str, ActivityManager.ProcessErrorStateInfo processErrorStateInfo, long j, Map<String, String> map) {
        C1334a c1334a = new C1334a();
        c1334a.f695c = j;
        c1334a.f693a = processErrorStateInfo != null ? processErrorStateInfo.processName : AppInfo.m362a(Process.myPid());
        c1334a.f698f = processErrorStateInfo != null ? processErrorStateInfo.shortMsg : "";
        c1334a.f697e = processErrorStateInfo != null ? processErrorStateInfo.longMsg : "";
        c1334a.f694b = map;
        Thread thread = Looper.getMainLooper().getThread();
        if (map != null) {
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (next.startsWith(thread.getName())) {
                    c1334a.f699g = map.get(next);
                    break;
                }
            }
        }
        if (TextUtils.isEmpty(c1334a.f699g)) {
            c1334a.f699g = "main stack is null , some error may be encountered.";
        }
        Object[] objArr = new Object[7];
        objArr[0] = Long.valueOf(c1334a.f695c);
        objArr[1] = c1334a.f696d;
        objArr[2] = c1334a.f693a;
        objArr[3] = c1334a.f699g;
        objArr[4] = c1334a.f698f;
        objArr[5] = c1334a.f697e;
        objArr[6] = Integer.valueOf(c1334a.f694b == null ? 0 : c1334a.f694b.size());
        C1386x.m771c("anr tm:%d\ntr:%s\nproc:%s\nmain stack:%s\nsMsg:%s\n lMsg:%s\n threads:%d", objArr);
        C1386x.m766a("found visiable anr , start to upload!", new Object[0]);
        CrashDetailBean crashDetailBeanM466a = m466a(c1334a);
        if (crashDetailBeanM466a == null) {
            C1386x.m773e("pack anr fail!", new Object[0]);
            return false;
        }
        C1337c.m509a().m516a(crashDetailBeanM466a);
        if (crashDetailBeanM466a.f652a >= 0) {
            C1386x.m766a("backup anr record success!", new Object[0]);
        } else {
            C1386x.m772d("backup anr record fail!", new Object[0]);
        }
        if (str != null && new File(str).exists()) {
            c1334a.f696d = new File(this.f706f, "bugly_trace_" + j + ".txt").getAbsolutePath();
            this.f701a.set(3);
            if (m471a(str, c1334a.f696d, c1334a.f693a)) {
                C1386x.m766a("backup trace success", new Object[0]);
            }
        } else {
            File fileM479h = m479h();
            C1386x.m766a("traceFile is %s", fileM479h);
            if (fileM479h != null) {
                crashDetailBeanM466a.f673v = fileM479h.getAbsolutePath();
            }
        }
        C1336b.m493a("ANR", C1388z.m797a(), c1334a.f693a, "main", c1334a.f699g, crashDetailBeanM466a);
        if (!this.f707g.m504a(crashDetailBeanM466a)) {
            this.f707g.m502a(crashDetailBeanM466a, 3000L, true);
        }
        this.f707g.m506c(crashDetailBeanM466a);
        return true;
    }

    /* renamed from: a */
    public final void m482a(String str) {
        synchronized (this) {
            if (this.f701a.get() != 0) {
                C1386x.m771c("trace started return ", new Object[0]);
                return;
            }
            this.f701a.set(1);
            try {
                C1386x.m771c("read trace first dump for create time!", new Object[0]);
                TraceFileHelper.C1332a firstDumpInfo = TraceFileHelper.readFirstDumpInfo(str, false);
                long jCurrentTimeMillis = firstDumpInfo != null ? firstDumpInfo.f691c : -1L;
                if (jCurrentTimeMillis == -1) {
                    C1386x.m772d("trace dump fail could not get time!", new Object[0]);
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                long j = jCurrentTimeMillis;
                if (Math.abs(j - this.f702b) < OkHttpUtils.DEFAULT_MILLISECONDS) {
                    C1386x.m772d("should not process ANR too Fre in %d", Integer.valueOf(BleManager.DEFAULT_SCAN_TIME));
                } else {
                    this.f702b = j;
                    this.f701a.set(1);
                    try {
                        Map<String, String> mapM807a = C1388z.m807a(C1337c.f734f, false);
                        if (mapM807a == null || mapM807a.size() <= 0) {
                            C1386x.m772d("can't get all thread skip this anr", new Object[0]);
                        } else {
                            this.f712l = m465a(this.f703c, 20000L);
                            if (this.f712l == null) {
                                C1386x.m771c("proc state is unvisiable!", new Object[0]);
                            } else if (this.f712l.pid != Process.myPid()) {
                                C1386x.m771c("not mind proc!", this.f712l.processName);
                            } else {
                                C1386x.m766a("found visiable anr , start to process!", new Object[0]);
                                m469a(this.f703c, str, this.f712l, j, mapM807a);
                            }
                        }
                    } catch (Throwable th) {
                        C1386x.m767a(th);
                        C1386x.m773e("get all thread stack fail!", new Object[0]);
                    }
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    /* renamed from: d */
    private synchronized void m475d() {
        if (m477f()) {
            C1386x.m772d("start when started!", new Object[0]);
            return;
        }
        this.f708h = new FileObserver("/data/anr/", 8) { // from class: com.tencent.bugly.crashreport.crash.anr.b.1
            @Override // android.os.FileObserver
            public final void onEvent(int i, String str) {
                if (str == null) {
                    return;
                }
                final String str2 = "/data/anr/" + str;
                C1386x.m772d("watching file %s", str2);
                if (str2.contains("trace")) {
                    C1335b.this.f705e.m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1335b.this.m482a(str2);
                        }
                    });
                } else {
                    C1386x.m772d("not anr file %s", str2);
                }
            }
        };
        try {
            this.f708h.startWatching();
            C1386x.m766a("start anr monitor!", new Object[0]);
            this.f705e.m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    C1335b.this.m486b();
                }
            });
        } catch (Throwable th) {
            this.f708h = null;
            C1386x.m772d("start anr monitor failed!", new Object[0]);
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: e */
    private synchronized void m476e() {
        if (!m477f()) {
            C1386x.m772d("close when closed!", new Object[0]);
            return;
        }
        try {
            this.f708h.stopWatching();
            this.f708h = null;
            C1386x.m772d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            C1386x.m772d("stop anr monitor failed!", new Object[0]);
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: f */
    private synchronized boolean m477f() {
        return this.f708h != null;
    }

    /* renamed from: b */
    private synchronized void m473b(boolean z) {
        if (Build.VERSION.SDK_INT <= 19) {
            if (z) {
                m475d();
                return;
            } else {
                m476e();
                return;
            }
        }
        if (z) {
            m480i();
        } else {
            m481j();
        }
    }

    /* renamed from: g */
    private synchronized boolean m478g() {
        return this.f709i;
    }

    /* renamed from: c */
    private synchronized void m474c(boolean z) {
        if (this.f709i != z) {
            C1386x.m766a("user change anr %b", Boolean.valueOf(z));
            this.f709i = z;
        }
    }

    /* renamed from: a */
    public final void m483a(boolean z) {
        m474c(z);
        boolean zM478g = m478g();
        C1326a c1326aM444a = C1326a.m444a();
        if (c1326aM444a != null) {
            zM478g = zM478g && c1326aM444a.m454c().f594e;
        }
        if (zM478g != m477f()) {
            C1386x.m766a("anr changed to %b", Boolean.valueOf(zM478g));
            m473b(zM478g);
        }
    }

    /* renamed from: b */
    protected final void m486b() {
        int iIndexOf;
        long jM818b = C1388z.m818b() - C1337c.f735g;
        File file = new File(this.f706f);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    int i = 0;
                    int i2 = 0;
                    for (File file2 : fileArrListFiles) {
                        String name = file2.getName();
                        boolean z = true;
                        if (name.startsWith("bugly_trace_") || name.startsWith("bugly_trace_")) {
                            i2 = 12;
                        } else {
                            z = false;
                        }
                        C1386x.m771c("Number Trace file : " + name, new Object[0]);
                        if (z) {
                            try {
                                iIndexOf = name.indexOf(".txt");
                            } catch (Throwable unused) {
                                C1386x.m771c("Trace file that has invalid format: " + name, new Object[0]);
                            }
                            if (iIndexOf <= 0 || Long.parseLong(name.substring(i2, iIndexOf)) < jM818b) {
                                if (file2.delete()) {
                                    i++;
                                }
                            }
                        }
                    }
                    C1386x.m771c("Number of overdue trace files that has deleted: " + i, new Object[0]);
                }
            } catch (Throwable th) {
                C1386x.m767a(th);
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m487c() {
        C1386x.m772d("customer decides whether to open or close.", new Object[0]);
    }

    @Override // com.tencent.bugly.proguard.InterfaceC1348ac
    /* renamed from: a */
    public final boolean mo485a(RunnableC1346aa runnableC1346aa) throws IOException {
        Map<String, String> map = new HashMap<>();
        if (runnableC1346aa.m603e().equals(Looper.getMainLooper())) {
            try {
                map = C1388z.m807a(PropertyID.WEDGE_INTENT_ACTION_NAME, false);
            } catch (Throwable th) {
                C1386x.m770b(th);
                map.put("main", th.getMessage());
            }
            Map<String, String> map2 = map;
            C1386x.m771c("onThreadBlock found visiable anr , start to process!", new Object[0]);
            String strM422c = C1324b.m422c(this.f703c);
            if (!TextUtils.isEmpty(strM422c) && (strM422c.contains("XiaoMi") || strM422c.contains("samsung"))) {
                this.f712l = m465a(this.f703c, 20000L);
            }
            m469a(this.f703c, "", this.f712l, System.currentTimeMillis(), map2);
        } else {
            C1386x.m771c("anr handler onThreadBlock only care main thread ,current thread is: %s", runnableC1346aa.m602d());
        }
        return true;
    }

    /* renamed from: h */
    private File m479h() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = new File(this.f706f);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    int i = 24;
                    int length = fileArrListFiles.length;
                    int i2 = 0;
                    while (i2 < length) {
                        File file2 = fileArrListFiles[i2];
                        String name = file2.getName();
                        if (name.startsWith("jni_mannual_bugly_trace_")) {
                            try {
                                int iIndexOf = name.indexOf(".txt");
                                if (iIndexOf > 0) {
                                    long j = Long.parseLong(name.substring(i, iIndexOf));
                                    long j2 = (jCurrentTimeMillis - j) / 1000;
                                    C1386x.m771c("current time %d trace time is %d s", Long.valueOf(jCurrentTimeMillis), Long.valueOf(j));
                                    C1386x.m771c("current time minus trace time is %d s", Long.valueOf(j2));
                                    if (j2 < 30) {
                                        return file2;
                                    }
                                } else {
                                    continue;
                                }
                            } catch (Throwable unused) {
                                C1386x.m771c("Trace file that has invalid format: " + name, new Object[0]);
                            }
                        }
                        i2++;
                        i = 24;
                    }
                }
                return null;
            } catch (Throwable th) {
                C1386x.m767a(th);
                return null;
            }
        }
        return null;
    }

    /* renamed from: i */
    private synchronized void m480i() {
        if (m477f()) {
            C1386x.m772d("start when started!", new Object[0]);
            return;
        }
        if (TextUtils.isEmpty(this.f706f)) {
            return;
        }
        if (this.f710j == null || !this.f710j.isAlive()) {
            this.f710j = new C1347ab();
            C1347ab c1347ab = this.f710j;
            StringBuilder sb = new StringBuilder("Bugly-ThreadMonitor");
            int i = this.f711k;
            this.f711k = i + 1;
            sb.append(i);
            c1347ab.setName(sb.toString());
            this.f710j.m606a();
            this.f710j.m607a(this);
            this.f710j.m612d();
            this.f705e.m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    C1335b.this.m486b();
                }
            });
        }
        this.f708h = new FileObserver(this.f706f, 256) { // from class: com.tencent.bugly.crashreport.crash.anr.b.4
            @Override // android.os.FileObserver
            public final void onEvent(int i2, String str) {
                if (str == null) {
                    return;
                }
                C1386x.m772d("startWatchingPrivateAnrDir %s", str);
                if (C1335b.m470a(C1335b.this, str)) {
                    if (C1335b.this.f710j != null) {
                        C1335b.this.f710j.m608a(true);
                        return;
                    }
                    return;
                }
                C1386x.m771c("trace file not caused by sigquit , ignore ", new Object[0]);
            }
        };
        try {
            this.f708h.startWatching();
            C1386x.m766a("startWatchingPrivateAnrDir! dumFilePath is %s", this.f706f);
            this.f705e.m760a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.5
                @Override // java.lang.Runnable
                public final void run() {
                    C1335b.this.m486b();
                }
            });
        } catch (Throwable th) {
            this.f708h = null;
            C1386x.m772d("startWatchingPrivateAnrDir failed!", new Object[0]);
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: j */
    private synchronized void m481j() {
        if (!m477f()) {
            C1386x.m772d("close when closed!", new Object[0]);
            return;
        }
        if (this.f710j != null) {
            this.f710j.m611c();
            this.f710j.m609b();
            this.f710j.m610b(this);
            this.f710j = null;
        }
        C1386x.m766a("stopWatchingPrivateAnrDir", new Object[0]);
        try {
            this.f708h.stopWatching();
            this.f708h = null;
            C1386x.m772d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            C1386x.m772d("stop anr monitor failed!", new Object[0]);
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }
}
