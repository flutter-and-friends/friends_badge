package p024rx.internal.operators;

import p024rx.Subscriber;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public abstract class DeferredScalarSubscriberSafe<T, R> extends DeferredScalarSubscriber<T, R> {
    protected boolean done;

    public DeferredScalarSubscriberSafe(Subscriber<? super R> subscriber) {
        super(subscriber);
    }

    @Override // p024rx.internal.operators.DeferredScalarSubscriber, p024rx.Observer
    public void onError(Throwable th) {
        if (!this.done) {
            this.done = true;
            super.onError(th);
        } else {
            RxJavaHooks.onError(th);
        }
    }

    @Override // p024rx.internal.operators.DeferredScalarSubscriber, p024rx.Observer
    public void onCompleted() {
        if (this.done) {
            return;
        }
        this.done = true;
        super.onCompleted();
    }
}
