package com.allenliu.versionchecklib.p011v2.p012ui;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.core.PermissionDialogActivity;
import com.allenliu.versionchecklib.core.VersionFileProvider;
import com.allenliu.versionchecklib.p011v2.builder.DownloadBuilder;
import com.allenliu.versionchecklib.p011v2.builder.NotificationBuilder;
import com.allenliu.versionchecklib.utils.ALog;
import java.io.File;

/* loaded from: classes.dex */
public class NotificationHelper {
    public static final int NOTIFICATION_ID = 1;
    private static final String channelid = "version_service_id";
    private String contentText;
    private Context context;
    private int currentProgress;
    private DownloadBuilder versionBuilder;
    NotificationCompat.Builder notificationBuilder = null;
    NotificationManager manager = null;
    private boolean isDownloadSuccess = false;
    private boolean isFailed = false;

    public NotificationHelper(Context context, DownloadBuilder downloadBuilder) {
        this.currentProgress = 0;
        this.context = context;
        this.versionBuilder = downloadBuilder;
        this.currentProgress = 0;
    }

    public void updateNotification(int i) {
        if (!this.versionBuilder.isShowNotification() || i - this.currentProgress <= 5 || this.isDownloadSuccess || this.isFailed) {
            return;
        }
        this.notificationBuilder.setContentIntent(null);
        this.notificationBuilder.setContentText(String.format(this.contentText, Integer.valueOf(i)));
        this.notificationBuilder.setProgress(100, i, false);
        this.manager.notify(1, this.notificationBuilder.build());
        this.currentProgress = i;
    }

    public void showNotification() {
        this.isDownloadSuccess = false;
        this.isFailed = false;
        if (this.versionBuilder.isShowNotification()) {
            this.manager = (NotificationManager) this.context.getSystemService("notification");
            this.notificationBuilder = createNotification();
            this.manager.notify(1, this.notificationBuilder.build());
        }
    }

    public void showDownloadCompleteNotifcation(File file) {
        Uri uriFromFile;
        this.isDownloadSuccess = true;
        if (this.versionBuilder.isShowNotification()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (Build.VERSION.SDK_INT >= 24) {
                uriFromFile = VersionFileProvider.getUriForFile(this.context, this.context.getPackageName() + ".versionProvider", file);
                ALog.m269e(this.context.getPackageName() + "");
                intent.addFlags(1);
            } else {
                uriFromFile = Uri.fromFile(file);
            }
            intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
            this.notificationBuilder.setContentIntent(PendingIntent.getActivity(this.context, 0, intent, 0));
            this.notificationBuilder.setContentText(this.context.getString(C0716R.string.versionchecklib_download_finish));
            this.notificationBuilder.setProgress(100, 100, false);
            this.manager.cancelAll();
            this.manager.notify(1, this.notificationBuilder.build());
        }
    }

    public void showDownloadFailedNotification() {
        this.isDownloadSuccess = false;
        this.isFailed = true;
        if (this.versionBuilder.isShowNotification()) {
            Intent intent = new Intent(this.context, (Class<?>) PermissionDialogActivity.class);
            intent.addFlags(268435456);
            this.notificationBuilder.setContentIntent(PendingIntent.getActivity(this.context, 0, intent, 134217728));
            this.notificationBuilder.setContentText(this.context.getString(C0716R.string.versionchecklib_download_fail));
            this.notificationBuilder.setProgress(100, 0, false);
            this.manager.notify(1, this.notificationBuilder.build());
        }
    }

    private NotificationCompat.Builder createNotification() {
        NotificationBuilder notificationBuilder = this.versionBuilder.getNotificationBuilder();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("0", "ALLEN_NOTIFICATION", 2);
            notificationChannel.enableLights(false);
            notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannel.enableVibration(false);
            ((NotificationManager) this.context.getSystemService("notification")).createNotificationChannel(notificationChannel);
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this.context, "0");
        builder.setAutoCancel(true);
        builder.setSmallIcon(this.versionBuilder.getNotificationBuilder().getIcon());
        String string = this.context.getString(C0716R.string.app_name);
        if (notificationBuilder.getContentTitle() != null) {
            string = notificationBuilder.getContentTitle();
        }
        builder.setContentTitle(string);
        String string2 = this.context.getString(C0716R.string.versionchecklib_downloading);
        if (notificationBuilder.getTicker() != null) {
            string2 = notificationBuilder.getTicker();
        }
        builder.setTicker(string2);
        this.contentText = this.context.getString(C0716R.string.versionchecklib_download_progress);
        if (notificationBuilder.getContentText() != null) {
            this.contentText = notificationBuilder.getContentText();
        }
        builder.setContentText(String.format(this.contentText, 0));
        if (notificationBuilder.isRingtone()) {
            RingtoneManager.getRingtone(this.context, RingtoneManager.getDefaultUri(2)).play();
        }
        return builder;
    }

    public void onDestroy() {
        NotificationManager notificationManager = this.manager;
        if (notificationManager != null) {
            notificationManager.cancel(1);
        }
    }

    public Notification getServiceNotification() {
        NotificationCompat.Builder autoCancel = new NotificationCompat.Builder(this.context, channelid).setContentTitle(this.context.getString(C0716R.string.app_name)).setContentText(this.context.getString(C0716R.string.versionchecklib_version_service_runing)).setSmallIcon(this.versionBuilder.getNotificationBuilder().getIcon()).setAutoCancel(false);
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(channelid, "version_service_name", 2);
            notificationChannel.enableLights(false);
            notificationChannel.enableVibration(false);
            NotificationManager notificationManager = (NotificationManager) this.context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
        return autoCancel.build();
    }

    public static Notification createSimpleNotification(Context context) {
        ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(new NotificationChannel(channelid, "MyApp", 3));
        return new NotificationCompat.Builder(context, channelid).setContentTitle("").setContentText("").build();
    }
}
