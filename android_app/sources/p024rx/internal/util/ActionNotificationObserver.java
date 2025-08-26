package p024rx.internal.util;

import p024rx.Notification;
import p024rx.Observer;
import p024rx.functions.Action1;

/* loaded from: classes2.dex */
public final class ActionNotificationObserver<T> implements Observer<T> {
    final Action1<Notification<? super T>> onNotification;

    public ActionNotificationObserver(Action1<Notification<? super T>> action1) {
        this.onNotification = action1;
    }

    @Override // p024rx.Observer
    public void onNext(T t) {
        this.onNotification.call(Notification.createOnNext(t));
    }

    @Override // p024rx.Observer
    public void onError(Throwable th) {
        this.onNotification.call(Notification.createOnError(th));
    }

    @Override // p024rx.Observer
    public void onCompleted() {
        this.onNotification.call(Notification.createOnCompleted());
    }
}
