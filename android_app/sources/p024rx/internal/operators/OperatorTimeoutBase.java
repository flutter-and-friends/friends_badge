package p024rx.internal.operators;

import java.util.concurrent.TimeoutException;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.functions.Func3;
import p024rx.functions.Func4;
import p024rx.internal.producers.ProducerArbiter;
import p024rx.observers.SerializedSubscriber;
import p024rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
class OperatorTimeoutBase<T> implements Observable.Operator<T, T> {
    final FirstTimeoutStub<T> firstTimeoutStub;
    final Observable<? extends T> other;
    final Scheduler scheduler;
    final TimeoutStub<T> timeoutStub;

    interface FirstTimeoutStub<T> extends Func3<TimeoutSubscriber<T>, Long, Scheduler.Worker, Subscription> {
    }

    interface TimeoutStub<T> extends Func4<TimeoutSubscriber<T>, Long, T, Scheduler.Worker, Subscription> {
    }

    OperatorTimeoutBase(FirstTimeoutStub<T> firstTimeoutStub, TimeoutStub<T> timeoutStub, Observable<? extends T> observable, Scheduler scheduler) {
        this.firstTimeoutStub = firstTimeoutStub;
        this.timeoutStub = timeoutStub;
        this.other = observable;
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        subscriber.add(workerCreateWorker);
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        SerialSubscription serialSubscription = new SerialSubscription();
        serializedSubscriber.add(serialSubscription);
        TimeoutSubscriber timeoutSubscriber = new TimeoutSubscriber(serializedSubscriber, this.timeoutStub, serialSubscription, this.other, workerCreateWorker);
        serializedSubscriber.add(timeoutSubscriber);
        serializedSubscriber.setProducer(timeoutSubscriber.arbiter);
        serialSubscription.set(this.firstTimeoutStub.call(timeoutSubscriber, 0L, workerCreateWorker));
        return timeoutSubscriber;
    }

    static final class TimeoutSubscriber<T> extends Subscriber<T> {
        long actual;
        final ProducerArbiter arbiter = new ProducerArbiter();
        final Scheduler.Worker inner;
        final Observable<? extends T> other;
        final SerialSubscription serial;
        final SerializedSubscriber<T> serializedSubscriber;
        boolean terminated;
        final TimeoutStub<T> timeoutStub;

        TimeoutSubscriber(SerializedSubscriber<T> serializedSubscriber, TimeoutStub<T> timeoutStub, SerialSubscription serialSubscription, Observable<? extends T> observable, Scheduler.Worker worker) {
            this.serializedSubscriber = serializedSubscriber;
            this.timeoutStub = timeoutStub;
            this.serial = serialSubscription;
            this.other = observable;
            this.inner = worker;
        }

        @Override // p024rx.Subscriber
        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            long j;
            boolean z;
            synchronized (this) {
                if (!this.terminated) {
                    j = this.actual + 1;
                    this.actual = j;
                    z = true;
                } else {
                    j = this.actual;
                    z = false;
                }
            }
            if (z) {
                this.serializedSubscriber.onNext(t);
                this.serial.set(this.timeoutStub.call(this, Long.valueOf(j), t, this.inner));
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (this.terminated) {
                    z = false;
                } else {
                    this.terminated = true;
                }
            }
            if (z) {
                this.serial.unsubscribe();
                this.serializedSubscriber.onError(th);
            }
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            boolean z;
            synchronized (this) {
                z = true;
                if (this.terminated) {
                    z = false;
                } else {
                    this.terminated = true;
                }
            }
            if (z) {
                this.serial.unsubscribe();
                this.serializedSubscriber.onCompleted();
            }
        }

        public void onTimeout(long j) {
            boolean z;
            synchronized (this) {
                z = true;
                if (j != this.actual || this.terminated) {
                    z = false;
                } else {
                    this.terminated = true;
                }
            }
            if (z) {
                if (this.other == null) {
                    this.serializedSubscriber.onError(new TimeoutException());
                    return;
                }
                Subscriber<T> subscriber = new Subscriber<T>() { // from class: rx.internal.operators.OperatorTimeoutBase.TimeoutSubscriber.1
                    @Override // p024rx.Observer
                    public void onNext(T t) {
                        TimeoutSubscriber.this.serializedSubscriber.onNext(t);
                    }

                    @Override // p024rx.Observer
                    public void onError(Throwable th) {
                        TimeoutSubscriber.this.serializedSubscriber.onError(th);
                    }

                    @Override // p024rx.Observer
                    public void onCompleted() {
                        TimeoutSubscriber.this.serializedSubscriber.onCompleted();
                    }

                    @Override // p024rx.Subscriber
                    public void setProducer(Producer producer) {
                        TimeoutSubscriber.this.arbiter.setProducer(producer);
                    }
                };
                this.other.unsafeSubscribe(subscriber);
                this.serial.set(subscriber);
            }
        }
    }
}
