package p024rx.internal.util;

import p024rx.Observer;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class ObserverSubscriber<T> extends Subscriber<T> {
    final Observer<? super T> observer;

    public ObserverSubscriber(Observer<? super T> observer) {
        this.observer = observer;
    }

    @Override // p024rx.Observer
    public void onNext(T t) {
        this.observer.onNext(t);
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        this.observer.onError(th);
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        this.observer.onCompleted();
    }
}
