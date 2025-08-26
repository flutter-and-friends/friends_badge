package com.tencent.bugly.crashreport.common.info;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.os.EnvironmentCompat;
import com.tencent.bugly.C1315b;
import com.tencent.bugly.crashreport.InterfaceC1318a;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.common.info.a */
/* loaded from: classes.dex */
public final class C1323a {

    /* renamed from: Z */
    private static C1323a f520Z;

    /* renamed from: B */
    public boolean f522B;

    /* renamed from: F */
    public SharedPreferences f526F;

    /* renamed from: G */
    private final Context f527G;

    /* renamed from: H */
    private String f528H;

    /* renamed from: I */
    private String f529I;

    /* renamed from: U */
    private String f541U;

    /* renamed from: c */
    public String f563c;

    /* renamed from: d */
    public final String f564d;

    /* renamed from: g */
    public final String f567g;

    /* renamed from: h */
    public final String f568h;

    /* renamed from: i */
    public final String f569i;

    /* renamed from: j */
    public long f570j;

    /* renamed from: k */
    public String f571k;

    /* renamed from: l */
    public String f572l;

    /* renamed from: m */
    public String f573m;

    /* renamed from: p */
    public List<String> f576p;

    /* renamed from: v */
    public boolean f582v;

    /* renamed from: w */
    public String f583w;

    /* renamed from: x */
    public String f584x;

    /* renamed from: y */
    public String f585y;

    /* renamed from: z */
    public String f586z;

    /* renamed from: e */
    public boolean f565e = true;

    /* renamed from: f */
    public String f566f = "3.3.9";

    /* renamed from: J */
    private String f530J = EnvironmentCompat.MEDIA_UNKNOWN;

    /* renamed from: K */
    private String f531K = "";

    /* renamed from: L */
    private String f532L = null;

    /* renamed from: M */
    private long f533M = -1;

    /* renamed from: N */
    private long f534N = -1;

    /* renamed from: O */
    private long f535O = -1;

    /* renamed from: P */
    private String f536P = null;

    /* renamed from: Q */
    private String f537Q = null;

    /* renamed from: R */
    private Map<String, PlugInBean> f538R = null;

    /* renamed from: S */
    private boolean f539S = true;

    /* renamed from: T */
    private String f540T = null;

    /* renamed from: V */
    private Boolean f542V = null;

    /* renamed from: W */
    private String f543W = null;

    /* renamed from: n */
    public String f574n = null;

    /* renamed from: o */
    public String f575o = null;

    /* renamed from: X */
    private Map<String, PlugInBean> f544X = null;

    /* renamed from: Y */
    private Map<String, PlugInBean> f545Y = null;

    /* renamed from: aa */
    private int f547aa = -1;

    /* renamed from: ab */
    private int f548ab = -1;

    /* renamed from: ac */
    private Map<String, String> f549ac = new HashMap();

    /* renamed from: ad */
    private Map<String, String> f550ad = new HashMap();

    /* renamed from: ae */
    private Map<String, String> f551ae = new HashMap();

    /* renamed from: af */
    private boolean f552af = true;

    /* renamed from: q */
    public String f577q = EnvironmentCompat.MEDIA_UNKNOWN;

    /* renamed from: r */
    public long f578r = 0;

    /* renamed from: s */
    public long f579s = 0;

    /* renamed from: t */
    public long f580t = 0;

    /* renamed from: u */
    public long f581u = 0;

    /* renamed from: A */
    public boolean f521A = false;

    /* renamed from: ag */
    private Boolean f553ag = null;

    /* renamed from: ah */
    private Boolean f554ah = null;

    /* renamed from: C */
    public HashMap<String, String> f523C = new HashMap<>();

    /* renamed from: D */
    public List<String> f524D = new ArrayList();

    /* renamed from: E */
    public InterfaceC1318a f525E = null;

    /* renamed from: ai */
    private final Object f555ai = new Object();

    /* renamed from: aj */
    private final Object f556aj = new Object();

    /* renamed from: ak */
    private final Object f557ak = new Object();

    /* renamed from: al */
    private final Object f558al = new Object();

    /* renamed from: am */
    private final Object f559am = new Object();

    /* renamed from: an */
    private final Object f560an = new Object();

    /* renamed from: ao */
    private final Object f561ao = new Object();

    /* renamed from: a */
    public final long f546a = System.currentTimeMillis();

    /* renamed from: b */
    public final byte f562b = 1;

    private C1323a(Context context) {
        this.f571k = null;
        this.f572l = null;
        this.f541U = null;
        this.f573m = null;
        this.f576p = null;
        this.f582v = false;
        this.f583w = null;
        this.f584x = null;
        this.f585y = null;
        this.f586z = "";
        this.f522B = false;
        this.f527G = C1388z.m791a(context);
        PackageInfo packageInfoM366b = AppInfo.m366b(context);
        if (packageInfoM366b != null) {
            try {
                this.f571k = packageInfoM366b.versionName;
                this.f583w = this.f571k;
                this.f584x = Integer.toString(packageInfoM366b.versionCode);
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
            }
        }
        this.f563c = AppInfo.m363a(context);
        this.f564d = AppInfo.m362a(Process.myPid());
        this.f567g = C1324b.m435k();
        this.f568h = C1324b.m416a();
        this.f572l = AppInfo.m367c(context);
        this.f569i = "Android " + C1324b.m419b() + ",level " + C1324b.m421c();
        String str = this.f568h + ";" + this.f569i;
        Map<String, String> mapM368d = AppInfo.m368d(context);
        if (mapM368d != null) {
            try {
                this.f576p = AppInfo.m364a(mapM368d);
                String str2 = mapM368d.get("BUGLY_APPID");
                if (str2 != null) {
                    this.f541U = str2;
                    m388c("APP_ID", this.f541U);
                }
                String str3 = mapM368d.get("BUGLY_APP_VERSION");
                if (str3 != null) {
                    this.f571k = str3;
                }
                String str4 = mapM368d.get("BUGLY_APP_CHANNEL");
                if (str4 != null) {
                    this.f573m = str4;
                }
                String str5 = mapM368d.get("BUGLY_ENABLE_DEBUG");
                if (str5 != null) {
                    this.f582v = str5.equalsIgnoreCase("true");
                }
                String str6 = mapM368d.get("com.tencent.rdm.uuid");
                if (str6 != null) {
                    this.f585y = str6;
                }
                String str7 = mapM368d.get("BUGLY_APP_BUILD_NO");
                if (!TextUtils.isEmpty(str7)) {
                    Integer.parseInt(str7);
                }
                String str8 = mapM368d.get("BUGLY_AREA");
                if (str8 != null) {
                    this.f586z = str8;
                }
            } catch (Throwable th2) {
                if (!C1386x.m767a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        try {
            if (!context.getDatabasePath("bugly_db_").exists()) {
                this.f522B = true;
                C1386x.m771c("App is first time to be installed on the device.", new Object[0]);
            }
        } catch (Throwable th3) {
            if (C1315b.f463c) {
                th3.printStackTrace();
            }
        }
        this.f526F = C1388z.m792a("BUGLY_COMMON_VALUES", context);
        C1386x.m771c("com info create end", new Object[0]);
    }

    /* renamed from: a */
    public final boolean m381a() {
        return this.f552af;
    }

    /* renamed from: a */
    public final void m380a(boolean z) {
        this.f552af = z;
        InterfaceC1318a interfaceC1318a = this.f525E;
        if (interfaceC1318a != null) {
            interfaceC1318a.setNativeIsAppForeground(z);
        }
    }

    /* renamed from: a */
    public static synchronized C1323a m371a(Context context) {
        if (f520Z == null) {
            f520Z = new C1323a(context);
        }
        return f520Z;
    }

    /* renamed from: b */
    public static synchronized C1323a m372b() {
        return f520Z;
    }

    /* renamed from: c */
    public final String m386c() {
        return this.f566f;
    }

    /* renamed from: d */
    public final void m389d() {
        synchronized (this.f555ai) {
            this.f528H = UUID.randomUUID().toString();
        }
    }

    /* renamed from: e */
    public final String m391e() {
        String str;
        synchronized (this.f555ai) {
            if (this.f528H == null) {
                synchronized (this.f555ai) {
                    this.f528H = UUID.randomUUID().toString();
                }
            }
            str = this.f528H;
        }
        return str;
    }

    /* renamed from: f */
    public final String m393f() {
        if (C1388z.m814a((String) null)) {
            return this.f541U;
        }
        return null;
    }

    /* renamed from: a */
    public final void m378a(String str) {
        this.f541U = str;
        m388c("APP_ID", str);
    }

    /* renamed from: g */
    public final String m395g() {
        String str;
        synchronized (this.f560an) {
            str = this.f530J;
        }
        return str;
    }

    /* renamed from: b */
    public final void m383b(String str) {
        synchronized (this.f560an) {
            if (str == null) {
                str = "10000";
            }
            this.f530J = str;
        }
    }

    /* renamed from: b */
    public final void m385b(boolean z) {
        this.f539S = z;
    }

    /* renamed from: h */
    public final String m397h() {
        String str;
        String str2 = this.f529I;
        if (str2 != null) {
            return str2;
        }
        if (this.f539S) {
            if (this.f532L == null) {
                this.f532L = C1324b.m417a(this.f527G);
            }
            str = this.f532L;
        } else {
            str = "";
        }
        this.f529I = str;
        return this.f529I;
    }

    /* renamed from: c */
    public final void m387c(String str) {
        this.f529I = str;
        synchronized (this.f561ao) {
            this.f550ad.put("E8", str);
        }
    }

    /* renamed from: d */
    public final synchronized void m390d(String str) {
        String str2 = str;
    }

    /* renamed from: i */
    public final synchronized String m398i() {
        return this.f531K;
    }

    /* renamed from: e */
    public final synchronized void m392e(String str) {
        this.f531K = str;
    }

    /* renamed from: j */
    public final long m399j() {
        if (this.f533M <= 0) {
            this.f533M = C1324b.m423d();
        }
        return this.f533M;
    }

    /* renamed from: k */
    public final long m400k() {
        if (this.f534N <= 0) {
            this.f534N = C1324b.m427f();
        }
        return this.f534N;
    }

    /* renamed from: l */
    public final long m401l() {
        if (this.f535O <= 0) {
            this.f535O = C1324b.m432h();
        }
        return this.f535O;
    }

    /* renamed from: m */
    public final String m402m() {
        if (this.f536P == null) {
            this.f536P = C1324b.m418a(this.f527G, true);
        }
        return this.f536P;
    }

    /* renamed from: n */
    public final String m403n() {
        if (this.f537Q == null) {
            this.f537Q = C1324b.m424d(this.f527G);
        }
        return this.f537Q;
    }

    /* renamed from: a */
    public final void m379a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        synchronized (this.f556aj) {
            this.f523C.put(str, str2);
        }
    }

    /* renamed from: o */
    public final String m404o() {
        try {
            Map<String, ?> all = this.f527G.getSharedPreferences("BuglySdkInfos", 0).getAll();
            if (!all.isEmpty()) {
                synchronized (this.f556aj) {
                    for (Map.Entry<String, ?> entry : all.entrySet()) {
                        try {
                            this.f523C.put(entry.getKey(), entry.getValue().toString());
                        } catch (Throwable th) {
                            C1386x.m767a(th);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            C1386x.m767a(th2);
        }
        if (!this.f523C.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry2 : this.f523C.entrySet()) {
                sb.append("[");
                sb.append(entry2.getKey());
                sb.append(",");
                sb.append(entry2.getValue());
                sb.append("] ");
            }
            C1386x.m771c("SDK_INFO = %s", sb.toString());
            m388c("SDK_INFO", sb.toString());
            return sb.toString();
        }
        C1386x.m771c("SDK_INFO is empty", new Object[0]);
        return null;
    }

    /* renamed from: p */
    public final synchronized Map<String, PlugInBean> m405p() {
        return null;
    }

    /* renamed from: q */
    public final String m406q() {
        if (this.f540T == null) {
            this.f540T = C1324b.m434j();
        }
        return this.f540T;
    }

    /* renamed from: r */
    public final Boolean m407r() {
        if (this.f542V == null) {
            this.f542V = Boolean.valueOf(C1324b.m436l());
        }
        return this.f542V;
    }

    /* renamed from: s */
    public final String m408s() {
        if (this.f543W == null) {
            this.f543W = C1324b.m422c(this.f527G);
            C1386x.m766a("ROM ID: %s", this.f543W);
        }
        return this.f543W;
    }

    /* renamed from: t */
    public final Map<String, String> m409t() {
        synchronized (this.f557ak) {
            if (this.f549ac.size() <= 0) {
                return null;
            }
            return new HashMap(this.f549ac);
        }
    }

    /* renamed from: f */
    public final String m394f(String str) {
        String strRemove;
        if (C1388z.m814a(str)) {
            C1386x.m772d("key should not be empty %s", str);
            return null;
        }
        synchronized (this.f557ak) {
            strRemove = this.f549ac.remove(str);
        }
        return strRemove;
    }

    /* renamed from: u */
    public final void m410u() {
        synchronized (this.f557ak) {
            this.f549ac.clear();
        }
    }

    /* renamed from: g */
    public final String m396g(String str) {
        String str2;
        if (C1388z.m814a(str)) {
            C1386x.m772d("key should not be empty %s", str);
            return null;
        }
        synchronized (this.f557ak) {
            str2 = this.f549ac.get(str);
        }
        return str2;
    }

    /* renamed from: b */
    public final void m384b(String str, String str2) {
        if (C1388z.m814a(str) || C1388z.m814a(str2)) {
            C1386x.m772d("key&value should not be empty %s %s", str, str2);
            return;
        }
        synchronized (this.f557ak) {
            this.f549ac.put(str, str2);
        }
    }

    /* renamed from: v */
    public final int m411v() {
        int size;
        synchronized (this.f557ak) {
            size = this.f549ac.size();
        }
        return size;
    }

    /* renamed from: w */
    public final Set<String> m412w() {
        Set<String> setKeySet;
        synchronized (this.f557ak) {
            setKeySet = this.f549ac.keySet();
        }
        return setKeySet;
    }

    /* renamed from: x */
    public final Map<String, String> m413x() {
        synchronized (this.f561ao) {
            if (this.f550ad.size() <= 0) {
                return null;
            }
            return new HashMap(this.f550ad);
        }
    }

    /* renamed from: c */
    public final void m388c(String str, String str2) {
        if (C1388z.m814a(str) || C1388z.m814a(str2)) {
            C1386x.m772d("server key&value should not be empty %s %s", str, str2);
            return;
        }
        synchronized (this.f558al) {
            this.f551ae.put(str, str2);
        }
    }

    /* renamed from: y */
    public final Map<String, String> m414y() {
        synchronized (this.f558al) {
            if (this.f551ae.size() <= 0) {
                return null;
            }
            return new HashMap(this.f551ae);
        }
    }

    /* renamed from: a */
    public final void m377a(int i) {
        synchronized (this.f559am) {
            int i2 = this.f547aa;
            if (i2 != i) {
                this.f547aa = i;
                C1386x.m766a("user scene tag %d changed to tag %d", Integer.valueOf(i2), Integer.valueOf(this.f547aa));
            }
        }
    }

    /* renamed from: z */
    public final int m415z() {
        int i;
        synchronized (this.f559am) {
            i = this.f547aa;
        }
        return i;
    }

    /* renamed from: b */
    public final void m382b(int i) {
        int i2 = this.f548ab;
        if (i2 != 24096) {
            this.f548ab = 24096;
            C1386x.m766a("server scene tag %d changed to tag %d", Integer.valueOf(i2), Integer.valueOf(this.f548ab));
        }
    }

    /* renamed from: A */
    public final int m373A() {
        return this.f548ab;
    }

    /* renamed from: B */
    public final synchronized Map<String, PlugInBean> m374B() {
        return null;
    }

    /* renamed from: C */
    public static int m370C() {
        return C1324b.m421c();
    }

    /* renamed from: D */
    public final boolean m375D() {
        if (this.f553ag == null) {
            this.f553ag = Boolean.valueOf(C1324b.m426e(this.f527G));
            C1386x.m766a("Is it a virtual machine? " + this.f553ag, new Object[0]);
        }
        return this.f553ag.booleanValue();
    }

    /* renamed from: E */
    public final boolean m376E() {
        if (this.f554ah == null) {
            this.f554ah = Boolean.valueOf(C1324b.m428f(this.f527G));
            C1386x.m766a("Does it has hook frame? " + this.f554ah, new Object[0]);
        }
        return this.f554ah.booleanValue();
    }
}
