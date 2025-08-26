package com.yanzhenjie.permission.bridge;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
class Messenger extends BroadcastReceiver {
    private static final String ACTION = "com.yanzhenjie.permission.bridge";
    private final Callback mCallback;
    private final Context mContext;

    public interface Callback {
        void onCallback();
    }

    public static void send(Context context) {
        context.sendBroadcast(new Intent(ACTION));
    }

    public Messenger(Context context, Callback callback) {
        this.mContext = context;
        this.mCallback = callback;
    }

    public void register() {
        this.mContext.registerReceiver(this, new IntentFilter(ACTION));
    }

    public void unRegister() {
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.mCallback.onCallback();
    }
}
