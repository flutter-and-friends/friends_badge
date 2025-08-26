package cn.manytag.rfidapi.ble.p010d;

import android.util.Log;

/* renamed from: cn.manytag.rfidapi.ble.d.a */
/* loaded from: classes.dex */
public final class C0685a {

    /* renamed from: a */
    public static boolean f235a = true;

    /* renamed from: b */
    private static String f236b = "FastBle";

    /* renamed from: a */
    public static void m201a(String str) {
        if (!f235a || str == null) {
            return;
        }
        Log.i(f236b, str);
    }

    /* renamed from: b */
    public static void m202b(String str) {
        if (!f235a || str == null) {
            return;
        }
        Log.w(f236b, str);
    }

    /* renamed from: c */
    public static void m203c(String str) {
        if (!f235a || str == null) {
            return;
        }
        Log.e(f236b, str);
    }
}
