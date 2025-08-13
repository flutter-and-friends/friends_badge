package p024rx.internal.producers;

import java.util.concurrent.atomic.AtomicBoolean;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;

/* loaded from: classes2.dex */
public final class SingleProducer<T> extends AtomicBoolean implements Producer {
    private static final long serialVersionUID = -3353584923995471404L;
    final Subscriber<? super T> child;
    final T value;

    public SingleProducer(Subscriber<? super T> subscriber, T t) {
        this.child = subscriber;
        this.value = t;
    }

    @Override // p024rx.Producer
    public void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (j != 0 && compareAndSet(false, true)) {
            Subscriber<? super T> subscriber = this.child;
            if (subscriber.isUnsubscribed()) {
                return;
            }
            T t = this.value;
            try {
                subscriber.onNext(t);
                if (subscriber.isUnsubscribed()) {
                    return;
                }
                subscriber.onCompleted();
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, subscriber, t);
            }
        }
    }
}
