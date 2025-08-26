package com.tencent.bugly.crashreport.common.info;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.tencent.bugly.proguard.C1386x;
import java.io.FileReader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class AppInfo {

    /* renamed from: a */
    private static ActivityManager f516a;

    static {
        "@buglyAllChannel@".split(",");
        "@buglyAllChannelPriority@".split(",");
    }

    /* renamed from: a */
    public static String m363a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageName();
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    /* renamed from: b */
    public static PackageInfo m366b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(m363a(context), 0);
        } catch (Throwable th) {
            if (C1386x.m767a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m365a(Context context, String str) {
        if (context != null && str != null && str.trim().length() > 0) {
            try {
                String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
                if (strArr != null) {
                    for (String str2 : strArr) {
                        if (str.equals(str2)) {
                            return true;
                        }
                    }
                }
            } catch (Throwable th) {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public static String m362a(int i) {
        FileReader fileReader;
        FileReader fileReader2 = null;
        try {
            fileReader = new FileReader("/proc/" + i + "/cmdline");
        } catch (Throwable th) {
            th = th;
        }
        try {
            char[] cArr = new char[512];
            fileReader.read(cArr);
            int i2 = 0;
            while (i2 < cArr.length && cArr[i2] != 0) {
                i2++;
            }
            String strSubstring = new String(cArr).substring(0, i2);
            try {
                fileReader.close();
            } catch (Throwable unused) {
            }
            return strSubstring;
        } catch (Throwable th2) {
            th = th2;
            fileReader2 = fileReader;
            try {
                if (!C1386x.m767a(th)) {
                    th.printStackTrace();
                }
                String strValueOf = String.valueOf(i);
                if (fileReader2 != null) {
                    try {
                        fileReader2.close();
                    } catch (Throwable unused2) {
                    }
                }
                return strValueOf;
            } catch (Throwable th3) {
                if (fileReader2 != null) {
                    try {
                        fileReader2.close();
                    } catch (Throwable unused3) {
                    }
                }
                throw th3;
            }
        }
    }

    /* renamed from: c */
    public static String m367c(Context context) {
        CharSequence applicationLabel;
        if (context == null) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (packageManager != null && applicationInfo != null && (applicationLabel = packageManager.getApplicationLabel(applicationInfo)) != null) {
                return applicationLabel.toString();
            }
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: d */
    public static Map<String, String> m368d(Context context) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                return null;
            }
            HashMap map = new HashMap();
            Object obj = applicationInfo.metaData.get("BUGLY_DISABLE");
            if (obj != null) {
                map.put("BUGLY_DISABLE", obj.toString());
            }
            Object obj2 = applicationInfo.metaData.get("BUGLY_APPID");
            if (obj2 != null) {
                map.put("BUGLY_APPID", obj2.toString());
            }
            Object obj3 = applicationInfo.metaData.get("BUGLY_APP_CHANNEL");
            if (obj3 != null) {
                map.put("BUGLY_APP_CHANNEL", obj3.toString());
            }
            Object obj4 = applicationInfo.metaData.get("BUGLY_APP_VERSION");
            if (obj4 != null) {
                map.put("BUGLY_APP_VERSION", obj4.toString());
            }
            Object obj5 = applicationInfo.metaData.get("BUGLY_ENABLE_DEBUG");
            if (obj5 != null) {
                map.put("BUGLY_ENABLE_DEBUG", obj5.toString());
            }
            Object obj6 = applicationInfo.metaData.get("com.tencent.rdm.uuid");
            if (obj6 != null) {
                map.put("com.tencent.rdm.uuid", obj6.toString());
            }
            Object obj7 = applicationInfo.metaData.get("BUGLY_APP_BUILD_NO");
            if (obj7 != null) {
                map.put("BUGLY_APP_BUILD_NO", obj7.toString());
            }
            Object obj8 = applicationInfo.metaData.get("BUGLY_AREA");
            if (obj8 != null) {
                map.put("BUGLY_AREA", obj8.toString());
            }
            return map;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    public static List<String> m364a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        try {
            String str = map.get("BUGLY_DISABLE");
            if (str != null && str.length() != 0) {
                String[] strArrSplit = str.split(",");
                for (int i = 0; i < strArrSplit.length; i++) {
                    strArrSplit[i] = strArrSplit[i].trim();
                }
                return Arrays.asList(strArrSplit);
            }
            return null;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: e */
    public static boolean m369e(Context context) {
        if (context == null) {
            return false;
        }
        if (f516a == null) {
            f516a = (ActivityManager) context.getSystemService("activity");
        }
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            f516a.getMemoryInfo(memoryInfo);
            if (!memoryInfo.lowMemory) {
                return false;
            }
            C1386x.m771c("Memory is low.", new Object[0]);
            return true;
        } catch (Throwable th) {
            if (!C1386x.m767a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }
}
