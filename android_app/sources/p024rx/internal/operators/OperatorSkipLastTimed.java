package p024rx.internal.operators;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.TimeUnit;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.schedulers.Timestamped;

/* loaded from: classes2.dex */
public class OperatorSkipLastTimed<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;
    final long timeInMillis;

    public OperatorSkipLastTimed(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.timeInMillis = timeUnit.toMillis(j);
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorSkipLastTimed.1
            private Deque<Timestamped<T>> buffer = new ArrayDeque();

            private void emitItemsOutOfWindow(long j) {
                long j2 = j - OperatorSkipLastTimed.this.timeInMillis;
                while (!this.buffer.isEmpty()) {
                    Timestamped<T> first = this.buffer.getFirst();
                    if (first.getTimestampMillis() >= j2) {
                        return;
                    }
                    this.buffer.removeFirst();
                    subscriber.onNext(first.getValue());
                }
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                long jNow = OperatorSkipLastTimed.this.scheduler.now();
                emitItemsOutOfWindow(jNow);
                this.buffer.offerLast(new Timestamped<>(jNow, t));
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                subscriber.onError(th);
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                emitItemsOutOfWindow(OperatorSkipLastTimed.this.scheduler.now());
                subscriber.onCompleted();
            }
        };
    }
}
