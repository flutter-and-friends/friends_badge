package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import p024rx.Observable;
import p024rx.Producer;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OperatorTake<T> implements Observable.Operator<T, T> {
    final int limit;

    public OperatorTake(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("limit >= 0 required but it was " + i);
        }
        this.limit = i;
    }

    /* renamed from: rx.internal.operators.OperatorTake$1 */
    class C19681 extends Subscriber<T> {
        boolean completed;
        int count;
        final /* synthetic */ Subscriber val$child;

        C19681(Subscriber subscriber) {
            this.val$child = subscriber;
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            if (this.completed) {
                return;
            }
            this.completed = true;
            this.val$child.onCompleted();
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            if (this.completed) {
                return;
            }
            this.completed = true;
            try {
                this.val$child.onError(th);
            } finally {
                unsubscribe();
            }
        }

        @Override // p024rx.Observer
        public void onNext(T t) {
            if (isUnsubscribed()) {
                return;
            }
            int i = this.count;
            this.count = i + 1;
            if (i < OperatorTake.this.limit) {
                boolean z = this.count == OperatorTake.this.limit;
                this.val$child.onNext(t);
                if (!z || this.completed) {
                    return;
                }
                this.completed = true;
                try {
                    this.val$child.onCompleted();
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // p024rx.Subscriber
        public void setProducer(final Producer producer) {
            this.val$child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorTake.1.1
                final AtomicLong requested = new AtomicLong(0);

                @Override // p024rx.Producer
                public void request(long j) {
                    long j2;
                    long jMin;
                    if (j <= 0 || C19681.this.completed) {
                        return;
                    }
                    do {
                        j2 = this.requested.get();
                        jMin = Math.min(j, OperatorTake.this.limit - j2);
                        if (jMin == 0) {
                            return;
                        }
                    } while (!this.requested.compareAndSet(j2, j2 + jMin));
                    producer.request(jMin);
                }
            });
        }
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        C19681 c19681 = new C19681(subscriber);
        if (this.limit == 0) {
            subscriber.onCompleted();
            c19681.unsubscribe();
        }
        subscriber.add(c19681);
        return c19681;
    }
}
