package p024rx;

import p024rx.AsyncEmitter;

@Deprecated
/* loaded from: classes2.dex */
public interface CompletableEmitter {
    void onCompleted();

    void onError(Throwable th);

    void setCancellation(AsyncEmitter.Cancellable cancellable);

    void setSubscription(Subscription subscription);
}
