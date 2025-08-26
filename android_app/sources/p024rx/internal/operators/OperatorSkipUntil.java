package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.observers.SerializedSubscriber;

/* loaded from: classes2.dex */
public final class OperatorSkipUntil<T, U> implements Observable.Operator<T, T> {
    final Observable<U> other;

    public OperatorSkipUntil(Observable<U> observable) {
        this.other = observable;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        final SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        Subscriber<U> subscriber2 = new Subscriber<U>() { // from class: rx.internal.operators.OperatorSkipUntil.1
            @Override // p024rx.Observer
            public void onNext(U u) {
                atomicBoolean.set(true);
                unsubscribe();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                serializedSubscriber.onError(th);
                serializedSubscriber.unsubscribe();
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                unsubscribe();
            }
        };
        subscriber.add(subscriber2);
        this.other.unsafeSubscribe(subscriber2);
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorSkipUntil.2
            @Override // p024rx.Observer
            public void onNext(T t) {
                if (atomicBoolean.get()) {
                    serializedSubscriber.onNext(t);
                } else {
                    request(1L);
                }
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                serializedSubscriber.onError(th);
                unsubscribe();
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                serializedSubscriber.onCompleted();
                unsubscribe();
            }
        };
    }
}
