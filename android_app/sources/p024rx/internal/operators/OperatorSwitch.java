package p024rx.internal.operators;

import android.Manifest;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.exceptions.CompositeException;
import p024rx.functions.Action0;
import p024rx.internal.util.RxRingBuffer;
import p024rx.internal.util.atomic.SpscLinkedArrayQueue;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.SerialSubscription;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class OperatorSwitch<T> implements Observable.Operator<T, Observable<? extends T>> {
    final boolean delayError;

    static final class Holder {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch<>(false);

        Holder() {
        }
    }

    static final class HolderDelayError {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch<>(true);

        HolderDelayError() {
        }
    }

    public static <T> OperatorSwitch<T> instance(boolean z) {
        if (z) {
            return (OperatorSwitch<T>) HolderDelayError.INSTANCE;
        }
        return (OperatorSwitch<T>) Holder.INSTANCE;
    }

    OperatorSwitch(boolean z) {
        this.delayError = z;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> subscriber) {
        SwitchSubscriber switchSubscriber = new SwitchSubscriber(subscriber, this.delayError);
        subscriber.add(switchSubscriber);
        switchSubscriber.init();
        return switchSubscriber;
    }

    static final class SwitchSubscriber<T> extends Subscriber<Observable<? extends T>> {
        static final Throwable TERMINAL_ERROR = new Throwable("Terminal error");
        final Subscriber<? super T> child;
        final boolean delayError;
        boolean emitting;
        Throwable error;
        boolean innerActive;
        volatile boolean mainDone;
        boolean missed;
        Producer producer;
        long requested;
        final SerialSubscription serial = new SerialSubscription();
        final AtomicLong index = new AtomicLong();
        final SpscLinkedArrayQueue<Object> queue = new SpscLinkedArrayQueue<>(RxRingBuffer.SIZE);

        SwitchSubscriber(Subscriber<? super T> subscriber, boolean z) {
            this.child = subscriber;
            this.delayError = z;
        }

        void init() {
            this.child.add(this.serial);
            this.child.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorSwitch.SwitchSubscriber.1
                @Override // p024rx.functions.Action0
                public void call() {
                    SwitchSubscriber.this.clearProducer();
                }
            }));
            this.child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSwitch.SwitchSubscriber.2
                @Override // p024rx.Producer
                public void request(long j) {
                    if (j > 0) {
                        SwitchSubscriber.this.childRequested(j);
                    } else {
                        if (j >= 0) {
                            return;
                        }
                        throw new IllegalArgumentException("n >= 0 expected but it was " + j);
                    }
                }
            });
        }

        void clearProducer() {
            synchronized (this) {
                this.producer = null;
            }
        }

        @Override // p024rx.Observer
        public void onNext(Observable<? extends T> observable) {
            InnerSubscriber innerSubscriber;
            long jIncrementAndGet = this.index.incrementAndGet();
            Subscription subscription = this.serial.get();
            if (subscription != null) {
                subscription.unsubscribe();
            }
            synchronized (this) {
                innerSubscriber = new InnerSubscriber(jIncrementAndGet, this);
                this.innerActive = true;
                this.producer = null;
            }
            this.serial.set(innerSubscriber);
            observable.unsafeSubscribe(innerSubscriber);
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            boolean zUpdateError;
            synchronized (this) {
                zUpdateError = updateError(th);
            }
            if (zUpdateError) {
                this.mainDone = true;
                drain();
            } else {
                pluginError(th);
            }
        }

        boolean updateError(Throwable th) {
            Throwable th2 = this.error;
            if (th2 == TERMINAL_ERROR) {
                return false;
            }
            if (th2 == null) {
                this.error = th;
            } else if (th2 instanceof CompositeException) {
                ArrayList arrayList = new ArrayList(((CompositeException) th2).getExceptions());
                arrayList.add(th);
                this.error = new CompositeException(arrayList);
            } else {
                this.error = new CompositeException(th2, th);
            }
            return true;
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.mainDone = true;
            drain();
        }

        void emit(T t, InnerSubscriber<T> innerSubscriber) {
            synchronized (this) {
                if (this.index.get() != ((InnerSubscriber) innerSubscriber).f1213id) {
                    return;
                }
                this.queue.offer(innerSubscriber, NotificationLite.next(t));
                drain();
            }
        }

        void error(Throwable th, long j) {
            boolean zUpdateError;
            synchronized (this) {
                if (this.index.get() == j) {
                    zUpdateError = updateError(th);
                    this.innerActive = false;
                    this.producer = null;
                } else {
                    zUpdateError = true;
                }
            }
            if (zUpdateError) {
                drain();
            } else {
                pluginError(th);
            }
        }

        void complete(long j) {
            synchronized (this) {
                if (this.index.get() != j) {
                    return;
                }
                this.innerActive = false;
                this.producer = null;
                drain();
            }
        }

        void pluginError(Throwable th) {
            RxJavaHooks.onError(th);
        }

        void innerProducer(Producer producer, long j) {
            synchronized (this) {
                if (this.index.get() != j) {
                    return;
                }
                long j2 = this.requested;
                this.producer = producer;
                producer.request(j2);
            }
        }

        void childRequested(long j) {
            Producer producer;
            synchronized (this) {
                producer = this.producer;
                this.requested = BackpressureUtils.addCap(this.requested, j);
            }
            if (producer != null) {
                producer.request(j);
            }
            drain();
        }

        void drain() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                boolean z = this.innerActive;
                long j = this.requested;
                Throwable th = this.error;
                if (th != null && th != TERMINAL_ERROR && !this.delayError) {
                    this.error = TERMINAL_ERROR;
                }
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.queue;
                AtomicLong atomicLong = this.index;
                Subscriber<? super T> subscriber = this.child;
                long j2 = j;
                Throwable th2 = th;
                boolean z2 = this.mainDone;
                while (true) {
                    long j3 = 0;
                    while (j3 != j2) {
                        if (subscriber.isUnsubscribed()) {
                            return;
                        }
                        boolean zIsEmpty = spscLinkedArrayQueue.isEmpty();
                        if (checkTerminated(z2, z, th2, spscLinkedArrayQueue, subscriber, zIsEmpty)) {
                            return;
                        }
                        if (zIsEmpty) {
                            break;
                        }
                        InnerSubscriber innerSubscriber = (InnerSubscriber) spscLinkedArrayQueue.poll();
                        Manifest manifest = (Object) NotificationLite.getValue(spscLinkedArrayQueue.poll());
                        if (atomicLong.get() == innerSubscriber.f1213id) {
                            subscriber.onNext(manifest);
                            j3++;
                        }
                    }
                    if (j3 == j2) {
                        if (subscriber.isUnsubscribed()) {
                            return;
                        }
                        if (checkTerminated(this.mainDone, z, th2, spscLinkedArrayQueue, subscriber, spscLinkedArrayQueue.isEmpty())) {
                            return;
                        }
                    }
                    synchronized (this) {
                        long j4 = this.requested;
                        if (j4 != LongCompanionObject.MAX_VALUE) {
                            j4 -= j3;
                            this.requested = j4;
                        }
                        j2 = j4;
                        if (!this.missed) {
                            this.emitting = false;
                            return;
                        }
                        this.missed = false;
                        z2 = this.mainDone;
                        z = this.innerActive;
                        th2 = this.error;
                        if (th2 != null && th2 != TERMINAL_ERROR && !this.delayError) {
                            this.error = TERMINAL_ERROR;
                        }
                    }
                }
            }
        }

        protected boolean checkTerminated(boolean z, boolean z2, Throwable th, SpscLinkedArrayQueue<Object> spscLinkedArrayQueue, Subscriber<? super T> subscriber, boolean z3) {
            if (this.delayError) {
                if (!z || z2 || !z3) {
                    return false;
                }
                if (th != null) {
                    subscriber.onError(th);
                } else {
                    subscriber.onCompleted();
                }
                return true;
            }
            if (th != null) {
                spscLinkedArrayQueue.clear();
                subscriber.onError(th);
                return true;
            }
            if (!z || z2 || !z3) {
                return false;
            }
            subscriber.onCompleted();
            return true;
        }
    }

    static final class InnerSubscriber<T> extends Subscriber<T> {

        /* renamed from: id */
        private final long f1213id;
        private final SwitchSubscriber<T> parent;

        InnerSubscriber(long j, SwitchSubscriber<T> switchSubscriber) {
            this.f1213id = j;
            this.parent = switchSubscriber;
        }

        @Override // p024rx.Subscriber
        public void setProducer(Producer producer) {
            this.parent.innerProducer(producer, this.f1213id);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            this.parent.emit(t, this);
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.parent.error(th, this.f1213id);
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.parent.complete(this.f1213id);
        }
    }
}
