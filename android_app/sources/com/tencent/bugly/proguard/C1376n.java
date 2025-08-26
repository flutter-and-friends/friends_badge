package com.tencent.bugly.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.common.info.C1323a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.n */
/* loaded from: classes.dex */
public final class C1376n {

    /* renamed from: a */
    public static final long f988a = System.currentTimeMillis();

    /* renamed from: b */
    private static C1376n f989b;

    /* renamed from: c */
    private Context f990c;

    /* renamed from: f */
    private SharedPreferences f993f;

    /* renamed from: e */
    private Map<Integer, Map<String, C1375m>> f992e = new HashMap();

    /* renamed from: d */
    private String f991d = C1323a.m372b().f564d;

    private C1376n(Context context) {
        this.f990c = context;
        this.f993f = context.getSharedPreferences("crashrecord", 0);
    }

    /* renamed from: a */
    public static synchronized C1376n m686a(Context context) {
        if (f989b == null) {
            f989b = new C1376n(context);
        }
        return f989b;
    }

    /* renamed from: a */
    public static synchronized C1376n m685a() {
        return f989b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public synchronized boolean m692b(int i) {
        try {
            List<C1375m> listM695c = m695c(i);
            if (listM695c == null) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (C1375m c1375m : listM695c) {
                if (c1375m.f982b != null && c1375m.f982b.equalsIgnoreCase(this.f991d) && c1375m.f984d > 0) {
                    arrayList.add(c1375m);
                }
                if (c1375m.f983c + 86400000 < jCurrentTimeMillis) {
                    arrayList2.add(c1375m);
                }
            }
            Collections.sort(arrayList);
            if (arrayList.size() >= 2) {
                if (arrayList.size() <= 0 || ((C1375m) arrayList.get(arrayList.size() - 1)).f983c + 86400000 >= jCurrentTimeMillis) {
                    return true;
                }
                listM695c.clear();
                m689a(i, (int) listM695c);
                return false;
            }
            listM695c.removeAll(arrayList2);
            m689a(i, (int) listM695c);
            return false;
        } catch (Exception unused) {
            C1386x.m773e("isFrequentCrash failed", new Object[0]);
            return false;
        }
    }

    /* renamed from: a */
    public final void m696a(int i, final int i2) {
        final int i3 = 1004;
        C1385w.m758a().m760a(new Runnable() { // from class: com.tencent.bugly.proguard.n.1
            @Override // java.lang.Runnable
            public final void run() {
                C1375m c1375m;
                try {
                    if (TextUtils.isEmpty(C1376n.this.f991d)) {
                        return;
                    }
                    List<C1375m> listM695c = C1376n.this.m695c(i3);
                    if (listM695c == null) {
                        listM695c = new ArrayList();
                    }
                    if (C1376n.this.f992e.get(Integer.valueOf(i3)) == null) {
                        C1376n.this.f992e.put(Integer.valueOf(i3), new HashMap());
                    }
                    if (((Map) C1376n.this.f992e.get(Integer.valueOf(i3))).get(C1376n.this.f991d) != null) {
                        c1375m = (C1375m) ((Map) C1376n.this.f992e.get(Integer.valueOf(i3))).get(C1376n.this.f991d);
                        c1375m.f984d = i2;
                    } else {
                        c1375m = new C1375m();
                        c1375m.f981a = i3;
                        c1375m.f987g = C1376n.f988a;
                        c1375m.f982b = C1376n.this.f991d;
                        c1375m.f986f = C1323a.m372b().f571k;
                        c1375m.f985e = C1323a.m372b().f566f;
                        c1375m.f983c = System.currentTimeMillis();
                        c1375m.f984d = i2;
                        ((Map) C1376n.this.f992e.get(Integer.valueOf(i3))).put(C1376n.this.f991d, c1375m);
                    }
                    ArrayList arrayList = new ArrayList();
                    boolean z = false;
                    for (C1375m c1375m2 : listM695c) {
                        if (c1375m2.f987g == c1375m.f987g && c1375m2.f982b != null && c1375m2.f982b.equalsIgnoreCase(c1375m.f982b)) {
                            z = true;
                            c1375m2.f984d = c1375m.f984d;
                        }
                        if ((c1375m2.f985e != null && !c1375m2.f985e.equalsIgnoreCase(c1375m.f985e)) || ((c1375m2.f986f != null && !c1375m2.f986f.equalsIgnoreCase(c1375m.f986f)) || c1375m2.f984d <= 0)) {
                            arrayList.add(c1375m2);
                        }
                    }
                    listM695c.removeAll(arrayList);
                    if (!z) {
                        listM695c.add(c1375m);
                    }
                    C1376n.this.m689a(i3, (int) listM695c);
                } catch (Exception unused) {
                    C1386x.m773e("saveCrashRecord failed", new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046 A[Catch: all -> 0x005c, Exception -> 0x005e, PHI: r6
      0x0046: PHI (r6v10 java.io.ObjectInputStream) = (r6v9 java.io.ObjectInputStream), (r6v11 java.io.ObjectInputStream) binds: [B:17:0x0044, B:22:0x0052] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x005e, blocks: (B:4:0x0003, B:10:0x0034, B:18:0x0046, B:26:0x0058, B:27:0x005b), top: B:37:0x0003, outer: #4 }] */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized <T extends java.util.List<?>> T m695c(int r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            android.content.Context r3 = r5.f990c     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r4 = "crashrecord"
            java.io.File r3 = r3.getDir(r4, r1)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r4.<init>()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r4.append(r6)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r2.<init>(r3, r6)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            boolean r6 = r2.exists()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r6 != 0) goto L24
            monitor-exit(r5)
            return r0
        L24:
            java.io.ObjectInputStream r6 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            r6.<init>(r3)     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            java.lang.Object r2 = r6.readObject()     // Catch: java.lang.ClassNotFoundException -> L3d java.io.IOException -> L4b java.lang.Throwable -> L55
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.ClassNotFoundException -> L3d java.io.IOException -> L4b java.lang.Throwable -> L55
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            monitor-exit(r5)
            return r2
        L39:
            r2 = move-exception
            r6 = r0
            goto L56
        L3c:
            r6 = r0
        L3d:
            java.lang.String r2 = "get object error"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L55
            com.tencent.bugly.proguard.C1386x.m766a(r2, r3)     // Catch: java.lang.Throwable -> L55
            if (r6 == 0) goto L65
        L46:
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            goto L65
        L4a:
            r6 = r0
        L4b:
            java.lang.String r2 = "open record file error"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L55
            com.tencent.bugly.proguard.C1386x.m766a(r2, r3)     // Catch: java.lang.Throwable -> L55
            if (r6 == 0) goto L65
            goto L46
        L55:
            r2 = move-exception
        L56:
            if (r6 == 0) goto L5b
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
        L5b:
            throw r2     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
        L5c:
            r6 = move-exception
            goto L67
        L5e:
            java.lang.String r6 = "readCrashRecord error"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5c
            com.tencent.bugly.proguard.C1386x.m773e(r6, r1)     // Catch: java.lang.Throwable -> L5c
        L65:
            monitor-exit(r5)
            return r0
        L67:
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.C1376n.m695c(int):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized <T extends List<?>> void m689a(int i, T t) {
        File dir;
        StringBuilder sb;
        ObjectOutputStream objectOutputStream;
        if (t == null) {
            return;
        }
        try {
            dir = this.f990c.getDir("crashrecord", 0);
            sb = new StringBuilder();
            sb.append(i);
            objectOutputStream = null;
        } catch (Exception unused) {
            C1386x.m773e("writeCrashRecord error", new Object[0]);
        }
        try {
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(new File(dir, sb.toString())));
                try {
                    objectOutputStream2.writeObject(t);
                    objectOutputStream2.close();
                } catch (IOException e) {
                    e = e;
                    objectOutputStream = objectOutputStream2;
                    e.printStackTrace();
                    C1386x.m766a("open record file error", new Object[0]);
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    public final synchronized boolean m697a(final int i) {
        boolean z;
        z = true;
        try {
            z = this.f993f.getBoolean(i + "_" + this.f991d, true);
            C1385w.m758a().m760a(new Runnable() { // from class: com.tencent.bugly.proguard.n.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean zM692b = C1376n.this.m692b(i);
                    C1376n.this.f993f.edit().putBoolean(i + "_" + C1376n.this.f991d, !zM692b).commit();
                }
            });
        } catch (Exception unused) {
            C1386x.m773e("canInit error", new Object[0]);
            return z;
        }
        return z;
    }
}
