package cn.manytag.rfidapi.ble.d;

import android.util.Log;

/* loaded from: classes.dex */
public final class a {
    public static boolean a = true;
    private static String b = "FastBle";

    public static void a(String str) {
        if (!a || str == null) {
            return;
        }
        Log.i(b, str);
    }

    public static void b(String str) {
        if (!a || str == null) {
            return;
        }
        Log.w(b, str);
    }

    public static void c(String str) {
        if (!a || str == null) {
            return;
        }
        Log.e(b, str);
    }
}
