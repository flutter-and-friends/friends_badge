package com.allenliu.versionchecklib.p011v2.builder;

/* loaded from: classes.dex */
public class NotificationBuilder {
    private String contentText;
    private String contentTitle;
    private int icon;
    private boolean isRingtone = true;
    private String ticker;

    public static NotificationBuilder create() {
        return new NotificationBuilder();
    }

    private NotificationBuilder() {
    }

    public int getIcon() {
        return this.icon;
    }

    public NotificationBuilder setIcon(int i) {
        this.icon = i;
        return this;
    }

    public String getContentTitle() {
        return this.contentTitle;
    }

    public NotificationBuilder setContentTitle(String str) {
        this.contentTitle = str;
        return this;
    }

    public String getTicker() {
        return this.ticker;
    }

    public NotificationBuilder setTicker(String str) {
        this.ticker = str;
        return this;
    }

    public String getContentText() {
        return this.contentText;
    }

    public NotificationBuilder setContentText(String str) {
        this.contentText = str;
        return this;
    }

    public boolean isRingtone() {
        return this.isRingtone;
    }

    public NotificationBuilder setRingtone(boolean z) {
        this.isRingtone = z;
        return this;
    }
}
