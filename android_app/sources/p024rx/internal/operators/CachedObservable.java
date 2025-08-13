package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.internal.util.LinkedArrayList;
import p024rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
public final class CachedObservable<T> extends Observable<T> {
    private final CacheState<T> state;

    public static <T> CachedObservable<T> from(Observable<? extends T> observable) {
        return from(observable, 16);
    }

    public static <T> CachedObservable<T> from(Observable<? extends T> observable, int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacityHint > 0 required");
        }
        CacheState cacheState = new CacheState(observable, i);
        return new CachedObservable<>(new CachedSubscribe(cacheState), cacheState);
    }

    private CachedObservable(Observable.OnSubscribe<T> onSubscribe, CacheState<T> cacheState) {
        super(onSubscribe);
        this.state = cacheState;
    }

    boolean isConnected() {
        return this.state.isConnected;
    }

    boolean hasObservers() {
        return this.state.producers.length != 0;
    }

    static final class CacheState<T> extends LinkedArrayList implements Observer<T> {
        static final ReplayProducer<?>[] EMPTY = new ReplayProducer[0];
        final SerialSubscription connection;
        volatile boolean isConnected;
        volatile ReplayProducer<?>[] producers;
        final Observable<? extends T> source;
        boolean sourceDone;

        public CacheState(Observable<? extends T> observable, int i) {
            super(i);
            this.source = observable;
            this.producers = EMPTY;
            this.connection = new SerialSubscription();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void addProducer(ReplayProducer<T> replayProducer) {
            synchronized (this.connection) {
                ReplayProducer<?>[] replayProducerArr = this.producers;
                int length = replayProducerArr.length;
                ReplayProducer<?>[] replayProducerArr2 = new ReplayProducer[length + 1];
                System.arraycopy(replayProducerArr, 0, replayProducerArr2, 0, length);
                replayProducerArr2[length] = replayProducer;
                this.producers = replayProducerArr2;
            }
        }

        public void removeProducer(ReplayProducer<T> replayProducer) {
            synchronized (this.connection) {
                ReplayProducer<?>[] replayProducerArr = this.producers;
                int length = replayProducerArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (replayProducerArr[i2].equals(replayProducer)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    this.producers = EMPTY;
                    return;
                }
                ReplayProducer<?>[] replayProducerArr2 = new ReplayProducer[length - 1];
                System.arraycopy(replayProducerArr, 0, replayProducerArr2, 0, i);
                System.arraycopy(replayProducerArr, i + 1, replayProducerArr2, i, (length - i) - 1);
                this.producers = replayProducerArr2;
            }
        }

        public void connect() {
            Subscriber<T> subscriber = new Subscriber<T>() { // from class: rx.internal.operators.CachedObservable.CacheState.1
                @Override // p024rx.Observer
                public void onNext(T t) throws Throwable {
                    CacheState.this.onNext(t);
                }

                @Override // p024rx.Observer
                public void onError(Throwable th) throws Throwable {
                    CacheState.this.onError(th);
                }

                @Override // p024rx.Observer
                public void onCompleted() throws Throwable {
                    CacheState.this.onCompleted();
                }
            };
            this.connection.set(subscriber);
            this.source.unsafeSubscribe(subscriber);
            this.isConnected = true;
        }

        @Override // p024rx.Observer
        public void onNext(T t) throws Throwable {
            if (this.sourceDone) {
                return;
            }
            add(NotificationLite.next(t));
            dispatch();
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) throws Throwable {
            if (this.sourceDone) {
                return;
            }
            this.sourceDone = true;
            add(NotificationLite.error(th));
            this.connection.unsubscribe();
            dispatch();
        }

        @Override // p024rx.Observer
        public void onCompleted() throws Throwable {
            if (this.sourceDone) {
                return;
            }
            this.sourceDone = true;
            add(NotificationLite.completed());
            this.connection.unsubscribe();
            dispatch();
        }

        void dispatch() throws Throwable {
            for (ReplayProducer<?> replayProducer : this.producers) {
                replayProducer.replay();
            }
        }
    }

    static final class CachedSubscribe<T> extends AtomicBoolean implements Observable.OnSubscribe<T> {
        private static final long serialVersionUID = -2817751667698696782L;
        final CacheState<T> state;

        public CachedSubscribe(CacheState<T> cacheState) {
            this.state = cacheState;
        }

        @Override // p024rx.functions.Action1
        public void call(Subscriber<? super T> subscriber) {
            ReplayProducer<T> replayProducer = new ReplayProducer<>(subscriber, this.state);
            this.state.addProducer(replayProducer);
            subscriber.add(replayProducer);
            subscriber.setProducer(replayProducer);
            if (get() || !compareAndSet(false, true)) {
                return;
            }
            this.state.connect();
        }
    }

    static final class ReplayProducer<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = -2557562030197141021L;
        final Subscriber<? super T> child;
        Object[] currentBuffer;
        int currentIndexInBuffer;
        boolean emitting;
        int index;
        boolean missed;
        final CacheState<T> state;

        public ReplayProducer(Subscriber<? super T> subscriber, CacheState<T> cacheState) {
            this.child = subscriber;
            this.state = cacheState;
        }

        @Override // p024rx.Producer
        public void request(long j) throws Throwable {
            long j2;
            long j3;
            do {
                j2 = get();
                if (j2 < 0) {
                    return;
                }
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = LongCompanionObject.MAX_VALUE;
                }
            } while (!compareAndSet(j2, j3));
            replay();
        }

        public long produced(long j) {
            return addAndGet(-j);
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return get() < 0;
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            if (get() < 0 || getAndSet(-1L) < 0) {
                return;
            }
            this.state.removeProducer(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:112:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void replay() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 233
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.CachedObservable.ReplayProducer.replay():void");
        }
    }
}
