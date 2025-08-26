package com.blankj.utilcode.util;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;

/* loaded from: classes.dex */
public class NotificationUtils {
    private NotificationUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void create(Context context, int i, Intent intent, int i2, String str, String str2) {
        ((NotificationManager) context.getSystemService("notification")).notify(i, new NotificationCompat.Builder(context).setContentIntent(PendingIntent.getActivity(Utils.getApp(), 0, intent, 134217728)).setContentTitle(str).setContentText(str2).setSmallIcon(i2).setAutoCancel(true).build());
    }

    public static void createStackNotification(Context context, int i, String str, Intent intent, int i2, String str2, String str3) {
        ((NotificationManager) context.getSystemService("notification")).notify(i, new NotificationCompat.Builder(context).setContentIntent(intent != null ? PendingIntent.getActivity(Utils.getApp(), 0, intent, 134217728) : null).setContentTitle(str2).setContentText(str3).setSmallIcon(i2).setGroup(str).setAutoCancel(true).build());
    }

    public static void create(int i, String str, String str2) {
        ((NotificationManager) Utils.getApp().getSystemService("notification")).notify(0, new NotificationCompat.Builder(Utils.getApp()).setContentTitle(str).setContentText(str2).setSmallIcon(i).setAutoCancel(true).build());
    }

    public static void cancel(String str, int i) {
        NotificationManagerCompat.from(Utils.getApp()).cancel(str, i);
    }

    public static void cancel(int i) {
        NotificationManagerCompat.from(Utils.getApp()).cancel(i);
    }

    public static void cancelAll() {
        NotificationManagerCompat.from(Utils.getApp()).cancelAll();
    }
}
