package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class OnSubscribeDetach<T> implements Observable.OnSubscribe<T> {
    final Observable<T> source;

    enum TerminatedProducer implements Producer {
        INSTANCE;

        @Override // p024rx.Producer
        public void request(long j) {
        }
    }

    public OnSubscribeDetach(Observable<T> observable) {
        this.source = observable;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        DetachSubscriber detachSubscriber = new DetachSubscriber(subscriber);
        DetachProducer detachProducer = new DetachProducer(detachSubscriber);
        subscriber.add(detachProducer);
        subscriber.setProducer(detachProducer);
        this.source.unsafeSubscribe(detachSubscriber);
    }

    static final class DetachSubscriber<T> extends Subscriber<T> {
        final AtomicReference<Subscriber<? super T>> actual;
        final AtomicReference<Producer> producer = new AtomicReference<>();
        final AtomicLong requested = new AtomicLong();

        public DetachSubscriber(Subscriber<? super T> subscriber) {
            this.actual = new AtomicReference<>(subscriber);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            Subscriber<? super T> subscriber = this.actual.get();
            if (subscriber != null) {
                subscriber.onNext(t);
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.producer.lazySet(TerminatedProducer.INSTANCE);
            Subscriber<? super T> andSet = this.actual.getAndSet(null);
            if (andSet != null) {
                andSet.onError(th);
            } else {
                RxJavaHooks.onError(th);
            }
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.producer.lazySet(TerminatedProducer.INSTANCE);
            Subscriber<? super T> andSet = this.actual.getAndSet(null);
            if (andSet != null) {
                andSet.onCompleted();
            }
        }

        void innerRequest(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            Producer producer = this.producer.get();
            if (producer != null) {
                producer.request(j);
                return;
            }
            BackpressureUtils.getAndAddRequest(this.requested, j);
            Producer producer2 = this.producer.get();
            if (producer2 == null || producer2 == TerminatedProducer.INSTANCE) {
                return;
            }
            producer2.request(this.requested.getAndSet(0L));
        }

        @Override // p024rx.Subscriber
        public void setProducer(Producer producer) {
            if (this.producer.compareAndSet(null, producer)) {
                producer.request(this.requested.getAndSet(0L));
            } else if (this.producer.get() != TerminatedProducer.INSTANCE) {
                throw new IllegalStateException("Producer already set!");
            }
        }

        void innerUnsubscribe() {
            this.producer.lazySet(TerminatedProducer.INSTANCE);
            this.actual.lazySet(null);
            unsubscribe();
        }
    }

    static final class DetachProducer<T> implements Producer, Subscription {
        final DetachSubscriber<T> parent;

        public DetachProducer(DetachSubscriber<T> detachSubscriber) {
            this.parent = detachSubscriber;
        }

        @Override // p024rx.Producer
        public void request(long j) {
            this.parent.innerRequest(j);
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.parent.isUnsubscribed();
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            this.parent.innerUnsubscribe();
        }
    }
}
