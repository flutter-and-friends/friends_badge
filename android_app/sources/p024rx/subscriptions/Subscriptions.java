package p024rx.subscriptions;

import java.util.concurrent.Future;
import p024rx.Subscription;
import p024rx.functions.Action0;

/* loaded from: classes2.dex */
public final class Subscriptions {
    private static final Unsubscribed UNSUBSCRIBED = new Unsubscribed();

    private Subscriptions() {
        throw new IllegalStateException("No instances!");
    }

    public static Subscription empty() {
        return BooleanSubscription.create();
    }

    public static Subscription unsubscribed() {
        return UNSUBSCRIBED;
    }

    public static Subscription create(Action0 action0) {
        return BooleanSubscription.create(action0);
    }

    public static Subscription from(Future<?> future) {
        return new FutureSubscription(future);
    }

    static final class FutureSubscription implements Subscription {

        /* renamed from: f */
        final Future<?> f1236f;

        public FutureSubscription(Future<?> future) {
            this.f1236f = future;
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            this.f1236f.cancel(true);
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.f1236f.isCancelled();
        }
    }

    public static CompositeSubscription from(Subscription... subscriptionArr) {
        return new CompositeSubscription(subscriptionArr);
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
