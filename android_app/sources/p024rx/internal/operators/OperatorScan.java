package p024rx.internal.operators;

import android.Manifest;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func0;
import p024rx.functions.Func2;
import p024rx.internal.util.atomic.SpscLinkedAtomicQueue;
import p024rx.internal.util.unsafe.SpscLinkedQueue;
import p024rx.internal.util.unsafe.UnsafeAccess;

/* loaded from: classes2.dex */
public final class OperatorScan<R, T> implements Observable.Operator<R, T> {
    private static final Object NO_INITIAL_VALUE = new Object();
    final Func2<R, ? super T, R> accumulator;
    private final Func0<R> initialValueFactory;

    public OperatorScan(final R r, Func2<R, ? super T, R> func2) {
        this((Func0) new Func0<R>() { // from class: rx.internal.operators.OperatorScan.1
            @Override // p024rx.functions.Func0, java.util.concurrent.Callable
            public R call() {
                return (R) r;
            }
        }, (Func2) func2);
    }

    public OperatorScan(Func0<R> func0, Func2<R, ? super T, R> func2) {
        this.initialValueFactory = func0;
        this.accumulator = func2;
    }

    public OperatorScan(Func2<R, ? super T, R> func2) {
        this(NO_INITIAL_VALUE, func2);
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super R> subscriber) {
        final R rCall = this.initialValueFactory.call();
        if (rCall == NO_INITIAL_VALUE) {
            return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorScan.2
                boolean once;
                R value;

                @Override // p024rx.Observer
                public void onNext(T t) {
                    if (!this.once) {
                        this.once = true;
                    } else {
                        try {
                            t = OperatorScan.this.accumulator.call(this.value, t);
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, subscriber, t);
                            return;
                        }
                    }
                    this.value = (R) t;
                    subscriber.onNext(t);
                }

                @Override // p024rx.Observer
                public void onError(Throwable th) {
                    subscriber.onError(th);
                }

                @Override // p024rx.Observer
                public void onCompleted() {
                    subscriber.onCompleted();
                }
            };
        }
        final InitialProducer initialProducer = new InitialProducer(rCall, subscriber);
        Subscriber<T> subscriber2 = new Subscriber<T>() { // from class: rx.internal.operators.OperatorScan.3
            private R value;

            {
                this.value = (R) rCall;
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                try {
                    R rCall2 = OperatorScan.this.accumulator.call(this.value, t);
                    this.value = rCall2;
                    initialProducer.onNext(rCall2);
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, this, t);
                }
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                initialProducer.onError(th);
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                initialProducer.onCompleted();
            }

            @Override // p024rx.Subscriber
            public void setProducer(Producer producer) {
                initialProducer.setProducer(producer);
            }
        };
        subscriber.add(subscriber2);
        subscriber.setProducer(initialProducer);
        return subscriber2;
    }

    static final class InitialProducer<R> implements Producer, Observer<R> {
        final Subscriber<? super R> child;
        volatile boolean done;
        boolean emitting;
        Throwable error;
        boolean missed;
        long missedRequested;
        volatile Producer producer;
        final Queue<Object> queue;
        final AtomicLong requested;

        public InitialProducer(R r, Subscriber<? super R> subscriber) {
            Queue<Object> spscLinkedAtomicQueue;
            this.child = subscriber;
            if (UnsafeAccess.isUnsafeAvailable()) {
                spscLinkedAtomicQueue = new SpscLinkedQueue<>();
            } else {
                spscLinkedAtomicQueue = new SpscLinkedAtomicQueue<>();
            }
            this.queue = spscLinkedAtomicQueue;
            spscLinkedAtomicQueue.offer(NotificationLite.next(r));
            this.requested = new AtomicLong();
        }

        @Override // p024rx.Observer
        public void onNext(R r) {
            this.queue.offer(NotificationLite.next(r));
            emit();
        }

        boolean checkTerminated(boolean z, boolean z2, Subscriber<? super R> subscriber) {
            if (subscriber.isUnsubscribed()) {
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (th != null) {
                subscriber.onError(th);
                return true;
            }
            if (!z2) {
                return false;
            }
            subscriber.onCompleted();
            return true;
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            emit();
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.done = true;
            emit();
        }

        @Override // p024rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was " + j);
            }
            if (j != 0) {
                BackpressureUtils.getAndAddRequest(this.requested, j);
                Producer producer = this.producer;
                if (producer == null) {
                    synchronized (this.requested) {
                        producer = this.producer;
                        if (producer == null) {
                            this.missedRequested = BackpressureUtils.addCap(this.missedRequested, j);
                        }
                    }
                }
                if (producer != null) {
                    producer.request(j);
                }
                emit();
            }
        }

        public void setProducer(Producer producer) {
            long j;
            if (producer == null) {
                throw new NullPointerException();
            }
            synchronized (this.requested) {
                if (this.producer != null) {
                    throw new IllegalStateException("Can't set more than one Producer!");
                }
                j = this.missedRequested;
                if (j != LongCompanionObject.MAX_VALUE) {
                    j--;
                }
                this.missedRequested = 0L;
                this.producer = producer;
            }
            if (j > 0) {
                producer.request(j);
            }
            emit();
        }

        void emit() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                } else {
                    this.emitting = true;
                    emitLoop();
                }
            }
        }

        void emitLoop() {
            Subscriber<? super R> subscriber = this.child;
            Queue<Object> queue = this.queue;
            AtomicLong atomicLong = this.requested;
            long jProduced = atomicLong.get();
            while (!checkTerminated(this.done, queue.isEmpty(), subscriber)) {
                long j = 0;
                while (j != jProduced) {
                    boolean z = this.done;
                    Object objPoll = queue.poll();
                    boolean z2 = objPoll == null;
                    if (checkTerminated(z, z2, subscriber)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    Manifest manifest = (Object) NotificationLite.getValue(objPoll);
                    try {
                        subscriber.onNext(manifest);
                        j++;
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, subscriber, manifest);
                        return;
                    }
                }
                if (j != 0 && jProduced != LongCompanionObject.MAX_VALUE) {
                    jProduced = BackpressureUtils.produced(atomicLong, j);
                }
                synchronized (this) {
                    if (!this.missed) {
                        this.emitting = false;
                        return;
                    }
                    this.missed = false;
                }
            }
        }
    }
}
