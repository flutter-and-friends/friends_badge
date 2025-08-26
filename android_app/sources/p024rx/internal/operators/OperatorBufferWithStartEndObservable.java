package p024rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;
import p024rx.observers.SerializedSubscriber;
import p024rx.subscriptions.CompositeSubscription;

/* loaded from: classes2.dex */
public final class OperatorBufferWithStartEndObservable<T, TOpening, TClosing> implements Observable.Operator<List<T>, T> {
    final Func1<? super TOpening, ? extends Observable<? extends TClosing>> bufferClosing;
    final Observable<? extends TOpening> bufferOpening;

    public OperatorBufferWithStartEndObservable(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        this.bufferOpening = observable;
        this.bufferClosing = func1;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        final BufferingSubscriber bufferingSubscriber = new BufferingSubscriber(new SerializedSubscriber(subscriber));
        Subscriber<TOpening> subscriber2 = new Subscriber<TOpening>() { // from class: rx.internal.operators.OperatorBufferWithStartEndObservable.1
            @Override // p024rx.Observer
            public void onNext(TOpening topening) {
                bufferingSubscriber.startBuffer(topening);
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
        this.bufferOpening.unsafeSubscribe(subscriber2);
        return bufferingSubscriber;
    }

    final class BufferingSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        final List<List<T>> chunks = new LinkedList();
        final CompositeSubscription closingSubscriptions = new CompositeSubscription();
        boolean done;

        public BufferingSubscriber(Subscriber<? super List<T>> subscriber) {
            this.child = subscriber;
            add(this.closingSubscriptions);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            synchronized (this) {
                Iterator<List<T>> it = this.chunks.iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunks.clear();
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
                    LinkedList linkedList = new LinkedList(this.chunks);
                    this.chunks.clear();
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        this.child.onNext((List) it.next());
                    }
                    this.child.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this.child);
            }
        }

        void startBuffer(TOpening topening) {
            final ArrayList arrayList = new ArrayList();
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunks.add(arrayList);
                try {
                    Observable<? extends TClosing> observableCall = OperatorBufferWithStartEndObservable.this.bufferClosing.call(topening);
                    Subscriber<TClosing> subscriber = new Subscriber<TClosing>() { // from class: rx.internal.operators.OperatorBufferWithStartEndObservable.BufferingSubscriber.1
                        @Override // p024rx.Observer
                        public void onNext(TClosing tclosing) {
                            BufferingSubscriber.this.closingSubscriptions.remove(this);
                            BufferingSubscriber.this.endBuffer(arrayList);
                        }

                        @Override // p024rx.Observer
                        public void onError(Throwable th) {
                            BufferingSubscriber.this.onError(th);
                        }

                        @Override // p024rx.Observer
                        public void onCompleted() {
                            BufferingSubscriber.this.closingSubscriptions.remove(this);
                            BufferingSubscriber.this.endBuffer(arrayList);
                        }
                    };
                    this.closingSubscriptions.add(subscriber);
                    observableCall.unsafeSubscribe(subscriber);
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, this);
                }
            }
        }

        void endBuffer(List<T> list) {
            boolean z;
            synchronized (this) {
                if (this.done) {
                    return;
                }
                Iterator<List<T>> it = this.chunks.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (it.next() == list) {
                        z = true;
                        it.remove();
                        break;
                    }
                }
                if (z) {
                    this.child.onNext(list);
                }
            }
        }
    }
}
