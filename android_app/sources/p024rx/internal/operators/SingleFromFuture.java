package p024rx.internal.operators;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.exceptions.Exceptions;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class SingleFromFuture<T> implements Single.OnSubscribe<T> {
    final Future<? extends T> future;
    final long timeout;
    final TimeUnit unit;

    public SingleFromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.future = future;
        this.timeout = j;
        this.unit = timeUnit;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        T t;
        Future<? extends T> future = this.future;
        singleSubscriber.add(Subscriptions.from(future));
        try {
            if (this.timeout == 0) {
                t = future.get();
            } else {
                t = future.get(this.timeout, this.unit);
            }
            singleSubscriber.onSuccess(t);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            singleSubscriber.onError(th);
        }
    }
}
