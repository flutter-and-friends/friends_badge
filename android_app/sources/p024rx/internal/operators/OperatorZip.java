package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import p024rx.Observable;
import p024rx.Observer;
import p024rx.Producer;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.exceptions.MissingBackpressureException;
import p024rx.functions.Func2;
import p024rx.functions.Func3;
import p024rx.functions.Func4;
import p024rx.functions.Func5;
import p024rx.functions.Func6;
import p024rx.functions.Func7;
import p024rx.functions.Func8;
import p024rx.functions.Func9;
import p024rx.functions.FuncN;
import p024rx.functions.Functions;
import p024rx.internal.util.RxRingBuffer;
import p024rx.subscriptions.CompositeSubscription;

/* loaded from: classes2.dex */
public final class OperatorZip<R> implements Observable.Operator<R, Observable<?>[]> {
    final FuncN<? extends R> zipFunction;

    public OperatorZip(FuncN<? extends R> funcN) {
        this.zipFunction = funcN;
    }

    public OperatorZip(Func2 func2) {
        this.zipFunction = Functions.fromFunc(func2);
    }

    public OperatorZip(Func3 func3) {
        this.zipFunction = Functions.fromFunc(func3);
    }

    public OperatorZip(Func4 func4) {
        this.zipFunction = Functions.fromFunc(func4);
    }

    public OperatorZip(Func5 func5) {
        this.zipFunction = Functions.fromFunc(func5);
    }

    public OperatorZip(Func6 func6) {
        this.zipFunction = Functions.fromFunc(func6);
    }

    public OperatorZip(Func7 func7) {
        this.zipFunction = Functions.fromFunc(func7);
    }

    public OperatorZip(Func8 func8) {
        this.zipFunction = Functions.fromFunc(func8);
    }

    public OperatorZip(Func9 func9) {
        this.zipFunction = Functions.fromFunc(func9);
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super Observable[]> call(Subscriber<? super R> subscriber) {
        Zip zip = new Zip(subscriber, this.zipFunction);
        ZipProducer zipProducer = new ZipProducer(zip);
        ZipSubscriber zipSubscriber = new ZipSubscriber(subscriber, zip, zipProducer);
        subscriber.add(zipSubscriber);
        subscriber.setProducer(zipProducer);
        return zipSubscriber;
    }

    final class ZipSubscriber extends Subscriber<Observable[]> {
        final Subscriber<? super R> child;
        final ZipProducer<R> producer;
        boolean started;
        final Zip<R> zipper;

        public ZipSubscriber(Subscriber<? super R> subscriber, Zip<R> zip, ZipProducer<R> zipProducer) {
            this.child = subscriber;
            this.zipper = zip;
            this.producer = zipProducer;
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            if (this.started) {
                return;
            }
            this.child.onCompleted();
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.child.onError(th);
        }

        @Override // p024rx.Observer
        public void onNext(Observable[] observableArr) {
            if (observableArr == null || observableArr.length == 0) {
                this.child.onCompleted();
            } else {
                this.started = true;
                this.zipper.start(observableArr, this.producer);
            }
        }
    }

    static final class ZipProducer<R> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1216676403723546796L;
        final Zip<R> zipper;

        public ZipProducer(Zip<R> zip) {
            this.zipper = zip;
        }

        @Override // p024rx.Producer
        public void request(long j) {
            BackpressureUtils.getAndAddRequest(this, j);
            this.zipper.tick();
        }
    }

    static final class Zip<R> extends AtomicLong {
        static final int THRESHOLD = (int) (RxRingBuffer.SIZE * 0.7d);
        private static final long serialVersionUID = 5995274816189928317L;
        final Observer<? super R> child;
        private final CompositeSubscription childSubscription = new CompositeSubscription();
        int emitted;
        private AtomicLong requested;
        private volatile Object[] subscribers;
        private final FuncN<? extends R> zipFunction;

        public Zip(Subscriber<? super R> subscriber, FuncN<? extends R> funcN) {
            this.child = subscriber;
            this.zipFunction = funcN;
            subscriber.add(this.childSubscription);
        }

        public void start(Observable[] observableArr, AtomicLong atomicLong) {
            Object[] objArr = new Object[observableArr.length];
            for (int i = 0; i < observableArr.length; i++) {
                InnerSubscriber innerSubscriber = new InnerSubscriber();
                objArr[i] = innerSubscriber;
                this.childSubscription.add(innerSubscriber);
            }
            this.requested = atomicLong;
            this.subscribers = objArr;
            for (int i2 = 0; i2 < observableArr.length; i2++) {
                observableArr[i2].unsafeSubscribe((InnerSubscriber) objArr[i2]);
            }
        }

        void tick() {
            Object[] objArr = this.subscribers;
            if (objArr == null || getAndIncrement() != 0) {
                return;
            }
            int length = objArr.length;
            Observer<? super R> observer = this.child;
            AtomicLong atomicLong = this.requested;
            while (true) {
                Object[] objArr2 = new Object[length];
                boolean z = true;
                for (int i = 0; i < length; i++) {
                    RxRingBuffer rxRingBuffer = ((InnerSubscriber) objArr[i]).items;
                    Object objPeek = rxRingBuffer.peek();
                    if (objPeek == null) {
                        z = false;
                    } else {
                        if (rxRingBuffer.isCompleted(objPeek)) {
                            observer.onCompleted();
                            this.childSubscription.unsubscribe();
                            return;
                        }
                        objArr2[i] = rxRingBuffer.getValue(objPeek);
                    }
                }
                if (atomicLong.get() > 0 && z) {
                    try {
                        observer.onNext(this.zipFunction.call(objArr2));
                        atomicLong.decrementAndGet();
                        this.emitted++;
                        for (Object obj : objArr) {
                            RxRingBuffer rxRingBuffer2 = ((InnerSubscriber) obj).items;
                            rxRingBuffer2.poll();
                            if (rxRingBuffer2.isCompleted(rxRingBuffer2.peek())) {
                                observer.onCompleted();
                                this.childSubscription.unsubscribe();
                                return;
                            }
                        }
                        if (this.emitted > THRESHOLD) {
                            for (Object obj2 : objArr) {
                                ((InnerSubscriber) obj2).requestMore(this.emitted);
                            }
                            this.emitted = 0;
                        }
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, observer, objArr2);
                        return;
                    }
                } else if (decrementAndGet() <= 0) {
                    return;
                }
            }
        }

        final class InnerSubscriber extends Subscriber {
            final RxRingBuffer items = RxRingBuffer.getSpmcInstance();

            InnerSubscriber() {
            }

            @Override // p024rx.Subscriber
            public void onStart() {
                request(RxRingBuffer.SIZE);
            }

            public void requestMore(long j) {
                request(j);
            }

            @Override // p024rx.Observer
            public void onCompleted() {
                this.items.onCompleted();
                Zip.this.tick();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                Zip.this.child.onError(th);
            }

            @Override // p024rx.Observer
            public void onNext(Object obj) {
                try {
                    this.items.onNext(obj);
                } catch (MissingBackpressureException e) {
                    onError(e);
                }
                Zip.this.tick();
            }
        }
    }
}
