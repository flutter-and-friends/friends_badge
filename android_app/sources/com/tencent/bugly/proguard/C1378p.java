package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.bugly.AbstractC1314a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.p */
/* loaded from: classes.dex */
public final class C1378p {

    /* renamed from: a */
    private static C1378p f999a = null;

    /* renamed from: b */
    private static C1379q f1000b = null;

    /* renamed from: c */
    private static boolean f1001c = false;

    private C1378p(Context context, List<AbstractC1314a> list) {
        f1000b = new C1379q(context, list);
    }

    /* renamed from: a */
    public static synchronized C1378p m708a(Context context, List<AbstractC1314a> list) {
        if (f999a == null) {
            f999a = new C1378p(context, list);
        }
        return f999a;
    }

    /* renamed from: a */
    public static synchronized C1378p m707a() {
        return f999a;
    }

    /* renamed from: a */
    public final long m722a(String str, ContentValues contentValues, InterfaceC1377o interfaceC1377o, boolean z) {
        return m704a(str, contentValues, (InterfaceC1377o) null);
    }

    /* renamed from: a */
    public final Cursor m723a(String str, String[] strArr, String str2, String[] strArr2, InterfaceC1377o interfaceC1377o, boolean z) {
        return m706a(false, str, strArr, str2, null, null, null, null, null, null);
    }

    /* renamed from: a */
    public final int m721a(String str, String str2, String[] strArr, InterfaceC1377o interfaceC1377o, boolean z) {
        return m702a(str, str2, (String[]) null, (InterfaceC1377o) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized long m704a(String str, ContentValues contentValues, InterfaceC1377o interfaceC1377o) {
        long j;
        j = 0;
        try {
            SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long jReplace = writableDatabase.replace(str, "_id", contentValues);
                if (jReplace >= 0) {
                    C1386x.m771c("[Database] insert %s success.", str);
                } else {
                    C1386x.m772d("[Database] replace %s error.", str);
                }
                j = jReplace;
            }
        } catch (Throwable th) {
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                if (interfaceC1377o != null) {
                }
            } finally {
                if (interfaceC1377o != null) {
                    Long.valueOf(0L);
                }
            }
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized Cursor m706a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, InterfaceC1377o interfaceC1377o) {
        Cursor cursorQuery;
        cursorQuery = null;
        try {
            SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
            if (writableDatabase != null) {
                cursorQuery = writableDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } finally {
            try {
                return cursorQuery;
            } finally {
            }
        }
        return cursorQuery;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized int m702a(String str, String str2, String[] strArr, InterfaceC1377o interfaceC1377o) {
        int iDelete;
        try {
            SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
            iDelete = writableDatabase != null ? writableDatabase.delete(str, str2, strArr) : 0;
        } catch (Throwable th) {
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                if (interfaceC1377o != null) {
                }
            } finally {
                if (interfaceC1377o != null) {
                    Integer.valueOf(0);
                }
            }
        }
        return iDelete;
    }

    /* renamed from: a */
    public final boolean m727a(int i, String str, byte[] bArr, InterfaceC1377o interfaceC1377o, boolean z) {
        if (!z) {
            a aVar = new a(4, null);
            aVar.m730a(i, str, bArr);
            C1385w.m758a().m760a(aVar);
            return true;
        }
        return m713a(i, str, bArr, (InterfaceC1377o) null);
    }

    /* renamed from: a */
    public final Map<String, byte[]> m725a(int i, InterfaceC1377o interfaceC1377o, boolean z) {
        return m710a(i, (InterfaceC1377o) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m713a(int i, String str, byte[] bArr, InterfaceC1377o interfaceC1377o) {
        boolean zM717b = false;
        try {
            C1380r c1380r = new C1380r();
            c1380r.f1024a = i;
            c1380r.f1029f = str;
            c1380r.f1028e = System.currentTimeMillis();
            c1380r.f1030g = bArr;
            zM717b = m717b(c1380r);
        } catch (Throwable th) {
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                if (interfaceC1377o != null) {
                }
            } finally {
                if (interfaceC1377o != null) {
                    Boolean.valueOf(false);
                }
            }
        }
        return zM717b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Map<String, byte[]> m710a(int i, InterfaceC1377o interfaceC1377o) {
        HashMap map = null;
        try {
            List<C1380r> listM719c = m719c(i);
            if (listM719c == null) {
                return null;
            }
            HashMap map2 = new HashMap();
            try {
                for (C1380r c1380r : listM719c) {
                    byte[] bArr = c1380r.f1030g;
                    if (bArr != null) {
                        map2.put(c1380r.f1029f, bArr);
                    }
                }
                return map2;
            } catch (Throwable th) {
                th = th;
                map = map2;
                if (C1386x.m767a(th)) {
                    return map;
                }
                th.printStackTrace();
                return map;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    public final synchronized boolean m728a(C1380r c1380r) {
        ContentValues contentValuesM718c;
        if (c1380r == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
            if (writableDatabase == null || (contentValuesM718c = m718c(c1380r)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_lr", "_id", contentValuesM718c);
            if (jReplace < 0) {
                return false;
            }
            C1386x.m771c("[Database] insert %s success.", "t_lr");
            c1380r.f1024a = jReplace;
            return true;
        } catch (Throwable th) {
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    /* renamed from: b */
    private synchronized boolean m717b(C1380r c1380r) {
        ContentValues contentValuesM720d;
        if (c1380r == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
            if (writableDatabase == null || (contentValuesM720d = m720d(c1380r)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_pf", "_id", contentValuesM720d);
            if (jReplace < 0) {
                return false;
            }
            C1386x.m771c("[Database] insert %s success.", "t_pf");
            c1380r.f1024a = jReplace;
            return true;
        } catch (Throwable th) {
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #0 {all -> 0x00b1, blocks: (B:35:0x00a2, B:37:0x00a8), top: B:49:0x00a2, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: all -> 0x00ba, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0001, B:14:0x0032, B:31:0x009c, B:39:0x00ad, B:42:0x00b4, B:43:0x00b7, B:35:0x00a2, B:37:0x00a8), top: B:55:0x0001, inners: #0 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized java.util.List<com.tencent.bugly.proguard.C1380r> m724a(int r11) {
        /*
            r10 = this;
            monitor-enter(r10)
            com.tencent.bugly.proguard.q r0 = com.tencent.bugly.proguard.C1378p.f1000b     // Catch: java.lang.Throwable -> Lba
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: java.lang.Throwable -> Lba
            r9 = 0
            if (r0 == 0) goto Lb8
            if (r11 < 0) goto L21
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1c
            java.lang.String r2 = "_tp = "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1c
            r1.append(r11)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r11 = r1.toString()     // Catch: java.lang.Throwable -> L1c
            r4 = r11
            goto L22
        L1c:
            r11 = move-exception
            r0 = r11
            r11 = r9
            goto La2
        L21:
            r4 = r9
        L22:
            java.lang.String r2 = "t_lr"
            r3 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r0
            android.database.Cursor r11 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L1c
            if (r11 != 0) goto L37
            if (r11 == 0) goto L35
            r11.close()     // Catch: java.lang.Throwable -> Lba
        L35:
            monitor-exit(r10)
            return r9
        L37:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La1
            r1.<init>()     // Catch: java.lang.Throwable -> La1
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La1
            r2.<init>()     // Catch: java.lang.Throwable -> La1
        L41:
            boolean r3 = r11.moveToNext()     // Catch: java.lang.Throwable -> La1
            r4 = 0
            if (r3 == 0) goto L72
            com.tencent.bugly.proguard.r r3 = m709a(r11)     // Catch: java.lang.Throwable -> La1
            if (r3 == 0) goto L52
            r2.add(r3)     // Catch: java.lang.Throwable -> La1
            goto L41
        L52:
            java.lang.String r3 = "_id"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L6a
            long r5 = r11.getLong(r3)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = " or _id"
            r1.append(r3)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r3 = " = "
            r1.append(r3)     // Catch: java.lang.Throwable -> L6a
            r1.append(r5)     // Catch: java.lang.Throwable -> L6a
            goto L41
        L6a:
            java.lang.String r3 = "[Database] unknown id."
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> La1
            com.tencent.bugly.proguard.C1386x.m772d(r3, r4)     // Catch: java.lang.Throwable -> La1
            goto L41
        L72:
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La1
            int r3 = r1.length()     // Catch: java.lang.Throwable -> La1
            if (r3 <= 0) goto L9a
            r3 = 4
            java.lang.String r1 = r1.substring(r3)     // Catch: java.lang.Throwable -> La1
            java.lang.String r3 = "t_lr"
            int r0 = r0.delete(r3, r1, r9)     // Catch: java.lang.Throwable -> La1
            java.lang.String r1 = "[Database] deleted %s illegal data %d"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> La1
            java.lang.String r5 = "t_lr"
            r3[r4] = r5     // Catch: java.lang.Throwable -> La1
            r4 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> La1
            r3[r4] = r0     // Catch: java.lang.Throwable -> La1
            com.tencent.bugly.proguard.C1386x.m772d(r1, r3)     // Catch: java.lang.Throwable -> La1
        L9a:
            if (r11 == 0) goto L9f
            r11.close()     // Catch: java.lang.Throwable -> Lba
        L9f:
            monitor-exit(r10)
            return r2
        La1:
            r0 = move-exception
        La2:
            boolean r1 = com.tencent.bugly.proguard.C1386x.m767a(r0)     // Catch: java.lang.Throwable -> Lb1
            if (r1 != 0) goto Lab
            r0.printStackTrace()     // Catch: java.lang.Throwable -> Lb1
        Lab:
            if (r11 == 0) goto Lb8
            r11.close()     // Catch: java.lang.Throwable -> Lba
            goto Lb8
        Lb1:
            r0 = move-exception
            if (r11 == 0) goto Lb7
            r11.close()     // Catch: java.lang.Throwable -> Lba
        Lb7:
            throw r0     // Catch: java.lang.Throwable -> Lba
        Lb8:
            monitor-exit(r10)
            return r9
        Lba:
            r11 = move-exception
            monitor-exit(r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.C1378p.m724a(int):java.util.List");
    }

    /* renamed from: a */
    public final synchronized void m726a(List<C1380r> list) {
        if (list != null) {
            if (list.size() != 0) {
                SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
                if (writableDatabase != null) {
                    StringBuilder sb = new StringBuilder();
                    for (C1380r c1380r : list) {
                        sb.append(" or _id");
                        sb.append(" = ");
                        sb.append(c1380r.f1024a);
                    }
                    String string = sb.toString();
                    if (string.length() > 0) {
                        string = string.substring(4);
                    }
                    sb.setLength(0);
                    try {
                        C1386x.m771c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", string, null)));
                    } catch (Throwable th) {
                        if (C1386x.m767a(th)) {
                            return;
                        }
                        th.printStackTrace();
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final synchronized void m729b(int i) {
        String str;
        SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
        if (writableDatabase != null) {
            if (i >= 0) {
                try {
                    str = "_tp = " + i;
                } catch (Throwable th) {
                    if (C1386x.m767a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            } else {
                str = null;
            }
            C1386x.m771c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", str, null)));
        }
    }

    /* renamed from: c */
    private static ContentValues m718c(C1380r c1380r) {
        if (c1380r == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (c1380r.f1024a > 0) {
                contentValues.put("_id", Long.valueOf(c1380r.f1024a));
            }
            contentValues.put("_tp", Integer.valueOf(c1380r.f1025b));
            contentValues.put("_pc", c1380r.f1026c);
            contentValues.put("_th", c1380r.f1027d);
            contentValues.put("_tm", Long.valueOf(c1380r.f1028e));
            if (c1380r.f1030g != null) {
                contentValues.put("_dt", c1380r.f1030g);
            }
            return contentValues;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private static C1380r m709a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            C1380r c1380r = new C1380r();
            c1380r.f1024a = cursor.getLong(cursor.getColumnIndex("_id"));
            c1380r.f1025b = cursor.getInt(cursor.getColumnIndex("_tp"));
            c1380r.f1026c = cursor.getString(cursor.getColumnIndex("_pc"));
            c1380r.f1027d = cursor.getString(cursor.getColumnIndex("_th"));
            c1380r.f1028e = cursor.getLong(cursor.getColumnIndex("_tm"));
            c1380r.f1030g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return c1380r;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: c */
    private synchronized List<C1380r> m719c(int i) {
        Cursor cursorQuery;
        try {
            SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
            if (writableDatabase != null) {
                String str = "_id = " + i;
                cursorQuery = writableDatabase.query("t_pf", null, str, null, null, null, null);
                if (cursorQuery == null) {
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    while (cursorQuery.moveToNext()) {
                        C1380r c1380rM716b = m716b(cursorQuery);
                        if (c1380rM716b != null) {
                            arrayList.add(c1380rM716b);
                        } else {
                            try {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("_tp"));
                                sb.append(" or _tp");
                                sb.append(" = ");
                                sb.append(string);
                            } catch (Throwable unused) {
                                C1386x.m772d("[Database] unknown id.", new Object[0]);
                            }
                        }
                    }
                    if (sb.length() > 0) {
                        sb.append(" and _id");
                        sb.append(" = ");
                        sb.append(i);
                        C1386x.m772d("[Database] deleted %s illegal data %d.", "t_pf", Integer.valueOf(writableDatabase.delete("t_pf", str.substring(4), null)));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!C1386x.m767a(th)) {
                            th.printStackTrace();
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    } finally {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized boolean m712a(int i, String str, InterfaceC1377o interfaceC1377o) {
        boolean z;
        String str2;
        z = false;
        try {
            SQLiteDatabase writableDatabase = f1000b.getWritableDatabase();
            if (writableDatabase != null) {
                if (C1388z.m814a(str)) {
                    str2 = "_id = " + i;
                } else {
                    str2 = "_id = " + i + " and _tp = \"" + str + "\"";
                }
                int iDelete = writableDatabase.delete("t_pf", str2, null);
                C1386x.m771c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(iDelete));
                if (iDelete > 0) {
                    z = true;
                }
            }
        } catch (Throwable th) {
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                if (interfaceC1377o != null) {
                }
            } finally {
                if (interfaceC1377o != null) {
                    Boolean.valueOf(false);
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    private static ContentValues m720d(C1380r c1380r) {
        if (c1380r != null && !C1388z.m814a(c1380r.f1029f)) {
            try {
                ContentValues contentValues = new ContentValues();
                if (c1380r.f1024a > 0) {
                    contentValues.put("_id", Long.valueOf(c1380r.f1024a));
                }
                contentValues.put("_tp", c1380r.f1029f);
                contentValues.put("_tm", Long.valueOf(c1380r.f1028e));
                if (c1380r.f1030g != null) {
                    contentValues.put("_dt", c1380r.f1030g);
                }
                return contentValues;
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    /* renamed from: b */
    private static C1380r m716b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            C1380r c1380r = new C1380r();
            c1380r.f1024a = cursor.getLong(cursor.getColumnIndex("_id"));
            c1380r.f1028e = cursor.getLong(cursor.getColumnIndex("_tm"));
            c1380r.f1029f = cursor.getString(cursor.getColumnIndex("_tp"));
            c1380r.f1030g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return c1380r;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.proguard.p$a */
    class a extends Thread {

        /* renamed from: a */
        private int f1002a;

        /* renamed from: b */
        private InterfaceC1377o f1003b;

        /* renamed from: c */
        private String f1004c;

        /* renamed from: d */
        private ContentValues f1005d;

        /* renamed from: e */
        private boolean f1006e;

        /* renamed from: f */
        private String[] f1007f;

        /* renamed from: g */
        private String f1008g;

        /* renamed from: h */
        private String[] f1009h;

        /* renamed from: i */
        private String f1010i;

        /* renamed from: j */
        private String f1011j;

        /* renamed from: k */
        private String f1012k;

        /* renamed from: l */
        private String f1013l;

        /* renamed from: m */
        private String f1014m;

        /* renamed from: n */
        private String[] f1015n;

        /* renamed from: o */
        private int f1016o;

        /* renamed from: p */
        private String f1017p;

        /* renamed from: q */
        private byte[] f1018q;

        public a(int i, InterfaceC1377o interfaceC1377o) {
            this.f1002a = i;
            this.f1003b = interfaceC1377o;
        }

        /* renamed from: a */
        public final void m731a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
            this.f1006e = z;
            this.f1004c = str;
            this.f1007f = strArr;
            this.f1008g = str2;
            this.f1009h = strArr2;
            this.f1010i = str3;
            this.f1011j = str4;
            this.f1012k = str5;
            this.f1013l = str6;
        }

        /* renamed from: a */
        public final void m730a(int i, String str, byte[] bArr) {
            this.f1016o = i;
            this.f1017p = str;
            this.f1018q = bArr;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            switch (this.f1002a) {
                case 1:
                    C1378p.this.m704a(this.f1004c, this.f1005d, this.f1003b);
                    break;
                case 2:
                    C1378p.this.m702a(this.f1004c, this.f1014m, this.f1015n, this.f1003b);
                    break;
                case 3:
                    Cursor cursorM706a = C1378p.this.m706a(this.f1006e, this.f1004c, this.f1007f, this.f1008g, this.f1009h, this.f1010i, this.f1011j, this.f1012k, this.f1013l, this.f1003b);
                    if (cursorM706a != null) {
                        cursorM706a.close();
                        break;
                    }
                    break;
                case 4:
                    C1378p.this.m713a(this.f1016o, this.f1017p, this.f1018q, this.f1003b);
                    break;
                case 5:
                    C1378p.this.m710a(this.f1016o, this.f1003b);
                    break;
                case 6:
                    C1378p.this.m712a(this.f1016o, this.f1017p, this.f1003b);
                    break;
            }
        }
    }
}
