package p024rx.internal.operators;

import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Action0;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class SingleDoAfterTerminate<T> implements Single.OnSubscribe<T> {
    final Action0 action;
    final Single<T> source;

    public SingleDoAfterTerminate(Single<T> single, Action0 action0) {
        this.source = single;
        this.action = action0;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        SingleDoAfterTerminateSubscriber singleDoAfterTerminateSubscriber = new SingleDoAfterTerminateSubscriber(singleSubscriber, this.action);
        singleSubscriber.add(singleDoAfterTerminateSubscriber);
        this.source.subscribe(singleDoAfterTerminateSubscriber);
    }

    static final class SingleDoAfterTerminateSubscriber<T> extends SingleSubscriber<T> {
        final Action0 action;
        final SingleSubscriber<? super T> actual;

        public SingleDoAfterTerminateSubscriber(SingleSubscriber<? super T> singleSubscriber, Action0 action0) {
            this.actual = singleSubscriber;
            this.action = action0;
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            try {
                this.actual.onSuccess(t);
            } finally {
                doAction();
            }
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            try {
                this.actual.onError(th);
            } finally {
                doAction();
            }
        }

        void doAction() {
            try {
                this.action.call();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaHooks.onError(th);
            }
        }
    }
}
