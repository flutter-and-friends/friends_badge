package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public abstract class DeferredScalarSubscriber<T, R> extends Subscriber<T> {
    static final int HAS_REQUEST_HAS_VALUE = 3;
    static final int HAS_REQUEST_NO_VALUE = 1;
    static final int NO_REQUEST_HAS_VALUE = 2;
    static final int NO_REQUEST_NO_VALUE = 0;
    protected final Subscriber<? super R> actual;
    protected boolean hasValue;
    final AtomicInteger state = new AtomicInteger();
    protected R value;

    public DeferredScalarSubscriber(Subscriber<? super R> subscriber) {
        this.actual = subscriber;
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        this.value = null;
        this.actual.onError(th);
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        if (this.hasValue) {
            complete(this.value);
        } else {
            complete();
        }
    }

    protected final void complete() {
        this.actual.onCompleted();
    }

    protected final void complete(R r) {
        Subscriber<? super R> subscriber = this.actual;
        do {
            int i = this.state.get();
            if (i == 2 || i == 3 || subscriber.isUnsubscribed()) {
                return;
            }
            if (i == 1) {
                subscriber.onNext(r);
                if (!subscriber.isUnsubscribed()) {
                    subscriber.onCompleted();
                }
                this.state.lazySet(3);
                return;
            }
            this.value = r;
        } while (!this.state.compareAndSet(0, 2));
    }

    final void downstreamRequest(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + j);
        }
        if (j != 0) {
            Subscriber<? super R> subscriber = this.actual;
            do {
                int i = this.state.get();
                if (i == 1 || i == 3 || subscriber.isUnsubscribed()) {
                    return;
                }
                if (i == 2) {
                    if (this.state.compareAndSet(2, 3)) {
                        subscriber.onNext(this.value);
                        if (subscriber.isUnsubscribed()) {
                            return;
                        }
                        subscriber.onCompleted();
                        return;
                    }
                    return;
                }
            } while (!this.state.compareAndSet(0, 1));
        }
    }

    @Override // p024rx.Subscriber
    public final void setProducer(Producer producer) {
        producer.request(LongCompanionObject.MAX_VALUE);
    }

    public final void subscribeTo(Observable<? extends T> observable) {
        setupDownstream();
        observable.unsafeSubscribe(this);
    }

    final void setupDownstream() {
        Subscriber<? super R> subscriber = this.actual;
        subscriber.add(this);
        subscriber.setProducer(new InnerProducer(this));
    }

    static final class InnerProducer implements Producer {
        final DeferredScalarSubscriber<?, ?> parent;

        public InnerProducer(DeferredScalarSubscriber<?, ?> deferredScalarSubscriber) {
            this.parent = deferredScalarSubscriber;
        }

        @Override // p024rx.Producer
        public void request(long j) {
            this.parent.downstreamRequest(j);
        }
    }
}
