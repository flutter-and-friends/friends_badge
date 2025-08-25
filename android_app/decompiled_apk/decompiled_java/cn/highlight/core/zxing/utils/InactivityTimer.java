package cn.highlight.core.zxing.utils;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;

/* loaded from: classes.dex */
public class InactivityTimer {
    static final long INACTIVITY_DELAY_MS = 300000;
    static final String TAG = InactivityTimer.class.getSimpleName();
    Activity activity;
    AsyncTask<Object, Object, Object> inactivityTask;
    BroadcastReceiver powerStatusReceiver = new PowerStatusReceiver();
    boolean registered = false;

    public InactivityTimer(Activity activity) {
        this.activity = activity;
        onActivity();
    }

    public synchronized void onActivity() {
        cancel();
        this.inactivityTask = new InactivityAsyncTask();
        if (Build.VERSION.SDK_INT >= 11) {
            this.inactivityTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } else {
            this.inactivityTask.execute(new Object[0]);
        }
    }

    public synchronized void onPause() {
        cancel();
        if (this.registered) {
            this.activity.unregisterReceiver(this.powerStatusReceiver);
            this.registered = false;
        } else {
            Log.w(TAG, "PowerStatusReceiver was never registered?");
        }
    }

    public synchronized void onResume() {
        if (this.registered) {
            Log.w(TAG, "PowerStatusReceiver was already registered?");
        } else {
            this.activity.registerReceiver(this.powerStatusReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            this.registered = true;
        }
        onActivity();
    }

    synchronized void cancel() {
        AsyncTask<Object, Object, Object> asyncTask = this.inactivityTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.inactivityTask = null;
        }
    }

    public void shutdown() {
        cancel();
    }

    class PowerStatusReceiver extends BroadcastReceiver {
        PowerStatusReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                if (intent.getIntExtra("plugged", -1) <= 0) {
                    InactivityTimer.this.onActivity();
                } else {
                    InactivityTimer.this.cancel();
                }
            }
        }
    }

    class InactivityAsyncTask extends AsyncTask<Object, Object, Object> {
        InactivityAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object... objArr) throws InterruptedException {
            try {
                Thread.sleep(InactivityTimer.INACTIVITY_DELAY_MS);
                Log.i(InactivityTimer.TAG, "Finishing activity due to inactivity");
                InactivityTimer.this.activity.finish();
                return null;
            } catch (InterruptedException unused) {
                return null;
            }
        }
    }
}
