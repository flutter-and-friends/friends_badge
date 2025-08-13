package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p024rx.Completable;
import p024rx.CompletableSubscriber;
import p024rx.Subscription;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.CompositeSubscription;

/* loaded from: classes2.dex */
public final class CompletableOnSubscribeMergeArray implements Completable.OnSubscribe {
    final Completable[] sources;

    public CompletableOnSubscribeMergeArray(Completable[] completableArr) {
        this.sources = completableArr;
    }

    @Override // p024rx.functions.Action1
    public void call(final CompletableSubscriber completableSubscriber) {
        final CompositeSubscription compositeSubscription = new CompositeSubscription();
        boolean z = true;
        final AtomicInteger atomicInteger = new AtomicInteger(this.sources.length + 1);
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        completableSubscriber.onSubscribe(compositeSubscription);
        Completable[] completableArr = this.sources;
        int length = completableArr.length;
        boolean z2 = false;
        int i = 0;
        while (i < length) {
            Completable completable = completableArr[i];
            if (compositeSubscription.isUnsubscribed()) {
                return;
            }
            if (completable == null) {
                compositeSubscription.unsubscribe();
                Throwable nullPointerException = new NullPointerException("A completable source is null");
                if (atomicBoolean.compareAndSet(z2, z)) {
                    completableSubscriber.onError(nullPointerException);
                    return;
                }
                RxJavaHooks.onError(nullPointerException);
            }
            completable.unsafeSubscribe(new CompletableSubscriber() { // from class: rx.internal.operators.CompletableOnSubscribeMergeArray.1
                @Override // p024rx.CompletableSubscriber
                public void onSubscribe(Subscription subscription) {
                    compositeSubscription.add(subscription);
                }

                @Override // p024rx.CompletableSubscriber
                public void onError(Throwable th) {
                    compositeSubscription.unsubscribe();
                    if (atomicBoolean.compareAndSet(false, true)) {
                        completableSubscriber.onError(th);
                    } else {
                        RxJavaHooks.onError(th);
                    }
                }

                @Override // p024rx.CompletableSubscriber
                public void onCompleted() {
                    if (atomicInteger.decrementAndGet() == 0 && atomicBoolean.compareAndSet(false, true)) {
                        completableSubscriber.onCompleted();
                    }
                }
            });
            i++;
            z = true;
            z2 = false;
        }
        if (atomicInteger.decrementAndGet() == 0 && atomicBoolean.compareAndSet(false, true)) {
            completableSubscriber.onCompleted();
        }
    }
}
