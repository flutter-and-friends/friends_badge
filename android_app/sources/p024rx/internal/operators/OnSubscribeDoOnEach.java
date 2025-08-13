package p024rx.internal.operators;

import java.util.Arrays;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Subscriber;
import p024rx.exceptions.CompositeException;
import p024rx.exceptions.Exceptions;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public class OnSubscribeDoOnEach<T> implements Observable.OnSubscribe<T> {
    private final Observer<? super T> doOnEachObserver;
    private final Observable<T> source;

    public OnSubscribeDoOnEach(Observable<T> observable, Observer<? super T> observer) {
        this.source = observable;
        this.doOnEachObserver = observer;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        this.source.unsafeSubscribe(new DoOnEachSubscriber(subscriber, this.doOnEachObserver));
    }

    private static final class DoOnEachSubscriber<T> extends Subscriber<T> {
        private final Observer<? super T> doOnEachObserver;
        private boolean done;
        private final Subscriber<? super T> subscriber;

        DoOnEachSubscriber(Subscriber<? super T> subscriber, Observer<? super T> observer) {
            super(subscriber);
            this.subscriber = subscriber;
            this.doOnEachObserver = observer;
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            try {
                this.doOnEachObserver.onCompleted();
                this.done = true;
                this.subscriber.onCompleted();
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this);
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.done = true;
            try {
                this.doOnEachObserver.onError(th);
                this.subscriber.onError(th);
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                this.subscriber.onError(new CompositeException(Arrays.asList(th, th2)));
            }
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                this.doOnEachObserver.onNext(t);
                this.subscriber.onNext(t);
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this, t);
            }
        }
    }
}
