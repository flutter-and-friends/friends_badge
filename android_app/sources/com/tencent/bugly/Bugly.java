package com.tencent.bugly;

import android.content.Context;
import android.device.scanner.configuration.PropertyID;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.proguard.C1378p;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import com.tencent.bugly.proguard.InterfaceC1377o;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class Bugly {
    public static final String SDK_IS_DEV = "false";

    /* renamed from: a */
    private static boolean f434a = false;
    public static Context applicationContext = null;

    /* renamed from: b */
    private static String[] f435b = {"BuglyCrashModule", "BuglyRqdModule", "BuglyBetaModule"};

    /* renamed from: c */
    private static String[] f436c = {"BuglyRqdModule", "BuglyCrashModule", "BuglyBetaModule"};
    public static boolean enable = true;
    public static Boolean isDev;

    public static void init(Context context, String str, boolean z) {
        init(context, str, z, null);
    }

    public static synchronized void init(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        if (f434a) {
            return;
        }
        f434a = true;
        Context contextM791a = C1388z.m791a(context);
        applicationContext = contextM791a;
        if (contextM791a == null) {
            Log.e(C1386x.f1070a, "init arg 'context' should not be null!");
            return;
        }
        if (isDev()) {
            f435b = f436c;
        }
        for (String str2 : f435b) {
            try {
                if (str2.equals("BuglyCrashModule")) {
                    C1315b.m321a(CrashModule.getInstance());
                } else if (!str2.equals("BuglyBetaModule") && !str2.equals("BuglyRqdModule")) {
                    str2.equals("BuglyFeedbackModule");
                }
            } catch (Throwable th) {
                C1386x.m770b(th);
            }
        }
        C1315b.f461a = enable;
        C1315b.m320a(applicationContext, str, z, buglyStrategy);
    }

    public static synchronized String getAppChannel() {
        byte[] bArr;
        C1323a c1323aM372b = C1323a.m372b();
        if (c1323aM372b == null) {
            return null;
        }
        if (TextUtils.isEmpty(c1323aM372b.f573m)) {
            C1378p c1378pM707a = C1378p.m707a();
            if (c1378pM707a == null) {
                return c1323aM372b.f573m;
            }
            Map<String, byte[]> mapM725a = c1378pM707a.m725a(PropertyID.I25_SECURITY_LEVEL, (InterfaceC1377o) null, true);
            if (mapM725a != null && (bArr = mapM725a.get("app_channel")) != null) {
                return new String(bArr);
            }
        }
        return c1323aM372b.f573m;
    }

    public static boolean isDev() {
        if (isDev == null) {
            isDev = Boolean.valueOf(Boolean.parseBoolean(SDK_IS_DEV.replace("@", "")));
        }
        return isDev.booleanValue();
    }
}
