package com.allenliu.versionchecklib.core;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.allenliu.versionchecklib.core.http.HttpHeaders;
import com.allenliu.versionchecklib.core.http.HttpParams;
import com.allenliu.versionchecklib.core.http.HttpRequestMethod;
import com.allenliu.versionchecklib.utils.FileHelper;

@Deprecated
/* loaded from: classes.dex */
public class VersionParams implements Parcelable {
    public static final Parcelable.Creator<VersionParams> CREATOR = new Parcelable.Creator<VersionParams>() { // from class: com.allenliu.versionchecklib.core.VersionParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionParams createFromParcel(Parcel parcel) {
            return new VersionParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VersionParams[] newArray(int i) {
            return new VersionParams[i];
        }
    };
    private Class<? extends VersionDialogActivity> customDownloadActivityClass;
    private String downloadAPKPath;
    private String downloadUrl;
    private HttpHeaders httpHeaders;
    public boolean isForceRedownload;
    private boolean isShowDownloadFailDialog;
    private boolean isShowDownloadingDialog;
    private boolean isShowNotification;
    public boolean isSilentDownload;
    private boolean onlyDownload;
    private Bundle paramBundle;
    private long pauseRequestTime;
    private HttpRequestMethod requestMethod;
    private HttpParams requestParams;
    private String requestUrl;
    private Class<? extends AVersionService> service;
    private String title;
    private String updateMsg;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isShowDownloadingDialog() {
        return this.isShowDownloadingDialog;
    }

    public boolean isShowDownloadFailDialog() {
        return this.isShowDownloadFailDialog;
    }

    public boolean isShowNotification() {
        return this.isShowNotification;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getUpdateMsg() {
        return this.updateMsg;
    }

    public Bundle getParamBundle() {
        return this.paramBundle;
    }

    private VersionParams() {
    }

    public VersionParams(String str, String str2, HttpHeaders httpHeaders, long j, HttpRequestMethod httpRequestMethod, HttpParams httpParams, Class<? extends VersionDialogActivity> cls, boolean z, boolean z2, Class<? extends AVersionService> cls2, boolean z3, String str3, String str4, String str5, Bundle bundle) {
        this.requestUrl = str;
        this.downloadAPKPath = str2;
        this.httpHeaders = httpHeaders;
        this.pauseRequestTime = j;
        this.requestMethod = httpRequestMethod;
        this.requestParams = httpParams;
        this.customDownloadActivityClass = cls;
        this.isForceRedownload = z;
        this.isSilentDownload = z2;
        this.service = cls2;
        this.onlyDownload = z3;
        this.title = str3;
        this.downloadUrl = str4;
        this.updateMsg = str5;
        this.paramBundle = bundle;
        if (this.service == null) {
            throw new RuntimeException("you must define your service which extends AVService.");
        }
        if (str == null) {
            throw new RuntimeException("requestUrl is needed.");
        }
    }

    public Class<? extends AVersionService> getService() {
        return this.service;
    }

    public String getRequestUrl() {
        return this.requestUrl;
    }

    public String getDownloadAPKPath() {
        return this.downloadAPKPath;
    }

    public HttpHeaders getHttpHeaders() {
        return this.httpHeaders;
    }

    public long getPauseRequestTime() {
        return this.pauseRequestTime;
    }

    public HttpRequestMethod getRequestMethod() {
        return this.requestMethod;
    }

    public HttpParams getRequestParams() {
        return this.requestParams;
    }

    public Class getCustomDownloadActivityClass() {
        return this.customDownloadActivityClass;
    }

    public boolean isForceRedownload() {
        return this.isForceRedownload;
    }

    public boolean isSilentDownload() {
        return this.isSilentDownload;
    }

    public boolean isOnlyDownload() {
        return this.onlyDownload;
    }

    public void setParamBundle(Bundle bundle) {
        this.paramBundle = bundle;
    }

    public static class Builder {
        VersionParams params = new VersionParams();

        public Builder() {
            this.params.downloadAPKPath = FileHelper.getDownloadApkCachePath();
            this.params.pauseRequestTime = 30000L;
            this.params.requestMethod = HttpRequestMethod.GET;
            this.params.customDownloadActivityClass = VersionDialogActivity.class;
            VersionParams versionParams = this.params;
            versionParams.isForceRedownload = false;
            versionParams.isSilentDownload = false;
            versionParams.onlyDownload = false;
            this.params.isShowDownloadFailDialog = true;
            this.params.service = MyService.class;
            this.params.isShowNotification = true;
            this.params.isShowDownloadingDialog = true;
        }

        public Builder setParamBundle(Bundle bundle) {
            this.params.paramBundle = bundle;
            return this;
        }

        public Builder setDownloadUrl(String str) {
            this.params.downloadUrl = str;
            return this;
        }

        public Builder setTitle(String str) {
            this.params.title = str;
            return this;
        }

        public Builder setUpdateMsg(String str) {
            this.params.updateMsg = str;
            return this;
        }

        public Builder setOnlyDownload(boolean z) {
            this.params.onlyDownload = z;
            return this;
        }

        public Builder setRequestUrl(String str) {
            this.params.requestUrl = str;
            return this;
        }

        public Builder setDownloadAPKPath(String str) {
            this.params.downloadAPKPath = str;
            return this;
        }

        public Builder setHttpHeaders(HttpHeaders httpHeaders) {
            this.params.httpHeaders = httpHeaders;
            return this;
        }

        public Builder setPauseRequestTime(long j) {
            this.params.pauseRequestTime = j;
            return this;
        }

        public Builder setRequestMethod(HttpRequestMethod httpRequestMethod) {
            this.params.requestMethod = httpRequestMethod;
            return this;
        }

        public Builder setRequestParams(HttpParams httpParams) {
            this.params.requestParams = httpParams;
            return this;
        }

        public Builder setCustomDownloadActivityClass(Class cls) {
            this.params.customDownloadActivityClass = cls;
            return this;
        }

        public Builder setForceRedownload(boolean z) {
            this.params.isForceRedownload = z;
            return this;
        }

        public Builder setSilentDownload(boolean z) {
            this.params.isSilentDownload = z;
            return this;
        }

        public Builder setService(Class<? extends AVersionService> cls) {
            this.params.service = cls;
            return this;
        }

        public Builder setShowDownloadingDialog(boolean z) {
            this.params.isShowDownloadingDialog = z;
            return this;
        }

        public Builder setShowNotification(boolean z) {
            this.params.isShowNotification = z;
            return this;
        }

        public Builder setShowDownLoadFailDialog(boolean z) {
            this.params.isShowDownloadFailDialog = z;
            return this;
        }

        public VersionParams build() {
            return this.params;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.requestUrl);
        parcel.writeString(this.downloadAPKPath);
        parcel.writeSerializable(this.httpHeaders);
        parcel.writeLong(this.pauseRequestTime);
        HttpRequestMethod httpRequestMethod = this.requestMethod;
        parcel.writeInt(httpRequestMethod == null ? -1 : httpRequestMethod.ordinal());
        parcel.writeSerializable(this.requestParams);
        parcel.writeSerializable(this.customDownloadActivityClass);
        parcel.writeByte(this.isForceRedownload ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isSilentDownload ? (byte) 1 : (byte) 0);
        parcel.writeSerializable(this.service);
        parcel.writeByte(this.onlyDownload ? (byte) 1 : (byte) 0);
        parcel.writeString(this.title);
        parcel.writeString(this.downloadUrl);
        parcel.writeString(this.updateMsg);
        parcel.writeBundle(this.paramBundle);
        parcel.writeByte(this.isShowDownloadingDialog ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isShowNotification ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isShowDownloadFailDialog ? (byte) 1 : (byte) 0);
    }

    protected VersionParams(Parcel parcel) {
        this.requestUrl = parcel.readString();
        this.downloadAPKPath = parcel.readString();
        this.httpHeaders = (HttpHeaders) parcel.readSerializable();
        this.pauseRequestTime = parcel.readLong();
        int i = parcel.readInt();
        this.requestMethod = i == -1 ? null : HttpRequestMethod.values()[i];
        this.requestParams = (HttpParams) parcel.readSerializable();
        this.customDownloadActivityClass = (Class) parcel.readSerializable();
        this.isForceRedownload = parcel.readByte() != 0;
        this.isSilentDownload = parcel.readByte() != 0;
        this.service = (Class) parcel.readSerializable();
        this.onlyDownload = parcel.readByte() != 0;
        this.title = parcel.readString();
        this.downloadUrl = parcel.readString();
        this.updateMsg = parcel.readString();
        this.paramBundle = parcel.readBundle();
        this.isShowDownloadingDialog = parcel.readByte() != 0;
        this.isShowNotification = parcel.readByte() != 0;
        this.isShowDownloadFailDialog = parcel.readByte() != 0;
    }
}
