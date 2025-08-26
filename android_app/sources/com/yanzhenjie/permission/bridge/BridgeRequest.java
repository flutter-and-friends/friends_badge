package com.yanzhenjie.permission.bridge;

import com.yanzhenjie.permission.source.Source;

/* loaded from: classes.dex */
public final class BridgeRequest {
    public static final int TYPE_ALERT_WINDOW = 5;
    public static final int TYPE_APP_DETAILS = 1;
    public static final int TYPE_INSTALL = 3;
    public static final int TYPE_NOTIFY = 6;
    public static final int TYPE_NOTIFY_LISTENER = 7;
    public static final int TYPE_OVERLAY = 4;
    public static final int TYPE_PERMISSION = 2;
    private Callback mCallback;
    private String[] mPermissions;
    private final Source mSource;
    private int mType;

    public interface Callback {
        void onCallback();
    }

    public BridgeRequest(Source source) {
        this.mSource = source;
    }

    public Source getSource() {
        return this.mSource;
    }

    public int getType() {
        return this.mType;
    }

    public void setType(int i) {
        this.mType = i;
    }

    public Callback getCallback() {
        return this.mCallback;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public String[] getPermissions() {
        return this.mPermissions;
    }

    public void setPermissions(String[] strArr) {
        this.mPermissions = strArr;
    }
}
