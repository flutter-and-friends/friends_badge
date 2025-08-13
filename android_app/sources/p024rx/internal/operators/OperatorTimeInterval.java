package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.schedulers.TimeInterval;

/* loaded from: classes2.dex */
public final class OperatorTimeInterval<T> implements Observable.Operator<TimeInterval<T>, T> {
    final Scheduler scheduler;

    public OperatorTimeInterval(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super TimeInterval<T>> subscriber) {
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorTimeInterval.1
            private long lastTimestamp;

            {
                this.lastTimestamp = OperatorTimeInterval.this.scheduler.now();
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                long jNow = OperatorTimeInterval.this.scheduler.now();
                subscriber.onNext(new TimeInterval(jNow - this.lastTimestamp, t));
                this.lastTimestamp = jNow;
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                subscriber.onError(th);
            }
        };
    }
}
