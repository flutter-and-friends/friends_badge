package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.functions.Action0;
import p024rx.observers.Subscribers;

/* loaded from: classes2.dex */
public class OperatorDoOnSubscribe<T> implements Observable.Operator<T, T> {
    private final Action0 subscribe;

    public OperatorDoOnSubscribe(Action0 action0) {
        this.subscribe = action0;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        this.subscribe.call();
        return Subscribers.wrap(subscriber);
    }
}
