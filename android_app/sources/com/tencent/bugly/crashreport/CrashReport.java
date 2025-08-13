package com.tencent.bugly.crashreport;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.os.EnvironmentCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.C1315b;
import com.tencent.bugly.CrashModule;
import com.tencent.bugly.crashreport.biz.C1321b;
import com.tencent.bugly.crashreport.common.info.C1323a;
import com.tencent.bugly.crashreport.common.strategy.C1326a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver;
import com.tencent.bugly.crashreport.crash.C1337c;
import com.tencent.bugly.crashreport.crash.C1338d;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.crashreport.crash.p016h5.C1341b;
import com.tencent.bugly.crashreport.crash.p016h5.H5JavaScriptInterface;
import com.tencent.bugly.proguard.C1345a;
import com.tencent.bugly.proguard.C1379q;
import com.tencent.bugly.proguard.C1385w;
import com.tencent.bugly.proguard.C1386x;
import com.tencent.bugly.proguard.C1388z;
import java.net.InetAddress;
import java.net.Proxy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class CrashReport {

    /* renamed from: a */
    private static Context f466a;

    /* compiled from: BUGLY */
    public static class CrashHandleCallback extends BuglyStrategy.C1313a {
    }

    /* compiled from: BUGLY */
    public interface WebViewInterface {
        void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str);

        CharSequence getContentDescription();

        String getUrl();

        void loadUrl(String str);

        void setJavaScriptEnabled(boolean z);
    }

    public static void enableBugly(boolean z) {
        C1315b.f461a = z;
    }

    public static void initCrashReport(Context context) {
        if (context == null) {
            return;
        }
        f466a = context;
        C1315b.m321a(CrashModule.getInstance());
        C1315b.m318a(context);
    }

    public static void initCrashReport(Context context, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f466a = context;
        C1315b.m321a(CrashModule.getInstance());
        C1315b.m319a(context, userStrategy);
    }

    public static void initCrashReport(Context context, String str, boolean z) {
        if (context != null) {
            f466a = context;
            C1315b.m321a(CrashModule.getInstance());
            C1315b.m320a(context, str, z, null);
        }
    }

    public static void initCrashReport(Context context, String str, boolean z, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f466a = context;
        C1315b.m321a(CrashModule.getInstance());
        C1315b.m320a(context, str, z, userStrategy);
    }

    public static String getBuglyVersion(Context context) {
        if (context == null) {
            C1386x.m772d("Please call with context.", new Object[0]);
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return C1323a.m371a(context).m386c();
    }

    public static void testJavaCrash() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not test Java crash because bugly is disable.");
        } else {
            if (!CrashModule.getInstance().hasInitialized()) {
                Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
                return;
            }
            C1323a c1323aM372b = C1323a.m372b();
            if (c1323aM372b != null) {
                c1323aM372b.m382b(24096);
            }
            throw new RuntimeException("This Crash create for Test! You can go to Bugly see more detail!");
        }
    }

    public static void testNativeCrash() {
        testNativeCrash(false, false, false);
    }

    public static void testNativeCrash(boolean z, boolean z2, boolean z3) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not test native crash because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            C1386x.m766a("start to create a native crash for test!", new Object[0]);
            C1337c.m509a().m519a(z, z2, z3);
        }
    }

    public static void testANRCrash() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not test ANR crash because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            C1386x.m766a("start to create a anr crash for test!", new Object[0]);
            C1337c.m509a().m530l();
        }
    }

    public static void postException(Thread thread, int i, String str, String str2, String str3, Map<String, String> map) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not post crash caught because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            C1338d.m544a(thread, i, str, str2, str3, map);
        }
    }

    public static void postException(int i, String str, String str2, String str3, Map<String, String> map) {
        postException(Thread.currentThread(), i, str, str2, str3, map);
    }

    public static void postCatchedException(Throwable th) {
        postCatchedException(th, Thread.currentThread(), false);
    }

    public static void postCatchedException(Throwable th, Thread thread) {
        postCatchedException(th, thread, false);
    }

    public static void postCatchedException(Throwable th, Thread thread, boolean z) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not post crash caught because bugly is disable.");
            return;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return;
        }
        if (th == null) {
            C1386x.m772d("throwable is null, just return", new Object[0]);
            return;
        }
        if (thread == null) {
            thread = Thread.currentThread();
        }
        C1337c.m509a().m517a(thread, th, false, (String) null, (byte[]) null, z);
    }

    public static void closeNativeReport() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not close native report because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            C1337c.m509a().m525g();
        }
    }

    public static void startCrashReport() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not start crash report because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.w(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            C1337c.m509a().m521c();
        }
    }

    public static void closeCrashReport() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not close crash report because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.w(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            C1337c.m509a().m522d();
        }
    }

    public static void closeBugly() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not close bugly because bugly is disable.");
            return;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.w(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return;
        }
        if (f466a == null) {
            return;
        }
        BuglyBroadcastReceiver buglyBroadcastReceiver = BuglyBroadcastReceiver.getInstance();
        if (buglyBroadcastReceiver != null) {
            buglyBroadcastReceiver.unregister(f466a);
        }
        closeCrashReport();
        C1321b.m344a(f466a);
        C1385w c1385wM758a = C1385w.m758a();
        if (c1385wM758a != null) {
            c1385wM758a.m762b();
        }
    }

    public static void setUserSceneTag(Context context, int i) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set tag caught because bugly is disable.");
            return;
        }
        if (context == null) {
            Log.e(C1386x.f1070a, "setTag args context should not be null");
            return;
        }
        if (i <= 0) {
            C1386x.m772d("setTag args tagId should > 0", new Object[0]);
        }
        C1323a.m371a(context).m377a(i);
        C1386x.m769b("[param] set user scene tag: %d", Integer.valueOf(i));
    }

    public static int getUserSceneTagId(Context context) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get user scene tag because bugly is disable.");
            return -1;
        }
        if (context == null) {
            Log.e(C1386x.f1070a, "getUserSceneTagId args context should not be null");
            return -1;
        }
        return C1323a.m371a(context).m415z();
    }

    public static String getUserData(Context context, String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get user data because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (context == null) {
            Log.e(C1386x.f1070a, "getUserDataValue args context should not be null");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (C1388z.m814a(str)) {
            return null;
        }
        return C1323a.m371a(context).m396g(str);
    }

    public static void putUserData(Context context, String str, String str2) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not put user data because bugly is disable.");
            return;
        }
        if (context == null) {
            Log.w(C1386x.f1070a, "putUserData args context should not be null");
            return;
        }
        if (str == null) {
            String str3 = str;
            C1386x.m772d("putUserData args key should not be null or empty", new Object[0]);
            return;
        }
        if (str2 == null) {
            String str4 = str2;
            C1386x.m772d("putUserData args value should not be null", new Object[0]);
            return;
        }
        if (str2.length() > 200) {
            C1386x.m772d("user data value length over limit %d, it will be cutted!", Integer.valueOf(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION));
            str2 = str2.substring(0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        }
        C1323a c1323aM371a = C1323a.m371a(context);
        if (c1323aM371a.m412w().contains(str)) {
            NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.putKeyValueToNative(str, str2);
            }
            C1323a.m371a(context).m384b(str, str2);
            C1386x.m771c("replace KV %s %s", str, str2);
            return;
        }
        if (c1323aM371a.m411v() >= 50) {
            C1386x.m772d("user data size is over limit %d, it will be cutted!", 50);
            return;
        }
        if (str.length() > 50) {
            C1386x.m772d("user data key length over limit %d , will drop this new key %s", 50, str);
            str = str.substring(0, 50);
        }
        NativeCrashHandler nativeCrashHandler2 = NativeCrashHandler.getInstance();
        if (nativeCrashHandler2 != null) {
            nativeCrashHandler2.putKeyValueToNative(str, str2);
        }
        C1323a.m371a(context).m384b(str, str2);
        C1386x.m769b("[param] set user data: %s - %s", str, str2);
    }

    public static String removeUserData(Context context, String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not remove user data because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (context == null) {
            Log.e(C1386x.f1070a, "removeUserData args context should not be null");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (C1388z.m814a(str)) {
            return null;
        }
        C1386x.m769b("[param] remove user data: %s", str);
        return C1323a.m371a(context).m394f(str);
    }

    public static Set<String> getAllUserDataKeys(Context context) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get all keys of user data because bugly is disable.");
            return new HashSet();
        }
        if (context == null) {
            Log.e(C1386x.f1070a, "getAllUserDataKeys args context should not be null");
            return new HashSet();
        }
        return C1323a.m371a(context).m412w();
    }

    public static int getUserDatasSize(Context context) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get size of user data because bugly is disable.");
            return -1;
        }
        if (context == null) {
            Log.e(C1386x.f1070a, "getUserDatasSize args context should not be null");
            return -1;
        }
        return C1323a.m371a(context).m411v();
    }

    public static String getAppID() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get App ID because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return C1323a.m371a(f466a).m393f();
    }

    public static void setUserId(String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set user ID because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            setUserId(f466a, str);
        }
    }

    public static void setUserId(Context context, String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set user ID because bugly is disable.");
            return;
        }
        if (context == null) {
            Log.e(C1386x.f1070a, "Context should not be null when bugly has not been initialed!");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            C1386x.m772d("userId should not be null", new Object[0]);
            return;
        }
        if (str.length() > 100) {
            String strSubstring = str.substring(0, 100);
            C1386x.m772d("userId %s length is over limit %d substring to %s", str, 100, strSubstring);
            str = strSubstring;
        }
        if (str.equals(C1323a.m371a(context).m395g())) {
            return;
        }
        C1323a.m371a(context).m383b(str);
        C1386x.m769b("[user] set userId : %s", str);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeUserId(str);
        }
        if (CrashModule.getInstance().hasInitialized()) {
            C1321b.m342a();
        }
    }

    public static String getUserId() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get user ID because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return C1323a.m371a(f466a).m395g();
    }

    public static String getAppVer() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get app version because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return C1323a.m371a(f466a).f571k;
    }

    public static String getAppChannel() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get App channel because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return C1323a.m371a(f466a).f573m;
    }

    public static void setContext(Context context) {
        f466a = context;
    }

    public static boolean isLastSessionCrash() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "The info 'isLastSessionCrash' is not accurate because bugly is disable.");
            return false;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return false;
        }
        return C1337c.m509a().m520b();
    }

    public static void setSdkExtraData(Context context, String str, String str2) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not put SDK extra data because bugly is disable.");
        } else {
            if (context == null || C1388z.m814a(str) || C1388z.m814a(str2)) {
                return;
            }
            C1323a.m371a(context).m379a(str, str2);
        }
    }

    public static Map<String, String> getSdkExtraData() {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get SDK extra data because bugly is disable.");
            return new HashMap();
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(C1386x.f1070a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return null;
        }
        return C1323a.m371a(f466a).f523C;
    }

    public static Map<String, String> getSdkExtraData(Context context) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not get SDK extra data because bugly is disable.");
            return new HashMap();
        }
        if (context == null) {
            C1386x.m772d("Context should not be null.", new Object[0]);
            return null;
        }
        return C1323a.m371a(context).f523C;
    }

    private static void putSdkData(Context context, String str, String str2) {
        if (context == null || C1388z.m814a(str) || C1388z.m814a(str2)) {
            return;
        }
        String strReplace = str.replace("[a-zA-Z[0-9]]+", "");
        if (strReplace.length() > 100) {
            Log.w(C1386x.f1070a, String.format("putSdkData key length over limit %d, will be cutted.", 50));
            strReplace = strReplace.substring(0, 50);
        }
        if (str2.length() > 500) {
            Log.w(C1386x.f1070a, String.format("putSdkData value length over limit %d, will be cutted!", Integer.valueOf(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION)));
            str2 = str2.substring(0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        }
        C1323a.m371a(context).m388c(strReplace, str2);
        C1386x.m769b(String.format("[param] putSdkData data: %s - %s", strReplace, str2), new Object[0]);
    }

    public static void setIsAppForeground(Context context, boolean z) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set 'isAppForeground' because bugly is disable.");
            return;
        }
        if (context == null) {
            C1386x.m772d("Context should not be null.", new Object[0]);
            return;
        }
        if (z) {
            C1386x.m771c("App is in foreground.", new Object[0]);
        } else {
            C1386x.m771c("App is in background.", new Object[0]);
        }
        C1323a.m371a(context).m380a(z);
    }

    public static void setIsDevelopmentDevice(Context context, boolean z) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set 'isDevelopmentDevice' because bugly is disable.");
            return;
        }
        if (context == null) {
            C1386x.m772d("Context should not be null.", new Object[0]);
            return;
        }
        if (z) {
            C1386x.m771c("This is a development device.", new Object[0]);
        } else {
            C1386x.m771c("This is not a development device.", new Object[0]);
        }
        C1323a.m371a(context).f521A = z;
    }

    public static void setSessionIntervalMills(long j) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set 'SessionIntervalMills' because bugly is disable.");
        } else {
            C1321b.m343a(j);
        }
    }

    public static void setAppVersion(Context context, String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set App version because bugly is disable.");
            return;
        }
        if (context == null) {
            Log.w(C1386x.f1070a, "setAppVersion args context should not be null");
            return;
        }
        if (str == null) {
            Log.w(C1386x.f1070a, "App version is null, will not set");
            return;
        }
        C1323a.m371a(context).f571k = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppVersion(str);
        }
    }

    public static void setAppChannel(Context context, String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set App channel because Bugly is disable.");
            return;
        }
        if (context == null) {
            Log.w(C1386x.f1070a, "setAppChannel args context should not be null");
            return;
        }
        if (str == null) {
            Log.w(C1386x.f1070a, "App channel is null, will not set");
            return;
        }
        C1323a.m371a(context).f573m = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppChannel(str);
        }
    }

    public static void setAppPackage(Context context, String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set App package because bugly is disable.");
            return;
        }
        if (context == null) {
            Log.w(C1386x.f1070a, "setAppPackage args context should not be null");
            return;
        }
        if (str == null) {
            Log.w(C1386x.f1070a, "App package is null, will not set");
            return;
        }
        C1323a.m371a(context).f563c = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppPackage(str);
        }
    }

    public static void setCrashFilter(String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set App package because bugly is disable.");
            return;
        }
        Log.i(C1386x.f1070a, "Set crash stack filter: " + str);
        C1337c.f742n = str;
    }

    public static void setCrashRegularFilter(String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set App package because bugly is disable.");
            return;
        }
        Log.i(C1386x.f1070a, "Set crash stack filter: " + str);
        C1337c.f743o = str;
    }

    public static void setHandleNativeCrashInJava(boolean z) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set App package because bugly is disable.");
            return;
        }
        Log.i(C1386x.f1070a, "Should handle native crash in Java profile after handled in native profile: " + z);
        NativeCrashHandler.setShouldHandleInJava(z);
    }

    public static void setBuglyDbName(String str) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set DB name because bugly is disable.");
            return;
        }
        Log.i(C1386x.f1070a, "Set Bugly DB name: " + str);
        C1379q.f1020a = str;
    }

    public static void enableObtainId(Context context, boolean z) {
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set DB name because bugly is disable.");
            return;
        }
        if (context == null) {
            Log.w(C1386x.f1070a, "enableObtainId args context should not be null");
            return;
        }
        Log.i(C1386x.f1070a, "Enable identification obtaining? " + z);
        C1323a.m371a(context).m385b(z);
    }

    public static void setServerUrl(String str) {
        if (C1388z.m814a(str) || !C1388z.m828c(str)) {
            Log.i(C1386x.f1070a, "URL is invalid.");
            return;
        }
        C1326a.m446a(str);
        StrategyBean.f590a = str;
        StrategyBean.f591b = str;
    }

    public static boolean setJavascriptMonitor(WebView webView, boolean z) {
        return setJavascriptMonitor(webView, z, false);
    }

    public static boolean setJavascriptMonitor(final WebView webView, boolean z, boolean z2) {
        if (webView == null) {
            Log.w(C1386x.f1070a, "WebView is null.");
            return false;
        }
        return setJavascriptMonitor(new WebViewInterface() { // from class: com.tencent.bugly.crashreport.CrashReport.1
            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final String getUrl() {
                return webView.getUrl();
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void setJavaScriptEnabled(boolean z3) {
                WebSettings settings = webView.getSettings();
                if (settings.getJavaScriptEnabled()) {
                    return;
                }
                settings.setJavaScriptEnabled(true);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void loadUrl(String str) {
                webView.loadUrl(str);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str) {
                webView.addJavascriptInterface(h5JavaScriptInterface, str);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final CharSequence getContentDescription() {
                return webView.getContentDescription();
            }
        }, z, z2);
    }

    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z) {
        return setJavascriptMonitor(webViewInterface, z, false);
    }

    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z, boolean z2) {
        if (webViewInterface == null) {
            Log.w(C1386x.f1070a, "WebViewInterface is null.");
            return false;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            C1386x.m773e("CrashReport has not been initialed! please to call method 'initCrashReport' first!", new Object[0]);
            return false;
        }
        C1386x.m766a("Set Javascript exception monitor of webview.", new Object[0]);
        if (!C1315b.f461a) {
            Log.w(C1386x.f1070a, "Can not set JavaScript monitor because bugly is disable.");
            return false;
        }
        C1386x.m771c("URL of webview is %s", webViewInterface.getUrl());
        if (!z2 && Build.VERSION.SDK_INT < 19) {
            C1386x.m773e("This interface is only available for Android 4.4 or later.", new Object[0]);
            return false;
        }
        C1386x.m766a("Enable the javascript needed by webview monitor.", new Object[0]);
        webViewInterface.setJavaScriptEnabled(true);
        H5JavaScriptInterface h5JavaScriptInterface = H5JavaScriptInterface.getInstance(webViewInterface);
        if (h5JavaScriptInterface != null) {
            C1386x.m766a("Add a secure javascript interface to the webview.", new Object[0]);
            webViewInterface.addJavascriptInterface(h5JavaScriptInterface, "exceptionUploader");
        }
        if (z) {
            C1386x.m766a("Inject bugly.js(v%s) to the webview.", C1341b.m556b());
            String strM555a = C1341b.m555a();
            if (strM555a == null) {
                C1386x.m773e("Failed to inject Bugly.js.", C1341b.m556b());
                return false;
            }
            webViewInterface.loadUrl("javascript:" + strM555a);
        }
        return true;
    }

    public static void setHttpProxy(String str, int i) {
        C1345a.m587a(str, i);
    }

    public static void setHttpProxy(InetAddress inetAddress, int i) {
        C1345a.m588a(inetAddress, i);
    }

    public static Proxy getHttpProxy() {
        return C1345a.m593b();
    }

    /* compiled from: BUGLY */
    public static class UserStrategy extends BuglyStrategy {

        /* renamed from: c */
        private CrashHandleCallback f468c;

        public UserStrategy(Context context) {
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCallBackType(int i) {
            this.f437a = i;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized int getCallBackType() {
            return this.f437a;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCloseErrorCallback(boolean z) {
            this.f438b = z;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized boolean getCloseErrorCallback() {
            return this.f438b;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized CrashHandleCallback getCrashHandleCallback() {
            return this.f468c;
        }

        public synchronized void setCrashHandleCallback(CrashHandleCallback crashHandleCallback) {
            this.f468c = crashHandleCallback;
        }
    }
}
