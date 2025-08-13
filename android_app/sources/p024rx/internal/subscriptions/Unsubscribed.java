package p024rx.internal.subscriptions;

import p024rx.Subscription;

/* loaded from: classes2.dex */
public enum Unsubscribed implements Subscription {
    INSTANCE;

    @Override // p024rx.Subscription
    public boolean isUnsubscribed() {
        return true;
    }

    @Override // p024rx.Subscription
    public void unsubscribe() {
    }
}
