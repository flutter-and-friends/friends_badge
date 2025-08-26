package com.allenliu.versionchecklib.core;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.callback.DownloadListener;
import com.allenliu.versionchecklib.core.http.AllenHttp;
import com.allenliu.versionchecklib.core.http.FileCallBack;
import com.allenliu.versionchecklib.utils.ALog;
import com.allenliu.versionchecklib.utils.AppUtils;
import java.io.File;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public class DownloadManager {
    private static boolean isDownloadSuccess = false;
    private static int lastProgress;

    public static void downloadAPK(final String str, final VersionParams versionParams, final DownloadListener downloadListener) {
        final NotificationCompat.Builder builder;
        final NotificationManager notificationManager;
        lastProgress = 0;
        isDownloadSuccess = false;
        if (str == null || str.isEmpty()) {
            return;
        }
        String str2 = versionParams.getDownloadAPKPath() + AllenChecker.getGlobalContext().getString(C0716R.string.versionchecklib_download_apkname, AllenChecker.getGlobalContext().getPackageName());
        if (versionParams.isSilentDownload()) {
            if (!versionParams.isForceRedownload()) {
                if (!checkAPKIsExists(AllenChecker.getGlobalContext(), str2)) {
                    silentDownloadAPK(AllenChecker.getGlobalContext(), str, versionParams, downloadListener);
                    return;
                } else {
                    if (downloadListener != null) {
                        downloadListener.onCheckerDownloadSuccess(new File(str2));
                        return;
                    }
                    return;
                }
            }
            silentDownloadAPK(AllenChecker.getGlobalContext(), str, versionParams, downloadListener);
            return;
        }
        if (!versionParams.isForceRedownload() && checkAPKIsExists(AllenChecker.getGlobalContext(), str2)) {
            if (downloadListener != null) {
                downloadListener.onCheckerDownloadSuccess(new File(str2));
            }
            AppUtils.installApk(AllenChecker.getGlobalContext(), new File(str2));
            return;
        }
        if (downloadListener != null) {
            downloadListener.onCheckerStartDownload();
        }
        if (versionParams.isShowNotification()) {
            NotificationManager notificationManager2 = (NotificationManager) AllenChecker.getGlobalContext().getSystemService("notification");
            NotificationCompat.Builder builderCreateNotification = createNotification(AllenChecker.getGlobalContext());
            notificationManager2.notify(0, builderCreateNotification.build());
            builder = builderCreateNotification;
            notificationManager = notificationManager2;
        } else {
            builder = null;
            notificationManager = null;
        }
        AllenHttp.getHttpClient().newCall(new Request.Builder().url(str).build()).enqueue(new FileCallBack(versionParams.getDownloadAPKPath(), AllenChecker.getGlobalContext().getString(C0716R.string.versionchecklib_download_apkname, AllenChecker.getGlobalContext().getPackageName())) { // from class: com.allenliu.versionchecklib.core.DownloadManager.1
            @Override // com.allenliu.versionchecklib.core.http.FileCallBack
            public void onSuccess(File file, Call call, Response response) {
                Uri uriFromFile;
                downloadListener.onCheckerDownloadSuccess(file);
                boolean unused = DownloadManager.isDownloadSuccess = true;
                if (versionParams.isShowNotification()) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    if (Build.VERSION.SDK_INT >= 24) {
                        uriFromFile = VersionFileProvider.getUriForFile(AllenChecker.getGlobalContext(), AllenChecker.getGlobalContext().getPackageName() + ".versionProvider", file);
                        ALog.m269e(AllenChecker.getGlobalContext().getPackageName() + "");
                        intent.addFlags(1);
                    } else {
                        uriFromFile = Uri.fromFile(file);
                    }
                    ALog.m269e("APK download Success");
                    intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
                    builder.setContentIntent(PendingIntent.getActivity(AllenChecker.getGlobalContext(), 0, intent, 0));
                    builder.setContentText(AllenChecker.getGlobalContext().getString(C0716R.string.versionchecklib_download_finish));
                    builder.setProgress(100, 100, false);
                    notificationManager.cancelAll();
                    notificationManager.notify(0, builder.build());
                }
                AppUtils.installApk(AllenChecker.getGlobalContext(), file);
            }

            @Override // com.allenliu.versionchecklib.core.http.FileCallBack
            public void onDownloading(int i) {
                ALog.m269e("downloadProgress:" + i + "");
                downloadListener.onCheckerDownloading(i);
                if (i - DownloadManager.lastProgress >= 5) {
                    int unused = DownloadManager.lastProgress = i;
                    if (!versionParams.isShowNotification() || DownloadManager.isDownloadSuccess) {
                        return;
                    }
                    builder.setContentIntent(null);
                    builder.setContentText(String.format(AllenChecker.getGlobalContext().getString(C0716R.string.versionchecklib_download_progress), Integer.valueOf(DownloadManager.lastProgress)));
                    builder.setProgress(100, DownloadManager.lastProgress, false);
                    notificationManager.notify(0, builder.build());
                }
            }

            @Override // com.allenliu.versionchecklib.core.http.FileCallBack
            public void onDownloadFailed() {
                if (versionParams.isShowNotification()) {
                    Intent intent = new Intent(AllenChecker.getGlobalContext(), (Class<?>) versionParams.getCustomDownloadActivityClass());
                    intent.putExtra("isRetry", true);
                    intent.putExtra(AVersionService.VERSION_PARAMS_KEY, versionParams);
                    intent.putExtra("downloadUrl", str);
                    builder.setContentIntent(PendingIntent.getActivity(AllenChecker.getGlobalContext(), 0, intent, 134217728));
                    builder.setContentText(AllenChecker.getGlobalContext().getString(C0716R.string.versionchecklib_download_fail));
                    builder.setProgress(100, 0, false);
                    notificationManager.notify(0, builder.build());
                }
                ALog.m269e("file download failed");
                downloadListener.onCheckerDownloadFail();
            }
        });
    }

    private static void silentDownloadAPK(Context context, String str, VersionParams versionParams, final DownloadListener downloadListener) {
        Request requestBuild = new Request.Builder().url(str).build();
        if (downloadListener != null) {
            downloadListener.onCheckerStartDownload();
        }
        AllenHttp.getHttpClient().newCall(requestBuild).enqueue(new FileCallBack(versionParams.getDownloadAPKPath(), context.getString(C0716R.string.versionchecklib_download_apkname, context.getPackageName())) { // from class: com.allenliu.versionchecklib.core.DownloadManager.2
            @Override // com.allenliu.versionchecklib.core.http.FileCallBack
            public void onSuccess(File file, Call call, Response response) {
                downloadListener.onCheckerDownloadSuccess(file);
            }

            @Override // com.allenliu.versionchecklib.core.http.FileCallBack
            public void onDownloading(int i) {
                ALog.m269e("silent downloadProgress:" + i + "");
                if (i - DownloadManager.lastProgress >= 5) {
                    int unused = DownloadManager.lastProgress = i;
                }
                downloadListener.onCheckerDownloading(i);
            }

            @Override // com.allenliu.versionchecklib.core.http.FileCallBack
            public void onDownloadFailed() {
                ALog.m269e("file silent download failed");
                downloadListener.onCheckerDownloadFail();
            }
        });
    }

    public static boolean checkAPKIsExists(Context context, String str) {
        return checkAPKIsExists(context, str, null);
    }

    public static boolean checkAPKIsExists(Context context, String str, Integer num) {
        if (!new File(str).exists()) {
            return false;
        }
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1);
            ALog.m269e("本地安装包版本号：" + packageArchiveInfo.versionCode + "\n 当前app版本号：" + context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            if (!context.getPackageName().equalsIgnoreCase(packageArchiveInfo.packageName) || context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode == packageArchiveInfo.versionCode) {
                return false;
            }
            if (num != null) {
                if (packageArchiveInfo.versionCode < num.intValue()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static NotificationCompat.Builder createNotification(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("0", "ALLEN_NOTIFICATION", 2);
            notificationChannel.enableLights(false);
            notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannel.enableVibration(false);
            ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(notificationChannel);
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "0");
        builder.setAutoCancel(true);
        builder.setContentTitle(context.getString(C0716R.string.app_name));
        builder.setTicker(context.getString(C0716R.string.versionchecklib_downloading));
        builder.setContentText(String.format(context.getString(C0716R.string.versionchecklib_download_progress), 0));
        RingtoneManager.getRingtone(context, RingtoneManager.getDefaultUri(2)).play();
        return builder;
    }
}
