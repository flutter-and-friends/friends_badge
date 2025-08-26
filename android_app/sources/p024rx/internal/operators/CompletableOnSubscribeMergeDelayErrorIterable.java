package p024rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import p024rx.Completable;
import p024rx.CompletableSubscriber;
import p024rx.Subscription;
import p024rx.internal.util.unsafe.MpscLinkedQueue;
import p024rx.subscriptions.CompositeSubscription;

/* loaded from: classes2.dex */
public final class CompletableOnSubscribeMergeDelayErrorIterable implements Completable.OnSubscribe {
    final Iterable<? extends Completable> sources;

    public CompletableOnSubscribeMergeDelayErrorIterable(Iterable<? extends Completable> iterable) {
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
            final MpscLinkedQueue mpscLinkedQueue = new MpscLinkedQueue();
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
                                mpscLinkedQueue.offer(new NullPointerException("A completable source is null"));
                                if (atomicInteger.decrementAndGet() == 0) {
                                    if (mpscLinkedQueue.isEmpty()) {
                                        completableSubscriber.onCompleted();
                                        return;
                                    } else {
                                        completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                                        return;
                                    }
                                }
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            next.unsafeSubscribe(new CompletableSubscriber() { // from class: rx.internal.operators.CompletableOnSubscribeMergeDelayErrorIterable.1
                                @Override // p024rx.CompletableSubscriber
                                public void onSubscribe(Subscription subscription) {
                                    compositeSubscription.add(subscription);
                                }

                                @Override // p024rx.CompletableSubscriber
                                public void onError(Throwable th) {
                                    mpscLinkedQueue.offer(th);
                                    tryTerminate();
                                }

                                @Override // p024rx.CompletableSubscriber
                                public void onCompleted() {
                                    tryTerminate();
                                }

                                void tryTerminate() {
                                    if (atomicInteger.decrementAndGet() == 0) {
                                        if (mpscLinkedQueue.isEmpty()) {
                                            completableSubscriber.onCompleted();
                                        } else {
                                            completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                                        }
                                    }
                                }
                            });
                        } catch (Throwable th) {
                            mpscLinkedQueue.offer(th);
                            if (atomicInteger.decrementAndGet() == 0) {
                                if (mpscLinkedQueue.isEmpty()) {
                                    completableSubscriber.onCompleted();
                                    return;
                                } else {
                                    completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                                    return;
                                }
                            }
                            return;
                        }
                    } else {
                        if (atomicInteger.decrementAndGet() == 0) {
                            if (mpscLinkedQueue.isEmpty()) {
                                completableSubscriber.onCompleted();
                                return;
                            } else {
                                completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                                return;
                            }
                        }
                        return;
                    }
                } catch (Throwable th2) {
                    mpscLinkedQueue.offer(th2);
                    if (atomicInteger.decrementAndGet() == 0) {
                        if (mpscLinkedQueue.isEmpty()) {
                            completableSubscriber.onCompleted();
                            return;
                        } else {
                            completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                            return;
                        }
                    }
                    return;
                }
            }
        } catch (Throwable th3) {
            completableSubscriber.onError(th3);
        }
    }
}
