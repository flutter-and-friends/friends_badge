package p024rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.LongCompanionObject;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Action0;
import p024rx.observers.SerializedSubscriber;

/* loaded from: classes2.dex */
public final class OperatorSampleWithTime<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    public OperatorSampleWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        subscriber.add(workerCreateWorker);
        SamplerSubscriber samplerSubscriber = new SamplerSubscriber(serializedSubscriber);
        subscriber.add(samplerSubscriber);
        long j = this.time;
        workerCreateWorker.schedulePeriodically(samplerSubscriber, j, j, this.unit);
        return samplerSubscriber;
    }

    static final class SamplerSubscriber<T> extends Subscriber<T> implements Action0 {
        private static final Object EMPTY_TOKEN = new Object();
        private final Subscriber<? super T> subscriber;
        final AtomicReference<Object> value = new AtomicReference<>(EMPTY_TOKEN);

        public SamplerSubscriber(Subscriber<? super T> subscriber) {
            this.subscriber = subscriber;
        }

        @Override // p024rx.Subscriber
        public void onStart() {
            request(LongCompanionObject.MAX_VALUE);
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            this.value.set(t);
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            this.subscriber.onError(th);
            unsubscribe();
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            emitIfNonEmpty();
            this.subscriber.onCompleted();
            unsubscribe();
        }

        @Override // p024rx.functions.Action0
        public void call() {
            emitIfNonEmpty();
        }

        private void emitIfNonEmpty() {
            Object andSet = this.value.getAndSet(EMPTY_TOKEN);
            if (andSet != EMPTY_TOKEN) {
                try {
                    this.subscriber.onNext(andSet);
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, this);
                }
            }
        }
    }
}
