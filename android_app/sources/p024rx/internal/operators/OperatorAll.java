package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;
import p024rx.internal.producers.SingleDelayedProducer;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class OperatorAll<T> implements Observable.Operator<Boolean, T> {
    final Func1<? super T, Boolean> predicate;

    public OperatorAll(Func1<? super T, Boolean> func1) {
        this.predicate = func1;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super Boolean> subscriber) {
        final SingleDelayedProducer singleDelayedProducer = new SingleDelayedProducer(subscriber);
        Subscriber<T> subscriber2 = new Subscriber<T>() { // from class: rx.internal.operators.OperatorAll.1
            boolean done;

            @Override // p024rx.Observer
            public void onNext(T t) {
                if (this.done) {
                    return;
                }
                try {
                    if (OperatorAll.this.predicate.call(t).booleanValue()) {
                        return;
                    }
                    this.done = true;
                    singleDelayedProducer.setValue(false);
                    unsubscribe();
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, this, t);
                }
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                if (!this.done) {
                    this.done = true;
                    subscriber.onError(th);
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
                singleDelayedProducer.setValue(true);
            }
        };
        subscriber.add(subscriber2);
        subscriber.setProducer(singleDelayedProducer);
        return subscriber2;
    }
}
