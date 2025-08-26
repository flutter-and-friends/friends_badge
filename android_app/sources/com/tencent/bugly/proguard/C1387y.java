package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.info.C1323a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.y */
/* loaded from: classes.dex */
public final class C1387y {

    /* renamed from: a */
    public static boolean f1073a = true;

    /* renamed from: b */
    private static boolean f1074b = true;

    /* renamed from: c */
    private static SimpleDateFormat f1075c = null;

    /* renamed from: d */
    private static int f1076d = 30720;

    /* renamed from: e */
    private static StringBuilder f1077e = null;

    /* renamed from: f */
    private static StringBuilder f1078f = null;

    /* renamed from: g */
    private static boolean f1079g = false;

    /* renamed from: h */
    private static a f1080h = null;

    /* renamed from: i */
    private static String f1081i = null;

    /* renamed from: j */
    private static String f1082j = null;

    /* renamed from: k */
    private static Context f1083k = null;

    /* renamed from: l */
    private static String f1084l = null;

    /* renamed from: m */
    private static boolean f1085m = false;

    /* renamed from: n */
    private static boolean f1086n = false;

    /* renamed from: o */
    private static ExecutorService f1087o;

    /* renamed from: p */
    private static int f1088p;

    /* renamed from: q */
    private static final Object f1089q = new Object();

    static {
        try {
            f1075c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
            C1386x.m770b(th.getCause());
        }
    }

    /* renamed from: a */
    public static synchronized void m776a(Context context) {
        if (f1085m || context == null || !f1073a) {
            return;
        }
        try {
            f1087o = Executors.newSingleThreadExecutor();
            f1078f = new StringBuilder(0);
            f1077e = new StringBuilder(0);
            f1083k = context;
            C1323a c1323aM371a = C1323a.m371a(context);
            f1081i = c1323aM371a.f564d;
            c1323aM371a.getClass();
            f1082j = "";
            f1084l = f1083k.getFilesDir().getPath() + "/buglylog_" + f1081i + "_" + f1082j + ".txt";
            f1088p = Process.myPid();
        } catch (Throwable unused) {
        }
        f1085m = true;
    }

    /* renamed from: a */
    public static void m775a(int i) {
        synchronized (f1089q) {
            f1076d = i;
            if (i < 0) {
                f1076d = 0;
            } else if (i > 30720) {
                f1076d = 30720;
            }
        }
    }

    /* renamed from: a */
    public static void m778a(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        m777a(str, str2, message + '\n' + C1388z.m821b(th));
    }

    /* renamed from: a */
    public static synchronized void m777a(final String str, final String str2, final String str3) {
        if (f1085m && f1073a) {
            try {
                f1087o.execute(new Runnable() { // from class: com.tencent.bugly.proguard.y.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1387y.m782c(str, str2, str3);
                    }
                });
            } catch (Exception e) {
                C1386x.m770b(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static synchronized void m782c(String str, String str2, String str3) {
        if (f1074b) {
            m783d(str, str2, str3);
        } else {
            m784e(str, str2, str3);
        }
    }

    /* renamed from: d */
    private static synchronized void m783d(String str, String str2, String str3) {
        String strM774a = m774a(str, str2, str3, Process.myTid());
        synchronized (f1089q) {
            try {
                f1078f.append(strM774a);
                if (f1078f.length() >= f1076d) {
                    f1078f = f1078f.delete(0, f1078f.indexOf("\u0001\r\n") + 1);
                }
            } finally {
            }
        }
    }

    /* renamed from: e */
    private static synchronized void m784e(String str, String str2, String str3) {
        String strM774a = m774a(str, str2, str3, Process.myTid());
        synchronized (f1089q) {
            try {
                f1078f.append(strM774a);
            } catch (Throwable unused) {
            }
            if (f1078f.length() <= f1076d) {
                return;
            }
            if (f1079g) {
                return;
            }
            f1079g = true;
            if (f1080h == null) {
                f1080h = new a(f1084l);
            } else if (f1080h.f1094b == null || f1080h.f1094b.length() + f1078f.length() > f1080h.f1097e) {
                f1080h.m786a();
            }
            if (f1080h.m790a(f1078f.toString())) {
                f1078f.setLength(0);
                f1079g = false;
            }
        }
    }

    /* renamed from: a */
    private static String m774a(String str, String str2, String str3, long j) {
        String string;
        f1077e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = f1075c;
        if (simpleDateFormat != null) {
            string = simpleDateFormat.format(date);
        } else {
            string = date.toString();
        }
        StringBuilder sb = f1077e;
        sb.append(string);
        sb.append(" ");
        sb.append(f1088p);
        sb.append(" ");
        sb.append(j);
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str3);
        sb.append("\u0001\r\n");
        return f1077e.toString();
    }

    /* renamed from: a */
    public static byte[] m779a() {
        if (f1074b) {
            if (f1073a) {
                return C1388z.m816a((File) null, f1078f.toString(), "BuglyLog.txt");
            }
            return null;
        }
        return m781b();
    }

    /* renamed from: b */
    private static byte[] m781b() {
        if (!f1073a) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        synchronized (f1089q) {
            if (f1080h != null && f1080h.f1093a && f1080h.f1094b != null && f1080h.f1094b.length() > 0) {
                sb.append(C1388z.m801a(f1080h.f1094b, 30720, true));
            }
            if (f1078f != null && f1078f.length() > 0) {
                sb.append(f1078f.toString());
            }
        }
        return C1388z.m816a((File) null, sb.toString(), "BuglyLog.txt");
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.proguard.y$a */
    public static class a {

        /* renamed from: a */
        private boolean f1093a;

        /* renamed from: b */
        private File f1094b;

        /* renamed from: c */
        private String f1095c;

        /* renamed from: d */
        private long f1096d;

        /* renamed from: e */
        private long f1097e = 30720;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.f1095c = str;
            this.f1093a = m786a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public boolean m786a() {
            try {
                this.f1094b = new File(this.f1095c);
                if (this.f1094b.exists() && !this.f1094b.delete()) {
                    this.f1093a = false;
                    return false;
                }
                if (this.f1094b.createNewFile()) {
                    return true;
                }
                this.f1093a = false;
                return false;
            } catch (Throwable th) {
                C1386x.m767a(th);
                this.f1093a = false;
                return false;
            }
        }

        /* renamed from: a */
        public final boolean m790a(String str) throws IOException {
            FileOutputStream fileOutputStream;
            if (!this.f1093a) {
                return false;
            }
            try {
                fileOutputStream = new FileOutputStream(this.f1094b, true);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
            try {
                fileOutputStream.write(str.getBytes("UTF-8"));
                fileOutputStream.flush();
                fileOutputStream.close();
                this.f1096d += r10.length;
                this.f1093a = true;
                try {
                    fileOutputStream.close();
                } catch (IOException unused) {
                }
                return true;
            } catch (Throwable th2) {
                th = th2;
                try {
                    C1386x.m767a(th);
                    this.f1093a = false;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return false;
                } catch (Throwable th3) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th3;
                }
            }
        }
    }
}
