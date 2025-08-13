package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Single;
import p024rx.Subscriber;
import p024rx.internal.operators.SingleLiftObservableOperator;

/* loaded from: classes2.dex */
public final class SingleToObservable<T> implements Observable.OnSubscribe<T> {
    final Single.OnSubscribe<T> source;

    public SingleToObservable(Single.OnSubscribe<T> onSubscribe) {
        this.source = onSubscribe;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        SingleLiftObservableOperator.WrapSubscriberIntoSingle wrapSubscriberIntoSingle = new SingleLiftObservableOperator.WrapSubscriberIntoSingle(subscriber);
        subscriber.add(wrapSubscriberIntoSingle);
        this.source.call(wrapSubscriberIntoSingle);
    }
}
