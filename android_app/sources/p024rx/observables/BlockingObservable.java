package p024rx.observables;

import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.exceptions.Exceptions;
import p024rx.exceptions.OnErrorNotImplementedException;
import p024rx.functions.Action0;
import p024rx.functions.Action1;
import p024rx.functions.Actions;
import p024rx.functions.Func1;
import p024rx.internal.operators.BlockingOperatorLatest;
import p024rx.internal.operators.BlockingOperatorMostRecent;
import p024rx.internal.operators.BlockingOperatorNext;
import p024rx.internal.operators.BlockingOperatorToFuture;
import p024rx.internal.operators.BlockingOperatorToIterator;
import p024rx.internal.operators.NotificationLite;
import p024rx.internal.util.BlockingUtils;
import p024rx.internal.util.UtilityFunctions;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class BlockingObservable<T> {
    static final Object ON_START = new Object();
    static final Object SET_PRODUCER = new Object();
    static final Object UNSUBSCRIBE = new Object();

    /* renamed from: o */
    private final Observable<? extends T> f1232o;

    private BlockingObservable(Observable<? extends T> observable) {
        this.f1232o = observable;
    }

    public static <T> BlockingObservable<T> from(Observable<? extends T> observable) {
        return new BlockingObservable<>(observable);
    }

    public void forEach(final Action1<? super T> action1) throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        BlockingUtils.awaitForComplete(countDownLatch, this.f1232o.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.1
            @Override // p024rx.Observer
            public void onCompleted() {
                countDownLatch.countDown();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                atomicReference.set(th);
                countDownLatch.countDown();
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                action1.call(t);
            }
        }));
        if (atomicReference.get() != null) {
            Exceptions.propagate((Throwable) atomicReference.get());
        }
    }

    public Iterator<T> getIterator() {
        return BlockingOperatorToIterator.toIterator(this.f1232o);
    }

    public T first() {
        return blockForSingle(this.f1232o.first());
    }

    public T first(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f1232o.first(func1));
    }

    public T firstOrDefault(T t) {
        return blockForSingle(this.f1232o.map(UtilityFunctions.identity()).firstOrDefault(t));
    }

    public T firstOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f1232o.filter(func1).map(UtilityFunctions.identity()).firstOrDefault(t));
    }

    public T last() {
        return blockForSingle(this.f1232o.last());
    }

    public T last(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f1232o.last(func1));
    }

    public T lastOrDefault(T t) {
        return blockForSingle(this.f1232o.map(UtilityFunctions.identity()).lastOrDefault(t));
    }

    public T lastOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f1232o.filter(func1).map(UtilityFunctions.identity()).lastOrDefault(t));
    }

    public Iterable<T> mostRecent(T t) {
        return BlockingOperatorMostRecent.mostRecent(this.f1232o, t);
    }

    public Iterable<T> next() {
        return BlockingOperatorNext.next(this.f1232o);
    }

    public Iterable<T> latest() {
        return BlockingOperatorLatest.latest(this.f1232o);
    }

    public T single() {
        return blockForSingle(this.f1232o.single());
    }

    public T single(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f1232o.single(func1));
    }

    public T singleOrDefault(T t) {
        return blockForSingle(this.f1232o.map(UtilityFunctions.identity()).singleOrDefault(t));
    }

    public T singleOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f1232o.filter(func1).map(UtilityFunctions.identity()).singleOrDefault(t));
    }

    public Future<T> toFuture() {
        return BlockingOperatorToFuture.toFuture(this.f1232o);
    }

    public Iterable<T> toIterable() {
        return new Iterable<T>() { // from class: rx.observables.BlockingObservable.2
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return BlockingObservable.this.getIterator();
            }
        };
    }

    private T blockForSingle(Observable<? extends T> observable) throws InterruptedException {
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        BlockingUtils.awaitForComplete(countDownLatch, observable.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.3
            @Override // p024rx.Observer
            public void onCompleted() {
                countDownLatch.countDown();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                atomicReference2.set(th);
                countDownLatch.countDown();
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                atomicReference.set(t);
            }
        }));
        if (atomicReference2.get() != null) {
            Exceptions.propagate((Throwable) atomicReference2.get());
        }
        return (T) atomicReference.get();
    }

    public void subscribe() throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Throwable[] thArr = {null};
        BlockingUtils.awaitForComplete(countDownLatch, this.f1232o.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.4
            @Override // p024rx.Observer
            public void onNext(T t) {
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                thArr[0] = th;
                countDownLatch.countDown();
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                countDownLatch.countDown();
            }
        }));
        Throwable th = thArr[0];
        if (th != null) {
            Exceptions.propagate(th);
        }
    }

    public void subscribe(Observer<? super T> observer) {
        Object objPoll;
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Subscription subscriptionSubscribe = this.f1232o.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.5
            @Override // p024rx.Observer
            public void onNext(T t) {
                linkedBlockingQueue.offer(NotificationLite.next(t));
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                linkedBlockingQueue.offer(NotificationLite.error(th));
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                linkedBlockingQueue.offer(NotificationLite.completed());
            }
        });
        do {
            try {
                objPoll = linkedBlockingQueue.poll();
                if (objPoll == null) {
                    objPoll = linkedBlockingQueue.take();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                observer.onError(e);
                return;
            } finally {
                subscriptionSubscribe.unsubscribe();
            }
        } while (!NotificationLite.accept(observer, objPoll));
    }

    public void subscribe(Subscriber<? super T> subscriber) {
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        final Producer[] producerArr = {null};
        Subscriber<T> subscriber2 = new Subscriber<T>() { // from class: rx.observables.BlockingObservable.6
            @Override // p024rx.Observer
            public void onNext(T t) {
                linkedBlockingQueue.offer(NotificationLite.next(t));
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                linkedBlockingQueue.offer(NotificationLite.error(th));
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                linkedBlockingQueue.offer(NotificationLite.completed());
            }

            @Override // p024rx.Subscriber
            public void setProducer(Producer producer) {
                producerArr[0] = producer;
                linkedBlockingQueue.offer(BlockingObservable.SET_PRODUCER);
            }

            @Override // p024rx.Subscriber
            public void onStart() {
                linkedBlockingQueue.offer(BlockingObservable.ON_START);
            }
        };
        subscriber.add(subscriber2);
        subscriber.add(Subscriptions.create(new Action0() { // from class: rx.observables.BlockingObservable.7
            @Override // p024rx.functions.Action0
            public void call() {
                linkedBlockingQueue.offer(BlockingObservable.UNSUBSCRIBE);
            }
        }));
        this.f1232o.subscribe((Subscriber<? super Object>) subscriber2);
        while (!subscriber.isUnsubscribed()) {
            try {
                try {
                    Object objPoll = linkedBlockingQueue.poll();
                    if (objPoll == null) {
                        objPoll = linkedBlockingQueue.take();
                    }
                    if (subscriber.isUnsubscribed() || objPoll == UNSUBSCRIBE) {
                        break;
                    }
                    if (objPoll == ON_START) {
                        subscriber.onStart();
                    } else if (objPoll == SET_PRODUCER) {
                        subscriber.setProducer(producerArr[0]);
                    } else if (NotificationLite.accept(subscriber, objPoll)) {
                        return;
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    subscriber.onError(e);
                }
            } finally {
                subscriber2.unsubscribe();
            }
        }
    }

    public void subscribe(Action1<? super T> action1) {
        subscribe(action1, new Action1<Throwable>() { // from class: rx.observables.BlockingObservable.8
            @Override // p024rx.functions.Action1
            public void call(Throwable th) {
                throw new OnErrorNotImplementedException(th);
            }
        }, Actions.empty());
    }

    public void subscribe(Action1<? super T> action1, Action1<? super Throwable> action12) {
        subscribe(action1, action12, Actions.empty());
    }

    public void subscribe(final Action1<? super T> action1, final Action1<? super Throwable> action12, final Action0 action0) {
        subscribe(new Observer<T>() { // from class: rx.observables.BlockingObservable.9
            @Override // p024rx.Observer
            public void onNext(T t) {
                action1.call(t);
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                action12.call(th);
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                action0.call();
            }
        });
    }
}
