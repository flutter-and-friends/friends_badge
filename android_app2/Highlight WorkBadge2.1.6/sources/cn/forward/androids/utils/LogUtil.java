package cn.forward.androids.utils;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class LogUtil {
    public static String LOG_DIR = "ALog";
    public static final String LOG_TAG = "log";
    public static boolean sIsLog = true;

    public static void v(String str) {
        v(LOG_TAG, str);
    }

    public static void d(String str) {
        d(LOG_TAG, str);
    }

    public static void i(String str) {
        i(LOG_TAG, str);
    }

    public static void w(String str) {
        w(LOG_TAG, str);
    }

    public static void e(String str) {
        e(LOG_TAG, str);
    }

    public static void v(String str, String str2) {
        if (sIsLog) {
            Log.v(str, str2);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (sIsLog) {
            Log.v(str, str2, th);
        }
    }

    public static void d(String str, String str2) {
        if (sIsLog) {
            Log.d(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (sIsLog) {
            Log.d(str, str2, th);
        }
    }

    public static void i(String str, String str2) {
        if (sIsLog) {
            Log.i(str, str2);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (sIsLog) {
            Log.i(str, str2, th);
        }
    }

    public static void w(String str, String str2) {
        if (sIsLog) {
            Log.w(str, str2);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (sIsLog) {
            Log.w(str, str2, th);
        }
    }

    public static void w(String str, Throwable th) {
        if (sIsLog) {
            Log.w(str, th);
        }
    }

    public static void e(String str, String str2) {
        if (sIsLog) {
            Log.e(str, str2);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (sIsLog) {
            Log.e(str, str2, th);
        }
    }

    public static boolean writeLog(String str, String str2) throws IOException {
        File file;
        if (Environment.getExternalStorageState().equals("mounted")) {
            file = Environment.getExternalStorageDirectory();
        } else {
            file = new File("/storage/sdcard1");
        }
        if (!file.exists()) {
            return false;
        }
        if (str2 == null) {
            try {
                str2 = LOG_DIR;
            } catch (Exception e) {
                Log.e("LogUtil", e.getMessage());
                return false;
            }
        }
        String date = DateUtil.getDate();
        String str3 = "\r\n" + date + "==>" + str;
        String str4 = "log-" + date + ".txt";
        File file2 = new File(file, str2);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(new File(file2, str4));
        fileOutputStream.write(str3.getBytes());
        fileOutputStream.close();
        return true;
    }

    public static boolean writeLog(String str) {
        return writeLog(str, null);
    }
}
