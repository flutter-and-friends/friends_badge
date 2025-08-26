package p024rx.internal.schedulers;

import p024rx.Scheduler;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Action0;

/* loaded from: classes2.dex */
class SleepingAction implements Action0 {
    private final long execTime;
    private final Scheduler.Worker innerScheduler;
    private final Action0 underlying;

    public SleepingAction(Action0 action0, Scheduler.Worker worker, long j) {
        this.underlying = action0;
        this.innerScheduler = worker;
        this.execTime = j;
    }

    @Override // p024rx.functions.Action0
    public void call() throws InterruptedException {
        if (this.innerScheduler.isUnsubscribed()) {
            return;
        }
        long jNow = this.execTime - this.innerScheduler.now();
        if (jNow > 0) {
            try {
                Thread.sleep(jNow);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                Exceptions.propagate(e);
            }
        }
        if (this.innerScheduler.isUnsubscribed()) {
            return;
        }
        this.underlying.call();
    }
}
