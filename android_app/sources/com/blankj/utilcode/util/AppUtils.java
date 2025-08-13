package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.blankj.utilcode.util.ShellUtils;
import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public final class AppUtils {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private AppUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void registerAppStatusChangedListener(Object obj, Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        if (obj == null) {
            throw new NullPointerException("Argument 'obj' of type Object (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (onAppStatusChangedListener == null) {
            throw new NullPointerException("Argument 'listener' of type Utils.OnAppStatusChangedListener (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        Utils.getActivityLifecycle().addOnAppStatusChangedListener(obj, onAppStatusChangedListener);
    }

    public static void unregisterAppStatusChangedListener(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Argument 'obj' of type Object (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        Utils.getActivityLifecycle().removeOnAppStatusChangedListener(obj);
    }

    public static void installApp(String str) {
        installApp(getFileByPath(str));
    }

    public static void installApp(File file) {
        if (isFileExists(file)) {
            Utils.getApp().startActivity(getInstallAppIntent(file, true));
        }
    }

    public static void installApp(Activity activity, String str, int i) {
        installApp(activity, getFileByPath(str), i);
    }

    public static void installApp(Activity activity, File file, int i) {
        if (isFileExists(file)) {
            activity.startActivityForResult(getInstallAppIntent(file), i);
        }
    }

    public static boolean installAppSilent(String str) {
        return installAppSilent(getFileByPath(str), (String) null);
    }

    public static boolean installAppSilent(File file) {
        return installAppSilent(file, (String) null);
    }

    public static boolean installAppSilent(String str, String str2) {
        return installAppSilent(getFileByPath(str), str2);
    }

    public static boolean installAppSilent(File file, String str) {
        return installAppSilent(file, str, isDeviceRooted());
    }

    public static boolean installAppSilent(File file, String str, boolean z) {
        String str2;
        if (!isFileExists(file)) {
            return false;
        }
        String str3 = Typography.quote + file.getAbsolutePath() + Typography.quote;
        StringBuilder sb = new StringBuilder();
        sb.append("LD_LIBRARY_PATH=/vendor/lib*:/system/lib* pm install ");
        if (str == null) {
            str2 = "";
        } else {
            str2 = str + " ";
        }
        sb.append(str2);
        sb.append(str3);
        ShellUtils.CommandResult commandResultExecCmd = ShellUtils.execCmd(sb.toString(), z);
        if (commandResultExecCmd.successMsg != null && commandResultExecCmd.successMsg.toLowerCase().contains("success")) {
            return true;
        }
        Log.e("AppUtils", "installAppSilent successMsg: " + commandResultExecCmd.successMsg + ", errorMsg: " + commandResultExecCmd.errorMsg);
        return false;
    }

    public static void uninstallApp(String str) {
        if (isSpace(str)) {
            return;
        }
        Utils.getApp().startActivity(getUninstallAppIntent(str, true));
    }

    public static void uninstallApp(Activity activity, String str, int i) {
        if (isSpace(str)) {
            return;
        }
        activity.startActivityForResult(getUninstallAppIntent(str), i);
    }

    public static boolean uninstallAppSilent(String str) {
        return uninstallAppSilent(str, false);
    }

    public static boolean uninstallAppSilent(String str, boolean z) {
        return uninstallAppSilent(str, z, isDeviceRooted());
    }

    public static boolean uninstallAppSilent(String str, boolean z, boolean z2) {
        if (isSpace(str)) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("LD_LIBRARY_PATH=/vendor/lib*:/system/lib* pm uninstall ");
        sb.append(z ? "-k " : "");
        sb.append(str);
        ShellUtils.CommandResult commandResultExecCmd = ShellUtils.execCmd(sb.toString(), z2);
        if (commandResultExecCmd.successMsg != null && commandResultExecCmd.successMsg.toLowerCase().contains("success")) {
            return true;
        }
        Log.e("AppUtils", "uninstallAppSilent successMsg: " + commandResultExecCmd.successMsg + ", errorMsg: " + commandResultExecCmd.errorMsg);
        return false;
    }

    public static boolean isAppInstalled(String str) {
        if (str == null) {
            throw new NullPointerException("Argument 'packageName' of type String (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        try {
            return Utils.getApp().getPackageManager().getApplicationInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isAppRoot() {
        ShellUtils.CommandResult commandResultExecCmd = ShellUtils.execCmd("echo root", true);
        if (commandResultExecCmd.result == 0) {
            return true;
        }
        if (commandResultExecCmd.errorMsg == null) {
            return false;
        }
        Log.d("AppUtils", "isAppRoot() called" + commandResultExecCmd.errorMsg);
        return false;
    }

    public static boolean isAppDebug() {
        return isAppDebug(Utils.getApp().getPackageName());
    }

    public static boolean isAppDebug(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return false;
        }
        try {
            ApplicationInfo applicationInfo = Utils.getApp().getPackageManager().getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return (applicationInfo.flags & 2) != 0;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isAppSystem() {
        return isAppSystem(Utils.getApp().getPackageName());
    }

    public static boolean isAppSystem(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return false;
        }
        try {
            ApplicationInfo applicationInfo = Utils.getApp().getPackageManager().getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                if ((applicationInfo.flags & 1) != 0) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isAppForeground() {
        return Utils.isAppForeground();
    }

    public static boolean isAppForeground(String str) {
        if (str != null) {
            return !isSpace(str) && str.equals(getForegroundProcessName());
        }
        throw new NullPointerException("Argument 'packageName' of type String (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
    }

    public static void launchApp(String str) {
        if (isSpace(str)) {
            return;
        }
        Utils.getApp().startActivity(getLaunchAppIntent(str, true));
    }

    public static void launchApp(Activity activity, String str, int i) {
        if (isSpace(str)) {
            return;
        }
        activity.startActivityForResult(getLaunchAppIntent(str), i);
    }

    public static void relaunchApp() {
        relaunchApp(false);
    }

    public static void relaunchApp(boolean z) {
        Intent launchIntentForPackage = Utils.getApp().getPackageManager().getLaunchIntentForPackage(Utils.getApp().getPackageName());
        if (launchIntentForPackage == null) {
            return;
        }
        launchIntentForPackage.addFlags(67108864);
        Utils.getApp().startActivity(launchIntentForPackage);
        if (z) {
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    public static void launchAppDetailsSettings() {
        launchAppDetailsSettings(Utils.getApp().getPackageName());
    }

    public static void launchAppDetailsSettings(String str) {
        if (isSpace(str)) {
            return;
        }
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + str));
        Utils.getApp().startActivity(intent.addFlags(268435456));
    }

    public static void exitApp() {
        LinkedList<Activity> activityList = Utils.getActivityList();
        for (int size = activityList.size() - 1; size >= 0; size--) {
            activityList.get(size).finish();
        }
        System.exit(0);
    }

    public static Drawable getAppIcon() {
        return getAppIcon(Utils.getApp().getPackageName());
    }

    public static Drawable getAppIcon(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return null;
        }
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.applicationInfo.loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getAppPackageName() {
        return Utils.getApp().getPackageName();
    }

    public static String getAppName() {
        return getAppName(Utils.getApp().getPackageName());
    }

    public static String getAppName(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return "";
        }
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.applicationInfo.loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getAppPath() {
        return getAppPath(Utils.getApp().getPackageName());
    }

    public static String getAppPath(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.applicationInfo.sourceDir;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getAppVersionName() {
        return getAppVersionName(Utils.getApp().getPackageName());
    }

    public static String getAppVersionName(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static int getAppVersionCode() {
        return getAppVersionCode(Utils.getApp().getPackageName());
    }

    public static int getAppVersionCode(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static Signature[] getAppSignature() {
        return getAppSignature(Utils.getApp().getPackageName());
    }

    public static Signature[] getAppSignature(String str) throws PackageManager.NameNotFoundException {
        if (isSpace(str)) {
            return null;
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 64);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.signatures;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getAppSignatureSHA1() {
        return getAppSignatureSHA1(Utils.getApp().getPackageName());
    }

    public static String getAppSignatureSHA1(String str) {
        return getAppSignatureHash(str, "SHA1");
    }

    public static String getAppSignatureSHA256() {
        return getAppSignatureSHA256(Utils.getApp().getPackageName());
    }

    public static String getAppSignatureSHA256(String str) {
        return getAppSignatureHash(str, "SHA256");
    }

    public static String getAppSignatureMD5() {
        return getAppSignatureMD5(Utils.getApp().getPackageName());
    }

    public static String getAppSignatureMD5(String str) {
        return getAppSignatureHash(str, "MD5");
    }

    private static String getAppSignatureHash(String str, String str2) {
        Signature[] appSignature;
        return (isSpace(str) || (appSignature = getAppSignature(str)) == null || appSignature.length <= 0) ? "" : bytes2HexString(hashTemplate(appSignature[0].toByteArray(), str2)).replaceAll("(?<=[0-9A-F]{2})[0-9A-F]{2}", ":$0");
    }

    public static AppInfo getAppInfo() {
        return getAppInfo(Utils.getApp().getPackageName());
    }

    public static AppInfo getAppInfo(String str) {
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            return getBean(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<AppInfo> getAppsInfo() {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = Utils.getApp().getPackageManager();
        Iterator<PackageInfo> it = packageManager.getInstalledPackages(0).iterator();
        while (it.hasNext()) {
            AppInfo bean = getBean(packageManager, it.next());
            if (bean != null) {
                arrayList.add(bean);
            }
        }
        return arrayList;
    }

    public static AppInfo getApkInfo(File file) {
        if (file != null && file.isFile() && file.exists()) {
            return getApkInfo(file.getAbsolutePath());
        }
        return null;
    }

    public static AppInfo getApkInfo(String str) {
        if (isSpace(str)) {
            return null;
        }
        PackageManager packageManager = Utils.getApp().getPackageManager();
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 0);
        ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        return getBean(packageManager, packageArchiveInfo);
    }

    private static AppInfo getBean(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageManager == null || packageInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        return new AppInfo(packageInfo.packageName, applicationInfo.loadLabel(packageManager).toString(), applicationInfo.loadIcon(packageManager), applicationInfo.sourceDir, packageInfo.versionName, packageInfo.versionCode, (applicationInfo.flags & 1) != 0);
    }

    public static class AppInfo {
        private Drawable icon;
        private boolean isSystem;
        private String name;
        private String packageName;
        private String packagePath;
        private int versionCode;
        private String versionName;

        public Drawable getIcon() {
            return this.icon;
        }

        public void setIcon(Drawable drawable) {
            this.icon = drawable;
        }

        public boolean isSystem() {
            return this.isSystem;
        }

        public void setSystem(boolean z) {
            this.isSystem = z;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public String getPackagePath() {
            return this.packagePath;
        }

        public void setPackagePath(String str) {
            this.packagePath = str;
        }

        public int getVersionCode() {
            return this.versionCode;
        }

        public void setVersionCode(int i) {
            this.versionCode = i;
        }

        public String getVersionName() {
            return this.versionName;
        }

        public void setVersionName(String str) {
            this.versionName = str;
        }

        public AppInfo(String str, String str2, Drawable drawable, String str3, String str4, int i, boolean z) {
            setName(str2);
            setIcon(drawable);
            setPackageName(str);
            setPackagePath(str3);
            setVersionName(str4);
            setVersionCode(i);
            setSystem(z);
        }

        public String toString() {
            return "{\n  pkg name: " + getPackageName() + "\n  app icon: " + getIcon() + "\n  app name: " + getName() + "\n  app path: " + getPackagePath() + "\n  app v name: " + getVersionName() + "\n  app v code: " + getVersionCode() + "\n  is system: " + isSystem() + "}";
        }
    }

    private static boolean isFileExists(File file) {
        return file != null && file.exists();
    }

    private static File getFileByPath(String str) {
        if (isSpace(str)) {
            return null;
        }
        return new File(str);
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

    private static boolean isDeviceRooted() {
        for (String str : new String[]{"/system/bin/", "/system/xbin/", "/sbin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/xbin/", "/data/local/bin/", "/data/local/", "/system/sbin/", "/usr/bin/", "/vendor/bin/"}) {
            if (new File(str + "su").exists()) {
                return true;
            }
        }
        return false;
    }

    private static byte[] hashTemplate(byte[] bArr, String str) throws NoSuchAlgorithmException {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    private static String bytes2HexString(byte[] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return "";
        }
        char[] cArr = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(bArr[i2] >> 4) & 15];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & 15];
        }
        return new String(cArr);
    }

    private static Intent getInstallAppIntent(File file) {
        return getInstallAppIntent(file, false);
    }

    private static Intent getInstallAppIntent(File file, boolean z) {
        Uri uriForFile;
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT < 24) {
            uriForFile = Uri.fromFile(file);
        } else {
            uriForFile = FileProvider.getUriForFile(Utils.getApp(), Utils.getApp().getPackageName() + ".utilcode.provider", file);
            intent.setFlags(1);
        }
        Utils.getApp().grantUriPermission(Utils.getApp().getPackageName(), uriForFile, 1);
        intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
        return z ? intent.addFlags(268435456) : intent;
    }

    private static Intent getUninstallAppIntent(String str) {
        return getUninstallAppIntent(str, false);
    }

    private static Intent getUninstallAppIntent(String str, boolean z) {
        Intent intent = new Intent("android.intent.action.DELETE");
        intent.setData(Uri.parse("package:" + str));
        return z ? intent.addFlags(268435456) : intent;
    }

    private static Intent getLaunchAppIntent(String str) {
        return getLaunchAppIntent(str, false);
    }

    private static Intent getLaunchAppIntent(String str, boolean z) {
        Intent launchIntentForPackage = Utils.getApp().getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        return z ? launchIntentForPackage.addFlags(268435456) : launchIntentForPackage;
    }

    private static String getForegroundProcessName() throws PackageManager.NameNotFoundException {
        List<UsageStats> listQueryUsageStats;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) Utils.getApp().getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null && runningAppProcesses.size() > 0) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        if (Build.VERSION.SDK_INT > 21) {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            Intent intent = new Intent("android.settings.USAGE_ACCESS_SETTINGS");
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            Log.i("ProcessUtils", listQueryIntentActivities.toString());
            if (listQueryIntentActivities.size() <= 0) {
                Log.i("ProcessUtils", "getForegroundProcessName: noun of access to usage information.");
                return "";
            }
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(Utils.getApp().getPackageName(), 0);
                AppOpsManager appOpsManager = (AppOpsManager) Utils.getApp().getSystemService("appops");
                if (appOpsManager.checkOpNoThrow("android:get_usage_stats", applicationInfo.uid, applicationInfo.packageName) != 0) {
                    intent.addFlags(268435456);
                    Utils.getApp().startActivity(intent);
                }
                if (appOpsManager.checkOpNoThrow("android:get_usage_stats", applicationInfo.uid, applicationInfo.packageName) != 0) {
                    Log.i("ProcessUtils", "getForegroundProcessName: refuse to device usage stats.");
                    return "";
                }
                UsageStatsManager usageStatsManager = (UsageStatsManager) Utils.getApp().getSystemService("usagestats");
                if (usageStatsManager != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    listQueryUsageStats = usageStatsManager.queryUsageStats(4, jCurrentTimeMillis - 604800000, jCurrentTimeMillis);
                } else {
                    listQueryUsageStats = null;
                }
                if (listQueryUsageStats != null && !listQueryUsageStats.isEmpty()) {
                    UsageStats usageStats = null;
                    for (UsageStats usageStats2 : listQueryUsageStats) {
                        if (usageStats == null || usageStats2.getLastTimeUsed() > usageStats.getLastTimeUsed()) {
                            usageStats = usageStats2;
                        }
                    }
                    if (usageStats == null) {
                        return null;
                    }
                    return usageStats.getPackageName();
                }
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return "";
    }
}
