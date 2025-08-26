package p024rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func0;
import p024rx.observers.SerializedSubscriber;
import p024rx.observers.Subscribers;

/* loaded from: classes2.dex */
public final class OperatorBufferWithSingleObservable<T, TClosing> implements Observable.Operator<List<T>, T> {
    final Func0<? extends Observable<? extends TClosing>> bufferClosingSelector;
    final int initialCapacity;

    public OperatorBufferWithSingleObservable(Func0<? extends Observable<? extends TClosing>> func0, int i) {
        this.bufferClosingSelector = func0;
        this.initialCapacity = i;
    }

    public OperatorBufferWithSingleObservable(final Observable<? extends TClosing> observable, int i) {
        this.bufferClosingSelector = new Func0<Observable<? extends TClosing>>() { // from class: rx.internal.operators.OperatorBufferWithSingleObservable.1
            @Override // p024rx.functions.Func0, java.util.concurrent.Callable
            public Observable<? extends TClosing> call() {
                return observable;
            }
        };
        this.initialCapacity = i;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        try {
            Observable<? extends TClosing> observableCall = this.bufferClosingSelector.call();
            final BufferingSubscriber bufferingSubscriber = new BufferingSubscriber(new SerializedSubscriber(subscriber));
            Subscriber<TClosing> subscriber2 = new Subscriber<TClosing>() { // from class: rx.internal.operators.OperatorBufferWithSingleObservable.2
                @Override // p024rx.Observer
                public void onNext(TClosing tclosing) {
                    bufferingSubscriber.emit();
                }

                @Override // p024rx.Observer
                public void onError(Throwable th) {
                    bufferingSubscriber.onError(th);
                }

                @Override // p024rx.Observer
                public void onCompleted() {
                    bufferingSubscriber.onCompleted();
                }
            };
            subscriber.add(subscriber2);
            subscriber.add(bufferingSubscriber);
            observableCall.unsafeSubscribe(subscriber2);
            return bufferingSubscriber;
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, subscriber);
            return Subscribers.empty();
        }
    }

    final class BufferingSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        List<T> chunk;
        boolean done;

        public BufferingSubscriber(Subscriber<? super List<T>> subscriber) {
            this.child = subscriber;
            this.chunk = new ArrayList(OperatorBufferWithSingleObservable.this.initialCapacity);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunk.add(t);
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunk = null;
                this.child.onError(th);
                unsubscribe();
            }
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            try {
                synchronized (this) {
                    if (this.done) {
                        return;
                    }
                    this.done = true;
                    List<T> list = this.chunk;
                    this.chunk = null;
                    this.child.onNext(list);
                    this.child.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this.child);
            }
        }

        void emit() {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                List<T> list = this.chunk;
                this.chunk = new ArrayList(OperatorBufferWithSingleObservable.this.initialCapacity);
                try {
                    this.child.onNext(list);
                } catch (Throwable th) {
                    unsubscribe();
                    synchronized (this) {
                        if (this.done) {
                            return;
                        }
                        this.done = true;
                        Exceptions.throwOrReport(th, this.child);
                    }
                }
            }
        }
    }
}
