package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Notification;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.functions.Action0;
import p024rx.functions.Func1;
import p024rx.functions.Func2;
import p024rx.internal.producers.ProducerArbiter;
import p024rx.observers.Subscribers;
import p024rx.schedulers.Schedulers;
import p024rx.subjects.BehaviorSubject;
import p024rx.subjects.SerializedSubject;
import p024rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
public final class OnSubscribeRedo<T> implements Observable.OnSubscribe<T> {
    static final Func1<Observable<? extends Notification<?>>, Observable<?>> REDO_INFINITE = new Func1<Observable<? extends Notification<?>>, Observable<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.1
        @Override // p024rx.functions.Func1
        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return observable.map(new Func1<Notification<?>, Notification<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.1.1
                @Override // p024rx.functions.Func1
                public Notification<?> call(Notification<?> notification) {
                    return Notification.createOnNext(null);
                }
            });
        }
    };
    private final Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> controlHandlerFunction;
    private final Scheduler scheduler;
    final Observable<T> source;
    final boolean stopOnComplete;
    final boolean stopOnError;

    public static final class RedoFinite implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final long count;

        public RedoFinite(long j) {
            this.count = j;
        }

        @Override // p024rx.functions.Func1
        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return observable.map(new Func1<Notification<?>, Notification<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.RedoFinite.1
                int num;

                @Override // p024rx.functions.Func1
                public Notification<?> call(Notification<?> notification) {
                    if (RedoFinite.this.count == 0) {
                        return notification;
                    }
                    this.num++;
                    return ((long) this.num) <= RedoFinite.this.count ? Notification.createOnNext(Integer.valueOf(this.num)) : notification;
                }
            }).dematerialize();
        }
    }

    public static final class RetryWithPredicate implements Func1<Observable<? extends Notification<?>>, Observable<? extends Notification<?>>> {
        final Func2<Integer, Throwable, Boolean> predicate;

        public RetryWithPredicate(Func2<Integer, Throwable, Boolean> func2) {
            this.predicate = func2;
        }

        @Override // p024rx.functions.Func1
        public Observable<? extends Notification<?>> call(Observable<? extends Notification<?>> observable) {
            return observable.scan(Notification.createOnNext(0), new Func2<Notification<Integer>, Notification<?>, Notification<Integer>>() { // from class: rx.internal.operators.OnSubscribeRedo.RetryWithPredicate.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // p024rx.functions.Func2
                public Notification<Integer> call(Notification<Integer> notification, Notification<?> notification2) {
                    int iIntValue = notification.getValue().intValue();
                    return RetryWithPredicate.this.predicate.call(Integer.valueOf(iIntValue), notification2.getThrowable()).booleanValue() ? Notification.createOnNext(Integer.valueOf(iIntValue + 1)) : notification2;
                }
            });
        }
    }

    public static <T> Observable<T> retry(Observable<T> observable) {
        return retry(observable, REDO_INFINITE);
    }

    public static <T> Observable<T> retry(Observable<T> observable, long j) {
        if (j >= 0) {
            return j == 0 ? observable : retry(observable, new RedoFinite(j));
        }
        throw new IllegalArgumentException("count >= 0 expected");
    }

    public static <T> Observable<T> retry(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1) {
        return Observable.create(new OnSubscribeRedo(observable, func1, true, false, Schedulers.trampoline()));
    }

    public static <T> Observable<T> retry(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(observable, func1, true, false, scheduler));
    }

    public static <T> Observable<T> repeat(Observable<T> observable) {
        return repeat(observable, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> observable, Scheduler scheduler) {
        return repeat(observable, REDO_INFINITE, scheduler);
    }

    public static <T> Observable<T> repeat(Observable<T> observable, long j) {
        return repeat(observable, j, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> observable, long j, Scheduler scheduler) {
        if (j == 0) {
            return Observable.empty();
        }
        if (j < 0) {
            throw new IllegalArgumentException("count >= 0 expected");
        }
        return repeat(observable, new RedoFinite(j - 1), scheduler);
    }

    public static <T> Observable<T> repeat(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1) {
        return Observable.create(new OnSubscribeRedo(observable, func1, false, true, Schedulers.trampoline()));
    }

    public static <T> Observable<T> repeat(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(observable, func1, false, true, scheduler));
    }

    public static <T> Observable<T> redo(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(observable, func1, false, false, scheduler));
    }

    private OnSubscribeRedo(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, boolean z, boolean z2, Scheduler scheduler) {
        this.source = observable;
        this.controlHandlerFunction = func1;
        this.stopOnComplete = z;
        this.stopOnError = z2;
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Action1
    public void call(final Subscriber<? super T> subscriber) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        final AtomicLong atomicLong = new AtomicLong();
        final Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        subscriber.add(workerCreateWorker);
        final SerialSubscription serialSubscription = new SerialSubscription();
        subscriber.add(serialSubscription);
        final SerializedSubject<T, T> serialized = BehaviorSubject.create().toSerialized();
        serialized.subscribe((Subscriber) Subscribers.empty());
        final ProducerArbiter producerArbiter = new ProducerArbiter();
        final Action0 action0 = new Action0() { // from class: rx.internal.operators.OnSubscribeRedo.2
            @Override // p024rx.functions.Action0
            public void call() {
                if (subscriber.isUnsubscribed()) {
                    return;
                }
                Subscriber<T> subscriber2 = new Subscriber<T>() { // from class: rx.internal.operators.OnSubscribeRedo.2.1
                    boolean done;

                    @Override // p024rx.Observer
                    public void onCompleted() {
                        if (this.done) {
                            return;
                        }
                        this.done = true;
                        unsubscribe();
                        serialized.onNext(Notification.createOnCompleted());
                    }

                    @Override // p024rx.Observer
                    public void onError(Throwable th) {
                        if (this.done) {
                            return;
                        }
                        this.done = true;
                        unsubscribe();
                        serialized.onNext(Notification.createOnError(th));
                    }

                    @Override // p024rx.Observer
                    public void onNext(T t) {
                        if (this.done) {
                            return;
                        }
                        subscriber.onNext(t);
                        decrementConsumerCapacity();
                        producerArbiter.produced(1L);
                    }

                    private void decrementConsumerCapacity() {
                        long j;
                        do {
                            j = atomicLong.get();
                            if (j == LongCompanionObject.MAX_VALUE) {
                                return;
                            }
                        } while (!atomicLong.compareAndSet(j, j - 1));
                    }

                    @Override // p024rx.Subscriber
                    public void setProducer(Producer producer) {
                        producerArbiter.setProducer(producer);
                    }
                };
                serialSubscription.set(subscriber2);
                OnSubscribeRedo.this.source.unsafeSubscribe(subscriber2);
            }
        };
        final Observable<?> observableCall = this.controlHandlerFunction.call(serialized.lift(new Observable.Operator<Notification<?>, Notification<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.3
            @Override // p024rx.functions.Func1
            public Subscriber<? super Notification<?>> call(final Subscriber<? super Notification<?>> subscriber2) {
                return new Subscriber<Notification<?>>(subscriber2) { // from class: rx.internal.operators.OnSubscribeRedo.3.1
                    @Override // p024rx.Observer
                    public void onCompleted() {
                        subscriber2.onCompleted();
                    }

                    @Override // p024rx.Observer
                    public void onError(Throwable th) {
                        subscriber2.onError(th);
                    }

                    @Override // p024rx.Observer
                    public void onNext(Notification<?> notification) {
                        if (notification.isOnCompleted() && OnSubscribeRedo.this.stopOnComplete) {
                            subscriber2.onCompleted();
                        } else if (notification.isOnError() && OnSubscribeRedo.this.stopOnError) {
                            subscriber2.onError(notification.getThrowable());
                        } else {
                            subscriber2.onNext(notification);
                        }
                    }

                    @Override // p024rx.Subscriber
                    public void setProducer(Producer producer) {
                        producer.request(LongCompanionObject.MAX_VALUE);
                    }
                };
            }
        }));
        workerCreateWorker.schedule(new Action0() { // from class: rx.internal.operators.OnSubscribeRedo.4
            @Override // p024rx.functions.Action0
            public void call() {
                observableCall.unsafeSubscribe(new Subscriber<Object>(subscriber) { // from class: rx.internal.operators.OnSubscribeRedo.4.1
                    @Override // p024rx.Observer
                    public void onCompleted() {
                        subscriber.onCompleted();
                    }

                    @Override // p024rx.Observer
                    public void onError(Throwable th) {
                        subscriber.onError(th);
                    }

                    @Override // p024rx.Observer
                    public void onNext(Object obj) {
                        if (subscriber.isUnsubscribed()) {
                            return;
                        }
                        if (atomicLong.get() > 0) {
                            workerCreateWorker.schedule(action0);
                        } else {
                            atomicBoolean.compareAndSet(false, true);
                        }
                    }

                    @Override // p024rx.Subscriber
                    public void setProducer(Producer producer) {
                        producer.request(LongCompanionObject.MAX_VALUE);
                    }
                });
            }
        });
        subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OnSubscribeRedo.5
            @Override // p024rx.Producer
            public void request(long j) {
                if (j > 0) {
                    BackpressureUtils.getAndAddRequest(atomicLong, j);
                    producerArbiter.request(j);
                    if (atomicBoolean.compareAndSet(true, false)) {
                        workerCreateWorker.schedule(action0);
                    }
                }
            }
        });
    }
}
