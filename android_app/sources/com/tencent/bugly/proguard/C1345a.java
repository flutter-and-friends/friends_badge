package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import cn.highlight.core.utils.ExcelUtils;
import com.tencent.bugly.AbstractC1314a;
import com.tencent.bugly.C1315b;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.info.C1324b;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.a */
/* loaded from: classes.dex */
public class C1345a {

    /* renamed from: e */
    private static Proxy f825e;

    /* renamed from: a */
    protected HashMap<String, HashMap<String, byte[]>> f826a = new HashMap<>();

    /* renamed from: b */
    protected String f827b;

    /* renamed from: c */
    C1371i f828c;

    /* renamed from: d */
    private HashMap<String, Object> f829d;

    C1345a() {
        new HashMap();
        this.f829d = new HashMap<>();
        this.f827b = ExcelUtils.GBK_ENCODING;
        this.f828c = new C1371i();
    }

    /* renamed from: a */
    public static void m587a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            f825e = null;
        } else {
            f825e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, i));
        }
    }

    /* renamed from: a */
    public static void m588a(InetAddress inetAddress, int i) {
        if (inetAddress == null) {
            f825e = null;
        } else {
            f825e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(inetAddress, i));
        }
    }

    /* renamed from: a */
    public void mo594a(String str) {
        this.f827b = str;
    }

    /* renamed from: b */
    public static Proxy m593b() {
        return f825e;
    }

    /* renamed from: a */
    public static C1362aq m583a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        C1362aq c1362aq = new C1362aq();
        c1362aq.f938a = userInfoBean.f473e;
        c1362aq.f942e = userInfoBean.f478j;
        c1362aq.f941d = userInfoBean.f471c;
        c1362aq.f940c = userInfoBean.f472d;
        c1362aq.f944g = userInfoBean.f483o == 1;
        int i = userInfoBean.f470b;
        if (i == 1) {
            c1362aq.f939b = (byte) 1;
        } else if (i == 2) {
            c1362aq.f939b = (byte) 4;
        } else if (i == 3) {
            c1362aq.f939b = (byte) 2;
        } else if (i == 4) {
            c1362aq.f939b = (byte) 3;
        } else {
            if (userInfoBean.f470b < 10 || userInfoBean.f470b >= 20) {
                C1386x.m773e("unknown uinfo type %d ", Integer.valueOf(userInfoBean.f470b));
                return null;
            }
            c1362aq.f939b = (byte) userInfoBean.f470b;
        }
        c1362aq.f943f = new HashMap();
        if (userInfoBean.f484p >= 0) {
            Map<String, String> map = c1362aq.f943f;
            StringBuilder sb = new StringBuilder();
            sb.append(userInfoBean.f484p);
            map.put("C01", sb.toString());
        }
        if (userInfoBean.f485q >= 0) {
            Map<String, String> map2 = c1362aq.f943f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.f485q);
            map2.put("C02", sb2.toString());
        }
        if (userInfoBean.f486r != null && userInfoBean.f486r.size() > 0) {
            for (Map.Entry<String, String> entry : userInfoBean.f486r.entrySet()) {
                c1362aq.f943f.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        if (userInfoBean.f487s != null && userInfoBean.f487s.size() > 0) {
            for (Map.Entry<String, String> entry2 : userInfoBean.f487s.entrySet()) {
                c1362aq.f943f.put("C04_" + entry2.getKey(), entry2.getValue());
            }
        }
        Map<String, String> map3 = c1362aq.f943f;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(!userInfoBean.f480l);
        map3.put("A36", sb3.toString());
        Map<String, String> map4 = c1362aq.f943f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(userInfoBean.f475g);
        map4.put("F02", sb4.toString());
        Map<String, String> map5 = c1362aq.f943f;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(userInfoBean.f476h);
        map5.put("F03", sb5.toString());
        c1362aq.f943f.put("F04", userInfoBean.f478j);
        Map<String, String> map6 = c1362aq.f943f;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(userInfoBean.f477i);
        map6.put("F05", sb6.toString());
        c1362aq.f943f.put("F06", userInfoBean.f481m);
        Map<String, String> map7 = c1362aq.f943f;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(userInfoBean.f479k);
        map7.put("F10", sb7.toString());
        C1386x.m771c("summary type %d vm:%d", Byte.valueOf(c1362aq.f939b), Integer.valueOf(c1362aq.f943f.size()));
        return c1362aq;
    }

    /* renamed from: a */
    public static String m586a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            String str = "map";
            if (i < arrayList.size()) {
                String str2 = arrayList.get(i);
                if (str2.equals("java.lang.Integer") || str2.equals("int")) {
                    str = "int32";
                } else if (str2.equals("java.lang.Boolean") || str2.equals("boolean")) {
                    str = "bool";
                } else if (str2.equals("java.lang.Byte") || str2.equals("byte")) {
                    str = "char";
                } else if (str2.equals("java.lang.Double") || str2.equals("double")) {
                    str = "double";
                } else if (str2.equals("java.lang.Float") || str2.equals("float")) {
                    str = "float";
                } else if (str2.equals("java.lang.Long") || str2.equals("long")) {
                    str = "int64";
                } else if (str2.equals("java.lang.Short") || str2.equals("short")) {
                    str = "short";
                } else {
                    if (str2.equals("java.lang.Character")) {
                        throw new IllegalArgumentException("can not support java.lang.Character");
                    }
                    if (str2.equals("java.lang.String")) {
                        str = "string";
                    } else if (str2.equals("java.util.List")) {
                        str = "list";
                    } else if (!str2.equals("java.util.Map")) {
                        str = str2;
                    }
                }
                arrayList.set(i, str);
                i++;
            } else {
                Collections.reverse(arrayList);
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    String str3 = arrayList.get(i2);
                    if (str3.equals("list")) {
                        int i3 = i2 - 1;
                        arrayList.set(i3, "<" + arrayList.get(i3));
                        arrayList.set(0, arrayList.get(0) + ">");
                    } else if (str3.equals("map")) {
                        int i4 = i2 - 1;
                        arrayList.set(i4, "<" + arrayList.get(i4) + ",");
                        arrayList.set(0, arrayList.get(0) + ">");
                    } else if (str3.equals("Array")) {
                        int i5 = i2 - 1;
                        arrayList.set(i5, "<" + arrayList.get(i5));
                        arrayList.set(0, arrayList.get(0) + ">");
                    }
                }
                Collections.reverse(arrayList);
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    stringBuffer.append(it.next());
                }
                return stringBuffer.toString();
            }
        }
    }

    /* renamed from: a */
    public <T> void mo595a(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        C1372j c1372j = new C1372j();
        c1372j.m666a(this.f827b);
        c1372j.m672a(t, 0);
        byte[] bArrM684a = C1374l.m684a(c1372j.m667a());
        HashMap<String, byte[]> map = new HashMap<>(1);
        ArrayList<String> arrayList = new ArrayList<>(1);
        m589a(arrayList, t);
        map.put(m586a(arrayList), bArrM684a);
        this.f829d.remove(str);
        this.f826a.put(str, map);
    }

    /* renamed from: a */
    public static C1363ar m584a(List<UserInfoBean> list, int i) {
        C1323a c1323aM372b;
        if (list == null || list.size() == 0 || (c1323aM372b = C1323a.m372b()) == null) {
            return null;
        }
        c1323aM372b.m404o();
        C1363ar c1363ar = new C1363ar();
        c1363ar.f949b = c1323aM372b.f564d;
        c1363ar.f950c = c1323aM372b.m397h();
        ArrayList<C1362aq> arrayList = new ArrayList<>();
        Iterator<UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            C1362aq c1362aqM583a = m583a(it.next());
            if (c1362aqM583a != null) {
                arrayList.add(c1362aqM583a);
            }
        }
        c1363ar.f951d = arrayList;
        c1363ar.f952e = new HashMap();
        c1363ar.f952e.put("A7", c1323aM372b.f567g);
        c1363ar.f952e.put("A6", c1323aM372b.m403n());
        c1363ar.f952e.put("A5", c1323aM372b.m402m());
        Map<String, String> map = c1363ar.f952e;
        StringBuilder sb = new StringBuilder();
        sb.append(c1323aM372b.m400k());
        map.put("A2", sb.toString());
        Map<String, String> map2 = c1363ar.f952e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c1323aM372b.m400k());
        map2.put("A1", sb2.toString());
        c1363ar.f952e.put("A24", c1323aM372b.f569i);
        Map<String, String> map3 = c1363ar.f952e;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(c1323aM372b.m401l());
        map3.put("A17", sb3.toString());
        c1363ar.f952e.put("A15", c1323aM372b.m406q());
        Map<String, String> map4 = c1363ar.f952e;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(c1323aM372b.m407r());
        map4.put("A13", sb4.toString());
        c1363ar.f952e.put("F08", c1323aM372b.f583w);
        c1363ar.f952e.put("F09", c1323aM372b.f584x);
        Map<String, String> mapM414y = c1323aM372b.m414y();
        if (mapM414y != null && mapM414y.size() > 0) {
            for (Map.Entry<String, String> entry : mapM414y.entrySet()) {
                c1363ar.f952e.put("C04_" + entry.getKey(), entry.getValue());
            }
        }
        if (i == 1) {
            c1363ar.f948a = (byte) 1;
        } else {
            if (i != 2) {
                C1386x.m773e("unknown up type %d ", Integer.valueOf(i));
                return null;
            }
            c1363ar.f948a = (byte) 2;
        }
        return c1363ar;
    }

    /* renamed from: a */
    public static <T extends AbstractC1373k> T m585a(byte[] bArr, Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T tNewInstance = cls.newInstance();
                C1371i c1371i = new C1371i(bArr);
                c1371i.m654a("utf-8");
                tNewInstance.mo616a(c1371i);
                return tNewInstance;
            } catch (Throwable th) {
                if (!C1386x.m770b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public static C1358am m582a(Context context, int i, byte[] bArr) {
        C1323a c1323aM372b = C1323a.m372b();
        StrategyBean strategyBeanM454c = C1326a.m444a().m454c();
        if (c1323aM372b == null || strategyBeanM454c == null) {
            C1386x.m773e("Can not create request pkg for parameters is invalid.", new Object[0]);
            return null;
        }
        try {
            C1358am c1358am = new C1358am();
            synchronized (c1323aM372b) {
                c1358am.f886a = 1;
                c1358am.f887b = c1323aM372b.m393f();
                c1358am.f888c = c1323aM372b.f563c;
                c1358am.f889d = c1323aM372b.f571k;
                c1358am.f890e = c1323aM372b.f573m;
                c1358am.f891f = c1323aM372b.f566f;
                c1358am.f892g = i;
                if (bArr == null) {
                    bArr = "".getBytes();
                }
                c1358am.f893h = bArr;
                c1358am.f894i = c1323aM372b.f568h;
                c1358am.f895j = c1323aM372b.f569i;
                c1358am.f896k = new HashMap();
                c1358am.f897l = c1323aM372b.m391e();
                c1358am.f898m = strategyBeanM454c.f603n;
                c1358am.f900o = c1323aM372b.m397h();
                c1358am.f901p = C1324b.m420b(context);
                c1358am.f902q = System.currentTimeMillis();
                c1358am.f903r = c1323aM372b.m398i();
                c1358am.f904s = c1323aM372b.m397h();
                c1358am.f905t = c1358am.f901p;
                c1323aM372b.getClass();
                c1358am.f899n = "com.tencent.bugly";
                c1358am.f896k.put("A26", c1323aM372b.m408s());
                Map<String, String> map = c1358am.f896k;
                StringBuilder sb = new StringBuilder();
                sb.append(c1323aM372b.m375D());
                map.put("A62", sb.toString());
                Map<String, String> map2 = c1358am.f896k;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(c1323aM372b.m376E());
                map2.put("A63", sb2.toString());
                Map<String, String> map3 = c1358am.f896k;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(c1323aM372b.f522B);
                map3.put("F11", sb3.toString());
                Map<String, String> map4 = c1358am.f896k;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(c1323aM372b.f521A);
                map4.put("F12", sb4.toString());
                c1358am.f896k.put("D3", c1323aM372b.f572l);
                if (C1315b.f462b != null) {
                    for (AbstractC1314a abstractC1314a : C1315b.f462b) {
                        if (abstractC1314a.versionKey != null && abstractC1314a.version != null) {
                            c1358am.f896k.put(abstractC1314a.versionKey, abstractC1314a.version);
                        }
                    }
                }
                c1358am.f896k.put("G15", C1388z.m820b("G15", ""));
                c1358am.f896k.put("D4", C1388z.m820b("D4", "0"));
            }
            Map<String, String> mapM413x = c1323aM372b.m413x();
            if (mapM413x != null) {
                for (Map.Entry<String, String> entry : mapM413x.entrySet()) {
                    c1358am.f896k.put(entry.getKey(), entry.getValue());
                }
            }
            return c1358am;
        } catch (Throwable th) {
            if (!C1386x.m770b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private void m589a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals("byte")) {
                throw new IllegalArgumentException("only byte[] is supported");
            }
            if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                m589a(arrayList, Array.get(obj, 0));
                return;
            } else {
                arrayList.add("Array");
                arrayList.add("?");
                return;
            }
        }
        if (obj instanceof Array) {
            throw new IllegalArgumentException("can not support Array, please use List");
        }
        if (obj instanceof List) {
            arrayList.add("java.util.List");
            List list = (List) obj;
            if (list.size() > 0) {
                m589a(arrayList, list.get(0));
                return;
            } else {
                arrayList.add("?");
                return;
            }
        }
        if (obj instanceof Map) {
            arrayList.add("java.util.Map");
            Map map = (Map) obj;
            if (map.size() > 0) {
                Object next = map.keySet().iterator().next();
                Object obj2 = map.get(next);
                arrayList.add(next.getClass().getName());
                m589a(arrayList, obj2);
                return;
            }
            arrayList.add("?");
            arrayList.add("?");
            return;
        }
        arrayList.add(obj.getClass().getName());
    }

    /* renamed from: a */
    public byte[] mo597a() throws UnsupportedEncodingException {
        C1372j c1372j = new C1372j(0);
        c1372j.m666a(this.f827b);
        c1372j.m675a((Map) this.f826a, 0);
        return C1374l.m684a(c1372j.m667a());
    }

    /* renamed from: a */
    public static byte[] m591a(Object obj) {
        try {
            C1366d c1366d = new C1366d();
            c1366d.mo620c();
            c1366d.mo594a("utf-8");
            c1366d.m621a(1);
            c1366d.m622b("RqdServer");
            c1366d.m623c("sync");
            c1366d.mo595a("detail", (String) obj);
            return c1366d.mo597a();
        } catch (Throwable th) {
            if (C1386x.m770b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public void mo596a(byte[] bArr) {
        this.f828c.m660a(bArr);
        this.f828c.m654a(this.f827b);
        HashMap map = new HashMap(1);
        HashMap map2 = new HashMap(1);
        map2.put("", new byte[0]);
        map.put("", map2);
        this.f826a = this.f828c.m658a((Map) map, 0, false);
    }

    /* renamed from: b */
    public static C1359an m592b(byte[] bArr) {
        if (bArr != null) {
            try {
                C1366d c1366d = new C1366d();
                c1366d.mo620c();
                c1366d.mo594a("utf-8");
                c1366d.mo596a(bArr);
                Object objB = c1366d.m619b("detail", new C1359an());
                if (C1359an.class.isInstance(objB)) {
                    return (C1359an) C1359an.class.cast(objB);
                }
                return null;
            } catch (Throwable th) {
                if (!C1386x.m770b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public static byte[] m590a(AbstractC1373k abstractC1373k) {
        try {
            C1372j c1372j = new C1372j();
            c1372j.m666a("utf-8");
            abstractC1373k.mo617a(c1372j);
            return c1372j.m679b();
        } catch (Throwable th) {
            if (C1386x.m770b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
