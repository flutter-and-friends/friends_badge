package p024rx.internal.operators;

import p024rx.Observable;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public final class OnSubscribeThrow<T> implements Observable.OnSubscribe<T> {
    private final Throwable exception;

    public OnSubscribeThrow(Throwable th) {
        this.exception = th;
    }

    @Override // p024rx.functions.Action1
    public void call(Subscriber<? super T> subscriber) {
        subscriber.onError(this.exception);
    }
}
