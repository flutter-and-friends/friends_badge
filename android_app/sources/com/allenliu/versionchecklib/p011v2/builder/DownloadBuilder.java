package com.allenliu.versionchecklib.p011v2.builder;

import android.content.Context;
import android.content.pm.PackageManager;
import com.allenliu.versionchecklib.callback.APKDownloadListener;
import com.allenliu.versionchecklib.callback.OnCancelListener;
import com.allenliu.versionchecklib.p011v2.callback.CustomDownloadFailedListener;
import com.allenliu.versionchecklib.p011v2.callback.CustomDownloadingDialogListener;
import com.allenliu.versionchecklib.p011v2.callback.CustomInstallListener;
import com.allenliu.versionchecklib.p011v2.callback.CustomVersionDialogListener;
import com.allenliu.versionchecklib.p011v2.callback.ForceUpdateListener;
import com.allenliu.versionchecklib.p011v2.net.RequestVersionManager;
import com.allenliu.versionchecklib.p011v2.p012ui.VersionService;
import com.allenliu.versionchecklib.utils.FileHelper;

/* loaded from: classes.dex */
public class DownloadBuilder {
    private APKDownloadListener apkDownloadListener;
    private String apkName;
    private CustomDownloadFailedListener customDownloadFailedListener;
    private CustomDownloadingDialogListener customDownloadingDialogListener;
    private CustomInstallListener customInstallListener;
    private CustomVersionDialogListener customVersionDialogListener;
    private String downloadAPKPath;
    private String downloadUrl;
    private ForceUpdateListener forceUpdateListener;
    private boolean isDirectDownload;
    private boolean isForceRedownload;
    private boolean isShowDownloadFailDialog;
    private boolean isShowDownloadingDialog;
    private boolean isShowNotification;
    private boolean isSilentDownload;
    private Integer newestVersionCode;
    private NotificationBuilder notificationBuilder;
    private OnCancelListener onCancelListener;
    private RequestVersionBuilder requestVersionBuilder;
    private UIData versionBundle;

    public DownloadBuilder() {
        throw new RuntimeException("can not be instantiated from outside");
    }

    private void initialize() {
        this.isSilentDownload = false;
        this.downloadAPKPath = FileHelper.getDownloadApkCachePath();
        this.isForceRedownload = false;
        this.isShowDownloadingDialog = true;
        this.isShowNotification = true;
        this.isDirectDownload = false;
        this.isShowDownloadFailDialog = true;
        this.notificationBuilder = NotificationBuilder.create();
    }

    public DownloadBuilder(RequestVersionBuilder requestVersionBuilder, UIData uIData) {
        this.requestVersionBuilder = requestVersionBuilder;
        this.versionBundle = uIData;
        initialize();
    }

    public ForceUpdateListener getForceUpdateListener() {
        return this.forceUpdateListener;
    }

    public DownloadBuilder setForceUpdateListener(ForceUpdateListener forceUpdateListener) {
        this.forceUpdateListener = forceUpdateListener;
        return this;
    }

    public DownloadBuilder setApkName(String str) {
        this.apkName = str;
        return this;
    }

    public DownloadBuilder setVersionBundle(UIData uIData) {
        this.versionBundle = uIData;
        return this;
    }

    public UIData getVersionBundle() {
        return this.versionBundle;
    }

    public DownloadBuilder setOnCancelListener(OnCancelListener onCancelListener) {
        this.onCancelListener = onCancelListener;
        return this;
    }

    public DownloadBuilder setCustomDownloadFailedListener(CustomDownloadFailedListener customDownloadFailedListener) {
        this.customDownloadFailedListener = customDownloadFailedListener;
        return this;
    }

    public DownloadBuilder setCustomDownloadingDialogListener(CustomDownloadingDialogListener customDownloadingDialogListener) {
        this.customDownloadingDialogListener = customDownloadingDialogListener;
        return this;
    }

    public DownloadBuilder setCustomVersionDialogListener(CustomVersionDialogListener customVersionDialogListener) {
        this.customVersionDialogListener = customVersionDialogListener;
        return this;
    }

    public DownloadBuilder setCustomDownloadInstallListener(CustomInstallListener customInstallListener) {
        this.customInstallListener = customInstallListener;
        return this;
    }

    public DownloadBuilder setSilentDownload(boolean z) {
        this.isSilentDownload = z;
        return this;
    }

    public Integer getNewestVersionCode() {
        return this.newestVersionCode;
    }

    public DownloadBuilder setNewestVersionCode(Integer num) {
        this.newestVersionCode = num;
        return this;
    }

    public DownloadBuilder setDownloadAPKPath(String str) {
        this.downloadAPKPath = str;
        return this;
    }

    public DownloadBuilder setForceRedownload(boolean z) {
        this.isForceRedownload = z;
        return this;
    }

    public DownloadBuilder setDownloadUrl(String str) {
        this.downloadUrl = str;
        return this;
    }

    public DownloadBuilder setShowDownloadingDialog(boolean z) {
        this.isShowDownloadingDialog = z;
        return this;
    }

    public DownloadBuilder setShowNotification(boolean z) {
        this.isShowNotification = z;
        return this;
    }

    public DownloadBuilder setShowDownloadFailDialog(boolean z) {
        this.isShowDownloadFailDialog = z;
        return this;
    }

    public DownloadBuilder setApkDownloadListener(APKDownloadListener aPKDownloadListener) {
        this.apkDownloadListener = aPKDownloadListener;
        return this;
    }

    public boolean isSilentDownload() {
        return this.isSilentDownload;
    }

    public String getDownloadAPKPath() {
        return this.downloadAPKPath;
    }

    public boolean isForceRedownload() {
        return this.isForceRedownload;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public boolean isShowDownloadingDialog() {
        return this.isShowDownloadingDialog;
    }

    public boolean isShowNotification() {
        return this.isShowNotification;
    }

    public boolean isShowDownloadFailDialog() {
        return this.isShowDownloadFailDialog;
    }

    public APKDownloadListener getApkDownloadListener() {
        return this.apkDownloadListener;
    }

    public CustomDownloadFailedListener getCustomDownloadFailedListener() {
        return this.customDownloadFailedListener;
    }

    public OnCancelListener getOnCancelListener() {
        return this.onCancelListener;
    }

    public CustomDownloadingDialogListener getCustomDownloadingDialogListener() {
        return this.customDownloadingDialogListener;
    }

    public CustomInstallListener getCustomInstallListener() {
        return this.customInstallListener;
    }

    public CustomVersionDialogListener getCustomVersionDialogListener() {
        return this.customVersionDialogListener;
    }

    public RequestVersionBuilder getRequestVersionBuilder() {
        return this.requestVersionBuilder;
    }

    public NotificationBuilder getNotificationBuilder() {
        return this.notificationBuilder;
    }

    public DownloadBuilder setNotificationBuilder(NotificationBuilder notificationBuilder) {
        this.notificationBuilder = notificationBuilder;
        return this;
    }

    public String getApkName() {
        return this.apkName;
    }

    public boolean isDirectDownload() {
        return this.isDirectDownload;
    }

    public DownloadBuilder setDirectDownload(boolean z) {
        this.isDirectDownload = z;
        return this;
    }

    public void executeMission(Context context) {
        if (this.apkName == null) {
            this.apkName = context.getApplicationContext().getPackageName();
        }
        if (this.notificationBuilder.getIcon() == 0) {
            try {
                this.notificationBuilder.setIcon(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).icon);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        if (checkWhetherNeedRequestVersion()) {
            RequestVersionManager.getInstance().requestVersion(this, context);
        } else {
            download(context);
        }
    }

    public void download(Context context) {
        VersionService.builder = this;
        VersionService.enqueueWork(context.getApplicationContext());
    }

    private boolean checkWhetherNeedRequestVersion() {
        return getRequestVersionBuilder() != null;
    }
}
