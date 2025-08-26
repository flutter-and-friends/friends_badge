package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.functions.Action0;
import p024rx.observers.Subscribers;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public class OperatorDoOnUnsubscribe<T> implements Observable.Operator<T, T> {
    private final Action0 unsubscribe;

    public OperatorDoOnUnsubscribe(Action0 action0) {
        this.unsubscribe = action0;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        subscriber.add(Subscriptions.create(this.unsubscribe));
        return Subscribers.wrap(subscriber);
    }
}
