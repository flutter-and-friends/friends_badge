package com.tencent.bugly.proguard;

import android.util.Log;
import java.util.Locale;

/* compiled from: BUGLY */
/* renamed from: com.tencent.bugly.proguard.x */
/* loaded from: classes.dex */
public final class C1386x {

    /* renamed from: a */
    public static String f1070a = "CrashReport";

    /* renamed from: b */
    public static boolean f1071b = false;

    /* renamed from: c */
    private static String f1072c = "CrashReportInfo";

    /* renamed from: a */
    private static boolean m764a(int i, String str, Object... objArr) {
        if (!f1071b) {
            return false;
        }
        if (str == null) {
            str = "null";
        } else if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        if (i == 0) {
            Log.i(f1070a, str);
            return true;
        }
        if (i == 1) {
            Log.d(f1070a, str);
            return true;
        }
        if (i == 2) {
            Log.w(f1070a, str);
            return true;
        }
        if (i == 3) {
            Log.e(f1070a, str);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Log.i(f1072c, str);
        return true;
    }

    /* renamed from: a */
    public static boolean m766a(String str, Object... objArr) {
        return m764a(0, str, objArr);
    }

    /* renamed from: a */
    public static boolean m765a(Class cls, String str, Object... objArr) {
        return m764a(0, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    /* renamed from: b */
    public static boolean m769b(String str, Object... objArr) {
        return m764a(5, str, objArr);
    }

    /* renamed from: c */
    public static boolean m771c(String str, Object... objArr) {
        return m764a(1, str, objArr);
    }

    /* renamed from: b */
    public static boolean m768b(Class cls, String str, Object... objArr) {
        return m764a(1, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    /* renamed from: d */
    public static boolean m772d(String str, Object... objArr) {
        return m764a(2, str, objArr);
    }

    /* renamed from: a */
    public static boolean m767a(Throwable th) {
        if (f1071b) {
            return m764a(2, C1388z.m802a(th), new Object[0]);
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m773e(String str, Object... objArr) {
        return m764a(3, str, objArr);
    }

    /* renamed from: b */
    public static boolean m770b(Throwable th) {
        if (f1071b) {
            return m764a(3, C1388z.m802a(th), new Object[0]);
        }
        return false;
    }
}
