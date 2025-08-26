package p024rx.observables;

import p024rx.Observable;
import p024rx.Subscriber;

/* loaded from: classes2.dex */
public class GroupedObservable<K, T> extends Observable<T> {
    private final K key;

    public static <K, T> GroupedObservable<K, T> from(K k, final Observable<T> observable) {
        return new GroupedObservable<>(k, new Observable.OnSubscribe<T>() { // from class: rx.observables.GroupedObservable.1
            @Override // p024rx.functions.Action1
            public void call(Subscriber<? super T> subscriber) {
                observable.unsafeSubscribe(subscriber);
            }
        });
    }

    public static <K, T> GroupedObservable<K, T> create(K k, Observable.OnSubscribe<T> onSubscribe) {
        return new GroupedObservable<>(k, onSubscribe);
    }

    protected GroupedObservable(K k, Observable.OnSubscribe<T> onSubscribe) {
        super(onSubscribe);
        this.key = k;
    }

    public K getKey() {
        return this.key;
    }
}
