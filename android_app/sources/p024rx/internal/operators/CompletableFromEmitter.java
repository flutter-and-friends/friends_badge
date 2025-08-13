package p024rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import p024rx.AsyncEmitter;
import p024rx.Completable;
import p024rx.CompletableEmitter;
import p024rx.CompletableSubscriber;
import p024rx.Subscription;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Action1;
import p024rx.internal.operators.OnSubscribeFromAsyncEmitter;
import p024rx.internal.subscriptions.SequentialSubscription;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class CompletableFromEmitter implements Completable.OnSubscribe {
    final Action1<CompletableEmitter> producer;

    public CompletableFromEmitter(Action1<CompletableEmitter> action1) {
        this.producer = action1;
    }

    @Override // p024rx.functions.Action1
    public void call(CompletableSubscriber completableSubscriber) {
        FromEmitter fromEmitter = new FromEmitter(completableSubscriber);
        completableSubscriber.onSubscribe(fromEmitter);
        try {
            this.producer.call(fromEmitter);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            fromEmitter.onError(th);
        }
    }

    static final class FromEmitter extends AtomicBoolean implements CompletableEmitter, Subscription {
        private static final long serialVersionUID = 5539301318568668881L;
        final CompletableSubscriber actual;
        final SequentialSubscription resource = new SequentialSubscription();

        public FromEmitter(CompletableSubscriber completableSubscriber) {
            this.actual = completableSubscriber;
        }

        @Override // p024rx.CompletableEmitter
        public void onCompleted() {
            if (compareAndSet(false, true)) {
                try {
                    this.actual.onCompleted();
                } finally {
                    this.resource.unsubscribe();
                }
            }
        }

        @Override // p024rx.CompletableEmitter
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                try {
                    this.actual.onError(th);
                    return;
                } finally {
                    this.resource.unsubscribe();
                }
            }
            RxJavaHooks.onError(th);
        }

        @Override // p024rx.CompletableEmitter
        public void setSubscription(Subscription subscription) {
            this.resource.update(subscription);
        }

        @Override // p024rx.CompletableEmitter
        public void setCancellation(AsyncEmitter.Cancellable cancellable) {
            setSubscription(new OnSubscribeFromAsyncEmitter.CancellableSubscription(cancellable));
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.resource.unsubscribe();
            }
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return get();
        }
    }
}
