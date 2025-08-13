package com.isseiaoki.simplecropview.util;

import android.util.Log;

/* loaded from: classes.dex */
public class Logger {
    private static final String TAG = "SimpleCropView";
    public static boolean enabled = false;

    /* renamed from: e */
    public static void m309e(String str) {
        if (enabled) {
            Log.e(TAG, str);
        }
    }

    /* renamed from: e */
    public static void m310e(String str, Throwable th) {
        if (enabled) {
            Log.e(TAG, str, th);
        }
    }

    /* renamed from: i */
    public static void m311i(String str) {
        if (enabled) {
            Log.i(TAG, str);
        }
    }

    /* renamed from: i */
    public static void m312i(String str, Throwable th) {
        if (enabled) {
            Log.i(TAG, str, th);
        }
    }
}
