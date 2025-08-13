package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.functions.Action0;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public class OperatorUnsubscribeOn<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;

    public OperatorUnsubscribeOn(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        final Subscriber<T> subscriber2 = new Subscriber<T>() { // from class: rx.internal.operators.OperatorUnsubscribeOn.1
            @Override // p024rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                subscriber.onError(th);
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                subscriber.onNext(t);
            }
        };
        subscriber.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorUnsubscribeOn.2
            @Override // p024rx.functions.Action0
            public void call() {
                final Scheduler.Worker workerCreateWorker = OperatorUnsubscribeOn.this.scheduler.createWorker();
                workerCreateWorker.schedule(new Action0() { // from class: rx.internal.operators.OperatorUnsubscribeOn.2.1
                    @Override // p024rx.functions.Action0
                    public void call() {
                        subscriber2.unsubscribe();
                        workerCreateWorker.unsubscribe();
                    }
                });
            }
        }));
        return subscriber2;
    }
}
