package cn.highlight.core.zxing.camera;

import android.content.Context;
import android.hardware.Camera;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public class AutoFocusManager implements Camera.AutoFocusCallback {
    static final long AUTO_FOCUS_INTERVAL_MS = 2000;
    final Camera camera;
    boolean focusing;
    AsyncTask<?, ?, ?> outstandingTask;
    boolean stopped;
    final boolean useAutoFocus;
    static final String TAG = AutoFocusManager.class.getSimpleName();
    static final Collection<String> FOCUS_MODES_CALLING_AF = new ArrayList(2);

    static {
        FOCUS_MODES_CALLING_AF.add("auto");
        FOCUS_MODES_CALLING_AF.add("macro");
    }

    public AutoFocusManager(Context context, Camera camera) {
        this.camera = camera;
        String focusMode = camera.getParameters().getFocusMode();
        this.useAutoFocus = FOCUS_MODES_CALLING_AF.contains(focusMode);
        Log.i(TAG, "Current focus mode '" + focusMode + "'; use auto focus? " + this.useAutoFocus);
        start();
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public synchronized void onAutoFocus(boolean z, Camera camera) {
        this.focusing = false;
        autoFocusAgainLater();
    }

    synchronized void autoFocusAgainLater() {
        if (!this.stopped && this.outstandingTask == null) {
            AutoFocusTask autoFocusTask = new AutoFocusTask();
            try {
                if (Build.VERSION.SDK_INT >= 11) {
                    autoFocusTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                } else {
                    autoFocusTask.execute(new Object[0]);
                }
                this.outstandingTask = autoFocusTask;
            } catch (RejectedExecutionException e) {
                Log.w(TAG, "Could not request auto focus", e);
            }
        }
    }

    public synchronized void start() {
        if (this.useAutoFocus) {
            this.outstandingTask = null;
            if (!this.stopped && !this.focusing) {
                try {
                    this.camera.autoFocus(this);
                    this.focusing = true;
                } catch (RuntimeException e) {
                    Log.w(TAG, "Unexpected exception while focusing", e);
                    autoFocusAgainLater();
                }
            }
        }
    }

    synchronized void cancelOutstandingTask() {
        if (this.outstandingTask != null) {
            if (this.outstandingTask.getStatus() != AsyncTask.Status.FINISHED) {
                this.outstandingTask.cancel(true);
            }
            this.outstandingTask = null;
        }
    }

    public synchronized void stop() {
        this.stopped = true;
        if (this.useAutoFocus) {
            cancelOutstandingTask();
            try {
                this.camera.cancelAutoFocus();
            } catch (RuntimeException e) {
                Log.w(TAG, "Unexpected exception while cancelling focusing", e);
            }
        }
    }

    final class AutoFocusTask extends AsyncTask<Object, Object, Object> {
        AutoFocusTask() {
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object... objArr) throws InterruptedException {
            try {
                Thread.sleep(AutoFocusManager.AUTO_FOCUS_INTERVAL_MS);
            } catch (InterruptedException unused) {
            }
            AutoFocusManager.this.start();
            return null;
        }
    }
}
