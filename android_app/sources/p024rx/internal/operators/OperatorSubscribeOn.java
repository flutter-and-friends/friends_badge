package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Producer;
import p024rx.Scheduler;
import p024rx.Subscriber;
import p024rx.functions.Action0;

/* loaded from: classes2.dex */
public final class OperatorSubscribeOn<T> implements Observable.OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<T> source;

    public OperatorSubscribeOn(Observable<T> observable, Scheduler scheduler) {
        this.scheduler = scheduler;
        this.source = observable;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        subscriber.add(workerCreateWorker);
        workerCreateWorker.schedule(new C19651(subscriber, workerCreateWorker));
    }

    /* renamed from: rx.internal.operators.OperatorSubscribeOn$1 */
    class C19651 implements Action0 {
        final /* synthetic */ Scheduler.Worker val$inner;
        final /* synthetic */ Subscriber val$subscriber;

        C19651(Subscriber subscriber, Scheduler.Worker worker) {
            this.val$subscriber = subscriber;
            this.val$inner = worker;
        }

        @Override // p024rx.functions.Action0
        public void call() {
            final Thread threadCurrentThread = Thread.currentThread();
            OperatorSubscribeOn.this.source.unsafeSubscribe(new Subscriber<T>(this.val$subscriber) { // from class: rx.internal.operators.OperatorSubscribeOn.1.1
                @Override // p024rx.Observer
                public void onNext(T t) {
                    C19651.this.val$subscriber.onNext(t);
                }

                @Override // p024rx.Observer
                public void onError(Throwable th) {
                    try {
                        C19651.this.val$subscriber.onError(th);
                    } finally {
                        C19651.this.val$inner.unsubscribe();
                    }
                }

                @Override // p024rx.Observer
                public void onCompleted() {
                    try {
                        C19651.this.val$subscriber.onCompleted();
                    } finally {
                        C19651.this.val$inner.unsubscribe();
                    }
                }

                @Override // p024rx.Subscriber
                public void setProducer(final Producer producer) {
                    C19651.this.val$subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSubscribeOn.1.1.1
                        @Override // p024rx.Producer
                        public void request(final long j) {
                            if (threadCurrentThread == Thread.currentThread()) {
                                producer.request(j);
                            } else {
                                C19651.this.val$inner.schedule(new Action0() { // from class: rx.internal.operators.OperatorSubscribeOn.1.1.1.1
                                    @Override // p024rx.functions.Action0
                                    public void call() {
                                        producer.request(j);
                                    }
                                });
                            }
                        }
                    });
                }
            });
        }
    }
}
