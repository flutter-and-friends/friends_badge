package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;
import p024rx.observers.SerializedSubscriber;
import p024rx.observers.Subscribers;
import p024rx.subjects.PublishSubject;

/* loaded from: classes2.dex */
public final class OperatorDelayWithSelector<T, V> implements Observable.Operator<T, T> {
    final Func1<? super T, ? extends Observable<V>> itemDelay;
    final Observable<? extends T> source;

    public OperatorDelayWithSelector(Observable<? extends T> observable, Func1<? super T, ? extends Observable<V>> func1) {
        this.source = observable;
        this.itemDelay = func1;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        final SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        final PublishSubject publishSubjectCreate = PublishSubject.create();
        subscriber.add(Observable.merge(publishSubjectCreate).unsafeSubscribe(Subscribers.from(serializedSubscriber)));
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorDelayWithSelector.1
            @Override // p024rx.Observer
            public void onCompleted() {
                publishSubjectCreate.onCompleted();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                serializedSubscriber.onError(th);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p024rx.Observer
            public void onNext(final T t) {
                try {
                    publishSubjectCreate.onNext(OperatorDelayWithSelector.this.itemDelay.call(t).take(1).defaultIfEmpty(null).map(new Func1<V, T>() { // from class: rx.internal.operators.OperatorDelayWithSelector.1.1
                        @Override // p024rx.functions.Func1
                        public T call(V v) {
                            return (T) t;
                        }
                    }));
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, this);
                }
            }
        };
    }
}
