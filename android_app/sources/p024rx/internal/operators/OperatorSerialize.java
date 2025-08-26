package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.observers.SerializedSubscriber;

/* loaded from: classes2.dex */
public final class OperatorSerialize<T> implements Observable.Operator<T, T> {

    static final class Holder {
        static final OperatorSerialize<Object> INSTANCE = new OperatorSerialize<>();

        Holder() {
        }
    }

    public static <T> OperatorSerialize<T> instance() {
        return (OperatorSerialize<T>) Holder.INSTANCE;
    }

    OperatorSerialize() {
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        return new SerializedSubscriber(new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorSerialize.1
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
        });
    }
}
