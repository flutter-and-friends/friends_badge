package p024rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import p024rx.Scheduler;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.functions.Action0;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class SingleTimeout<T> implements Single.OnSubscribe<T> {
    final Single.OnSubscribe<? extends T> other;
    final Scheduler scheduler;
    final Single.OnSubscribe<T> source;
    final long timeout;
    final TimeUnit unit;

    public SingleTimeout(Single.OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Scheduler scheduler, Single.OnSubscribe<? extends T> onSubscribe2) {
        this.source = onSubscribe;
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.other = onSubscribe2;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        TimeoutSingleSubscriber timeoutSingleSubscriber = new TimeoutSingleSubscriber(singleSubscriber, this.other);
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        timeoutSingleSubscriber.add(workerCreateWorker);
        singleSubscriber.add(timeoutSingleSubscriber);
        workerCreateWorker.schedule(timeoutSingleSubscriber, this.timeout, this.unit);
        this.source.call(timeoutSingleSubscriber);
    }

    static final class TimeoutSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        final SingleSubscriber<? super T> actual;
        final AtomicBoolean once = new AtomicBoolean();
        final Single.OnSubscribe<? extends T> other;

        TimeoutSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Single.OnSubscribe<? extends T> onSubscribe) {
            this.actual = singleSubscriber;
            this.other = onSubscribe;
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            if (this.once.compareAndSet(false, true)) {
                try {
                    this.actual.onSuccess(t);
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                try {
                    this.actual.onError(th);
                    return;
                } finally {
                    unsubscribe();
                }
            }
            RxJavaHooks.onError(th);
        }

        @Override // p024rx.functions.Action0
        public void call() {
            if (this.once.compareAndSet(false, true)) {
                try {
                    Single.OnSubscribe<? extends T> onSubscribe = this.other;
                    if (onSubscribe == null) {
                        this.actual.onError(new TimeoutException());
                    } else {
                        OtherSubscriber otherSubscriber = new OtherSubscriber(this.actual);
                        this.actual.add(otherSubscriber);
                        onSubscribe.call(otherSubscriber);
                    }
                } finally {
                    unsubscribe();
                }
            }
        }

        static final class OtherSubscriber<T> extends SingleSubscriber<T> {
            final SingleSubscriber<? super T> actual;

            OtherSubscriber(SingleSubscriber<? super T> singleSubscriber) {
                this.actual = singleSubscriber;
            }

            @Override // p024rx.SingleSubscriber
            public void onSuccess(T t) {
                this.actual.onSuccess(t);
            }

            @Override // p024rx.SingleSubscriber
            public void onError(Throwable th) {
                this.actual.onError(th);
            }
        }
    }
}
