package p024rx.internal.operators;

import java.util.Iterator;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func2;
import p024rx.observers.Subscribers;

/* loaded from: classes2.dex */
public final class OperatorZipIterable<T1, T2, R> implements Observable.Operator<R, T1> {
    final Iterable<? extends T2> iterable;
    final Func2<? super T1, ? super T2, ? extends R> zipFunction;

    public OperatorZipIterable(Iterable<? extends T2> iterable, Func2<? super T1, ? super T2, ? extends R> func2) {
        this.iterable = iterable;
        this.zipFunction = func2;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T1> call(final Subscriber<? super R> subscriber) {
        final Iterator<? extends T2> it = this.iterable.iterator();
        try {
            if (!it.hasNext()) {
                subscriber.onCompleted();
                return Subscribers.empty();
            }
            return new Subscriber<T1>(subscriber) { // from class: rx.internal.operators.OperatorZipIterable.1
                boolean done;

                @Override // p024rx.Observer
                public void onCompleted() {
                    if (this.done) {
                        return;
                    }
                    this.done = true;
                    subscriber.onCompleted();
                }

                @Override // p024rx.Observer
                public void onError(Throwable th) {
                    if (this.done) {
                        Exceptions.throwIfFatal(th);
                    } else {
                        this.done = true;
                        subscriber.onError(th);
                    }
                }

                @Override // p024rx.Observer
                public void onNext(T1 t1) {
                    if (this.done) {
                        return;
                    }
                    try {
                        subscriber.onNext(OperatorZipIterable.this.zipFunction.call(t1, (Object) it.next()));
                        if (it.hasNext()) {
                            return;
                        }
                        onCompleted();
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, this);
                    }
                }
            };
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, subscriber);
            return Subscribers.empty();
        }
    }
}
