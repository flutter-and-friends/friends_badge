package p024rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.AsyncEmitter;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.exceptions.Exceptions;
import p024rx.exceptions.MissingBackpressureException;
import p024rx.functions.Action1;
import p024rx.internal.util.RxRingBuffer;
import p024rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue;
import p024rx.internal.util.unsafe.SpscUnboundedArrayQueue;
import p024rx.internal.util.unsafe.UnsafeAccess;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.SerialSubscription;

@Deprecated
/* loaded from: classes2.dex */
public final class OnSubscribeFromAsyncEmitter<T> implements Observable.OnSubscribe<T> {
    final Action1<AsyncEmitter<T>> asyncEmitter;
    final AsyncEmitter.BackpressureMode backpressure;

    public OnSubscribeFromAsyncEmitter(Action1<AsyncEmitter<T>> action1, AsyncEmitter.BackpressureMode backpressureMode) {
        this.asyncEmitter = action1;
        this.backpressure = backpressureMode;
    }

    /* renamed from: rx.internal.operators.OnSubscribeFromAsyncEmitter$1 */
    static /* synthetic */ class C18841 {
        static final /* synthetic */ int[] $SwitchMap$rx$AsyncEmitter$BackpressureMode = new int[AsyncEmitter.BackpressureMode.values().length];

        static {
            try {
                $SwitchMap$rx$AsyncEmitter$BackpressureMode[AsyncEmitter.BackpressureMode.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$rx$AsyncEmitter$BackpressureMode[AsyncEmitter.BackpressureMode.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$rx$AsyncEmitter$BackpressureMode[AsyncEmitter.BackpressureMode.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$rx$AsyncEmitter$BackpressureMode[AsyncEmitter.BackpressureMode.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        BaseAsyncEmitter noneAsyncEmitter;
        int i = C18841.$SwitchMap$rx$AsyncEmitter$BackpressureMode[this.backpressure.ordinal()];
        if (i == 1) {
            noneAsyncEmitter = new NoneAsyncEmitter(subscriber);
        } else if (i == 2) {
            noneAsyncEmitter = new ErrorAsyncEmitter(subscriber);
        } else if (i == 3) {
            noneAsyncEmitter = new DropAsyncEmitter(subscriber);
        } else if (i == 4) {
            noneAsyncEmitter = new LatestAsyncEmitter(subscriber);
        } else {
            noneAsyncEmitter = new BufferAsyncEmitter(subscriber, RxRingBuffer.SIZE);
        }
        subscriber.add(noneAsyncEmitter);
        subscriber.setProducer(noneAsyncEmitter);
        this.asyncEmitter.call(noneAsyncEmitter);
    }

    static final class CancellableSubscription extends AtomicReference<AsyncEmitter.Cancellable> implements Subscription {
        private static final long serialVersionUID = 5718521705281392066L;

        public CancellableSubscription(AsyncEmitter.Cancellable cancellable) {
            super(cancellable);
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return get() == null;
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            AsyncEmitter.Cancellable andSet;
            if (get() == null || (andSet = getAndSet(null)) == null) {
                return;
            }
            try {
                andSet.cancel();
            } catch (Exception e) {
                Exceptions.throwIfFatal(e);
                RxJavaHooks.onError(e);
            }
        }
    }

    static abstract class BaseAsyncEmitter<T> extends AtomicLong implements AsyncEmitter<T>, Producer, Subscription {
        private static final long serialVersionUID = 7326289992464377023L;
        final Subscriber<? super T> actual;
        final SerialSubscription serial = new SerialSubscription();

        void onRequested() {
        }

        void onUnsubscribed() {
        }

        public BaseAsyncEmitter(Subscriber<? super T> subscriber) {
            this.actual = subscriber;
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            if (this.actual.isUnsubscribed()) {
                return;
            }
            try {
                this.actual.onCompleted();
            } finally {
                this.serial.unsubscribe();
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            if (this.actual.isUnsubscribed()) {
                return;
            }
            try {
                this.actual.onError(th);
            } finally {
                this.serial.unsubscribe();
            }
        }

        @Override // p024rx.Subscription
        public final void unsubscribe() {
            this.serial.unsubscribe();
            onUnsubscribed();
        }

        @Override // p024rx.Subscription
        public final boolean isUnsubscribed() {
            return this.serial.isUnsubscribed();
        }

        @Override // p024rx.Producer
        public final void request(long j) {
            if (BackpressureUtils.validate(j)) {
                BackpressureUtils.getAndAddRequest(this, j);
                onRequested();
            }
        }

        @Override // p024rx.AsyncEmitter
        public final void setSubscription(Subscription subscription) {
            this.serial.set(subscription);
        }

        @Override // p024rx.AsyncEmitter
        public final void setCancellation(AsyncEmitter.Cancellable cancellable) {
            setSubscription(new CancellableSubscription(cancellable));
        }

        @Override // p024rx.AsyncEmitter
        public final long requested() {
            return get();
        }
    }

    static final class NoneAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        public NoneAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            long j;
            if (this.actual.isUnsubscribed()) {
                return;
            }
            this.actual.onNext(t);
            do {
                j = get();
                if (j == 0) {
                    return;
                }
            } while (!compareAndSet(j, j - 1));
        }
    }

    static abstract class NoOverflowBaseAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        abstract void onOverflow();

        public NoOverflowBaseAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        public void onNext(T t) {
            if (this.actual.isUnsubscribed()) {
                return;
            }
            if (get() != 0) {
                this.actual.onNext(t);
                BackpressureUtils.produced(this, 1L);
            } else {
                onOverflow();
            }
        }
    }

    static final class DropAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.NoOverflowBaseAsyncEmitter
        void onOverflow() {
        }

        public DropAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }
    }

    static final class ErrorAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 338953216916120960L;
        private boolean done;

        public ErrorAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.NoOverflowBaseAsyncEmitter, p024rx.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            super.onNext(t);
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter, p024rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            this.done = true;
            super.onCompleted();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter, p024rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
            } else {
                this.done = true;
                super.onError(th);
            }
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.NoOverflowBaseAsyncEmitter
        void onOverflow() {
            onError(new MissingBackpressureException("fromEmitter: could not emit value due to lack of requests"));
        }
    }

    static final class BufferAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 2427151001689639875L;
        volatile boolean done;
        Throwable error;
        final Queue<Object> queue;
        final AtomicInteger wip;

        public BufferAsyncEmitter(Subscriber<? super T> subscriber, int i) {
            super(subscriber);
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscUnboundedArrayQueue<>(i) : new SpscUnboundedAtomicArrayQueue<>(i);
            this.wip = new AtomicInteger();
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            this.queue.offer(NotificationLite.next(t));
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter, p024rx.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter, p024rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter
        void onRequested() {
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter
        void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        void drain() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = this.actual;
            Queue<Object> queue = this.queue;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (j2 != j) {
                    if (subscriber.isUnsubscribed()) {
                        queue.clear();
                        return;
                    }
                    boolean z = this.done;
                    Object objPoll = queue.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            super.onError(th);
                            return;
                        } else {
                            super.onCompleted();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext((Object) NotificationLite.getValue(objPoll));
                    j2++;
                }
                if (j2 == j) {
                    if (subscriber.isUnsubscribed()) {
                        queue.clear();
                        return;
                    }
                    boolean z3 = this.done;
                    boolean zIsEmpty = queue.isEmpty();
                    if (z3 && zIsEmpty) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            super.onError(th2);
                            return;
                        } else {
                            super.onCompleted();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    BackpressureUtils.produced(this, j2);
                }
                iAddAndGet = this.wip.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }
    }

    static final class LatestAsyncEmitter<T> extends BaseAsyncEmitter<T> {
        private static final long serialVersionUID = 4023437720691792495L;
        volatile boolean done;
        Throwable error;
        final AtomicReference<Object> queue;
        final AtomicInteger wip;

        public LatestAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
            this.queue = new AtomicReference<>();
            this.wip = new AtomicInteger();
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            this.queue.set(NotificationLite.next(t));
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter, p024rx.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter, p024rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter
        void onRequested() {
            drain();
        }

        @Override // rx.internal.operators.OnSubscribeFromAsyncEmitter.BaseAsyncEmitter
        void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0053, code lost:
        
            if (r9 != r5) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
        
            if (r1.isUnsubscribed() == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x005b, code lost:
        
            r2.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x005e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x005f, code lost:
        
            r5 = r17.done;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
        
            if (r2.get() != null) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0067, code lost:
        
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0068, code lost:
        
            if (r5 == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x006a, code lost:
        
            if (r11 == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x006c, code lost:
        
            r1 = r17.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x006e, code lost:
        
            if (r1 == null) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0070, code lost:
        
            super.onError(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0074, code lost:
        
            super.onCompleted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x007a, code lost:
        
            if (r9 == 0) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x007c, code lost:
        
            p024rx.internal.operators.BackpressureUtils.produced(r17, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x007f, code lost:
        
            r4 = r17.wip.addAndGet(-r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void drain() {
            /*
                r17 = this;
                r0 = r17
                java.util.concurrent.atomic.AtomicInteger r1 = r0.wip
                int r1 = r1.getAndIncrement()
                if (r1 == 0) goto Lb
                return
            Lb:
                rx.Subscriber<? super T> r1 = r0.actual
                java.util.concurrent.atomic.AtomicReference<java.lang.Object> r2 = r0.queue
                r3 = 1
                r4 = 1
            L11:
                long r5 = r17.get()
                r7 = 0
                r9 = r7
            L18:
                r11 = 0
                r12 = 0
                int r13 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
                if (r13 == 0) goto L53
                boolean r14 = r1.isUnsubscribed()
                if (r14 == 0) goto L28
                r2.lazySet(r12)
                return
            L28:
                boolean r14 = r0.done
                java.lang.Object r15 = r2.getAndSet(r12)
                if (r15 != 0) goto L33
                r16 = 1
                goto L35
            L33:
                r16 = 0
            L35:
                if (r14 == 0) goto L45
                if (r16 == 0) goto L45
                java.lang.Throwable r1 = r0.error
                if (r1 == 0) goto L41
                super.onError(r1)
                goto L44
            L41:
                super.onCompleted()
            L44:
                return
            L45:
                if (r16 == 0) goto L48
                goto L53
            L48:
                java.lang.Object r11 = p024rx.internal.operators.NotificationLite.getValue(r15)
                r1.onNext(r11)
                r11 = 1
                long r9 = r9 + r11
                goto L18
            L53:
                if (r13 != 0) goto L78
                boolean r5 = r1.isUnsubscribed()
                if (r5 == 0) goto L5f
                r2.lazySet(r12)
                return
            L5f:
                boolean r5 = r0.done
                java.lang.Object r6 = r2.get()
                if (r6 != 0) goto L68
                r11 = 1
            L68:
                if (r5 == 0) goto L78
                if (r11 == 0) goto L78
                java.lang.Throwable r1 = r0.error
                if (r1 == 0) goto L74
                super.onError(r1)
                goto L77
            L74:
                super.onCompleted()
            L77:
                return
            L78:
                int r5 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
                if (r5 == 0) goto L7f
                p024rx.internal.operators.BackpressureUtils.produced(r0, r9)
            L7f:
                java.util.concurrent.atomic.AtomicInteger r5 = r0.wip
                int r4 = -r4
                int r4 = r5.addAndGet(r4)
                if (r4 != 0) goto L11
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribeFromAsyncEmitter.LatestAsyncEmitter.drain():void");
        }
    }
}
