package p024rx.internal.operators;

import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.Subscription;

/* loaded from: classes2.dex */
public final class BlockingOperatorToFuture {
    private BlockingOperatorToFuture() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Future<T> toFuture(Observable<? extends T> observable) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        final Subscription subscriptionSubscribe = observable.single().subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.internal.operators.BlockingOperatorToFuture.1
            @Override // p024rx.Observer
            public void onCompleted() {
                countDownLatch.countDown();
            }

            @Override // p024rx.Observer
            public void onError(Throwable th) {
                atomicReference2.compareAndSet(null, th);
                countDownLatch.countDown();
            }

            @Override // p024rx.Observer
            public void onNext(T t) {
                atomicReference.set(t);
            }
        });
        return new Future<T>() { // from class: rx.internal.operators.BlockingOperatorToFuture.2
            private volatile boolean cancelled;

            @Override // java.util.concurrent.Future
            public boolean cancel(boolean z) {
                if (countDownLatch.getCount() <= 0) {
                    return false;
                }
                this.cancelled = true;
                subscriptionSubscribe.unsubscribe();
                countDownLatch.countDown();
                return true;
            }

            @Override // java.util.concurrent.Future
            public boolean isCancelled() {
                return this.cancelled;
            }

            @Override // java.util.concurrent.Future
            public boolean isDone() {
                return countDownLatch.getCount() == 0;
            }

            @Override // java.util.concurrent.Future
            public T get() throws ExecutionException, InterruptedException {
                countDownLatch.await();
                return getValue();
            }

            @Override // java.util.concurrent.Future
            public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
                if (countDownLatch.await(j, timeUnit)) {
                    return getValue();
                }
                throw new TimeoutException("Timed out after " + timeUnit.toMillis(j) + "ms waiting for underlying Observable.");
            }

            private T getValue() throws ExecutionException {
                Throwable th = (Throwable) atomicReference2.get();
                if (th != null) {
                    throw new ExecutionException("Observable onError", th);
                }
                if (this.cancelled) {
                    throw new CancellationException("Subscription unsubscribed");
                }
                return (T) atomicReference.get();
            }
        };
    }
}
