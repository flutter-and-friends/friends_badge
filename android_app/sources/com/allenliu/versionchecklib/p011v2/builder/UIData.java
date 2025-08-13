package com.allenliu.versionchecklib.p011v2.builder;

import android.os.Bundle;

/* loaded from: classes.dex */
public class UIData {
    private final String TITLE = "title";
    private final String CONTENT = "content";
    private final String DOWNLOAD_URL = "download_url";
    private Bundle versionBundle = new Bundle();

    public static UIData create() {
        return new UIData();
    }

    public String getDownloadUrl() {
        return this.versionBundle.getString("download_url");
    }

    public UIData setDownloadUrl(String str) {
        this.versionBundle.putString("download_url", str);
        return this;
    }

    private UIData() {
        this.versionBundle.putString("title", "by `UIData.setTitle()` to set your update title");
        this.versionBundle.putString("content", "by `UIData.setContent()` to set your update content ");
    }

    public UIData setTitle(String str) {
        this.versionBundle.putString("title", str);
        return this;
    }

    public UIData setContent(String str) {
        this.versionBundle.putString("content", str);
        return this;
    }

    public String getTitle() {
        return this.versionBundle.getString("title");
    }

    public String getContent() {
        return this.versionBundle.getString("content");
    }

    public Bundle getVersionBundle() {
        return this.versionBundle;
    }
}
