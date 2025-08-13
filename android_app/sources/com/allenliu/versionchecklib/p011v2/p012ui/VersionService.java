package com.allenliu.versionchecklib.p011v2.p012ui;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.allenliu.versionchecklib.C0716R;
import com.allenliu.versionchecklib.callback.DownloadListener;
import com.allenliu.versionchecklib.core.DownloadManager;
import com.allenliu.versionchecklib.core.PermissionDialogActivity;
import com.allenliu.versionchecklib.core.http.AllenHttp;
import com.allenliu.versionchecklib.p011v2.AllenVersionChecker;
import com.allenliu.versionchecklib.p011v2.builder.DownloadBuilder;
import com.allenliu.versionchecklib.p011v2.eventbus.CommonEvent;
import com.allenliu.versionchecklib.p011v2.net.DownloadMangerV2;
import com.allenliu.versionchecklib.utils.ALog;
import com.allenliu.versionchecklib.utils.AllenEventBusUtil;
import com.allenliu.versionchecklib.utils.AppUtils;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class VersionService extends Service {
    public static DownloadBuilder builder;
    private BuilderHelper builderHelper;
    private ExecutorService executors;
    private boolean isServiceAlive = false;
    private NotificationHelper notificationHelper;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        ALog.m269e("version service create");
        init();
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ALog.m269e("version service destroy");
        this.builderHelper = null;
        NotificationHelper notificationHelper = this.notificationHelper;
        if (notificationHelper != null) {
            notificationHelper.onDestroy();
        }
        this.notificationHelper = null;
        this.isServiceAlive = false;
        ExecutorService executorService = this.executors;
        if (executorService != null) {
            executorService.shutdown();
        }
        stopForeground(true);
        AllenHttp.getHttpClient().dispatcher().cancelAll();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    public static void enqueueWork(Context context) {
        Intent intent = new Intent(context, (Class<?>) VersionService.class);
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    protected void onHandleWork() {
        downloadAPK();
    }

    private void downloadAPK() {
        DownloadBuilder downloadBuilder = builder;
        if (downloadBuilder != null && downloadBuilder.getVersionBundle() != null) {
            if (builder.isDirectDownload()) {
                AllenEventBusUtil.sendEventBus(98);
                return;
            } else if (builder.isSilentDownload()) {
                requestPermissionAndDownload();
                return;
            } else {
                showVersionDialog();
                return;
            }
        }
        AllenVersionChecker.getInstance().cancelAllMission(getApplicationContext());
    }

    private void showVersionDialog() {
        if (builder != null) {
            Intent intent = new Intent(this, (Class<?>) UIActivity.class);
            intent.addFlags(268435456);
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownloadingDialog() {
        DownloadBuilder downloadBuilder = builder;
        if (downloadBuilder == null || !downloadBuilder.isShowDownloadingDialog()) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) DownloadingActivity.class);
        intent.addFlags(268435456);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDownloadingDialogProgress(int i) {
        CommonEvent commonEvent = new CommonEvent();
        commonEvent.setEventType(100);
        commonEvent.setData(Integer.valueOf(i));
        commonEvent.setSuccessful(true);
        EventBus.getDefault().post(commonEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownloadFailedDialog() {
        if (builder != null) {
            Intent intent = new Intent(this, (Class<?>) DownloadFailedActivity.class);
            intent.addFlags(268435456);
            startActivity(intent);
        }
    }

    private void requestPermissionAndDownload() {
        if (builder != null) {
            Intent intent = new Intent(this, (Class<?>) PermissionDialogActivity.class);
            intent.addFlags(268435456);
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void install() {
        AllenEventBusUtil.sendEventBus(101);
        String downloadFilePath = getDownloadFilePath();
        if (builder.isSilentDownload()) {
            showVersionDialog();
        } else {
            AppUtils.installApk(getApplicationContext(), new File(downloadFilePath), builder.getCustomInstallListener());
            this.builderHelper.checkForceUpdate();
        }
    }

    private String getDownloadFilePath() {
        StringBuilder sb = new StringBuilder();
        sb.append(builder.getDownloadAPKPath());
        int i = C0716R.string.versionchecklib_download_apkname;
        Object[] objArr = new Object[1];
        objArr[0] = builder.getApkName() != null ? builder.getApkName() : getPackageName();
        sb.append(getString(i, objArr));
        return sb.toString();
    }

    private void startDownloadApk() {
        String downloadFilePath = getDownloadFilePath();
        if (DownloadManager.checkAPKIsExists(getApplicationContext(), downloadFilePath, builder.getNewestVersionCode()) && !builder.isForceRedownload()) {
            ALog.m269e("using cache");
            install();
            return;
        }
        this.builderHelper.checkAndDeleteAPK();
        String downloadUrl = builder.getDownloadUrl();
        if (downloadUrl == null && builder.getVersionBundle() != null) {
            downloadUrl = builder.getVersionBundle().getDownloadUrl();
        }
        if (downloadUrl == null) {
            AllenVersionChecker.getInstance().cancelAllMission(getApplicationContext());
            throw new RuntimeException("you must set a download url for download function using");
        }
        ALog.m269e("downloadPath:" + downloadFilePath);
        String downloadAPKPath = builder.getDownloadAPKPath();
        int i = C0716R.string.versionchecklib_download_apkname;
        Object[] objArr = new Object[1];
        objArr[0] = builder.getApkName() != null ? builder.getApkName() : getPackageName();
        DownloadMangerV2.download(downloadUrl, downloadAPKPath, getString(i, objArr), new DownloadListener() { // from class: com.allenliu.versionchecklib.v2.ui.VersionService.1
            @Override // com.allenliu.versionchecklib.callback.DownloadListener
            public void onCheckerDownloading(int i2) {
                if (!VersionService.this.isServiceAlive || VersionService.builder == null) {
                    return;
                }
                if (!VersionService.builder.isSilentDownload()) {
                    VersionService.this.notificationHelper.updateNotification(i2);
                    VersionService.this.updateDownloadingDialogProgress(i2);
                }
                if (VersionService.builder.getApkDownloadListener() != null) {
                    VersionService.builder.getApkDownloadListener().onDownloading(i2);
                }
            }

            @Override // com.allenliu.versionchecklib.callback.DownloadListener
            public void onCheckerDownloadSuccess(File file) {
                if (VersionService.this.isServiceAlive) {
                    if (!VersionService.builder.isSilentDownload()) {
                        VersionService.this.notificationHelper.showDownloadCompleteNotifcation(file);
                    }
                    if (VersionService.builder.getApkDownloadListener() != null) {
                        VersionService.builder.getApkDownloadListener().onDownloadSuccess(file);
                    }
                    VersionService.this.install();
                }
            }

            @Override // com.allenliu.versionchecklib.callback.DownloadListener
            public void onCheckerDownloadFail() {
                if (VersionService.this.isServiceAlive) {
                    if (VersionService.builder.getApkDownloadListener() != null) {
                        VersionService.builder.getApkDownloadListener().onDownloadFail();
                    }
                    if (!VersionService.builder.isSilentDownload()) {
                        AllenEventBusUtil.sendEventBus(102);
                        if (VersionService.builder.isShowDownloadFailDialog()) {
                            VersionService.this.showDownloadFailedDialog();
                        }
                        VersionService.this.notificationHelper.showDownloadFailedNotification();
                        return;
                    }
                    AllenVersionChecker.getInstance().cancelAllMission(VersionService.this.getApplicationContext());
                }
            }

            @Override // com.allenliu.versionchecklib.callback.DownloadListener
            public void onCheckerStartDownload() {
                ALog.m269e("start download apk");
                if (VersionService.builder.isSilentDownload()) {
                    return;
                }
                VersionService.this.notificationHelper.showNotification();
                VersionService.this.showDownloadingDialog();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void receiveEvent(CommonEvent commonEvent) {
        int eventType = commonEvent.getEventType();
        if (eventType == 98) {
            requestPermissionAndDownload();
            return;
        }
        if (eventType != 99) {
            return;
        }
        if (((Boolean) commonEvent.getData()).booleanValue()) {
            startDownloadApk();
            return;
        }
        BuilderHelper builderHelper = this.builderHelper;
        if (builderHelper != null) {
            builderHelper.checkForceUpdate();
        }
    }

    private void init() {
        if (Build.VERSION.SDK_INT >= 26) {
            startForeground(1, NotificationHelper.createSimpleNotification(this));
        }
        if (builder != null) {
            this.isServiceAlive = true;
            this.builderHelper = new BuilderHelper(getApplicationContext(), builder);
            this.notificationHelper = new NotificationHelper(getApplicationContext(), builder);
            startForeground(1, this.notificationHelper.getServiceNotification());
            this.executors = Executors.newSingleThreadExecutor();
            this.executors.submit(new Runnable() { // from class: com.allenliu.versionchecklib.v2.ui.VersionService.2
                @Override // java.lang.Runnable
                public void run() {
                    VersionService.this.onHandleWork();
                }
            });
            return;
        }
        AllenVersionChecker.getInstance().cancelAllMission(this);
    }
}
