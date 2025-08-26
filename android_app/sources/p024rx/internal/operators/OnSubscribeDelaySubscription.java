package p024rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.functions.Action0;
import p024rx.observers.Subscribers;

/* loaded from: classes2.dex */
public final class OnSubscribeDelaySubscription<T> implements Observable.OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<? extends T> source;
    final long time;
    final TimeUnit unit;

    public OnSubscribeDelaySubscription(Observable<? extends T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.source = observable;
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Action1
    public void call(final Subscriber<? super T> subscriber) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        subscriber.add(workerCreateWorker);
        workerCreateWorker.schedule(new Action0() { // from class: rx.internal.operators.OnSubscribeDelaySubscription.1
            @Override // p024rx.functions.Action0
            public void call() {
                if (subscriber.isUnsubscribed()) {
                    return;
                }
                OnSubscribeDelaySubscription.this.source.unsafeSubscribe(Subscribers.wrap(subscriber));
            }
        }, this.time, this.unit);
    }
}
