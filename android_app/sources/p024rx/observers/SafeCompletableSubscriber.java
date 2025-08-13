package p024rx.observers;

import p024rx.CompletableSubscriber;
import p024rx.Subscription;
import p024rx.exceptions.CompositeException;
import p024rx.exceptions.Exceptions;
import p024rx.exceptions.OnCompletedFailedException;
import p024rx.exceptions.OnErrorFailedException;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class SafeCompletableSubscriber implements CompletableSubscriber, Subscription {
    final CompletableSubscriber actual;
    boolean done;

    /* renamed from: s */
    Subscription f1233s;

    public SafeCompletableSubscriber(CompletableSubscriber completableSubscriber) {
        this.actual = completableSubscriber;
    }

    @Override // p024rx.CompletableSubscriber
    public void onCompleted() {
        if (this.done) {
            return;
        }
        this.done = true;
        try {
            this.actual.onCompleted();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            throw new OnCompletedFailedException(th);
        }
    }

    @Override // p024rx.CompletableSubscriber
    public void onError(Throwable th) {
        RxJavaHooks.onError(th);
        if (this.done) {
            return;
        }
        this.done = true;
        try {
            this.actual.onError(th);
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            throw new OnErrorFailedException(new CompositeException(th, th2));
        }
    }

    @Override // p024rx.CompletableSubscriber
    public void onSubscribe(Subscription subscription) {
        this.f1233s = subscription;
        try {
            this.actual.onSubscribe(this);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            subscription.unsubscribe();
            onError(th);
        }
    }

    @Override // p024rx.Subscription
    public void unsubscribe() {
        this.f1233s.unsubscribe();
    }

    @Override // p024rx.Subscription
    public boolean isUnsubscribed() {
        return this.done || this.f1233s.isUnsubscribed();
    }
}
