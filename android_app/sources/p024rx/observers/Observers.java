package p024rx.observers;

import p024rx.Observer;
import p024rx.exceptions.OnErrorNotImplementedException;
import p024rx.functions.Action0;
import p024rx.functions.Action1;

/* loaded from: classes2.dex */
public final class Observers {
    private static final Observer<Object> EMPTY = new Observer<Object>() { // from class: rx.observers.Observers.1
        @Override // p024rx.Observer
        public final void onCompleted() {
        }

        @Override // p024rx.Observer
        public final void onNext(Object obj) {
        }

        @Override // p024rx.Observer
        public final void onError(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }
    };

    private Observers() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Observer<T> empty() {
        return (Observer<T>) EMPTY;
    }

    public static <T> Observer<T> create(final Action1<? super T> action1) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        return new Observer<T>() { // from class: rx.observers.Observers.2
            @Override // p024rx.Observer
            public final void onCompleted() {
            }

            @Override // p024rx.Observer
            public final void onError(Throwable th) {
                throw new OnErrorNotImplementedException(th);
            }

            @Override // p024rx.Observer
            public final void onNext(T t) {
                action1.call(t);
            }
        };
    }

    public static <T> Observer<T> create(final Action1<? super T> action1, final Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        return new Observer<T>() { // from class: rx.observers.Observers.3
            @Override // p024rx.Observer
            public final void onCompleted() {
            }

            @Override // p024rx.Observer
            public final void onError(Throwable th) {
                action12.call(th);
            }

            @Override // p024rx.Observer
            public final void onNext(T t) {
                action1.call(t);
            }
        };
    }

    public static <T> Observer<T> create(final Action1<? super T> action1, final Action1<Throwable> action12, final Action0 action0) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        if (action0 == null) {
            throw new IllegalArgumentException("onComplete can not be null");
        }
        return new Observer<T>() { // from class: rx.observers.Observers.4
            @Override // p024rx.Observer
            public final void onCompleted() {
                action0.call();
            }

            @Override // p024rx.Observer
            public final void onError(Throwable th) {
                action12.call(th);
            }

            @Override // p024rx.Observer
            public final void onNext(T t) {
                action1.call(t);
            }
        };
    }
}
