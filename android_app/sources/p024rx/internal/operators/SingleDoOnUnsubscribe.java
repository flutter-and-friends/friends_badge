package p024rx.internal.operators;

import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.functions.Action0;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class SingleDoOnUnsubscribe<T> implements Single.OnSubscribe<T> {
    final Action0 onUnsubscribe;
    final Single.OnSubscribe<T> source;

    public SingleDoOnUnsubscribe(Single.OnSubscribe<T> onSubscribe, Action0 action0) {
        this.source = onSubscribe;
        this.onUnsubscribe = action0;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        singleSubscriber.add(Subscriptions.create(this.onUnsubscribe));
        this.source.call(singleSubscriber);
    }
}
