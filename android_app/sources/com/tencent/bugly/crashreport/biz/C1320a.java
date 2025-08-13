package com.tencent.bugly.crashreport.biz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.proguard.C1378p;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import com.tencent.bugly.proguard.InterfaceC1377o;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.crashreport.biz.a */
/* loaded from: classes.dex */
public final class C1320a {

    /* renamed from: a */
    private Context f488a;

    /* renamed from: b */
    private long f489b;

    /* renamed from: c */
    private int f490c;

    /* renamed from: d */
    private boolean f491d;

    /* renamed from: a */
    static /* synthetic */ void m332a(C1320a c1320a, UserInfoBean userInfoBean, boolean z) {
        List<UserInfoBean> listM336a;
        if (userInfoBean != null) {
            if (!z && userInfoBean.f470b != 1 && (listM336a = c1320a.m336a(C1323a.m371a(c1320a.f488a).f564d)) != null && listM336a.size() >= 20) {
                C1386x.m766a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(listM336a.size()));
                return;
            }
            long jM722a = C1378p.m707a().m722a("t_ui", m329a(userInfoBean), (InterfaceC1377o) null, true);
            if (jM722a >= 0) {
                C1386x.m771c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(jM722a));
                userInfoBean.f469a = jM722a;
            }
        }
    }

    public C1320a(Context context, boolean z) {
        this.f491d = true;
        this.f488a = context;
        this.f491d = z;
    }

    /* renamed from: a */
    public final void m338a(int i, boolean z, long j) {
        C1326a c1326aM444a = C1326a.m444a();
        if (c1326aM444a != null && !c1326aM444a.m454c().f595f && i != 1 && i != 3) {
            C1386x.m773e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i == 1 || i == 3) {
            this.f490c++;
        }
        C1323a c1323aM371a = C1323a.m371a(this.f488a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.f470b = i;
        userInfoBean.f471c = c1323aM371a.f564d;
        userInfoBean.f472d = c1323aM371a.m395g();
        userInfoBean.f473e = System.currentTimeMillis();
        userInfoBean.f474f = -1L;
        userInfoBean.f482n = c1323aM371a.f571k;
        userInfoBean.f483o = i == 1 ? 1 : 0;
        userInfoBean.f480l = c1323aM371a.m381a();
        userInfoBean.f481m = c1323aM371a.f577q;
        userInfoBean.f475g = c1323aM371a.f578r;
        userInfoBean.f476h = c1323aM371a.f579s;
        userInfoBean.f477i = c1323aM371a.f580t;
        userInfoBean.f479k = c1323aM371a.f581u;
        userInfoBean.f486r = c1323aM371a.m409t();
        userInfoBean.f487s = c1323aM371a.m414y();
        userInfoBean.f484p = c1323aM371a.m415z();
        userInfoBean.f485q = c1323aM371a.m373A();
        C1385w.m758a().m761a(new a(userInfoBean, z), 0L);
    }

    /* renamed from: a */
    public final void m337a() {
        this.f489b = C1388z.m818b() + 86400000;
        C1385w.m758a().m761a(new b(), (this.f489b - System.currentTimeMillis()) + 5000);
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$a */
    class a implements Runnable {

        /* renamed from: a */
        private boolean f495a;

        /* renamed from: b */
        private UserInfoBean f496b;

        public a(UserInfoBean userInfoBean, boolean z) {
            this.f496b = userInfoBean;
            this.f495a = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1323a c1323aM372b;
            try {
                if (this.f496b != null) {
                    UserInfoBean userInfoBean = this.f496b;
                    if (userInfoBean != null && (c1323aM372b = C1323a.m372b()) != null) {
                        userInfoBean.f478j = c1323aM372b.m391e();
                    }
                    C1386x.m771c("[UserInfo] Record user info.", new Object[0]);
                    C1320a.m332a(C1320a.this, this.f496b, false);
                }
                if (this.f495a) {
                    C1320a c1320a = C1320a.this;
                    C1385w c1385wM758a = C1385w.m758a();
                    if (c1385wM758a != null) {
                        c1385wM758a.m760a(c1320a.new AnonymousClass2());
                    }
                }
            } catch (Throwable th) {
                if (C1386x.m767a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f2 A[Catch: all -> 0x0173, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:51:0x00c6, B:53:0x00cb, B:55:0x00d0, B:58:0x00d7, B:61:0x00ec, B:63:0x00f2, B:65:0x00f7, B:68:0x00fe, B:72:0x0116, B:74:0x011c, B:77:0x0125, B:79:0x012b, B:82:0x0134, B:84:0x013e, B:87:0x0147, B:91:0x0165, B:94:0x016a, B:59:0x00e6), top: B:100:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011c A[Catch: all -> 0x0173, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:51:0x00c6, B:53:0x00cb, B:55:0x00d0, B:58:0x00d7, B:61:0x00ec, B:63:0x00f2, B:65:0x00f7, B:68:0x00fe, B:72:0x0116, B:74:0x011c, B:77:0x0125, B:79:0x012b, B:82:0x0134, B:84:0x013e, B:87:0x0147, B:91:0x0165, B:94:0x016a, B:59:0x00e6), top: B:100:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0125 A[Catch: all -> 0x0173, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:11:0x000f, B:15:0x0017, B:17:0x001d, B:21:0x0027, B:23:0x003c, B:26:0x0045, B:28:0x004c, B:29:0x004f, B:31:0x0055, B:33:0x0069, B:34:0x0079, B:38:0x0081, B:39:0x008b, B:40:0x0090, B:42:0x0096, B:44:0x00a4, B:46:0x00b1, B:47:0x00b4, B:49:0x00c2, B:51:0x00c6, B:53:0x00cb, B:55:0x00d0, B:58:0x00d7, B:61:0x00ec, B:63:0x00f2, B:65:0x00f7, B:68:0x00fe, B:72:0x0116, B:74:0x011c, B:77:0x0125, B:79:0x012b, B:82:0x0134, B:84:0x013e, B:87:0x0147, B:91:0x0165, B:94:0x016a, B:59:0x00e6), top: B:100:0x0001 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void m335c() {
        /*
            Method dump skipped, instructions count: 374
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.C1320a.m335c():void");
    }

    /* renamed from: b */
    public final void m339b() {
        C1385w c1385wM758a = C1385w.m758a();
        if (c1385wM758a != null) {
            c1385wM758a.m760a(new AnonymousClass2());
        }
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$2, reason: invalid class name */
    final class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                C1320a.this.m335c();
            } catch (Throwable th) {
                C1386x.m767a(th);
            }
        }
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis < C1320a.this.f489b) {
                C1385w.m758a().m761a(C1320a.this.new b(), (C1320a.this.f489b - jCurrentTimeMillis) + 5000);
            } else {
                C1320a.this.m338a(3, false, 0L);
                C1320a.this.m337a();
            }
        }
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$c */
    class c implements Runnable {

        /* renamed from: a */
        private long f499a;

        public c(long j) {
            this.f499a = 21600000L;
            this.f499a = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1320a c1320a = C1320a.this;
            C1385w c1385wM758a = C1385w.m758a();
            if (c1385wM758a != null) {
                c1385wM758a.m760a(c1320a.new AnonymousClass2());
            }
            C1320a c1320a2 = C1320a.this;
            long j = this.f499a;
            C1385w.m758a().m761a(c1320a2.new c(j), j);
        }
    }

    /* renamed from: a */
    public final List<UserInfoBean> m336a(String str) {
        Cursor cursorM723a;
        String str2;
        try {
            if (C1388z.m814a(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursorM723a = C1378p.m707a().m723a("t_ui", null, str2, null, null, true);
            if (cursorM723a == null) {
                return null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursorM723a.moveToNext()) {
                    UserInfoBean userInfoBeanM330a = m330a(cursorM723a);
                    if (userInfoBeanM330a != null) {
                        arrayList.add(userInfoBeanM330a);
                    } else {
                        try {
                            long j = cursorM723a.getLong(cursorM723a.getColumnIndex("_id"));
                            sb.append(" or _id");
                            sb.append(" = ");
                            sb.append(j);
                        } catch (Throwable unused) {
                            C1386x.m772d("[Database] unknown id.", new Object[0]);
                        }
                    }
                }
                String string = sb.toString();
                if (string.length() > 0) {
                    C1386x.m772d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(C1378p.m707a().m721a("t_ui", string.substring(4), (String[]) null, (InterfaceC1377o) null, true)));
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

    /* renamed from: a */
    private static void m333a(List<UserInfoBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size() && i < 50; i++) {
            UserInfoBean userInfoBean = list.get(i);
            sb.append(" or _id");
            sb.append(" = ");
            sb.append(userInfoBean.f469a);
        }
        String string = sb.toString();
        if (string.length() > 0) {
            string = string.substring(4);
        }
        String str = string;
        sb.setLength(0);
        try {
            C1386x.m771c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(C1378p.m707a().m721a("t_ui", str, (String[]) null, (InterfaceC1377o) null, true)));
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    private static ContentValues m329a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (userInfoBean.f469a > 0) {
                contentValues.put("_id", Long.valueOf(userInfoBean.f469a));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.f473e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f474f));
            contentValues.put("_tp", Integer.valueOf(userInfoBean.f470b));
            contentValues.put("_pc", userInfoBean.f471c);
            contentValues.put("_dt", C1388z.m815a(userInfoBean));
            return contentValues;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private static UserInfoBean m330a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex("_id"));
            UserInfoBean userInfoBean = (UserInfoBean) C1388z.m796a(blob, UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.f469a = j;
            }
            return userInfoBean;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }
}
