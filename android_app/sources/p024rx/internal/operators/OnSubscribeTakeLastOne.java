package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OnSubscribeTakeLastOne<T> implements Observable.OnSubscribe<T> {
    final Observable<T> source;

    public OnSubscribeTakeLastOne(Observable<T> observable) {
        this.source = observable;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        new TakeLastOneSubscriber(subscriber).subscribeTo(this.source);
    }

    static final class TakeLastOneSubscriber<T> extends DeferredScalarSubscriber<T, T> {
        static final Object EMPTY = new Object();

        /* JADX WARN: Type inference failed for: r1v1, types: [R, java.lang.Object] */
        public TakeLastOneSubscriber(Subscriber<? super T> subscriber) {
            super(subscriber);
            this.value = EMPTY;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p024rx.Observer
        public void onNext(T t) {
            this.value = t;
        }

        @Override // p024rx.internal.operators.DeferredScalarSubscriber, p024rx.Observer
        public void onCompleted() {
            Object obj = this.value;
            if (obj == EMPTY) {
                complete();
            } else {
                complete(obj);
            }
        }
    }
}
