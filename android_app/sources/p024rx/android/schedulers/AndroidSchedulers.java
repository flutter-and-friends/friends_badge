package p024rx.android.schedulers;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Scheduler;
import p024rx.android.plugins.RxAndroidPlugins;

/* loaded from: classes2.dex */
public final class AndroidSchedulers {
    private static final AtomicReference<AndroidSchedulers> INSTANCE = new AtomicReference<>();
    private final Scheduler mainThreadScheduler;

    private static AndroidSchedulers getInstance() {
        AndroidSchedulers androidSchedulers;
        do {
            AndroidSchedulers androidSchedulers2 = INSTANCE.get();
            if (androidSchedulers2 != null) {
                return androidSchedulers2;
            }
            androidSchedulers = new AndroidSchedulers();
        } while (!INSTANCE.compareAndSet(null, androidSchedulers));
        return androidSchedulers;
    }

    private AndroidSchedulers() {
        Scheduler mainThreadScheduler = RxAndroidPlugins.getInstance().getSchedulersHook().getMainThreadScheduler();
        if (mainThreadScheduler != null) {
            this.mainThreadScheduler = mainThreadScheduler;
        } else {
            this.mainThreadScheduler = new LooperScheduler(Looper.getMainLooper());
        }
    }

    public static Scheduler mainThread() {
        return getInstance().mainThreadScheduler;
    }

    public static Scheduler from(Looper looper) {
        if (looper == null) {
            throw new NullPointerException("looper == null");
        }
        return new LooperScheduler(looper);
    }

    public static void reset() {
        INSTANCE.set(null);
    }
}
