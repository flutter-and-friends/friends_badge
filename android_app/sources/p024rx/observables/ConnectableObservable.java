package p024rx.observables;

import p024rx.Observable;
import p024rx.Subscription;
import p024rx.functions.Action1;
import p024rx.functions.Actions;
import p024rx.internal.operators.OnSubscribeAutoConnect;
import p024rx.internal.operators.OnSubscribeRefCount;

/* loaded from: classes2.dex */
public abstract class ConnectableObservable<T> extends Observable<T> {
    public abstract void connect(Action1<? super Subscription> action1);

    protected ConnectableObservable(Observable.OnSubscribe<T> onSubscribe) {
        super(onSubscribe);
    }

    public final Subscription connect() {
        final Subscription[] subscriptionArr = new Subscription[1];
        connect(new Action1<Subscription>() { // from class: rx.observables.ConnectableObservable.1
            @Override // p024rx.functions.Action1
            public void call(Subscription subscription) {
                subscriptionArr[0] = subscription;
            }
        });
        return subscriptionArr[0];
    }

    public Observable<T> refCount() {
        return create(new OnSubscribeRefCount(this));
    }

    public Observable<T> autoConnect() {
        return autoConnect(1);
    }

    public Observable<T> autoConnect(int i) {
        return autoConnect(i, Actions.empty());
    }

    public Observable<T> autoConnect(int i, Action1<? super Subscription> action1) {
        if (i <= 0) {
            connect(action1);
            return this;
        }
        return create(new OnSubscribeAutoConnect(this, i, action1));
    }
}
