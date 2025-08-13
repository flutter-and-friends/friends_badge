package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.exceptions.OnErrorThrowable;
import p024rx.functions.Func1;
import p024rx.functions.Func2;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class OperatorMapPair<T, U, R> implements Observable.Operator<Observable<? extends R>, T> {
    final Func1<? super T, ? extends Observable<? extends U>> collectionSelector;
    final Func2<? super T, ? super U, ? extends R> resultSelector;

    public static <T, U> Func1<T, Observable<U>> convertSelector(final Func1<? super T, ? extends Iterable<? extends U>> func1) {
        return new Func1<T, Observable<U>>() { // from class: rx.internal.operators.OperatorMapPair.1
            @Override // p024rx.functions.Func1
            public /* bridge */ /* synthetic */ Object call(Object obj) {
                return call((C19261) obj);
            }

            @Override // p024rx.functions.Func1
            public Observable<U> call(T t) {
                return Observable.from((Iterable) func1.call(t));
            }
        };
    }

    public OperatorMapPair(Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
        this.collectionSelector = func1;
        this.resultSelector = func2;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super Observable<? extends R>> subscriber) {
        MapPairSubscriber mapPairSubscriber = new MapPairSubscriber(subscriber, this.collectionSelector, this.resultSelector);
        subscriber.add(mapPairSubscriber);
        return mapPairSubscriber;
    }

    static final class MapPairSubscriber<T, U, R> extends Subscriber<T> {
        final Subscriber<? super Observable<? extends R>> actual;
        final Func1<? super T, ? extends Observable<? extends U>> collectionSelector;
        boolean done;
        final Func2<? super T, ? super U, ? extends R> resultSelector;

        public MapPairSubscriber(Subscriber<? super Observable<? extends R>> subscriber, Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
            this.actual = subscriber;
            this.collectionSelector = func1;
            this.resultSelector = func2;
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            try {
                this.actual.onNext(this.collectionSelector.call(t).map(new OuterInnerMapper(t, this.resultSelector)));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                unsubscribe();
                onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
            } else {
                this.done = true;
                this.actual.onError(th);
            }
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            this.actual.onCompleted();
        }

        @Override // p024rx.Subscriber
        public void setProducer(Producer producer) {
            this.actual.setProducer(producer);
        }
    }

    static final class OuterInnerMapper<T, U, R> implements Func1<U, R> {
        final T outer;
        final Func2<? super T, ? super U, ? extends R> resultSelector;

        public OuterInnerMapper(T t, Func2<? super T, ? super U, ? extends R> func2) {
            this.outer = t;
            this.resultSelector = func2;
        }

        @Override // p024rx.functions.Func1
        public R call(U u) {
            return this.resultSelector.call(this.outer, u);
        }
    }
}
