package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.functions.Action0;
import p024rx.functions.Func2;
import p024rx.internal.producers.ProducerArbiter;
import p024rx.schedulers.Schedulers;
import p024rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
public final class OperatorRetryWithPredicate<T> implements Observable.Operator<T, Observable<T>> {
    final Func2<Integer, Throwable, Boolean> predicate;

    public OperatorRetryWithPredicate(Func2<Integer, Throwable, Boolean> func2) {
        this.predicate = func2;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super Observable<T>> call(Subscriber<? super T> subscriber) {
        Scheduler.Worker workerCreateWorker = Schedulers.trampoline().createWorker();
        subscriber.add(workerCreateWorker);
        SerialSubscription serialSubscription = new SerialSubscription();
        subscriber.add(serialSubscription);
        ProducerArbiter producerArbiter = new ProducerArbiter();
        subscriber.setProducer(producerArbiter);
        return new SourceSubscriber(subscriber, this.predicate, workerCreateWorker, serialSubscription, producerArbiter);
    }

    static final class SourceSubscriber<T> extends Subscriber<Observable<T>> {
        final AtomicInteger attempts = new AtomicInteger();
        final Subscriber<? super T> child;
        final Scheduler.Worker inner;

        /* renamed from: pa */
        final ProducerArbiter f1212pa;
        final Func2<Integer, Throwable, Boolean> predicate;
        final SerialSubscription serialSubscription;

        @Override // p024rx.Observer
        public void onCompleted() {
        }

        public SourceSubscriber(Subscriber<? super T> subscriber, Func2<Integer, Throwable, Boolean> func2, Scheduler.Worker worker, SerialSubscription serialSubscription, ProducerArbiter producerArbiter) {
            this.child = subscriber;
            this.predicate = func2;
            this.inner = worker;
            this.serialSubscription = serialSubscription;
            this.f1212pa = producerArbiter;
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.child.onError(th);
        }

        @Override // p024rx.Observer
        public void onNext(final Observable<T> observable) {
            this.inner.schedule(new Action0() { // from class: rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.1
                @Override // p024rx.functions.Action0
                public void call() {
                    SourceSubscriber.this.attempts.incrementAndGet();
                    Subscriber<T> subscriber = new Subscriber<T>() { // from class: rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.1.1
                        boolean done;

                        @Override // p024rx.Observer
                        public void onCompleted() {
                            if (this.done) {
                                return;
                            }
                            this.done = true;
                            SourceSubscriber.this.child.onCompleted();
                        }

                        @Override // p024rx.Observer
                        public void onError(Throwable th) {
                            if (this.done) {
                                return;
                            }
                            this.done = true;
                            if (SourceSubscriber.this.predicate.call(Integer.valueOf(SourceSubscriber.this.attempts.get()), th).booleanValue() && !SourceSubscriber.this.inner.isUnsubscribed()) {
                                SourceSubscriber.this.inner.schedule(this);
                            } else {
                                SourceSubscriber.this.child.onError(th);
                            }
                        }

                        @Override // p024rx.Observer
                        public void onNext(T t) {
                            if (this.done) {
                                return;
                            }
                            SourceSubscriber.this.child.onNext(t);
                            SourceSubscriber.this.f1212pa.produced(1L);
                        }

                        @Override // p024rx.Subscriber
                        public void setProducer(Producer producer) {
                            SourceSubscriber.this.f1212pa.setProducer(producer);
                        }
                    };
                    SourceSubscriber.this.serialSubscription.set(subscriber);
                    observable.unsafeSubscribe(subscriber);
                }
            });
        }
    }
}
