package p024rx.subscriptions;

import p024rx.Subscription;
import p024rx.internal.subscriptions.SequentialSubscription;

/* loaded from: classes2.dex */
public final class MultipleAssignmentSubscription implements Subscription {
    final SequentialSubscription state = new SequentialSubscription();

    @Override // p024rx.Subscription
    public boolean isUnsubscribed() {
        return this.state.isUnsubscribed();
    }

    @Override // p024rx.Subscription
    public void unsubscribe() {
        this.state.unsubscribe();
    }

    public void set(Subscription subscription) {
        if (subscription == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        this.state.replace(subscription);
    }

    public Subscription get() {
        return this.state.current();
    }
}
