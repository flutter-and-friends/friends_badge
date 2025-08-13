package cn.forward.androids.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.MessageQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class ThreadUtil {
    private static final String ASYNC_THREAD_NAME = "single-async-thread";
    private static ThreadUtil sInstance;
    private Handler mMainHandler;
    private MessageQueue mMsgQueue;
    private Handler mSingleAsyncHandler;
    private ThreadPoolExecutor mExecutor = (ThreadPoolExecutor) Executors.newFixedThreadPool(3);
    private HandlerThread mSingleAsyncThread = new HandlerThread(ASYNC_THREAD_NAME);

    private ThreadUtil() {
        this.mSingleAsyncThread.start();
        this.mSingleAsyncHandler = new Handler(this.mSingleAsyncThread.getLooper());
        this.mMainHandler = new Handler(Looper.getMainLooper());
        if (Looper.getMainLooper() == Looper.myLooper()) {
            this.mMsgQueue = Looper.myQueue();
            return;
        }
        Object value = null;
        try {
            value = ReflectUtil.getValue(Looper.getMainLooper(), "mQueue");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (value instanceof MessageQueue) {
            this.mMsgQueue = (MessageQueue) value;
        } else {
            runOnMainThread(new Runnable() { // from class: cn.forward.androids.utils.ThreadUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    ThreadUtil.this.mMsgQueue = Looper.myQueue();
                }
            });
        }
    }

    public static ThreadUtil getInstance() {
        if (sInstance == null) {
            sInstance = new ThreadUtil();
        }
        return sInstance;
    }

    public void execute(Runnable runnable) {
        this.mExecutor.execute(runnable);
    }

    public void cancel(Runnable runnable) {
        this.mExecutor.remove(runnable);
        this.mSingleAsyncHandler.removeCallbacks(runnable);
        this.mMainHandler.removeCallbacks(runnable);
    }

    public void destroy() {
        this.mExecutor.shutdownNow();
        this.mSingleAsyncHandler.removeCallbacksAndMessages(null);
        this.mMainHandler.removeCallbacksAndMessages(null);
    }

    public void runOnAsyncThread(Runnable runnable) {
        this.mSingleAsyncHandler.post(runnable);
    }

    public void runOnAsyncThread(Runnable runnable, long j) {
        this.mSingleAsyncHandler.postDelayed(runnable, j);
    }

    public void runOnMainThread(Runnable runnable) {
        this.mMainHandler.post(runnable);
    }

    public void runOnMainThread(Runnable runnable, long j) {
        this.mMainHandler.postDelayed(runnable, j);
    }

    public void runOnIdleTime(final Runnable runnable) {
        this.mMsgQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: cn.forward.androids.utils.ThreadUtil.2
            @Override // android.os.MessageQueue.IdleHandler
            public boolean queueIdle() {
                runnable.run();
                return false;
            }
        });
    }
}
