package p024rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p024rx.Observable;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.functions.Action0;

/* loaded from: classes2.dex */
public final class OperatorDelay<T> implements Observable.Operator<T, T> {
    final long delay;
    final Scheduler scheduler;
    final TimeUnit unit;

    public OperatorDelay(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.delay = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        subscriber.add(workerCreateWorker);
        return new C19131(subscriber, workerCreateWorker, subscriber);
    }

    /* renamed from: rx.internal.operators.OperatorDelay$1 */
    class C19131 extends Subscriber<T> {
        boolean done;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ Scheduler.Worker val$worker;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19131(Subscriber subscriber, Scheduler.Worker worker, Subscriber subscriber2) {
            super(subscriber);
            this.val$worker = worker;
            this.val$child = subscriber2;
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            this.val$worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.1
                @Override // p024rx.functions.Action0
                public void call() {
                    if (C19131.this.done) {
                        return;
                    }
                    C19131 c19131 = C19131.this;
                    c19131.done = true;
                    c19131.val$child.onCompleted();
                }
            }, OperatorDelay.this.delay, OperatorDelay.this.unit);
        }

        @Override // p024rx.Observer
        public void onError(final Throwable th) {
            this.val$worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.2
                @Override // p024rx.functions.Action0
                public void call() {
                    if (C19131.this.done) {
                        return;
                    }
                    C19131 c19131 = C19131.this;
                    c19131.done = true;
                    c19131.val$child.onError(th);
                    C19131.this.val$worker.unsubscribe();
                }
            });
        }

        @Override // p024rx.Observer
        public void onNext(final T t) {
            this.val$worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.3
                /* JADX WARN: Multi-variable type inference failed */
                @Override // p024rx.functions.Action0
                public void call() {
                    if (C19131.this.done) {
                        return;
                    }
                    C19131.this.val$child.onNext(t);
                }
            }, OperatorDelay.this.delay, OperatorDelay.this.unit);
        }
    }
}
