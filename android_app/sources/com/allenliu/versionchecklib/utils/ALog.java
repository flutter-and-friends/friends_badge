package com.allenliu.versionchecklib.utils;

import android.util.Log;
import com.allenliu.versionchecklib.core.AllenChecker;

/* loaded from: classes.dex */
public class ALog {
    /* renamed from: e */
    public static void m269e(String str) {
        if (!AllenChecker.isDebug() || str == null || str.isEmpty()) {
            return;
        }
        Log.e("Allen Checker", str);
    }
}
