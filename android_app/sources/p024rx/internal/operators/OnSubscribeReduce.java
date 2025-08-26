package p024rx.internal.operators;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func2;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class OnSubscribeReduce<T> implements Observable.OnSubscribe<T> {
    final Func2<T, T, T> reducer;
    final Observable<T> source;

    public OnSubscribeReduce(Observable<T> observable, Func2<T, T, T> func2) {
        this.source = observable;
        this.reducer = func2;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        final ReduceSubscriber reduceSubscriber = new ReduceSubscriber(subscriber, this.reducer);
        subscriber.add(reduceSubscriber);
        subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OnSubscribeReduce.1
            @Override // p024rx.Producer
            public void request(long j) {
                reduceSubscriber.downstreamRequest(j);
            }
        });
        this.source.unsafeSubscribe(reduceSubscriber);
    }

    static final class ReduceSubscriber<T> extends Subscriber<T> {
        static final Object EMPTY = new Object();
        final Subscriber<? super T> actual;
        boolean done;
        final Func2<T, T, T> reducer;
        T value = (T) EMPTY;

        public ReduceSubscriber(Subscriber<? super T> subscriber, Func2<T, T, T> func2) {
            this.actual = subscriber;
            this.reducer = func2;
            request(0L);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            T t2 = this.value;
            if (t2 == EMPTY) {
                this.value = t;
                return;
            }
            try {
                this.value = this.reducer.call(t2, t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                unsubscribe();
                onError(th);
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            if (!this.done) {
                this.done = true;
                this.actual.onError(th);
            } else {
                RxJavaHooks.onError(th);
            }
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            this.done = true;
            T t = this.value;
            if (t != EMPTY) {
                this.actual.onNext(t);
                this.actual.onCompleted();
            } else {
                this.actual.onError(new NoSuchElementException());
            }
        }

        void downstreamRequest(long j) {
            if (j >= 0) {
                if (j != 0) {
                    request(LongCompanionObject.MAX_VALUE);
                }
            } else {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
        }
    }
}
