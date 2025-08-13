package p024rx.internal.util;

import p024rx.Observer;
import p024rx.functions.Action0;
import p024rx.functions.Action1;

/* loaded from: classes2.dex */
public final class ActionObserver<T> implements Observer<T> {
    final Action0 onCompleted;
    final Action1<? super Throwable> onError;
    final Action1<? super T> onNext;

    public ActionObserver(Action1<? super T> action1, Action1<? super Throwable> action12, Action0 action0) {
        this.onNext = action1;
        this.onError = action12;
        this.onCompleted = action0;
    }

    @Override // p024rx.Observer
    public void onNext(T t) {
        this.onNext.call(t);
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        this.onError.call(th);
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        this.onCompleted.call();
    }
}
