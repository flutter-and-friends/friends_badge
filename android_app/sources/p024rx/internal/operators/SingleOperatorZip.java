package p024rx.internal.operators;

import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.Subscription;
import p024rx.exceptions.Exceptions;
import p024rx.functions.FuncN;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.CompositeSubscription;

/* loaded from: classes2.dex */
public final class SingleOperatorZip {
    private SingleOperatorZip() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, R> Single<R> zip(final Single<? extends T>[] singleArr, final FuncN<? extends R> funcN) {
        return Single.create(new Single.OnSubscribe<R>() { // from class: rx.internal.operators.SingleOperatorZip.1
            @Override // p024rx.functions.Action1
            public void call(final SingleSubscriber<? super R> singleSubscriber) {
                Single[] singleArr2 = singleArr;
                if (singleArr2.length == 0) {
                    singleSubscriber.onError(new NoSuchElementException("Can't zip 0 Singles."));
                    return;
                }
                final AtomicInteger atomicInteger = new AtomicInteger(singleArr2.length);
                final AtomicBoolean atomicBoolean = new AtomicBoolean();
                final Object[] objArr = new Object[singleArr.length];
                CompositeSubscription compositeSubscription = new CompositeSubscription();
                singleSubscriber.add(compositeSubscription);
                for (int i = 0; i < singleArr.length && !compositeSubscription.isUnsubscribed() && !atomicBoolean.get(); i++) {
                    final int i2 = i;
                    Subscription subscription = new SingleSubscriber<T>() { // from class: rx.internal.operators.SingleOperatorZip.1.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // p024rx.SingleSubscriber
                        public void onSuccess(T t) {
                            objArr[i2] = t;
                            if (atomicInteger.decrementAndGet() == 0) {
                                try {
                                    singleSubscriber.onSuccess(funcN.call(objArr));
                                } catch (Throwable th) {
                                    Exceptions.throwIfFatal(th);
                                    onError(th);
                                }
                            }
                        }

                        @Override // p024rx.SingleSubscriber
                        public void onError(Throwable th) {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                singleSubscriber.onError(th);
                            } else {
                                RxJavaHooks.onError(th);
                            }
                        }
                    };
                    compositeSubscription.add(subscription);
                    if (compositeSubscription.isUnsubscribed() || atomicBoolean.get()) {
                        return;
                    }
                    singleArr[i].subscribe((SingleSubscriber) subscription);
                }
            }
        });
    }
}
