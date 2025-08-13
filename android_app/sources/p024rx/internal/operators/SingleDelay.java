package p024rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p024rx.Scheduler;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.functions.Action0;

/* loaded from: classes2.dex */
public final class SingleDelay<T> implements Single.OnSubscribe<T> {
    final long delay;
    final Scheduler scheduler;
    final Single.OnSubscribe<T> source;
    final TimeUnit unit;

    public SingleDelay(Single.OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.source = onSubscribe;
        this.scheduler = scheduler;
        this.delay = j;
        this.unit = timeUnit;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        ObserveOnSingleSubscriber observeOnSingleSubscriber = new ObserveOnSingleSubscriber(singleSubscriber, workerCreateWorker, this.delay, this.unit);
        singleSubscriber.add(workerCreateWorker);
        singleSubscriber.add(observeOnSingleSubscriber);
        this.source.call(observeOnSingleSubscriber);
    }

    static final class ObserveOnSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        final SingleSubscriber<? super T> actual;
        final long delay;
        Throwable error;
        final TimeUnit unit;
        T value;

        /* renamed from: w */
        final Scheduler.Worker f1214w;

        public ObserveOnSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Scheduler.Worker worker, long j, TimeUnit timeUnit) {
            this.actual = singleSubscriber;
            this.f1214w = worker;
            this.delay = j;
            this.unit = timeUnit;
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            this.value = t;
            this.f1214w.schedule(this, this.delay, this.unit);
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            this.error = th;
            this.f1214w.schedule(this, this.delay, this.unit);
        }

        @Override // p024rx.functions.Action0
        public void call() {
            try {
                Throwable th = this.error;
                if (th != null) {
                    this.error = null;
                    this.actual.onError(th);
                } else {
                    T t = this.value;
                    this.value = null;
                    this.actual.onSuccess(t);
                }
            } finally {
                this.f1214w.unsubscribe();
            }
        }
    }
}
