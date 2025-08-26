package p024rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.exceptions.MissingBackpressureException;
import p024rx.internal.util.atomic.SpscAtomicArrayQueue;
import p024rx.internal.util.unsafe.SpscArrayQueue;
import p024rx.internal.util.unsafe.UnsafeAccess;

/* loaded from: classes2.dex */
public final class OnSubscribePublishMulticast<T> extends AtomicInteger implements Observable.OnSubscribe<T>, Observer<T>, Subscription {
    static final PublishProducer<?>[] EMPTY = new PublishProducer[0];
    static final PublishProducer<?>[] TERMINATED = new PublishProducer[0];
    private static final long serialVersionUID = -3741892510772238743L;
    final boolean delayError;
    volatile boolean done;
    Throwable error;
    final ParentSubscriber<T> parent;
    final int prefetch;
    volatile Producer producer;
    final Queue<T> queue;
    volatile PublishProducer<T>[] subscribers;

    /* JADX WARN: Multi-variable type inference failed */
    public OnSubscribePublishMulticast(int i, boolean z) {
        if (i <= 0) {
            throw new IllegalArgumentException("prefetch > 0 required but it was " + i);
        }
        this.prefetch = i;
        this.delayError = z;
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.queue = new SpscArrayQueue(i);
        } else {
            this.queue = new SpscAtomicArrayQueue(i);
        }
        this.subscribers = EMPTY;
        this.parent = new ParentSubscriber<>(this);
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        PublishProducer<T> publishProducer = new PublishProducer<>(subscriber, this);
        subscriber.add(publishProducer);
        subscriber.setProducer(publishProducer);
        if (add(publishProducer)) {
            if (publishProducer.isUnsubscribed()) {
                remove(publishProducer);
                return;
            } else {
                drain();
                return;
            }
        }
        Throwable th = this.error;
        if (th != null) {
            subscriber.onError(th);
        } else {
            subscriber.onCompleted();
        }
    }

    @Override // p024rx.Observer
    public void onNext(T t) {
        if (!this.queue.offer(t)) {
            this.parent.unsubscribe();
            this.error = new MissingBackpressureException("Queue full?!");
            this.done = true;
        }
        drain();
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        this.done = true;
        drain();
    }

    void setProducer(Producer producer) {
        this.producer = producer;
        producer.request(this.prefetch);
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        Queue<T> queue = this.queue;
        int iAddAndGet = 0;
        do {
            PublishProducer<T>[] publishProducerArr = this.subscribers;
            int length = publishProducerArr.length;
            long jMin = Long.MAX_VALUE;
            for (PublishProducer<T> publishProducer : publishProducerArr) {
                jMin = Math.min(jMin, publishProducer.get());
            }
            if (length != 0) {
                long j = 0;
                while (j != jMin) {
                    boolean z = this.done;
                    T tPoll = queue.poll();
                    boolean z2 = tPoll == null;
                    if (checkTerminated(z, z2)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    for (PublishProducer<T> publishProducer2 : publishProducerArr) {
                        publishProducer2.actual.onNext(tPoll);
                    }
                    j++;
                }
                if (j == jMin && checkTerminated(this.done, queue.isEmpty())) {
                    return;
                }
                if (j != 0) {
                    Producer producer = this.producer;
                    if (producer != null) {
                        producer.request(j);
                    }
                    for (PublishProducer<T> publishProducer3 : publishProducerArr) {
                        BackpressureUtils.produced(publishProducer3, j);
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    boolean checkTerminated(boolean z, boolean z2) {
        int i = 0;
        if (z) {
            if (!this.delayError) {
                Throwable th = this.error;
                if (th != null) {
                    this.queue.clear();
                    PublishProducer<T>[] publishProducerArrTerminate = terminate();
                    int length = publishProducerArrTerminate.length;
                    while (i < length) {
                        publishProducerArrTerminate[i].actual.onError(th);
                        i++;
                    }
                    return true;
                }
                if (z2) {
                    PublishProducer<T>[] publishProducerArrTerminate2 = terminate();
                    int length2 = publishProducerArrTerminate2.length;
                    while (i < length2) {
                        publishProducerArrTerminate2[i].actual.onCompleted();
                        i++;
                    }
                    return true;
                }
            } else if (z2) {
                PublishProducer<T>[] publishProducerArrTerminate3 = terminate();
                Throwable th2 = this.error;
                if (th2 != null) {
                    int length3 = publishProducerArrTerminate3.length;
                    while (i < length3) {
                        publishProducerArrTerminate3[i].actual.onError(th2);
                        i++;
                    }
                } else {
                    int length4 = publishProducerArrTerminate3.length;
                    while (i < length4) {
                        publishProducerArrTerminate3[i].actual.onCompleted();
                        i++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    PublishProducer<T>[] terminate() {
        PublishProducer<T>[] publishProducerArr = this.subscribers;
        if (publishProducerArr != TERMINATED) {
            synchronized (this) {
                publishProducerArr = this.subscribers;
                if (publishProducerArr != TERMINATED) {
                    this.subscribers = TERMINATED;
                }
            }
        }
        return publishProducerArr;
    }

    boolean add(PublishProducer<T> publishProducer) {
        if (this.subscribers == TERMINATED) {
            return false;
        }
        synchronized (this) {
            PublishProducer<T>[] publishProducerArr = this.subscribers;
            if (publishProducerArr == TERMINATED) {
                return false;
            }
            int length = publishProducerArr.length;
            PublishProducer<T>[] publishProducerArr2 = new PublishProducer[length + 1];
            System.arraycopy(publishProducerArr, 0, publishProducerArr2, 0, length);
            publishProducerArr2[length] = publishProducer;
            this.subscribers = publishProducerArr2;
            return true;
        }
    }

    void remove(PublishProducer<T> publishProducer) {
        PublishProducer[] publishProducerArr;
        PublishProducer<T>[] publishProducerArr2 = this.subscribers;
        if (publishProducerArr2 == TERMINATED || publishProducerArr2 == EMPTY) {
            return;
        }
        synchronized (this) {
            PublishProducer<T>[] publishProducerArr3 = this.subscribers;
            if (publishProducerArr3 != TERMINATED && publishProducerArr3 != EMPTY) {
                int i = -1;
                int length = publishProducerArr3.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (publishProducerArr3[i2] == publishProducer) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    publishProducerArr = EMPTY;
                } else {
                    PublishProducer<T>[] publishProducerArr4 = new PublishProducer[length - 1];
                    System.arraycopy(publishProducerArr3, 0, publishProducerArr4, 0, i);
                    System.arraycopy(publishProducerArr3, i + 1, publishProducerArr4, i, (length - i) - 1);
                    publishProducerArr = publishProducerArr4;
                }
                this.subscribers = publishProducerArr;
            }
        }
    }

    static final class ParentSubscriber<T> extends Subscriber<T> {
        final OnSubscribePublishMulticast<T> state;

        public ParentSubscriber(OnSubscribePublishMulticast<T> onSubscribePublishMulticast) {
            this.state = onSubscribePublishMulticast;
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            this.state.onNext(t);
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.state.onError(th);
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.state.onCompleted();
        }

        @Override // p024rx.Subscriber
        public void setProducer(Producer producer) {
            this.state.setProducer(producer);
        }
    }

    public Subscriber<T> subscriber() {
        return this.parent;
    }

    @Override // p024rx.Subscription
    public void unsubscribe() {
        this.parent.unsubscribe();
    }

    @Override // p024rx.Subscription
    public boolean isUnsubscribed() {
        return this.parent.isUnsubscribed();
    }

    static final class PublishProducer<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = 960704844171597367L;
        final Subscriber<? super T> actual;
        final AtomicBoolean once = new AtomicBoolean();
        final OnSubscribePublishMulticast<T> parent;

        public PublishProducer(Subscriber<? super T> subscriber, OnSubscribePublishMulticast<T> onSubscribePublishMulticast) {
            this.actual = subscriber;
            this.parent = onSubscribePublishMulticast;
        }

        @Override // p024rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            if (j != 0) {
                BackpressureUtils.getAndAddRequest(this, j);
                this.parent.drain();
            }
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.once.get();
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            if (this.once.compareAndSet(false, true)) {
                this.parent.remove(this);
            }
        }
    }
}
