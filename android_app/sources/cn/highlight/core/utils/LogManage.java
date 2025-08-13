package cn.highlight.core.utils;

import android.util.Log;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public class LogManage {
    private static boolean LOG_ENABLE = true;
    private static String TAG = "LogManage";

    public static void init(boolean z, String str) {
        LOG_ENABLE = z;
        TAG = str;
    }

    /* renamed from: i */
    public static void m34i(String str, String str2) {
        if (LOG_ENABLE) {
            Log.i(str, str2);
        }
    }

    /* renamed from: i */
    public static void m33i(String str) {
        if (LOG_ENABLE) {
            Log.i(TAG, str);
        }
    }

    /* renamed from: v */
    public static void m36v(String str, String str2) {
        if (LOG_ENABLE) {
            Log.v(str, str2);
        }
    }

    /* renamed from: v */
    public static void m35v(String str) {
        if (LOG_ENABLE) {
            Log.v(TAG, str);
        }
    }

    /* renamed from: d */
    public static void m29d(String str, String str2) {
        if (LOG_ENABLE) {
            Log.d(str, str2);
        }
    }

    /* renamed from: d */
    public static void m28d(String str) {
        if (LOG_ENABLE) {
            Log.d(TAG, str);
        }
    }

    public static void dAll(String str) {
        if (LOG_ENABLE) {
            print(3, TAG, str);
        }
    }

    /* renamed from: w */
    public static void m38w(String str, String str2) {
        if (LOG_ENABLE) {
            Log.w(str, str2);
        }
    }

    /* renamed from: w */
    public static void m37w(String str) {
        if (LOG_ENABLE) {
            Log.w(TAG, str);
        }
    }

    /* renamed from: e */
    public static void m31e(String str, String str2) {
        if (LOG_ENABLE) {
            Log.e(str, str2);
        }
    }

    /* renamed from: e */
    public static void m30e(String str) {
        if (LOG_ENABLE) {
            Log.e(TAG, str);
        }
    }

    public static void eAll(String str) {
        if (LOG_ENABLE) {
            print(6, TAG, str);
        }
    }

    /* renamed from: e */
    public static void m32e(Map<String, String> map) {
        if (!LOG_ENABLE || map == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            sb.append(key);
            sb.append("=");
            sb.append(value);
            sb.append("&");
        }
        Log.e(TAG, sb.substring(0, sb.length() - 1));
    }

    private static void print(int i, String str, String str2) {
        if (str2.length() < 1000) {
            Log.println(i, str, str2);
            return;
        }
        byte[] bytes = str2.getBytes();
        if (4000 >= bytes.length) {
            Log.println(i, str, str2);
            return;
        }
        int i2 = 1;
        while (4000 < bytes.length) {
            String strCutStr = cutStr(bytes, 4000);
            Log.println(i, str, String.format("分段打印(%s):%s", Integer.valueOf(i2), strCutStr));
            bytes = Arrays.copyOfRange(bytes, strCutStr.getBytes().length, bytes.length);
            i2++;
        }
        Log.println(i, str, String.format("分段打印(%s):%s", Integer.valueOf(i2), new String(bytes)));
    }

    private static String cutStr(byte[] bArr, int i) {
        if (bArr == null || i < 1) {
            return null;
        }
        if (i >= bArr.length) {
            return new String(bArr);
        }
        String str = new String(Arrays.copyOf(bArr, i));
        return str.substring(0, str.length() - 1);
    }
}
