package p024rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.functions.Action0;

/* loaded from: classes2.dex */
public final class OnSubscribeSkipTimed<T> implements Observable.OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<T> source;
    final long time;
    final TimeUnit unit;

    public OnSubscribeSkipTimed(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.source = observable;
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        SkipTimedSubscriber skipTimedSubscriber = new SkipTimedSubscriber(subscriber);
        skipTimedSubscriber.add(workerCreateWorker);
        subscriber.add(skipTimedSubscriber);
        workerCreateWorker.schedule(skipTimedSubscriber, this.time, this.unit);
        this.source.unsafeSubscribe(skipTimedSubscriber);
    }

    static final class SkipTimedSubscriber<T> extends Subscriber<T> implements Action0 {
        final Subscriber<? super T> child;
        volatile boolean gate;

        SkipTimedSubscriber(Subscriber<? super T> subscriber) {
            this.child = subscriber;
        }

        @Override // p024rx.functions.Action0
        public void call() {
            this.gate = true;
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            if (this.gate) {
                this.child.onNext(t);
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            try {
                this.child.onError(th);
            } finally {
                unsubscribe();
            }
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            try {
                this.child.onCompleted();
            } finally {
                unsubscribe();
            }
        }
    }
}
