package p024rx.internal.operators;

import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.exceptions.Exceptions;
import p024rx.functions.Func1;

/* loaded from: classes2.dex */
public final class SingleOnErrorReturn<T> implements Single.OnSubscribe<T> {
    final Func1<Throwable, ? extends T> resumeFunction;
    final Single.OnSubscribe<T> source;

    public SingleOnErrorReturn(Single.OnSubscribe<T> onSubscribe, Func1<Throwable, ? extends T> func1) {
        this.source = onSubscribe;
        this.resumeFunction = func1;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        OnErrorReturnsSingleSubscriber onErrorReturnsSingleSubscriber = new OnErrorReturnsSingleSubscriber(singleSubscriber, this.resumeFunction);
        singleSubscriber.add(onErrorReturnsSingleSubscriber);
        this.source.call(onErrorReturnsSingleSubscriber);
    }

    static final class OnErrorReturnsSingleSubscriber<T> extends SingleSubscriber<T> {
        final SingleSubscriber<? super T> actual;
        final Func1<Throwable, ? extends T> resumeFunction;

        public OnErrorReturnsSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Func1<Throwable, ? extends T> func1) {
            this.actual = singleSubscriber;
            this.resumeFunction = func1;
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            this.actual.onSuccess(t);
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            try {
                this.actual.onSuccess(this.resumeFunction.call(th));
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                this.actual.onError(th2);
            }
        }
    }
}
