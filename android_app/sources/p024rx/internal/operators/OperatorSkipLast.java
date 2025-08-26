package p024rx.internal.operators;

import java.util.ArrayDeque;
import java.util.Deque;
import p024rx.Observable;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public class OperatorSkipLast<T> implements Observable.Operator<T, T> {
    final int count;

    public OperatorSkipLast(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count could not be negative");
        }
        this.count = i;
    }

    @Override // p024rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorSkipLast.1
            private final Deque<Object> deque = new ArrayDeque();

            @Override // p024rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                subscriber.onError(th);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p024rx.Observer
            public void onNext(T t) {
                if (OperatorSkipLast.this.count == 0) {
                    subscriber.onNext(t);
                    return;
                }
                if (this.deque.size() == OperatorSkipLast.this.count) {
                    subscriber.onNext(NotificationLite.getValue(this.deque.removeFirst()));
                } else {
                    request(1L);
                }
                this.deque.offerLast(NotificationLite.next(t));
            }
        };
    }
}
