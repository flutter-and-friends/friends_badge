package com.blankj.utilcode.util;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.Thread;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class CrashUtils {
    private static final Thread.UncaughtExceptionHandler DEFAULT_UNCAUGHT_EXCEPTION_HANDLER;
    private static final String FILE_SEP = System.getProperty("file.separator");
    private static final Format FORMAT = new SimpleDateFormat("MM-dd HH-mm-ss");
    private static final Thread.UncaughtExceptionHandler UNCAUGHT_EXCEPTION_HANDLER;
    private static String defaultDir;
    private static String dir;
    private static OnCrashListener sOnCrashListener;
    private static int versionCode;
    private static String versionName;

    public interface OnCrashListener {
        void onCrash(String str, Throwable th);
    }

    static {
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(Utils.getApp().getPackageName(), 0);
            if (packageInfo != null) {
                versionName = packageInfo.versionName;
                versionCode = packageInfo.versionCode;
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        DEFAULT_UNCAUGHT_EXCEPTION_HANDLER = Thread.getDefaultUncaughtExceptionHandler();
        UNCAUGHT_EXCEPTION_HANDLER = new Thread.UncaughtExceptionHandler() { // from class: com.blankj.utilcode.util.CrashUtils.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                if (th == null) {
                    if (CrashUtils.DEFAULT_UNCAUGHT_EXCEPTION_HANDLER != null) {
                        CrashUtils.DEFAULT_UNCAUGHT_EXCEPTION_HANDLER.uncaughtException(thread, null);
                        return;
                    } else {
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        return;
                    }
                }
                String str = CrashUtils.FORMAT.format(new Date(System.currentTimeMillis()));
                StringBuilder sb = new StringBuilder();
                sb.append("************* Log Head ****************\nTime Of Crash      : " + str + "\nDevice Manufacturer: " + Build.MANUFACTURER + "\nDevice Model       : " + Build.MODEL + "\nAndroid Version    : " + Build.VERSION.RELEASE + "\nAndroid SDK        : " + Build.VERSION.SDK_INT + "\nApp VersionName    : " + CrashUtils.versionName + "\nApp VersionCode    : " + CrashUtils.versionCode + "\n************* Log Head ****************\n\n");
                sb.append(ThrowableUtils.getFullStackTrace(th));
                String string = sb.toString();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(CrashUtils.dir == null ? CrashUtils.defaultDir : CrashUtils.dir);
                sb2.append(str);
                sb2.append(".txt");
                String string2 = sb2.toString();
                if (CrashUtils.createOrExistsFile(string2)) {
                    CrashUtils.input2File(string, string2);
                } else {
                    Log.e("CrashUtils", "create " + string2 + " failed!");
                }
                if (CrashUtils.sOnCrashListener != null) {
                    CrashUtils.sOnCrashListener.onCrash(string, th);
                }
                if (CrashUtils.DEFAULT_UNCAUGHT_EXCEPTION_HANDLER != null) {
                    CrashUtils.DEFAULT_UNCAUGHT_EXCEPTION_HANDLER.uncaughtException(thread, th);
                }
            }
        };
    }

    private CrashUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void init() {
        init("");
    }

    public static void init(File file) {
        if (file == null) {
            throw new NullPointerException("Argument 'crashDir' of type File (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        init(file.getAbsolutePath(), (OnCrashListener) null);
    }

    public static void init(String str) {
        init(str, (OnCrashListener) null);
    }

    public static void init(OnCrashListener onCrashListener) {
        init("", onCrashListener);
    }

    public static void init(File file, OnCrashListener onCrashListener) {
        if (file == null) {
            throw new NullPointerException("Argument 'crashDir' of type File (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        init(file.getAbsolutePath(), onCrashListener);
    }

    public static void init(String str, OnCrashListener onCrashListener) {
        if (isSpace(str)) {
            dir = null;
        } else {
            if (!str.endsWith(FILE_SEP)) {
                str = str + FILE_SEP;
            }
            dir = str;
        }
        if ("mounted".equals(Environment.getExternalStorageState()) && Utils.getApp().getExternalCacheDir() != null) {
            defaultDir = Utils.getApp().getExternalCacheDir() + FILE_SEP + "crash" + FILE_SEP;
        } else {
            defaultDir = Utils.getApp().getCacheDir() + FILE_SEP + "crash" + FILE_SEP;
        }
        sOnCrashListener = onCrashListener;
        Thread.setDefaultUncaughtExceptionHandler(UNCAUGHT_EXCEPTION_HANDLER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void input2File(final String str, final String str2) {
        try {
            if (((Boolean) Executors.newSingleThreadExecutor().submit(new Callable<Boolean>() { // from class: com.blankj.utilcode.util.CrashUtils.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() throws Throwable {
                    BufferedWriter bufferedWriter = null;
                    try {
                        try {
                            BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(str2, true));
                            try {
                                bufferedWriter2.write(str);
                                try {
                                    bufferedWriter2.close();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                                return true;
                            } catch (IOException e2) {
                                e = e2;
                                bufferedWriter = bufferedWriter2;
                                e.printStackTrace();
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                    }
                                }
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                bufferedWriter = bufferedWriter2;
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        } catch (IOException e5) {
                            e = e5;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }).get()).booleanValue()) {
                return;
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        }
        Log.e("CrashUtils", "write crash info to " + str2 + " failed!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean createOrExistsFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean createOrExistsDir(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    private static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
