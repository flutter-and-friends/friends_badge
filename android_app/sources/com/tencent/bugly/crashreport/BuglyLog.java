package com.tencent.bugly.crashreport;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.tencent.bugly.C1315b;
import com.tencent.bugly.proguard.C1387y;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class BuglyLog {
    /* renamed from: v */
    public static void m327v(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C1315b.f463c) {
            Log.v(str, str2);
        }
        C1387y.m777a(ExifInterface.GPS_MEASUREMENT_INTERRUPTED, str, str2);
    }

    /* renamed from: d */
    public static void m323d(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C1315b.f463c) {
            Log.d(str, str2);
        }
        C1387y.m777a("D", str, str2);
    }

    /* renamed from: i */
    public static void m326i(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C1315b.f463c) {
            Log.i(str, str2);
        }
        C1387y.m777a("I", str, str2);
    }

    /* renamed from: w */
    public static void m328w(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C1315b.f463c) {
            Log.w(str, str2);
        }
        C1387y.m777a(ExifInterface.LONGITUDE_WEST, str, str2);
    }

    /* renamed from: e */
    public static void m324e(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C1315b.f463c) {
            Log.e(str, str2);
        }
        C1387y.m777a(ExifInterface.LONGITUDE_EAST, str, str2);
    }

    /* renamed from: e */
    public static void m325e(String str, String str2, Throwable th) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C1315b.f463c) {
            Log.e(str, str2, th);
        }
        C1387y.m778a(ExifInterface.LONGITUDE_EAST, str, th);
    }

    public static void setCache(int i) {
        C1387y.m775a(i);
    }
}
