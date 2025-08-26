package p024rx.internal.operators;

import p024rx.Scheduler;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.functions.Action0;

/* loaded from: classes2.dex */
public final class SingleObserveOn<T> implements Single.OnSubscribe<T> {
    final Scheduler scheduler;
    final Single.OnSubscribe<T> source;

    public SingleObserveOn(Single.OnSubscribe<T> onSubscribe, Scheduler scheduler) {
        this.source = onSubscribe;
        this.scheduler = scheduler;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        ObserveOnSingleSubscriber observeOnSingleSubscriber = new ObserveOnSingleSubscriber(singleSubscriber, workerCreateWorker);
        singleSubscriber.add(workerCreateWorker);
        singleSubscriber.add(observeOnSingleSubscriber);
        this.source.call(observeOnSingleSubscriber);
    }

    static final class ObserveOnSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        final SingleSubscriber<? super T> actual;
        Throwable error;
        T value;

        /* renamed from: w */
        final Scheduler.Worker f1215w;

        public ObserveOnSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Scheduler.Worker worker) {
            this.actual = singleSubscriber;
            this.f1215w = worker;
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            this.value = t;
            this.f1215w.schedule(this);
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            this.error = th;
            this.f1215w.schedule(this);
        }

        @Override // p024rx.functions.Action0
        public void call() {
            try {
                Throwable th = this.error;
                if (th != null) {
                    this.error = null;
                    this.actual.onError(th);
                } else {
                    T t = this.value;
                    this.value = null;
                    this.actual.onSuccess(t);
                }
            } finally {
                this.f1215w.unsubscribe();
            }
        }
    }
}
