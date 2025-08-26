package p024rx;

import p024rx.internal.util.SubscriptionList;

/* loaded from: classes2.dex */
public abstract class SingleSubscriber<T> implements Subscription {

    /* renamed from: cs */
    private final SubscriptionList f1197cs = new SubscriptionList();

    public abstract void onError(Throwable th);

    public abstract void onSuccess(T t);

    public final void add(Subscription subscription) {
        this.f1197cs.add(subscription);
    }

    @Override // p024rx.Subscription
    public final void unsubscribe() {
        this.f1197cs.unsubscribe();
    }

    @Override // p024rx.Subscription
    public final boolean isUnsubscribed() {
        return this.f1197cs.isUnsubscribed();
    }
}
