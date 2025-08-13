package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OperatorAsObservable<T> implements Observable.Operator<T, T> {
    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return subscriber;
    }

    static final class Holder {
        static final OperatorAsObservable<Object> INSTANCE = new OperatorAsObservable<>();

        Holder() {
        }
    }

    public static <T> OperatorAsObservable<T> instance() {
        return (OperatorAsObservable<T>) Holder.INSTANCE;
    }

    OperatorAsObservable() {
    }
}
