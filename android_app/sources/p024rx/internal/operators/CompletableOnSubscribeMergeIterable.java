package p024rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p024rx.Completable;
import p024rx.CompletableSubscriber;
import p024rx.Subscription;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.CompositeSubscription;

/* loaded from: classes2.dex */
public final class CompletableOnSubscribeMergeIterable implements Completable.OnSubscribe {
    final Iterable<? extends Completable> sources;

    public CompletableOnSubscribeMergeIterable(Iterable<? extends Completable> iterable) {
        this.sources = iterable;
    }

    @Override // p024rx.functions.Action1
    public void call(final CompletableSubscriber completableSubscriber) {
        final CompositeSubscription compositeSubscription = new CompositeSubscription();
        completableSubscriber.onSubscribe(compositeSubscription);
        try {
            Iterator<? extends Completable> it = this.sources.iterator();
            if (it == null) {
                completableSubscriber.onError(new NullPointerException("The source iterator returned is null"));
                return;
            }
            final AtomicInteger atomicInteger = new AtomicInteger(1);
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            while (!compositeSubscription.isUnsubscribed()) {
                try {
                    if (it.hasNext()) {
                        if (compositeSubscription.isUnsubscribed()) {
                            return;
                        }
                        try {
                            Completable next = it.next();
                            if (compositeSubscription.isUnsubscribed()) {
                                return;
                            }
                            if (next == null) {
                                compositeSubscription.unsubscribe();
                                Throwable nullPointerException = new NullPointerException("A completable source is null");
                                if (atomicBoolean.compareAndSet(false, true)) {
                                    completableSubscriber.onError(nullPointerException);
                                    return;
                                } else {
                                    RxJavaHooks.onError(nullPointerException);
                                    return;
                                }
                            }
                            atomicInteger.getAndIncrement();
                            next.unsafeSubscribe(new CompletableSubscriber() { // from class: rx.internal.operators.CompletableOnSubscribeMergeIterable.1
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
                        } catch (Throwable th) {
                            compositeSubscription.unsubscribe();
                            if (atomicBoolean.compareAndSet(false, true)) {
                                completableSubscriber.onError(th);
                                return;
                            } else {
                                RxJavaHooks.onError(th);
                                return;
                            }
                        }
                    } else {
                        if (atomicInteger.decrementAndGet() == 0 && atomicBoolean.compareAndSet(false, true)) {
                            completableSubscriber.onCompleted();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th2) {
                    compositeSubscription.unsubscribe();
                    if (atomicBoolean.compareAndSet(false, true)) {
                        completableSubscriber.onError(th2);
                        return;
                    } else {
                        RxJavaHooks.onError(th2);
                        return;
                    }
                }
            }
        } catch (Throwable th3) {
            completableSubscriber.onError(th3);
        }
    }
}
