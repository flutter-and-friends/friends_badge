package p024rx.android.schedulers;

import android.os.Handler;
import p024rx.Scheduler;

@Deprecated
/* loaded from: classes2.dex */
public final class HandlerScheduler extends LooperScheduler {
    @Override // p024rx.android.schedulers.LooperScheduler, p024rx.Scheduler
    public /* bridge */ /* synthetic */ Scheduler.Worker createWorker() {
        return super.createWorker();
    }

    @Deprecated
    public static HandlerScheduler from(Handler handler) {
        if (handler == null) {
            throw new NullPointerException("handler == null");
        }
        return new HandlerScheduler(handler);
    }

    private HandlerScheduler(Handler handler) {
        super(handler);
    }
}
