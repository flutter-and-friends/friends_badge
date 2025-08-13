package com.tencent.bugly.crashreport.crash;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.C1315b;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.AbstractC1373k;
import com.tencent.bugly.proguard.C1345a;
import com.tencent.bugly.proguard.C1353ah;
import com.tencent.bugly.proguard.C1355aj;
import com.tencent.bugly.proguard.C1356ak;
import com.tencent.bugly.proguard.C1357al;
import com.tencent.bugly.proguard.C1358am;
import com.tencent.bugly.proguard.C1378p;
import com.tencent.bugly.proguard.C1380r;
import com.tencent.bugly.proguard.C1383u;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import com.tencent.bugly.proguard.InterfaceC1377o;
import com.tencent.bugly.proguard.InterfaceC1382t;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.crash.b */
/* loaded from: classes.dex */
public final class C1336b {

    /* renamed from: a */
    private static int f720a;

    /* renamed from: b */
    private Context f721b;

    /* renamed from: c */
    private C1383u f722c;

    /* renamed from: d */
    private C1378p f723d;

    /* renamed from: e */
    private C1326a f724e;

    /* renamed from: f */
    private InterfaceC1377o f725f;

    /* renamed from: g */
    private BuglyStrategy.C1313a f726g;

    public C1336b(int i, Context context, C1383u c1383u, C1378p c1378p, C1326a c1326a, BuglyStrategy.C1313a c1313a, InterfaceC1377o interfaceC1377o) {
        f720a = i;
        this.f721b = context;
        this.f722c = c1383u;
        this.f723d = c1378p;
        this.f724e = c1326a;
        this.f726g = c1313a;
        this.f725f = interfaceC1377o;
    }

    /* renamed from: a */
    private static List<C1329a> m492a(List<C1329a> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (C1329a c1329a : list) {
            if (c1329a.f681d && c1329a.f679b <= jCurrentTimeMillis - 86400000) {
                arrayList.add(c1329a);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private CrashDetailBean m489a(List<C1329a> list, CrashDetailBean crashDetailBean) {
        List<CrashDetailBean> listM497b;
        String[] strArrSplit;
        if (list == null || list.size() == 0) {
            return crashDetailBean;
        }
        CrashDetailBean crashDetailBean2 = null;
        ArrayList arrayList = new ArrayList(10);
        for (C1329a c1329a : list) {
            if (c1329a.f682e) {
                arrayList.add(c1329a);
            }
        }
        if (arrayList.size() > 0 && (listM497b = m497b(arrayList)) != null && listM497b.size() > 0) {
            Collections.sort(listM497b);
            CrashDetailBean crashDetailBean3 = null;
            for (int i = 0; i < listM497b.size(); i++) {
                CrashDetailBean crashDetailBean4 = listM497b.get(i);
                if (i == 0) {
                    crashDetailBean3 = crashDetailBean4;
                } else if (crashDetailBean4.f670s != null && (strArrSplit = crashDetailBean4.f670s.split("\n")) != null) {
                    for (String str : strArrSplit) {
                        if (!crashDetailBean3.f670s.contains(str)) {
                            crashDetailBean3.f671t++;
                            crashDetailBean3.f670s += str + "\n";
                        }
                    }
                }
            }
            crashDetailBean2 = crashDetailBean3;
        }
        if (crashDetailBean2 == null) {
            crashDetailBean.f661j = true;
            crashDetailBean.f671t = 0;
            crashDetailBean.f670s = "";
            crashDetailBean2 = crashDetailBean;
        }
        for (C1329a c1329a2 : list) {
            if (!c1329a2.f682e && !c1329a2.f681d) {
                String str2 = crashDetailBean2.f670s;
                StringBuilder sb = new StringBuilder();
                sb.append(c1329a2.f679b);
                if (!str2.contains(sb.toString())) {
                    crashDetailBean2.f671t++;
                    crashDetailBean2.f670s += c1329a2.f679b + "\n";
                }
            }
        }
        if (crashDetailBean2.f669r != crashDetailBean.f669r) {
            String str3 = crashDetailBean2.f670s;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.f669r);
            if (!str3.contains(sb2.toString())) {
                crashDetailBean2.f671t++;
                crashDetailBean2.f670s += crashDetailBean.f669r + "\n";
            }
        }
        return crashDetailBean2;
    }

    /* renamed from: a */
    public final boolean m504a(CrashDetailBean crashDetailBean) {
        return m505b(crashDetailBean);
    }

    /* renamed from: b */
    public final boolean m505b(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return true;
        }
        if (C1337c.f742n != null && !C1337c.f742n.isEmpty()) {
            C1386x.m771c("Crash filter for crash stack is: %s", C1337c.f742n);
            if (crashDetailBean.f668q.contains(C1337c.f742n)) {
                C1386x.m772d("This crash contains the filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        if (C1337c.f743o != null && !C1337c.f743o.isEmpty()) {
            C1386x.m771c("Crash regular filter for crash stack is: %s", C1337c.f743o);
            if (Pattern.compile(C1337c.f743o).matcher(crashDetailBean.f668q).find()) {
                C1386x.m772d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                return true;
            }
        }
        if (crashDetailBean.f653b != 2) {
            C1380r c1380r = new C1380r();
            c1380r.f1025b = 1;
            c1380r.f1026c = crashDetailBean.f628A;
            c1380r.f1027d = crashDetailBean.f629B;
            c1380r.f1028e = crashDetailBean.f669r;
            this.f723d.m729b(1);
            this.f723d.m728a(c1380r);
            C1386x.m769b("[crash] a crash occur, handling...", new Object[0]);
        } else {
            C1386x.m769b("[crash] a caught exception occur, handling...", new Object[0]);
        }
        List<C1329a> listM496b = m496b();
        ArrayList arrayList = null;
        if (listM496b != null && listM496b.size() > 0) {
            arrayList = new ArrayList(10);
            ArrayList arrayList2 = new ArrayList(10);
            arrayList.addAll(m492a(listM496b));
            listM496b.removeAll(arrayList);
            if (listM496b.size() > 20) {
                StringBuilder sb = new StringBuilder();
                sb.append("_id in ");
                sb.append("(");
                sb.append("SELECT _id");
                sb.append(" FROM t_cr");
                sb.append(" order by _id");
                sb.append(" limit 5");
                sb.append(")");
                String string = sb.toString();
                sb.setLength(0);
                try {
                    C1386x.m771c("deleted first record %s data %d", "t_cr", Integer.valueOf(C1378p.m707a().m721a("t_cr", string, (String[]) null, (InterfaceC1377o) null, true)));
                } catch (Throwable th) {
                    if (!C1386x.m767a(th)) {
                        th.printStackTrace();
                    }
                }
            }
            if (!C1315b.f463c && C1337c.f732d) {
                boolean z = false;
                for (C1329a c1329a : listM496b) {
                    if (crashDetailBean.f672u.equals(c1329a.f680c)) {
                        if (c1329a.f682e) {
                            z = true;
                        }
                        arrayList2.add(c1329a);
                    }
                }
                if (z || arrayList2.size() >= C1337c.f731c) {
                    C1386x.m766a("same crash occur too much do merged!", new Object[0]);
                    CrashDetailBean crashDetailBeanM489a = m489a(arrayList2, crashDetailBean);
                    for (C1329a c1329a2 : arrayList2) {
                        if (c1329a2.f678a != crashDetailBeanM489a.f652a) {
                            arrayList.add(c1329a2);
                        }
                    }
                    m508e(crashDetailBeanM489a);
                    m498c(arrayList);
                    C1386x.m769b("[crash] save crash success. For this device crash many times, it will not upload crashes immediately", new Object[0]);
                    return true;
                }
            }
        }
        m508e(crashDetailBean);
        if (arrayList != null && !arrayList.isEmpty()) {
            m498c(arrayList);
        }
        C1386x.m769b("[crash] save crash success", new Object[0]);
        return false;
    }

    /* renamed from: a */
    public final List<CrashDetailBean> m501a() {
        StrategyBean strategyBeanM454c = C1326a.m444a().m454c();
        if (strategyBeanM454c == null) {
            C1386x.m772d("have not synced remote!", new Object[0]);
            return null;
        }
        if (!strategyBeanM454c.f594e) {
            C1386x.m772d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            C1386x.m769b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jM818b = C1388z.m818b();
        List<C1329a> listM496b = m496b();
        C1386x.m771c("Size of crash list loaded from DB: %s", Integer.valueOf(listM496b.size()));
        if (listM496b == null || listM496b.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m492a(listM496b));
        listM496b.removeAll(arrayList);
        Iterator<C1329a> it = listM496b.iterator();
        while (it.hasNext()) {
            C1329a next = it.next();
            if (next.f679b < jM818b - C1337c.f735g) {
                it.remove();
                arrayList.add(next);
            } else if (next.f681d) {
                if (next.f679b >= jCurrentTimeMillis - 86400000) {
                    it.remove();
                } else if (!next.f682e) {
                    it.remove();
                    arrayList.add(next);
                }
            } else if (next.f683f >= 3 && next.f679b < jCurrentTimeMillis - 86400000) {
                it.remove();
                arrayList.add(next);
            }
        }
        if (arrayList.size() > 0) {
            m498c(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        List<CrashDetailBean> listM497b = m497b(listM496b);
        if (listM497b != null && listM497b.size() > 0) {
            String str = C1323a.m372b().f571k;
            Iterator<CrashDetailBean> it2 = listM497b.iterator();
            while (it2.hasNext()) {
                CrashDetailBean next2 = it2.next();
                if (!str.equals(next2.f657f)) {
                    it2.remove();
                    arrayList2.add(next2);
                }
            }
        }
        if (arrayList2.size() > 0) {
            m499d(arrayList2);
        }
        return listM497b;
    }

    /* renamed from: c */
    public final void m506c(CrashDetailBean crashDetailBean) {
        int i = crashDetailBean.f653b;
        if (i != 0) {
            if (i != 1) {
                if (i == 3 && !C1337c.m509a().m536r()) {
                    return;
                }
            } else if (!C1337c.m509a().m535q()) {
                return;
            }
        } else if (!C1337c.m509a().m535q()) {
            return;
        }
        if (this.f725f != null) {
            C1386x.m771c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
            InterfaceC1377o interfaceC1377o = this.f725f;
            int i2 = crashDetailBean.f653b;
        }
    }

    /* renamed from: a */
    public final void m502a(CrashDetailBean crashDetailBean, long j, boolean z) {
        if (C1337c.f740l) {
            C1386x.m766a("try to upload right now", new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(crashDetailBean);
            m503a(arrayList, 3000L, z, crashDetailBean.f653b == 7, z);
        }
    }

    /* renamed from: a */
    public final void m503a(final List<CrashDetailBean> list, long j, boolean z, boolean z2, boolean z3) {
        C1383u c1383u;
        C1357al c1357al;
        if (C1323a.m371a(this.f721b).f565e && (c1383u = this.f722c) != null) {
            if (z3 || c1383u.m752b(C1337c.f729a)) {
                StrategyBean strategyBeanM454c = this.f724e.m454c();
                if (!strategyBeanM454c.f594e) {
                    C1386x.m772d("remote report is disable!", new Object[0]);
                    C1386x.m769b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
                    return;
                }
                if (list == null || list.size() == 0) {
                    return;
                }
                try {
                    String str = strategyBeanM454c.f606q;
                    String str2 = StrategyBean.f591b;
                    Context context = this.f721b;
                    C1323a c1323aM372b = C1323a.m372b();
                    if (context == null || list == null || list.size() == 0 || c1323aM372b == null) {
                        C1386x.m772d("enEXPPkg args == null!", new Object[0]);
                        c1357al = null;
                    } else {
                        c1357al = new C1357al();
                        c1357al.f883a = new ArrayList<>();
                        Iterator<CrashDetailBean> it = list.iterator();
                        while (it.hasNext()) {
                            c1357al.f883a.add(m491a(context, it.next(), c1323aM372b));
                        }
                    }
                    if (c1357al == null) {
                        C1386x.m772d("create eupPkg fail!", new Object[0]);
                        return;
                    }
                    byte[] bArrM590a = C1345a.m590a((AbstractC1373k) c1357al);
                    if (bArrM590a == null) {
                        C1386x.m772d("send encode fail!", new Object[0]);
                        return;
                    }
                    C1358am c1358amM582a = C1345a.m582a(this.f721b, 830, bArrM590a);
                    if (c1358amM582a == null) {
                        C1386x.m772d("request package is null.", new Object[0]);
                        return;
                    }
                    InterfaceC1382t interfaceC1382t = new InterfaceC1382t() { // from class: com.tencent.bugly.crashreport.crash.b.1
                        @Override // com.tencent.bugly.proguard.InterfaceC1382t
                        /* renamed from: a */
                        public final void mo340a(boolean z4) {
                            C1336b c1336b = C1336b.this;
                            C1336b.m494a(z4, (List<CrashDetailBean>) list);
                        }
                    };
                    if (z) {
                        this.f722c.m749a(f720a, c1358amM582a, str, str2, interfaceC1382t, j, z2);
                    } else {
                        this.f722c.m750a(f720a, c1358amM582a, str, str2, interfaceC1382t, false);
                    }
                } catch (Throwable th) {
                    C1386x.m773e("req cr error %s", th.toString());
                    if (C1386x.m770b(th)) {
                        return;
                    }
                    th.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    public static void m494a(boolean z, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            C1386x.m771c("up finish update state %b", Boolean.valueOf(z));
            for (CrashDetailBean crashDetailBean : list) {
                C1386x.m771c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.f654c, Integer.valueOf(crashDetailBean.f663l), Boolean.valueOf(crashDetailBean.f655d), Boolean.valueOf(crashDetailBean.f661j));
                crashDetailBean.f663l++;
                crashDetailBean.f655d = z;
                C1386x.m771c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.f654c, Integer.valueOf(crashDetailBean.f663l), Boolean.valueOf(crashDetailBean.f655d), Boolean.valueOf(crashDetailBean.f661j));
            }
            Iterator<CrashDetailBean> it = list.iterator();
            while (it.hasNext()) {
                C1337c.m509a().m516a(it.next());
            }
            C1386x.m771c("update state size %d", Integer.valueOf(list.size()));
        }
        if (z) {
            return;
        }
        C1386x.m769b("[crash] upload fail.", new Object[0]);
    }

    /* renamed from: d */
    public final void m507d(CrashDetailBean crashDetailBean) {
        int i;
        Map<String, String> mapOnCrashHandleStart;
        String strSubstring;
        HashMap map;
        if (crashDetailBean == null) {
            return;
        }
        if (this.f726g == null && this.f725f == null) {
            return;
        }
        try {
            switch (crashDetailBean.f653b) {
                case 0:
                    if (C1337c.m509a().m535q()) {
                        i = 0;
                        break;
                    } else {
                        return;
                    }
                case 1:
                    if (C1337c.m509a().m535q()) {
                        i = 2;
                        break;
                    } else {
                        return;
                    }
                case 2:
                    i = 1;
                    break;
                case 3:
                    i = 4;
                    if (!C1337c.m509a().m536r()) {
                        return;
                    }
                    break;
                case 4:
                    i = 3;
                    if (!C1337c.m509a().m537s()) {
                        return;
                    }
                    break;
                case 5:
                    i = 5;
                    if (!C1337c.m509a().m538t()) {
                        return;
                    }
                    break;
                case 6:
                    i = 6;
                    if (!C1337c.m509a().m539u()) {
                        return;
                    }
                    break;
                case 7:
                    i = 7;
                    break;
                default:
                    return;
            }
            int i2 = crashDetailBean.f653b;
            String str = crashDetailBean.f665n;
            String str2 = crashDetailBean.f667p;
            String str3 = crashDetailBean.f668q;
            long j = crashDetailBean.f669r;
            byte[] bArrOnCrashHandleStart2GetExtraDatas = null;
            if (this.f725f != null) {
                C1386x.m771c("Calling 'onCrashHandleStart' of RQD crash listener.", new Object[0]);
                InterfaceC1377o interfaceC1377o = this.f725f;
                C1386x.m771c("Calling 'getCrashExtraMessage' of RQD crash listener.", new Object[0]);
                String strM699b = this.f725f.m699b();
                if (strM699b != null) {
                    map = new HashMap(1);
                    map.put("userData", strM699b);
                } else {
                    map = null;
                }
                mapOnCrashHandleStart = map;
            } else if (this.f726g != null) {
                C1386x.m771c("Calling 'onCrashHandleStart' of Bugly crash listener.", new Object[0]);
                mapOnCrashHandleStart = this.f726g.onCrashHandleStart(i, crashDetailBean.f665n, crashDetailBean.f666o, crashDetailBean.f668q);
            } else {
                mapOnCrashHandleStart = null;
            }
            if (mapOnCrashHandleStart != null && mapOnCrashHandleStart.size() > 0) {
                crashDetailBean.f642O = new LinkedHashMap(mapOnCrashHandleStart.size());
                for (Map.Entry<String, String> entry : mapOnCrashHandleStart.entrySet()) {
                    if (!C1388z.m814a(entry.getKey())) {
                        String key = entry.getKey();
                        if (key.length() > 100) {
                            key = key.substring(0, 100);
                            C1386x.m772d("setted key length is over limit %d substring to %s", 100, key);
                        }
                        if (!C1388z.m814a(entry.getValue()) && entry.getValue().length() > 30000) {
                            strSubstring = entry.getValue().substring(entry.getValue().length() - BuglyStrategy.C1313a.MAX_USERDATA_VALUE_LENGTH);
                            C1386x.m772d("setted %s value length is over limit %d substring", key, Integer.valueOf(BuglyStrategy.C1313a.MAX_USERDATA_VALUE_LENGTH));
                        } else {
                            strSubstring = entry.getValue();
                        }
                        crashDetailBean.f642O.put(key, strSubstring);
                        C1386x.m766a("add setted key %s value size:%d", key, Integer.valueOf(strSubstring.length()));
                    }
                }
            }
            C1386x.m766a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);
            if (this.f725f != null) {
                C1386x.m771c("Calling 'getCrashExtraData' of RQD crash listener.", new Object[0]);
                bArrOnCrashHandleStart2GetExtraDatas = this.f725f.m698a();
            } else if (this.f726g != null) {
                C1386x.m771c("Calling 'onCrashHandleStart2GetExtraDatas' of Bugly crash listener.", new Object[0]);
                bArrOnCrashHandleStart2GetExtraDatas = this.f726g.onCrashHandleStart2GetExtraDatas(i, crashDetailBean.f665n, crashDetailBean.f666o, crashDetailBean.f668q);
            }
            crashDetailBean.f648U = bArrOnCrashHandleStart2GetExtraDatas;
            if (bArrOnCrashHandleStart2GetExtraDatas != null) {
                if (bArrOnCrashHandleStart2GetExtraDatas.length > 30000) {
                    C1386x.m772d("extra bytes size %d is over limit %d will drop over part", Integer.valueOf(bArrOnCrashHandleStart2GetExtraDatas.length), Integer.valueOf(BuglyStrategy.C1313a.MAX_USERDATA_VALUE_LENGTH));
                    crashDetailBean.f648U = Arrays.copyOf(bArrOnCrashHandleStart2GetExtraDatas, BuglyStrategy.C1313a.MAX_USERDATA_VALUE_LENGTH);
                }
                C1386x.m766a("add extra bytes %d ", Integer.valueOf(bArrOnCrashHandleStart2GetExtraDatas.length));
            }
            if (this.f725f != null) {
                C1386x.m771c("Calling 'onCrashSaving' of RQD crash listener.", new Object[0]);
                InterfaceC1377o interfaceC1377o2 = this.f725f;
                String str4 = crashDetailBean.f666o;
                String str5 = crashDetailBean.f664m;
                String str6 = crashDetailBean.f656e;
                String str7 = crashDetailBean.f654c;
                String str8 = crashDetailBean.f628A;
                String str9 = crashDetailBean.f629B;
                if (interfaceC1377o2.m700c()) {
                    return;
                }
                C1386x.m772d("Crash listener 'onCrashSaving' return 'false' thus will not handle this crash.", new Object[0]);
            }
        } catch (Throwable th) {
            C1386x.m772d("crash handle callback something wrong! %s", th.getClass().getName());
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: f */
    private static ContentValues m500f(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (crashDetailBean.f652a > 0) {
                contentValues.put("_id", Long.valueOf(crashDetailBean.f652a));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.f669r));
            contentValues.put("_s1", crashDetailBean.f672u);
            int i = 1;
            contentValues.put("_up", Integer.valueOf(crashDetailBean.f655d ? 1 : 0));
            if (!crashDetailBean.f661j) {
                i = 0;
            }
            contentValues.put("_me", Integer.valueOf(i));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.f663l));
            contentValues.put("_dt", C1388z.m815a(crashDetailBean));
            return contentValues;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private static CrashDetailBean m488a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex("_id"));
            CrashDetailBean crashDetailBean = (CrashDetailBean) C1388z.m796a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean != null) {
                crashDetailBean.f652a = j;
            }
            return crashDetailBean;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: e */
    public final void m508e(CrashDetailBean crashDetailBean) {
        ContentValues contentValuesM500f;
        if (crashDetailBean == null || (contentValuesM500f = m500f(crashDetailBean)) == null) {
            return;
        }
        long jM722a = C1378p.m707a().m722a("t_cr", contentValuesM500f, (InterfaceC1377o) null, true);
        if (jM722a >= 0) {
            C1386x.m771c("insert %s success!", "t_cr");
            crashDetailBean.f652a = jM722a;
        }
    }

    /* renamed from: b */
    private List<CrashDetailBean> m497b(List<C1329a> list) {
        Cursor cursorM723a;
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("_id in ");
        sb.append("(");
        Iterator<C1329a> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next().f678a);
            sb.append(",");
        }
        StringBuilder sb2 = sb.toString().contains(",") ? new StringBuilder(sb.substring(0, sb.lastIndexOf(","))) : sb;
        sb2.append(")");
        String string = sb2.toString();
        sb2.setLength(0);
        try {
            cursorM723a = C1378p.m707a().m723a("t_cr", null, string, null, null, true);
            if (cursorM723a == null) {
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                sb2.append("_id in ");
                sb2.append("(");
                int i = 0;
                while (cursorM723a.moveToNext()) {
                    CrashDetailBean crashDetailBeanM488a = m488a(cursorM723a);
                    if (crashDetailBeanM488a != null) {
                        arrayList.add(crashDetailBeanM488a);
                    } else {
                        try {
                            sb2.append(cursorM723a.getLong(cursorM723a.getColumnIndex("_id")));
                            sb2.append(",");
                            i++;
                        } catch (Throwable unused) {
                            C1386x.m772d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb2.toString().contains(",")) {
                    sb2 = new StringBuilder(sb2.substring(0, sb2.lastIndexOf(",")));
                }
                sb2.append(")");
                String string2 = sb2.toString();
                if (i > 0) {
                    C1386x.m772d("deleted %s illegal data %d", "t_cr", Integer.valueOf(C1378p.m707a().m721a("t_cr", string2, (String[]) null, (InterfaceC1377o) null, true)));
                }
                if (cursorM723a != null) {
                    cursorM723a.close();
                }
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!C1386x.m767a(th)) {
                        th.printStackTrace();
                    }
                    if (cursorM723a != null) {
                        cursorM723a.close();
                    }
                    return null;
                } finally {
                    if (cursorM723a != null) {
                        cursorM723a.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorM723a = null;
        }
    }

    /* renamed from: b */
    private static C1329a m495b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            C1329a c1329a = new C1329a();
            c1329a.f678a = cursor.getLong(cursor.getColumnIndex("_id"));
            c1329a.f679b = cursor.getLong(cursor.getColumnIndex("_tm"));
            c1329a.f680c = cursor.getString(cursor.getColumnIndex("_s1"));
            c1329a.f681d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            c1329a.f682e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            c1329a.f683f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return c1329a;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: b */
    private List<C1329a> m496b() {
        Cursor cursorM723a;
        ArrayList arrayList = new ArrayList();
        try {
            cursorM723a = C1378p.m707a().m723a("t_cr", new String[]{"_id", "_tm", "_s1", "_up", "_me", "_uc"}, null, null, null, true);
            if (cursorM723a == null) {
                return null;
            }
            try {
                if (cursorM723a.getCount() <= 0) {
                    if (cursorM723a != null) {
                        cursorM723a.close();
                    }
                    return arrayList;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("_id in ");
                sb.append("(");
                int i = 0;
                while (cursorM723a.moveToNext()) {
                    C1329a c1329aM495b = m495b(cursorM723a);
                    if (c1329aM495b != null) {
                        arrayList.add(c1329aM495b);
                    } else {
                        try {
                            sb.append(cursorM723a.getLong(cursorM723a.getColumnIndex("_id")));
                            sb.append(",");
                            i++;
                        } catch (Throwable unused) {
                            C1386x.m772d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                String string = sb.toString();
                sb.setLength(0);
                if (i > 0) {
                    C1386x.m772d("deleted %s illegal data %d", "t_cr", Integer.valueOf(C1378p.m707a().m721a("t_cr", string, (String[]) null, (InterfaceC1377o) null, true)));
                }
                if (cursorM723a != null) {
                    cursorM723a.close();
                }
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!C1386x.m767a(th)) {
                        th.printStackTrace();
                    }
                    if (cursorM723a != null) {
                        cursorM723a.close();
                    }
                    return arrayList;
                } finally {
                    if (cursorM723a != null) {
                        cursorM723a.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorM723a = null;
        }
    }

    /* renamed from: c */
    private static void m498c(List<C1329a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("_id in ");
        sb.append("(");
        Iterator<C1329a> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next().f678a);
            sb.append(",");
        }
        StringBuilder sb2 = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
        sb2.append(")");
        String string = sb2.toString();
        sb2.setLength(0);
        try {
            C1386x.m771c("deleted %s data %d", "t_cr", Integer.valueOf(C1378p.m707a().m721a("t_cr", string, (String[]) null, (InterfaceC1377o) null, true)));
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: d */
    private static void m499d(List<CrashDetailBean> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                for (CrashDetailBean crashDetailBean : list) {
                    sb.append(" or _id");
                    sb.append(" = ");
                    sb.append(crashDetailBean.f652a);
                }
                String string = sb.toString();
                if (string.length() > 0) {
                    string = string.substring(4);
                }
                sb.setLength(0);
                C1386x.m771c("deleted %s data %d", "t_cr", Integer.valueOf(C1378p.m707a().m721a("t_cr", string, (String[]) null, (InterfaceC1377o) null, true)));
            } catch (Throwable th) {
                if (C1386x.m767a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    private static C1356ak m491a(Context context, CrashDetailBean crashDetailBean, C1323a c1323a) throws IOException {
        C1355aj c1355ajM490a;
        C1355aj c1355ajM490a2;
        C1355aj c1355aj;
        if (context == null || crashDetailBean == null || c1323a == null) {
            C1386x.m772d("enExp args == null", new Object[0]);
            return null;
        }
        C1356ak c1356ak = new C1356ak();
        switch (crashDetailBean.f653b) {
            case 0:
                c1356ak.f861a = crashDetailBean.f661j ? "200" : "100";
                break;
            case 1:
                c1356ak.f861a = crashDetailBean.f661j ? "201" : "101";
                break;
            case 2:
                c1356ak.f861a = crashDetailBean.f661j ? "202" : "102";
                break;
            case 3:
                c1356ak.f861a = crashDetailBean.f661j ? "203" : "103";
                break;
            case 4:
                c1356ak.f861a = crashDetailBean.f661j ? "204" : "104";
                break;
            case 5:
                c1356ak.f861a = crashDetailBean.f661j ? "207" : "107";
                break;
            case 6:
                c1356ak.f861a = crashDetailBean.f661j ? "206" : "106";
                break;
            case 7:
                c1356ak.f861a = crashDetailBean.f661j ? "208" : "108";
                break;
            default:
                C1386x.m773e("crash type error! %d", Integer.valueOf(crashDetailBean.f653b));
                break;
        }
        c1356ak.f862b = crashDetailBean.f669r;
        c1356ak.f863c = crashDetailBean.f665n;
        c1356ak.f864d = crashDetailBean.f666o;
        c1356ak.f865e = crashDetailBean.f667p;
        c1356ak.f867g = crashDetailBean.f668q;
        c1356ak.f868h = crashDetailBean.f677z;
        c1356ak.f869i = crashDetailBean.f654c;
        c1356ak.f870j = null;
        c1356ak.f872l = crashDetailBean.f664m;
        c1356ak.f873m = crashDetailBean.f656e;
        c1356ak.f866f = crashDetailBean.f629B;
        c1356ak.f874n = null;
        C1386x.m771c("libInfo %s", c1356ak.f875o);
        if (crashDetailBean.f659h != null && crashDetailBean.f659h.size() > 0) {
            c1356ak.f876p = new ArrayList<>();
            for (Map.Entry<String, PlugInBean> entry : crashDetailBean.f659h.entrySet()) {
                C1353ah c1353ah = new C1353ah();
                c1353ah.f841a = entry.getValue().f517a;
                c1353ah.f842b = entry.getValue().f519c;
                c1353ah.f843c = entry.getValue().f518b;
                c1356ak.f876p.add(c1353ah);
            }
        }
        if (crashDetailBean.f661j) {
            c1356ak.f871k = crashDetailBean.f671t;
            if (crashDetailBean.f670s != null && crashDetailBean.f670s.length() > 0) {
                if (c1356ak.f877q == null) {
                    c1356ak.f877q = new ArrayList<>();
                }
                try {
                    c1356ak.f877q.add(new C1355aj((byte) 1, "alltimes.txt", crashDetailBean.f670s.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    c1356ak.f877q = null;
                }
            }
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(c1356ak.f871k);
            objArr[1] = Integer.valueOf(c1356ak.f877q != null ? c1356ak.f877q.size() : 0);
            C1386x.m771c("crashcount:%d sz:%d", objArr);
        }
        if (crashDetailBean.f674w != null) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            try {
                c1356ak.f877q.add(new C1355aj((byte) 1, "log.txt", crashDetailBean.f674w.getBytes("utf-8")));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                c1356ak.f877q = null;
            }
        }
        if (crashDetailBean.f675x != null) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            try {
                c1356ak.f877q.add(new C1355aj((byte) 1, "jniLog.txt", crashDetailBean.f675x.getBytes("utf-8")));
            } catch (UnsupportedEncodingException e3) {
                e3.printStackTrace();
                c1356ak.f877q = null;
            }
        }
        if (!C1388z.m814a(crashDetailBean.f649V)) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            try {
                c1355aj = new C1355aj((byte) 1, "crashInfos.txt", crashDetailBean.f649V.getBytes("utf-8"));
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
                c1355aj = null;
            }
            if (c1355aj != null) {
                C1386x.m771c("attach crash infos", new Object[0]);
                c1356ak.f877q.add(c1355aj);
            }
        }
        if (crashDetailBean.f650W != null) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            C1355aj c1355ajM490a3 = m490a("backupRecord.zip", context, crashDetailBean.f650W);
            if (c1355ajM490a3 != null) {
                C1386x.m771c("attach backup record", new Object[0]);
                c1356ak.f877q.add(c1355ajM490a3);
            }
        }
        if (crashDetailBean.f676y != null && crashDetailBean.f676y.length > 0) {
            C1355aj c1355aj2 = new C1355aj((byte) 2, "buglylog.zip", crashDetailBean.f676y);
            C1386x.m771c("attach user log", new Object[0]);
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            c1356ak.f877q.add(c1355aj2);
        }
        if (crashDetailBean.f653b == 3) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            C1386x.m771c("crashBean.anrMessages:%s", crashDetailBean.f643P);
            if (crashDetailBean.f643P != null && crashDetailBean.f643P.containsKey("BUGLY_CR_01")) {
                try {
                    if (!TextUtils.isEmpty(crashDetailBean.f643P.get("BUGLY_CR_01"))) {
                        c1356ak.f877q.add(new C1355aj((byte) 1, "anrMessage.txt", crashDetailBean.f643P.get("BUGLY_CR_01").getBytes("utf-8")));
                        C1386x.m771c("attach anr message", new Object[0]);
                    }
                } catch (UnsupportedEncodingException e5) {
                    e5.printStackTrace();
                    c1356ak.f877q = null;
                }
                crashDetailBean.f643P.remove("BUGLY_CR_01");
            }
            if (crashDetailBean.f673v != null && NativeCrashHandler.getInstance().isEnableCatchAnrTrace() && (c1355ajM490a2 = m490a("trace.zip", context, crashDetailBean.f673v)) != null) {
                C1386x.m771c("attach traces", new Object[0]);
                c1356ak.f877q.add(c1355ajM490a2);
            }
        }
        if (crashDetailBean.f653b == 1) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            if (crashDetailBean.f673v != null && (c1355ajM490a = m490a("tomb.zip", context, crashDetailBean.f673v)) != null) {
                C1386x.m771c("attach tombs", new Object[0]);
                c1356ak.f877q.add(c1355ajM490a);
            }
        }
        if (c1323a.f524D != null && !c1323a.f524D.isEmpty()) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = c1323a.f524D.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
            }
            try {
                c1356ak.f877q.add(new C1355aj((byte) 1, "martianlog.txt", sb.toString().getBytes("utf-8")));
                C1386x.m771c("attach pageTracingList", new Object[0]);
            } catch (UnsupportedEncodingException e6) {
                e6.printStackTrace();
            }
        }
        if (crashDetailBean.f648U != null && crashDetailBean.f648U.length > 0) {
            if (c1356ak.f877q == null) {
                c1356ak.f877q = new ArrayList<>();
            }
            c1356ak.f877q.add(new C1355aj((byte) 1, "userExtraByteData", crashDetailBean.f648U));
            C1386x.m771c("attach extraData", new Object[0]);
        }
        c1356ak.f878r = new HashMap();
        Map<String, String> map = c1356ak.f878r;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(crashDetailBean.f630C);
        map.put("A9", sb2.toString());
        Map<String, String> map2 = c1356ak.f878r;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(crashDetailBean.f631D);
        map2.put("A11", sb3.toString());
        Map<String, String> map3 = c1356ak.f878r;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(crashDetailBean.f632E);
        map3.put("A10", sb4.toString());
        c1356ak.f878r.put("A23", crashDetailBean.f657f);
        c1356ak.f878r.put("A7", c1323a.f567g);
        c1356ak.f878r.put("A6", c1323a.m403n());
        c1356ak.f878r.put("A5", c1323a.m402m());
        c1356ak.f878r.put("A22", c1323a.m397h());
        Map<String, String> map4 = c1356ak.f878r;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(crashDetailBean.f634G);
        map4.put("A2", sb5.toString());
        Map<String, String> map5 = c1356ak.f878r;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(crashDetailBean.f633F);
        map5.put("A1", sb6.toString());
        c1356ak.f878r.put("A24", c1323a.f569i);
        Map<String, String> map6 = c1356ak.f878r;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(crashDetailBean.f635H);
        map6.put("A17", sb7.toString());
        c1356ak.f878r.put("A25", c1323a.m397h());
        c1356ak.f878r.put("A15", c1323a.m406q());
        Map<String, String> map7 = c1356ak.f878r;
        StringBuilder sb8 = new StringBuilder();
        sb8.append(c1323a.m407r());
        map7.put("A13", sb8.toString());
        c1356ak.f878r.put("A34", crashDetailBean.f628A);
        if (c1323a.f585y != null) {
            c1356ak.f878r.put("productIdentify", c1323a.f585y);
        }
        try {
            c1356ak.f878r.put("A26", URLEncoder.encode(crashDetailBean.f636I, "utf-8"));
        } catch (UnsupportedEncodingException e7) {
            e7.printStackTrace();
        }
        if (crashDetailBean.f653b == 1) {
            c1356ak.f878r.put("A27", crashDetailBean.f638K);
            c1356ak.f878r.put("A28", crashDetailBean.f637J);
            Map<String, String> map8 = c1356ak.f878r;
            StringBuilder sb9 = new StringBuilder();
            sb9.append(crashDetailBean.f662k);
            map8.put("A29", sb9.toString());
        }
        c1356ak.f878r.put("A30", crashDetailBean.f639L);
        Map<String, String> map9 = c1356ak.f878r;
        StringBuilder sb10 = new StringBuilder();
        sb10.append(crashDetailBean.f640M);
        map9.put("A18", sb10.toString());
        Map<String, String> map10 = c1356ak.f878r;
        StringBuilder sb11 = new StringBuilder();
        sb11.append(!crashDetailBean.f641N);
        map10.put("A36", sb11.toString());
        Map<String, String> map11 = c1356ak.f878r;
        StringBuilder sb12 = new StringBuilder();
        sb12.append(c1323a.f578r);
        map11.put("F02", sb12.toString());
        Map<String, String> map12 = c1356ak.f878r;
        StringBuilder sb13 = new StringBuilder();
        sb13.append(c1323a.f579s);
        map12.put("F03", sb13.toString());
        c1356ak.f878r.put("F04", c1323a.m391e());
        Map<String, String> map13 = c1356ak.f878r;
        StringBuilder sb14 = new StringBuilder();
        sb14.append(c1323a.f580t);
        map13.put("F05", sb14.toString());
        c1356ak.f878r.put("F06", c1323a.f577q);
        c1356ak.f878r.put("F08", c1323a.f583w);
        c1356ak.f878r.put("F09", c1323a.f584x);
        Map<String, String> map14 = c1356ak.f878r;
        StringBuilder sb15 = new StringBuilder();
        sb15.append(c1323a.f581u);
        map14.put("F10", sb15.toString());
        if (crashDetailBean.f644Q >= 0) {
            Map<String, String> map15 = c1356ak.f878r;
            StringBuilder sb16 = new StringBuilder();
            sb16.append(crashDetailBean.f644Q);
            map15.put("C01", sb16.toString());
        }
        if (crashDetailBean.f645R >= 0) {
            Map<String, String> map16 = c1356ak.f878r;
            StringBuilder sb17 = new StringBuilder();
            sb17.append(crashDetailBean.f645R);
            map16.put("C02", sb17.toString());
        }
        if (crashDetailBean.f646S != null && crashDetailBean.f646S.size() > 0) {
            for (Map.Entry<String, String> entry2 : crashDetailBean.f646S.entrySet()) {
                c1356ak.f878r.put("C03_" + entry2.getKey(), entry2.getValue());
            }
        }
        if (crashDetailBean.f647T != null && crashDetailBean.f647T.size() > 0) {
            for (Map.Entry<String, String> entry3 : crashDetailBean.f647T.entrySet()) {
                c1356ak.f878r.put("C04_" + entry3.getKey(), entry3.getValue());
            }
        }
        c1356ak.f879s = null;
        if (crashDetailBean.f642O != null && crashDetailBean.f642O.size() > 0) {
            c1356ak.f879s = crashDetailBean.f642O;
            C1386x.m766a("setted message size %d", Integer.valueOf(c1356ak.f879s.size()));
        }
        Object[] objArr2 = new Object[12];
        objArr2[0] = crashDetailBean.f665n;
        objArr2[1] = crashDetailBean.f654c;
        objArr2[2] = c1323a.m391e();
        objArr2[3] = Long.valueOf((crashDetailBean.f669r - crashDetailBean.f640M) / 1000);
        objArr2[4] = Boolean.valueOf(crashDetailBean.f662k);
        objArr2[5] = Boolean.valueOf(crashDetailBean.f641N);
        objArr2[6] = Boolean.valueOf(crashDetailBean.f661j);
        objArr2[7] = Boolean.valueOf(crashDetailBean.f653b == 1);
        objArr2[8] = Integer.valueOf(crashDetailBean.f671t);
        objArr2[9] = crashDetailBean.f670s;
        objArr2[10] = Boolean.valueOf(crashDetailBean.f655d);
        objArr2[11] = Integer.valueOf(c1356ak.f878r.size());
        C1386x.m771c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", objArr2);
        return c1356ak;
    }

    /* renamed from: a */
    private static C1355aj m490a(String str, Context context, String str2) throws IOException {
        FileInputStream fileInputStream;
        if (str2 == null || context == null) {
            C1386x.m772d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
        C1386x.m771c("zip %s", str2);
        File file = new File(str2);
        File file2 = new File(context.getCacheDir(), str);
        if (!C1388z.m812a(file, file2, 5000)) {
            C1386x.m772d("zip fail!", new Object[0]);
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fileInputStream = new FileInputStream(file2);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i);
                byteArrayOutputStream.flush();
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            C1386x.m771c("read bytes :%d", Integer.valueOf(byteArray.length));
            C1355aj c1355aj = new C1355aj((byte) 2, file2.getName(), byteArray);
            try {
                fileInputStream.close();
            } catch (IOException e) {
                if (!C1386x.m767a(e)) {
                    e.printStackTrace();
                }
            }
            if (file2.exists()) {
                C1386x.m771c("del tmp", new Object[0]);
                file2.delete();
            }
            return c1355aj;
        } catch (Throwable th2) {
            th = th2;
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                        if (!C1386x.m767a(e2)) {
                            e2.printStackTrace();
                        }
                    }
                }
                if (file2.exists()) {
                    C1386x.m771c("del tmp", new Object[0]);
                    file2.delete();
                }
                return null;
            } catch (Throwable th3) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                        if (!C1386x.m767a(e3)) {
                            e3.printStackTrace();
                        }
                    }
                }
                if (file2.exists()) {
                    C1386x.m771c("del tmp", new Object[0]);
                    file2.delete();
                }
                throw th3;
            }
        }
    }

    /* renamed from: a */
    public static void m493a(String str, String str2, String str3, String str4, String str5, CrashDetailBean crashDetailBean) {
        String str6;
        C1323a c1323aM372b = C1323a.m372b();
        if (c1323aM372b == null) {
            return;
        }
        C1386x.m773e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        C1386x.m773e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        C1386x.m773e("# PKG NAME: %s", c1323aM372b.f563c);
        C1386x.m773e("# APP VER: %s", c1323aM372b.f571k);
        C1386x.m773e("# SDK VER: %s", c1323aM372b.f566f);
        C1386x.m773e("# LAUNCH TIME: %s", C1388z.m803a(new Date(C1323a.m372b().f546a)));
        C1386x.m773e("# CRASH TYPE: %s", str);
        C1386x.m773e("# CRASH TIME: %s", str2);
        C1386x.m773e("# CRASH PROCESS: %s", str3);
        C1386x.m773e("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            C1386x.m773e("# REPORT ID: %s", crashDetailBean.f654c);
            Object[] objArr = new Object[2];
            objArr[0] = c1323aM372b.f568h;
            objArr[1] = c1323aM372b.m407r().booleanValue() ? "ROOTED" : "UNROOT";
            C1386x.m773e("# CRASH DEVICE: %s %s", objArr);
            C1386x.m773e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.f630C), Long.valueOf(crashDetailBean.f631D), Long.valueOf(crashDetailBean.f632E));
            C1386x.m773e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.f633F), Long.valueOf(crashDetailBean.f634G), Long.valueOf(crashDetailBean.f635H));
            if (!C1388z.m814a(crashDetailBean.f638K)) {
                C1386x.m773e("# EXCEPTION FIRED BY %s %s", crashDetailBean.f638K, crashDetailBean.f637J);
            } else if (crashDetailBean.f653b == 3) {
                Object[] objArr2 = new Object[1];
                if (crashDetailBean.f643P == null) {
                    str6 = "null";
                } else {
                    str6 = crashDetailBean.f643P.get("BUGLY_CR_01");
                }
                objArr2[0] = str6;
                C1386x.m773e("# EXCEPTION ANR MESSAGE:\n %s", objArr2);
            }
        }
        if (!C1388z.m814a(str5)) {
            C1386x.m773e("# CRASH STACK: ", new Object[0]);
            C1386x.m773e(str5, new Object[0]);
        }
        C1386x.m773e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }
}
