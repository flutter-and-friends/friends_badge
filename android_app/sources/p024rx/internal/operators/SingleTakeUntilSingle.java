package p024rx.internal.operators;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import p024rx.Single;
import p024rx.SingleSubscriber;
import p024rx.plugins.RxJavaHooks;

/* loaded from: classes2.dex */
public final class SingleTakeUntilSingle<T, U> implements Single.OnSubscribe<T> {
    final Single<? extends U> other;
    final Single.OnSubscribe<T> source;

    public SingleTakeUntilSingle(Single.OnSubscribe<T> onSubscribe, Single<? extends U> single) {
        this.source = onSubscribe;
        this.other = single;
    }

    @Override // p024rx.functions.Action1
    public void call(SingleSubscriber<? super T> singleSubscriber) {
        TakeUntilSourceSubscriber takeUntilSourceSubscriber = new TakeUntilSourceSubscriber(singleSubscriber);
        singleSubscriber.add(takeUntilSourceSubscriber);
        this.other.subscribe((SingleSubscriber<? super Object>) takeUntilSourceSubscriber.other);
        this.source.call(takeUntilSourceSubscriber);
    }

    static final class TakeUntilSourceSubscriber<T, U> extends SingleSubscriber<T> {
        final SingleSubscriber<? super T> actual;
        final AtomicBoolean once = new AtomicBoolean();
        final SingleSubscriber<U> other = new OtherSubscriber();

        TakeUntilSourceSubscriber(SingleSubscriber<? super T> singleSubscriber) {
            this.actual = singleSubscriber;
            add(this.other);
        }

        @Override // p024rx.SingleSubscriber
        public void onSuccess(T t) {
            if (this.once.compareAndSet(false, true)) {
                unsubscribe();
                this.actual.onSuccess(t);
            }
        }

        @Override // p024rx.SingleSubscriber
        public void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                unsubscribe();
                this.actual.onError(th);
            } else {
                RxJavaHooks.onError(th);
            }
        }

        final class OtherSubscriber extends SingleSubscriber<U> {
            OtherSubscriber() {
            }

            @Override // p024rx.SingleSubscriber
            public void onSuccess(U u) {
                onError(new CancellationException("Stream was canceled before emitting a terminal event."));
            }

            @Override // p024rx.SingleSubscriber
            public void onError(Throwable th) {
                TakeUntilSourceSubscriber.this.onError(th);
            }
        }
    }
}
