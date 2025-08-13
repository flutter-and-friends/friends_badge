package p024rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.exceptions.MissingBackpressureException;
import p024rx.functions.Func1;
import p024rx.internal.producers.ProducerArbiter;
import p024rx.internal.util.ExceptionsUtils;
import p024rx.internal.util.ScalarSynchronousObservable;
import p024rx.internal.util.atomic.SpscAtomicArrayQueue;
import p024rx.internal.util.unsafe.SpscArrayQueue;
import p024rx.internal.util.unsafe.UnsafeAccess;
import p024rx.observers.SerializedSubscriber;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
public final class OnSubscribeConcatMap<T, R> implements Observable.OnSubscribe<R> {
    public static final int BOUNDARY = 1;
    public static final int END = 2;
    public static final int IMMEDIATE = 0;
    final int delayErrorMode;
    final Func1<? super T, ? extends Observable<? extends R>> mapper;
    final int prefetch;
    final Observable<? extends T> source;

    public OnSubscribeConcatMap(Observable<? extends T> observable, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
        this.source = observable;
        this.mapper = func1;
        this.prefetch = i;
        this.delayErrorMode = i2;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super R> subscriber) {
        final ConcatMapSubscriber concatMapSubscriber = new ConcatMapSubscriber(this.delayErrorMode == 0 ? new SerializedSubscriber<>(subscriber) : subscriber, this.mapper, this.prefetch, this.delayErrorMode);
        subscriber.add(concatMapSubscriber);
        subscriber.add(concatMapSubscriber.inner);
        subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OnSubscribeConcatMap.1
            @Override // p024rx.Producer
            public void request(long j) {
                concatMapSubscriber.requestMore(j);
            }
        });
        if (subscriber.isUnsubscribed()) {
            return;
        }
        this.source.unsafeSubscribe(concatMapSubscriber);
    }

    static final class ConcatMapSubscriber<T, R> extends Subscriber<T> {
        volatile boolean active;
        final Subscriber<? super R> actual;
        final int delayErrorMode;
        volatile boolean done;
        final SerialSubscription inner;
        final Func1<? super T, ? extends Observable<? extends R>> mapper;
        final Queue<Object> queue;
        final ProducerArbiter arbiter = new ProducerArbiter();
        final AtomicInteger wip = new AtomicInteger();
        final AtomicReference<Throwable> error = new AtomicReference<>();

        public ConcatMapSubscriber(Subscriber<? super R> subscriber, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
            Queue<Object> spscAtomicArrayQueue;
            this.actual = subscriber;
            this.mapper = func1;
            this.delayErrorMode = i2;
            if (UnsafeAccess.isUnsafeAvailable()) {
                spscAtomicArrayQueue = new SpscArrayQueue<>(i);
            } else {
                spscAtomicArrayQueue = new SpscAtomicArrayQueue<>(i);
            }
            this.queue = spscAtomicArrayQueue;
            this.inner = new SerialSubscription();
            request(i);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            if (!this.queue.offer(NotificationLite.next(t))) {
                unsubscribe();
                onError(new MissingBackpressureException());
            } else {
                drain();
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            if (ExceptionsUtils.addThrowable(this.error, th)) {
                this.done = true;
                if (this.delayErrorMode == 0) {
                    Throwable thTerminate = ExceptionsUtils.terminate(this.error);
                    if (!ExceptionsUtils.isTerminated(thTerminate)) {
                        this.actual.onError(thTerminate);
                    }
                    this.inner.unsubscribe();
                    return;
                }
                drain();
                return;
            }
            pluginError(th);
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        void requestMore(long j) {
            if (j > 0) {
                this.arbiter.request(j);
            } else {
                if (j >= 0) {
                    return;
                }
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
        }

        void innerNext(R r) {
            this.actual.onNext(r);
        }

        void innerError(Throwable th, long j) {
            if (!ExceptionsUtils.addThrowable(this.error, th)) {
                pluginError(th);
                return;
            }
            if (this.delayErrorMode == 0) {
                Throwable thTerminate = ExceptionsUtils.terminate(this.error);
                if (!ExceptionsUtils.isTerminated(thTerminate)) {
                    this.actual.onError(thTerminate);
                }
                unsubscribe();
                return;
            }
            if (j != 0) {
                this.arbiter.produced(j);
            }
            this.active = false;
            drain();
        }

        void innerCompleted(long j) {
            if (j != 0) {
                this.arbiter.produced(j);
            }
            this.active = false;
            drain();
        }

        void pluginError(Throwable th) {
            RxJavaHooks.onError(th);
        }

        void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            int i = this.delayErrorMode;
            while (!this.actual.isUnsubscribed()) {
                if (!this.active) {
                    if (i == 1 && this.error.get() != null) {
                        Throwable thTerminate = ExceptionsUtils.terminate(this.error);
                        if (ExceptionsUtils.isTerminated(thTerminate)) {
                            return;
                        }
                        this.actual.onError(thTerminate);
                        return;
                    }
                    boolean z = this.done;
                    Object objPoll = this.queue.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable thTerminate2 = ExceptionsUtils.terminate(this.error);
                        if (thTerminate2 == null) {
                            this.actual.onCompleted();
                            return;
                        } else {
                            if (ExceptionsUtils.isTerminated(thTerminate2)) {
                                return;
                            }
                            this.actual.onError(thTerminate2);
                            return;
                        }
                    }
                    if (!z2) {
                        try {
                            Observable<? extends R> observableCall = this.mapper.call((Object) NotificationLite.getValue(objPoll));
                            if (observableCall == null) {
                                drainError(new NullPointerException("The source returned by the mapper was null"));
                                return;
                            }
                            if (observableCall != Observable.empty()) {
                                if (observableCall instanceof ScalarSynchronousObservable) {
                                    this.active = true;
                                    this.arbiter.setProducer(new ConcatMapInnerScalarProducer(((ScalarSynchronousObservable) observableCall).get(), this));
                                } else {
                                    ConcatMapInnerSubscriber concatMapInnerSubscriber = new ConcatMapInnerSubscriber(this);
                                    this.inner.set(concatMapInnerSubscriber);
                                    if (concatMapInnerSubscriber.isUnsubscribed()) {
                                        return;
                                    }
                                    this.active = true;
                                    observableCall.unsafeSubscribe(concatMapInnerSubscriber);
                                }
                                request(1L);
                            } else {
                                request(1L);
                            }
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            drainError(th);
                            return;
                        }
                    }
                }
                if (this.wip.decrementAndGet() == 0) {
                    return;
                }
            }
        }

        void drainError(Throwable th) {
            unsubscribe();
            if (ExceptionsUtils.addThrowable(this.error, th)) {
                Throwable thTerminate = ExceptionsUtils.terminate(this.error);
                if (ExceptionsUtils.isTerminated(thTerminate)) {
                    return;
                }
                this.actual.onError(thTerminate);
                return;
            }
            pluginError(th);
        }
    }

    static final class ConcatMapInnerSubscriber<T, R> extends Subscriber<R> {
        final ConcatMapSubscriber<T, R> parent;
        long produced;

        public ConcatMapInnerSubscriber(ConcatMapSubscriber<T, R> concatMapSubscriber) {
            this.parent = concatMapSubscriber;
        }

        @Override // p024rx.Subscriber
        public void setProducer(Producer producer) {
            this.parent.arbiter.setProducer(producer);
        }

        @Override // p024rx.Observer
        public void onNext(R r) {
            this.produced++;
            this.parent.innerNext(r);
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.parent.innerError(th, this.produced);
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.parent.innerCompleted(this.produced);
        }
    }

    static final class ConcatMapInnerScalarProducer<T, R> implements Producer {
        boolean once;
        final ConcatMapSubscriber<T, R> parent;
        final R value;

        public ConcatMapInnerScalarProducer(R r, ConcatMapSubscriber<T, R> concatMapSubscriber) {
            this.value = r;
            this.parent = concatMapSubscriber;
        }

        @Override // p024rx.Producer
        public void request(long j) {
            if (this.once || j <= 0) {
                return;
            }
            this.once = true;
            ConcatMapSubscriber<T, R> concatMapSubscriber = this.parent;
            concatMapSubscriber.innerNext(this.value);
            concatMapSubscriber.innerCompleted(1L);
        }
    }
}
