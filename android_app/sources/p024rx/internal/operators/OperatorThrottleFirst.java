package p024rx.internal.operators;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OperatorThrottleFirst<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;
    final long timeInMilliseconds;

    public OperatorThrottleFirst(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.timeInMilliseconds = timeUnit.toMillis(j);
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorThrottleFirst.1
            private long lastOnNext = -1;

            @Override // p024rx.Subscriber
            public void onStart() {
                request(LongCompanionObject.MAX_VALUE);
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                long jNow = OperatorThrottleFirst.this.scheduler.now();
                long j = this.lastOnNext;
                if (j == -1 || jNow - j >= OperatorThrottleFirst.this.timeInMilliseconds) {
                    this.lastOnNext = jNow;
                    subscriber.onNext(t);
                }
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
