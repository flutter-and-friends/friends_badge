package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func0;
import p024rx.observers.Subscribers;

/* loaded from: classes2.dex */
public final class OnSubscribeDefer<T> implements Observable.OnSubscribe<T> {
    final Func0<? extends Observable<? extends T>> observableFactory;

    public OnSubscribeDefer(Func0<? extends Observable<? extends T>> func0) {
        this.observableFactory = func0;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        try {
            this.observableFactory.call().unsafeSubscribe(Subscribers.wrap(subscriber));
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, subscriber);
        }
    }
}
