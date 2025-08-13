package com.yanzhenjie.permission.source;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;

/* loaded from: classes.dex */
public abstract class Source {
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";
    private static final String OP_REQUEST_INSTALL_PACKAGES = "OP_REQUEST_INSTALL_PACKAGES";
    private static final String OP_SYSTEM_ALERT_WINDOW = "OP_SYSTEM_ALERT_WINDOW";
    private AppOpsManager mAppOpsManager;
    private NotificationManager mNotificationManager;
    private PackageManager mPackageManager;
    private String mPackageName;
    private int mTargetSdkVersion;

    public abstract Context getContext();

    public abstract boolean isShowRationalePermission(String str);

    public abstract void startActivity(Intent intent);

    public abstract void startActivityForResult(Intent intent, int i);

    private int getTargetSdkVersion() {
        if (this.mTargetSdkVersion < 14) {
            this.mTargetSdkVersion = getContext().getApplicationInfo().targetSdkVersion;
        }
        return this.mTargetSdkVersion;
    }

    public String getPackageName() {
        if (this.mPackageName == null) {
            this.mPackageName = getContext().getApplicationContext().getPackageName();
        }
        return this.mPackageName;
    }

    private PackageManager getPackageManager() {
        if (this.mPackageManager == null) {
            this.mPackageManager = getContext().getPackageManager();
        }
        return this.mPackageManager;
    }

    private AppOpsManager getAppOpsManager() {
        if (this.mAppOpsManager == null) {
            this.mAppOpsManager = (AppOpsManager) getContext().getSystemService("appops");
        }
        return this.mAppOpsManager;
    }

    private NotificationManager getNotificationManager() {
        if (this.mNotificationManager == null) {
            this.mNotificationManager = (NotificationManager) getContext().getSystemService("notification");
        }
        return this.mNotificationManager;
    }

    public final boolean canRequestPackageInstalls() {
        if (Build.VERSION.SDK_INT < 23 || Build.VERSION.SDK_INT < 26) {
            return true;
        }
        if (getTargetSdkVersion() < 26) {
            return reflectionOps(OP_REQUEST_INSTALL_PACKAGES);
        }
        return getPackageManager().canRequestPackageInstalls();
    }

    public final boolean canDrawOverlays() {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        Context context = getContext();
        if (getTargetSdkVersion() >= 23) {
            return Settings.canDrawOverlays(context);
        }
        return reflectionOps(OP_SYSTEM_ALERT_WINDOW);
    }

    public final boolean canNotify() {
        if (Build.VERSION.SDK_INT >= 24) {
            return getNotificationManager().areNotificationsEnabled();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return reflectionOps(OP_POST_NOTIFICATION);
        }
        return true;
    }

    public final boolean canListenerNotification() {
        String string = Settings.Secure.getString(getContext().getContentResolver(), "enabled_notification_listeners");
        return string != null && string.contains(getPackageName());
    }

    private boolean reflectionOps(String str) {
        try {
            return ((Integer) AppOpsManager.class.getMethod(CHECK_OP_NO_THROW, Integer.TYPE, Integer.TYPE, String.class).invoke(getAppOpsManager(), Integer.valueOf(((Integer) AppOpsManager.class.getDeclaredField(str).get(Integer.class)).intValue()), Integer.valueOf(getContext().getApplicationInfo().uid), getPackageName())).intValue() == 0;
        } catch (Throwable unused) {
            return true;
        }
    }
}
