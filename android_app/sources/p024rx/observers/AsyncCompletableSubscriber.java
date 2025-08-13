package p024rx.observers;

import java.util.concurrent.atomic.AtomicReference;
import p024rx.CompletableSubscriber;
import p024rx.Subscription;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public abstract class AsyncCompletableSubscriber implements CompletableSubscriber, Subscription {
    static final Unsubscribed UNSUBSCRIBED = new Unsubscribed();
    private final AtomicReference<Subscription> upstream = new AtomicReference<>();

    protected void onStart() {
    }

    @Override // p024rx.CompletableSubscriber
    public final void onSubscribe(Subscription subscription) {
        if (!this.upstream.compareAndSet(null, subscription)) {
            subscription.unsubscribe();
            if (this.upstream.get() != UNSUBSCRIBED) {
                RxJavaHooks.onError(new IllegalStateException("Subscription already set!"));
                return;
            }
            return;
        }
        onStart();
    }

    @Override // p024rx.Subscription
    public final boolean isUnsubscribed() {
        return this.upstream.get() == UNSUBSCRIBED;
    }

    protected final void clear() {
        this.upstream.set(UNSUBSCRIBED);
    }

    @Override // p024rx.Subscription
    public final void unsubscribe() {
        Subscription andSet;
        Subscription subscription = this.upstream.get();
        Unsubscribed unsubscribed = UNSUBSCRIBED;
        if (subscription == unsubscribed || (andSet = this.upstream.getAndSet(unsubscribed)) == null || andSet == UNSUBSCRIBED) {
            return;
        }
        andSet.unsubscribe();
    }

    static final class Unsubscribed implements Subscription {
        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return true;
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
        }

        Unsubscribed() {
        }
    }
}
