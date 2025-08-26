package com.yuyh.library.imgsel.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class FileUtils {
    private static final String TAG = FileUtils.class.getSimpleName();

    public static String createRootPath(Context context) {
        String path;
        if (Build.VERSION.SDK_INT <= 28) {
            if (isSdCardAvailable()) {
                path = context.getExternalCacheDir().getPath();
            } else {
                path = context.getCacheDir().getPath();
            }
        } else {
            File[] externalMediaDirs = context.getExternalMediaDirs();
            if (externalMediaDirs != null && externalMediaDirs.length > 0) {
                path = externalMediaDirs[0].getPath();
            } else {
                path = Environment.getExternalStorageDirectory().getPath() + "/Android/media/temp";
            }
        }
        createDir(path);
        return path;
    }

    public static boolean isSdCardAvailable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static String createDir(String str) {
        File file;
        try {
            file = new File(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (file.getParentFile().exists()) {
            LogUtils.m836i("----- 创建文件夹" + file.getAbsolutePath());
            file.mkdir();
            return file.getAbsolutePath();
        }
        createDir(file.getParentFile().getAbsolutePath());
        LogUtils.m836i("----- 创建文件夹" + file.getAbsolutePath());
        file.mkdir();
        return str;
    }

    public static String createFile(File file) throws IOException {
        try {
            if (file.getParentFile().exists()) {
                LogUtils.m836i("----- 创建文件" + file.getAbsolutePath());
                file.createNewFile();
                return file.getAbsolutePath();
            }
            createDir(file.getParentFile().getAbsolutePath());
            file.createNewFile();
            LogUtils.m836i("----- 创建文件" + file.getAbsolutePath());
            return "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getApplicationId(Context context) throws PackageManager.NameNotFoundException, IllegalArgumentException {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                throw new IllegalArgumentException(" get application info = null, has no meta data! ");
            }
            LogUtils.m830d(context.getPackageName() + " " + applicationInfo.metaData.getString("APP_ID"));
            return applicationInfo.metaData.getString("APP_ID");
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(" get application info error! ", e);
        }
    }
}
