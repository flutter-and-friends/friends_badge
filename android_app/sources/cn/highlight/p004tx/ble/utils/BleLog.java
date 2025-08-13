package cn.highlight.p004tx.ble.utils;

import android.util.Log;

/* loaded from: classes.dex */
public final class BleLog {
    private static String defaultTag = "FastBle";
    public static boolean isPrint = true;

    /* renamed from: d */
    public static void m40d(String str) {
        if (!isPrint || str == null) {
            return;
        }
        Log.d(defaultTag, str);
    }

    /* renamed from: i */
    public static void m42i(String str) {
        if (!isPrint || str == null) {
            return;
        }
        Log.i(defaultTag, str);
    }

    /* renamed from: w */
    public static void m43w(String str) {
        if (!isPrint || str == null) {
            return;
        }
        Log.w(defaultTag, str);
    }

    /* renamed from: e */
    public static void m41e(String str) {
        if (!isPrint || str == null) {
            return;
        }
        Log.e(defaultTag, str);
    }
}
