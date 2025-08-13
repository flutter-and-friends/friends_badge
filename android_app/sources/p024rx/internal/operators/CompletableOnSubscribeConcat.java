package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p024rx.Completable;
import p024rx.CompletableSubscriber;
import p024rx.Observable;
import p024rx.Subscriber;
import p024rx.Subscription;
import p024rx.exceptions.MissingBackpressureException;
import p024rx.internal.util.unsafe.SpscArrayQueue;
import p024rx.plugins.RxJavaHooks;
import p024rx.subscriptions.SerialSubscription;

/* loaded from: classes2.dex */
public final class CompletableOnSubscribeConcat implements Completable.OnSubscribe {
    final int prefetch;
    final Observable<Completable> sources;

    /* JADX WARN: Multi-variable type inference failed */
    public CompletableOnSubscribeConcat(Observable<? extends Completable> observable, int i) {
        this.sources = observable;
        this.prefetch = i;
    }

    @Override // p024rx.functions.Action1
    public void call(CompletableSubscriber completableSubscriber) {
        CompletableConcatSubscriber completableConcatSubscriber = new CompletableConcatSubscriber(completableSubscriber, this.prefetch);
        completableSubscriber.onSubscribe(completableConcatSubscriber);
        this.sources.subscribe((Subscriber<? super Completable>) completableConcatSubscriber);
    }

    static final class CompletableConcatSubscriber extends Subscriber<Completable> {
        final CompletableSubscriber actual;
        volatile boolean done;
        final SpscArrayQueue<Completable> queue;

        /* renamed from: sr */
        final SerialSubscription f1198sr = new SerialSubscription();
        final ConcatInnerSubscriber inner = new ConcatInnerSubscriber();
        final AtomicInteger wip = new AtomicInteger();
        final AtomicBoolean once = new AtomicBoolean();

        public CompletableConcatSubscriber(CompletableSubscriber completableSubscriber, int i) {
            this.actual = completableSubscriber;
            this.queue = new SpscArrayQueue<>(i);
            add(this.f1198sr);
            request(i);
        }

        @Override // p024rx.Observer
        public void onNext(Completable completable) {
            if (!this.queue.offer(completable)) {
                onError(new MissingBackpressureException());
            } else if (this.wip.getAndIncrement() == 0) {
                next();
            }
        }

        @Override // p024rx.Observer
        public void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                this.actual.onError(th);
            } else {
                RxJavaHooks.onError(th);
            }
        }

        @Override // p024rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            this.done = true;
            if (this.wip.getAndIncrement() == 0) {
                next();
            }
        }

        void innerError(Throwable th) {
            unsubscribe();
            onError(th);
        }

        void innerComplete() {
            if (this.wip.decrementAndGet() != 0) {
                next();
            }
            if (this.done) {
                return;
            }
            request(1L);
        }

        void next() {
            boolean z = this.done;
            Completable completablePoll = this.queue.poll();
            if (completablePoll != null) {
                completablePoll.unsafeSubscribe(this.inner);
            } else {
                if (z) {
                    if (this.once.compareAndSet(false, true)) {
                        this.actual.onCompleted();
                        return;
                    }
                    return;
                }
                RxJavaHooks.onError(new IllegalStateException("Queue is empty?!"));
            }
        }

        final class ConcatInnerSubscriber implements CompletableSubscriber {
            ConcatInnerSubscriber() {
            }

            @Override // p024rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                CompletableConcatSubscriber.this.f1198sr.set(subscription);
            }

            @Override // p024rx.CompletableSubscriber
            public void onError(Throwable th) {
                CompletableConcatSubscriber.this.innerError(th);
            }

            @Override // p024rx.CompletableSubscriber
            public void onCompleted() {
                CompletableConcatSubscriber.this.innerComplete();
            }
        }
    }
}
